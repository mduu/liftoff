{********************************************************************
TSYSMON component
for Delphi 3.0, 4.0, 5.0 & C++Builder 3.0, 4.0
version 1.1

written by TMS Software
           copyright � 1999
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com
{********************************************************************}

{$I TMSDEFS.INC}

unit SysMon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TSysMon = class;

  TMonObject = class(TCollectionItem)
  private
    { Private declarations }
    fDiff:boolean;
    fDiffTime:integer;
    fDiffValue:integer;
    fSysObject:string;
    fCounter:string;
    fMonBusy:boolean;
    function GetValue:integer;
    function GetName:string;
    function GetDiff:boolean;
    procedure SetSysObject(const value:string);
    procedure SetCounter(const value: string);
  protected
    { Protected declarations }
  public
   constructor Create(Collection:TCollection); override;
   destructor Destroy; override;
    { Public declarations }
   procedure MonStart;
   procedure MonStop;
   property Value:integer read GetValue;
   property Name:string read GetName;
   property Differential:boolean read GetDiff;
  published
    { Published declarations }
   property SysObject:string read fSysObject write SetSysObject;
   property Counter:string read fCounter write SetCounter;
  end;


  TMonCollection = class(TCollection)
  private
    { Private declarations }
    fOwner:TSysMon;
    function GetItem(Index: Integer): TMonObject;
    procedure SetItem(Index: Integer; const Value: TMonObject);
  protected
    { Protected declarations }
   function GetOwner: tPersistent; override;
  public
   constructor Create(aOwner:TSysMon);
   function Add:TMonObject;
   function Insert(index:integer): TMonObject;
   property Items[Index: Integer]: TMonObject read GetItem write SetItem;

    { Public declarations }
  published
    { Published declarations }
  end;

  TSysMon = class(TComponent)
  private
    { Private declarations }
    fMonitors: TMonCollection;
    fResultList: TStrings;
    fMachine:string;
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(aOwner:tComponent); override;
    destructor Destroy; override;
    function SysObjects:TStrings;
    function Counters(SysObject:string):TStrings;
  published
    { Published declarations }
    property Monitors : TMonCollection read fMonitors write fMonitors;
    property Machine:string read fMachine write fMachine;
  end;


implementation

const
 subkey:string = 'System\CurrentControlSet\Control\PerfStats\Enum';


{ TMonObject}
function TMonObject.GetName: string;
var
 keyhandle:hKey;
 objhandle:hkey;
 counthandle:hKey;
 descr:array[0..255] of char;
 dwszDescr:cardinal;
 dwType:cardinal;
 machkey:hKey;
 mach:string;
begin
 result:='';
 if (fSysObject='') or (fCounter='') then exit;

 machkey:=HKEY_LOCAL_MACHINE;

 mach:=(TSysMon(TMonCollection(Collection).fOwner)).fMachine;
 if (mach<>'') then
  begin
   mach:='\\'+mach;
   if RegConnectRegistry(pchar(Mach),HKEY_LOCAL_MACHINE,machkey)<>ERROR_SUCCESS
   then machkey:=HKEY_LOCAL_MACHINE;
  end;


 if RegOpenKeyEx(machkey,pchar(subkey),0,KEY_READ,KeyHandle)= ERROR_SUCCESS then
  begin
   if RegOpenKeyEx(keyhandle,pchar(fSysObject),0,KEY_READ,objHandle)= ERROR_SUCCESS then
    begin
      if RegOpenKeyEx(objhandle,pchar(fCounter),0,KEY_READ,countHandle)= ERROR_SUCCESS then
       begin
         dwSzDescr:=sizeof(descr);
         RegQueryValueEx(counthandle,'Description',nil, @dwType,@descr,@dwszDescr);
         result:=strpas(descr);

         RegCloseKey(counthandle);
       end;
      RegCloseKey(objhandle);
    end;
   RegCloseKey(keyhandle);
  end;

end;

function TMonObject.GetDiff:boolean;
var
 keyhandle:hKey;
 objhandle:hkey;
 counthandle:hKey;
 machkey:hKey;
 descr:array[0..255] of char;
 dwszDescr:cardinal;
 dwType:cardinal;
 mach:string;
begin
 result:=false;
 if (fSysObject='') or (fCounter='') then exit;

 mach:=(TSysMon(TMonCollection(Collection).fOwner)).fMachine;

 machkey:=HKEY_LOCAL_MACHINE;
 if (Mach<>'') then
  begin
   mach:='\\'+mach;
   if RegConnectRegistry(pchar(Mach),HKEY_LOCAL_MACHINE,machkey)<>ERROR_SUCCESS
   then machkey:=HKEY_LOCAL_MACHINE;
  end;

 if RegOpenKeyEx(machkey,pchar(subkey),0,KEY_READ,KeyHandle)= ERROR_SUCCESS then
  begin
   if RegOpenKeyEx(keyhandle,pchar(fSysObject),0,KEY_READ,objHandle)= ERROR_SUCCESS then
    begin
      if RegOpenKeyEx(objhandle,pchar(fCounter),0,KEY_READ,countHandle)= ERROR_SUCCESS then
       begin
         dwszDescr:=sizeof(descr);
         fDiff:=false;
         if (RegQueryValueEx(counthandle,'Differentiate',nil,@dwType,@descr,@dwszDescr) = ERROR_SUCCESS) then
          begin
           fDiff:=strcomp('TRUE',descr)=0;
          end;
         result:=fDiff;
         RegCloseKey(counthandle);
       end;
      RegCloseKey(objhandle);
    end;
   RegCloseKey(keyhandle);
  end;

end;


procedure TMonObject.MonStart;
var
 stathandle:hKey;
 machkey:hKey;
 subkey:string;
 dwType:cardinal;
 dwszDescr:cardinal;
 pbyte:pointer;
 mach:string;
begin
 if (fSysObject='') or (fCounter='') then exit;
 subkey:=fSysObject+'\'+fCounter;

 mach:=(TSysMon(TMonCollection(Collection).fOwner)).fMachine;

 machkey:=HKEY_DYN_DATA;
 if (Mach<>'') then
  begin
   mach:='\\'+mach;
   if RegConnectRegistry(pchar(Mach),HKEY_LOCAL_MACHINE,machkey)<>ERROR_SUCCESS
   then machkey:=HKEY_DYN_DATA;
  end;


 if (RegOpenKeyEx(machkey,'PerfStats\StartStat',0,KEY_READ,stathandle) = ERROR_SUCCESS) then
  begin
   if ( RegQueryValueEx(stathandle,pchar(subkey),nil,@dwType,nil,@dwSzDescr) = ERROR_SUCCESS ) then
     begin
       getmem(pbyte,dwszDescr);
       RegQueryValueEx(stathandle,pchar(subkey),nil,@dwType,pbyte,@dwSzDescr);
       freemem(pbyte);
       fMonBusy:=true;
     end;
   RegCloseKey(stathandle);
  end;
 GetDiff;
end;


procedure TMonObject.MonStop;
var
 stathandle:hKey;
 machkey:hKey;
 subkey:string;
 dwType:cardinal;
 dwszDescr:cardinal;
 pbyte:pointer;
 mach:string;

begin
 if (fSysObject='') or (fCounter='') then exit;
 subkey:=fSysObject+'\'+fCounter;

 mach:=(TSysMon(TMonCollection(Collection).fOwner)).fMachine;

 machkey:=HKEY_DYN_DATA;
 if (Mach<>'') then
  begin
   mach:='\\'+mach;
   if RegConnectRegistry(pchar(Mach),HKEY_LOCAL_MACHINE,machkey)<>ERROR_SUCCESS
   then machkey:=HKEY_DYN_DATA;
  end;


 if (RegOpenKeyEx(machkey,'PerfStats\StopStat',0,KEY_READ,stathandle) = ERROR_SUCCESS) then
  begin
   if ( RegQueryValueEx(stathandle,pchar(subkey),nil,@dwType,nil,@dwSzDescr) = ERROR_SUCCESS ) then
     begin
       getmem(pbyte,dwszDescr);
       RegQueryValueEx(stathandle,pchar(subkey),nil,@dwType,pbyte,@dwSzDescr);
       freemem(pbyte);
     end;
   RegCloseKey(stathandle);
  end;
 fMonBusy:=false;
end;

function TMonObject.GetValue: integer;
var
 stathandle:hKey;
 machkey:hKey;
 subkey:string;
 dwType:cardinal;
 dwszDescr:cardinal;
 dwdata:integer;
 mach:string;
begin
 result:=-1;
 if (fSysObject='') or (fCounter='') then exit;

 if not fMonBusy then MonStart;

 subkey:=fSysObject+'\'+fCounter;
 mach:=(TSysMon(TMonCollection(Collection).fOwner)).fMachine;

 machkey:=HKEY_DYN_DATA;
 if (Mach<>'') then
  begin
   mach:='\\'+mach;
   if RegConnectRegistry(pchar(Mach),HKEY_LOCAL_MACHINE,machkey)<>ERROR_SUCCESS
   then machkey:=HKEY_DYN_DATA;
  end;

 if (RegOpenKeyEx(machkey,'PerfStats\StatData',0,KEY_READ,stathandle) = ERROR_SUCCESS) then
  begin
    dwSzDescr:=sizeof(dwData);
    RegQueryValueEx(stathandle,pchar(subkey),nil,@dwType,@dwData,@dwSzDescr);
    if fDiff then
     result:=round(1000*(dwData-fDiffValue)/(integer(gettickcount)-fDiffTime))
    else
     result:=dwData;
    fDiffValue:=dwData;
    fDiffTime:=gettickcount;
    RegCloseKey(stathandle);
  end;
end;

constructor TMonObject.Create(Collection: TCollection);
begin
 inherited Create(Collection);
 fMonBusy:=false;
 fDiffValue:=0;
 fDiff:=false;
end;

destructor TMonObject.Destroy;
begin
 if fMonBusy then MonStop;
 inherited Destroy;
end;

procedure TMonObject.SetCounter(const value: string);
begin
 if fMonBusy then MonStop;
 fCounter:=value;
end;

procedure TMonObject.SetSysObject(const value: string);
begin
 if fMonBusy then MonStop;
 fSysObject:=value;
end;

{ TMonCollection }
function TMonCollection.Add: TMonObject;
begin
 result:=TMonObject(inherited Add);
end;

constructor TMonCollection.Create(aOwner: TSysMon);
begin
 inherited Create(TMonObject);
 fOwner:=aOwner;
end;

function TMonCollection.GetItem(Index: Integer): TMonObject;
begin
  result:=TMonObject(inherited GetItem(index));
end;

function TMonCollection.Insert(index: integer): TMonObject;
begin
 {$IFNDEF DELPHI4_LVL}
 result:=TMonObject(inherited Add);
 {$ELSE}
 result:=TMonObject(inherited insert(index));
 {$ENDIF}
end;

procedure TMonCollection.SetItem(Index: Integer; const Value: TMonObject);
begin
 inherited Setitem(index,Value);
end;


function TMonCollection.GetOwner: tPersistent;
begin
 result:=fOwner;
end;




{ TSysMon }

function TSysMon.Counters(SysObject: string): TStrings;
var
 keyhandle:hKey;
 objhandle:hkey;
 counthandle:hKey;
 index:integer;
 subkeyname:array[0..255] of char;
 {$IFNDEF DELPHI4_LVL}
 dwSize:DWORD;
 {$ELSE}
 dwSize:cardinal;
 {$ENDIF}

begin
 fResultList.Clear;
 result:=fResultList;
 if (sysobject='') then exit;

 if RegOpenKeyEx(HKEY_LOCAL_MACHINE,pchar(subkey),0,KEY_READ,KeyHandle)= ERROR_SUCCESS then
  begin
   if (RegOpenKeyEx(KeyHandle,pchar(sysobject),0,KEY_READ,objhandle)= ERROR_SUCCESS) then
     begin
      index:=0;
      dwSize:=sizeof(subkeyname);
      while ( RegEnumKeyEx(Objhandle,Index,subkeyname,dwSize,nil,nil,nil,nil) = ERROR_SUCCESS ) do
       begin
        if (RegOpenKeyEx(objhandle,subkeyname,0,KEY_READ,counthandle)=ERROR_SUCCESS) then
         begin
          fResultList.Add(strpas(subkeyname));
          RegCloseKey(CountHandle);
         end;
        dwSize:=sizeof(subkeyname);
        inc(index);
       end;
      RegCloseKey(ObjHandle);
    end;
   RegCloseKey(KeyHandle);
  end;


end;

constructor TSysMon.Create(aOwner: tComponent);
begin
 inherited Create(aOwner);
 fMonitors:=TMonCollection.Create(self);
 fResultList:=TStringList.Create;
end;

destructor TSysMon.Destroy;
begin
 fMonitors.Free;
 fResultList.Free;
 inherited Destroy;
end;

function TSysMon.SysObjects: TStrings;
var
 keyhandle:hKey;
 objhandle:hkey;
 index:integer;
 subkeyname:array[0..255] of char;
 {$IFNDEF DELPHI4_LVL}
 dwSize:DWORD;
 {$ELSE}
 dwSize:cardinal;
 {$ENDIF}
begin
 fResultList.Clear;
 result:=fResultList;
 if RegOpenKeyEx(HKEY_LOCAL_MACHINE,pchar(subkey),0,KEY_READ,KeyHandle)= ERROR_SUCCESS then
  begin
   index:=0;
   dwSize:=sizeof(subkeyname);
   while ( RegEnumKeyEx(Keyhandle,Index,subkeyname,dwSize,nil,nil,nil,nil) = ERROR_SUCCESS ) do
    begin
      if ( RegOpenKeyEx(KeyHandle,subkeyname,0,KEY_READ,objhandle)= ERROR_SUCCESS) then
       begin
        fResultList.Add(strpas(subkeyname));
        RegCloseKey(ObjHandle);
       end;
     dwSize:=sizeof(subkeyname);
     inc(index);
    end;
   RegCloseKey(KeyHandle);
  end;

end;

end.
