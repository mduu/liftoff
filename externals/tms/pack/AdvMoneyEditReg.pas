{********************************************************************}
{ TAdvMoneyEdit component                                            }
{ for Delphi & C++Builder                                            }
{ version 1.0                                                        }
{                                                                    }
{ Written by :                                                       }
{   TMS Software                                                     }
{   Copyright � 2002                                                 }
{   Email : info@tmssoftware.com                                     }
{   Website : http://www.tmssoftware.com                             }
{********************************************************************}
unit AdvMoneyEditReg;

interface

uses
  AdvMoneyEdit,Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Edits', [TAdvMoneyEdit]);
end;



end.


