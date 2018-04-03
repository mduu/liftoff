object fraGraphic: TfraGraphic
  Left = 0
  Top = 0
  Width = 647
  Height = 400
  TabOrder = 0
  object Shape4: TShape
    Left = 0
    Top = 42
    Width = 647
    Height = 1
    Align = alTop
    Pen.Color = clGray
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 647
    Height = 1
    Align = alTop
    Pen.Color = clGray
  end
  object idTitleBar1: TidTitleBar
    Left = 0
    Top = 1
    Width = 647
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ColorStart = clWhite
    ColorEnd = 14933984
    object Label26: TLabel
      Left = 9
      Top = 1
      Width = 89
      Height = 21
      Caption = 'Modellgrafik'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 89
      Height = 21
      Caption = 'Modellgrafik'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 309
      Height = 13
      Caption = 'Grafik des Modelles anhand der zuvor gemachten Massangaben.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 647
    Height = 72
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 647
      Height = 72
      Align = alClient
      Caption = 'Einstellungen'
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 18
        Width = 17
        Height = 13
        Caption = 'Stil:'
      end
      object Label4: TLabel
        Left = 192
        Top = 18
        Width = 30
        Height = 13
        Caption = 'Zoom:'
      end
      object btnUp: TSpeedButton
        Left = 371
        Top = 19
        Width = 23
        Height = 22
        Hint = 'Angezeigter Bereich nach oben verschieben'
        Enabled = False
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCBCBCBBFBFBFB5B5B5B4B4B4B6B6B6BCBCBCC7C7C7CCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCBBBBBB8282826969696969696969696969698D8D8DC6C6C6CCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDA3506CA2D00BE
          2B00B72900B32800B92900696969BABABACCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD3306C52E01BD2B00B52900AA2600
          A22500696969B4B4B4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCC0350AC13C14C75431B5330BA12600942300696969B3B3
          B3CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCB0340DB6441FD79A87AE411E932400862100696969B3B3B3CCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB64B0DBD5A21E0
          B398B559229939008C3400696969B3B3B3CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD37B0CD8861FECC696CE8120B36300
          A35B00696969B2B2B2CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCBCBCBEFA708F2AF1BF8D68CE8A91ECE8E00BA8000666666A6A6
          A6C9C9C9CBCBCBCCCCCCCCCCCCCCCCCC3D43CCCCCCC7C7C7B0B0B0A0A0A09D9D
          9DD48003DC8D18ECBE7CD78F24C07300AC67005C5C5C8686869B9B9BA0A0A0B5
          B5B5C9C9C9CCCCCC3D43CFCAC7BFB1A7927C6D78615270594AAC4601BC5E1FD4
          966CC06B32A84603993E005B473A6451436D584A776152908176C3C3C3CCCCCC
          3D43D2D0CED5A084C0693AB04A12A94007AC450CBF6A3CC9825BC06E41AE4C17
          A03A03993600993600993600983A07A19189C9C9C9CCCCCC3D43CCCCCCD2D2D2
          EAD0AEE9B26BEFC997F6E3CAEFCFA5E2AD68DC9C4BD48C2DC9760BC06D01BB69
          00AD6B16A79E94C9C9C9CCCCCCCCCCCC3D43CCCCCCCCCCCCCFCFCFF4CA61FFBE
          1EFFCF56FFF9EBFDEABAF5C54CECAD0FE2A101DA9B00C69417A9A69ECBCBCBCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCFCFCFF3B458FE9E12FFB03DFE
          E7C5F3A027E28601DA8100C88019AEABA5CBCBCBCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEAB382FE8318FD973EEF7307DD6700
          B67032B3B3B3CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCEBB79BFC7027EF5505BF6636B4B4B4CCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCE9B4A5DF846AC7C7C7CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43}
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = btnLeftMouseDown
      end
      object btnLeft: TSpeedButton
        Left = 347
        Top = 31
        Width = 23
        Height = 22
        Hint = 'Angezeigter Bereich nach links verschieben'
        Enabled = False
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCACACAC3C3C3C9C9C9CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACAA3948B92
          8278B5B5B5CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCBCBCBA9A1979A3B08776152A0A0A0CBCBCB
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCABA9A2B06E179B37006C584A9B9B9BC9C9C9CCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCB1ADA7CB97
          17BF6C009A3600645143868686A6A6A6B3B3B3B4B4B4B4B4B4B4B4B4B6B6B6BC
          BCBCC7C7C7CCCCCC3D43CCCCCCCCCCCCB6B6B6CD8419DF9F00C36F029A37005B
          473A5C5C5C6666666969696969696969696969696969696969698D8D8DC6C6C6
          3D43CCCCCCB7B7B7BB7132E08400E6A501CC7A10A13B039A3E00AE6800BD8300
          A75D008F3500892100972300A42500B92900696969BABABA3D43C9C9C9C26838
          E36A00E78901EFB218D79136AF4D18A94604C17400D09000B565009B39009524
          00A32600AA2600B12800696969B4B4B43D43E3937DF35A0AF3790EF6AA3CF7CA
          5CDD9F4EC06E42C06B33D89025E8AB21D08324B75B26AF4320B4320AB32900B4
          2800696969B3B3B33D43EAC6BCFE7B37FEA150FFF3E1FDEDC4E2AC66C67B52CD
          8758E7B05FF5CB6CE5B375D59A77CC7F67C14721B92A00B92A00696969B4B4B4
          3D43CCCCCCEBBAA0FF8419FFB140FFFBF1ECC796B85D2BB65412D8860DEEA90F
          D37D12B74F13B03812BC340AC12C01C52C00828282BEBEBE3D43CCCCCCCCCCCC
          EAB485FE9E13FFCF56F0CFA5A84007A84401CF7C01EAA304CF7606B24607AB2F
          07BB3005C93003D63203B8B8B8CACACA3D43CCCCCCCCCCCCCCCCCCF4B55AFFBE
          1EE9B776A53C036F584A9B9B9BCACACACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCFCFCFF4CA60E5A757AB430A77
          61529E9E9ECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCFCFCFE7C69CB858248F796BADADADCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCD2D2D2CA8763BAAA9FC6C6C6CCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCD1CECCCEC9C5CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43}
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = btnLeftMouseDown
      end
      object btnRight: TSpeedButton
        Left = 395
        Top = 31
        Width = 23
        Height = 22
        Hint = 'Angezeigter Bereich nach rechts verschieben'
        Enabled = False
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCC7C7C7C5C5C5CBCBCBCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCC6BDA89A91909090B1B1B1CBCBCBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCFC7BAA94D0E
          70655F777777AEAEAECBCBCBCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDC2B2AE49058A3C125956517878
          78AEAEAECCCCCCCCCCCCCCCCCCCCCCCC3D43CBCBCBBFBFBFB5B5B5B4B4B4B4B4
          B4B4B4B4B6B6B6B7B7B7AD9B80AE47029D380191580E5A57517A7A7AB6B6B6CC
          CCCCCCCCCCCCCCCC3D43BBBBBB82828269696969696969696969696969696969
          69697A684DAC4601A63F07B06300A0760E595959838383BBBBBBCCCCCCCCCCCC
          3D43EB3806CA2D00AD27009924008921008E3500A85E00C88A00C17400AD4805
          AF4D18BD6B01C48C008A5D1C5C5C5C858585BEBEBECCCCCC3D43F13A06D73101
          BD2B00A627009524009B3900B66500D59300CA7A03B7591BB96030CA780FD89B
          00C474008D511C5F5F5F949494C9C9C93D43F63E0AE64517DD6D4CC65734B249
          27B75B25D08425EBAF2CDE9C3CC87D4AC27247D58D30E8A90CD98000CA5E009F
          4F24919191C8C8C83D43FA4614F0724DFFFEFEE6B09FD28F79D69A77E7B67AF8
          D587F1CF9DE3BA9FD0906DD79137E9A90ADD8300D56300B35E32B3B3B3CBCBCB
          3D43FE6E45F38463DD5C37C23E15B03913B74F13D37E14F2AF1AE6A441EDCFBB
          E4BFAAD08018E0A000D88000B46E31B3B3B3CBCBCBCCCCCC3D43FFCCBEED5D33
          D2380BBD3107AB2F07B24607D07707F0A90AE49622DB9F76EACBBAC77203D89A
          00B17C2EAFAFAFCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCD6D0C7D8966AD59877C16D00C59316A9A9A9CBCBCBCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCD7D4CFEFD3C0B85824B06E16A8A59ECACACACCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD9D7D5F7E9E0
          A85629A4A09BCACACACCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD9D7D6DFB599BEB7B4C9C9C9CCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCD3D1CDD2CECBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43}
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = btnLeftMouseDown
      end
      object btnDown: TSpeedButton
        Left = 371
        Top = 44
        Width = 23
        Height = 22
        Hint = 'Angezeigter Bereich nach unten verschieben'
        Enabled = False
        Glyph.Data = {
          26040000424D2604000000000000360000002800000012000000120000000100
          180000000000F0030000120B0000120B00000000000000000000CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8C8C8CACACACCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCB5B5B5919191959595BEBEBECCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB6
          B6B6B65F32A150245F5F5F858585BBBBBBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB2B2B2B77031DA6600CE6000
          8E511C5C5C5C838383B6B6B6CCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCBCBCBABABABB57E2EDE8300E28601DB8200C575008A5D1C5959
          597A7A7AAFAFAFCBCBCBCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCBCBCBABA8
          A1C99716DE9E00E5A301ECAD10E9AA0ED99B00C58C00A0760E5A5751787878AE
          AEAECBCBCBCCCCCC3D43CCCCCCCCCCCCCBCBCBA9A5A0B47017C57001CB7507D4
          8825DA9842D58E32CA780FBD6B01AF630090570E595651777777B0B0B0CBCBCB
          3D43CCCCCCCDCDCDC4BFBCAF6036C16A3AE1B59DF4E5DCECD1C2D29675C27247
          B75C2BAC4812A43D049B3700883C126F655F8F8F8FC4C4C43D43CCCCCCD3D0CE
          E8CCB9FDF9F7E9C5ADD58D5DDDA37BF5E5DBE8C6B0C77B47B45414AA4602A844
          00AA4501AA4602A74B0CA6988FC7C7C73D43CCCCCCD3D1CDD8D7D5D7D4D0D6D0
          C9D6D0C6E69C2DEBB15CF6DEBBDD9A37C87802BD710078674DAA987DC9BCA8CC
          C2B3CAC3B9CCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCF4AE12F5
          B62AFAE1A8EAAD27D29100C38700696969B3B3B3CCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD47C0DD88722EDC99CCF8221
          B36400A55C00696969B4B4B4CCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCB64B0DBD5A21E0B399B558229938008B34006969
          69B3B3B3CCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCB0340DB74521DEAB9AB04523932400862100696969B3B3B3CCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC1370DC8
          4B24EFCBC0C3502CA42700962300696969B3B3B3CCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD64014E2704EFEFAF9D75A35
          BA2A00AA2600696969B4B4B4CCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCF06B45F38463EC5E35E13C0CD23001C52C008282
          82BEBEBECCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCFFCCBEFC5F33F63F0BF23905EC3603E73503B8B8B8CACACACCCCCCCC
          CCCCCCCCCCCCCCCC3D43}
        ParentShowHint = False
        ShowHint = True
        OnMouseDown = btnLeftMouseDown
      end
      object Image1: TImage
        Left = 232
        Top = 35
        Width = 18
        Height = 18
        AutoSize = True
        Picture.Data = {
          07544269746D617026040000424D260400000000000036000000280000001200
          0000120000000100180000000000F0030000120B0000120B0000000000000000
          0000CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCC8C8C8BCBCBCAFAFAFABABABABABABABABABAEAEAEB8B8
          B8C6C6C6CCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCBFBFBF9A9A9A7575756969696969696969696E6E6E8E8E8EBABABACCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB67C6BA6290293
          2400872400963E00A75900996713797979B3B3B3CCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC5988BBC4926AB3C199A300AA44502
          B05E00A06D17848484B6B6B6CCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCDAC8C3F1D5CCFDF9F8D8A695BA6021BD6705B68126A3A3
          A3BFBFBFCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCD4D0CFE1E0E0DBD4D3CAB3ABBE9B81BE9A72BFAA87C2C2C2C9C9C9CCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43}
        Transparent = True
        OnClick = Image1Click
      end
      object Image2: TImage
        Left = 320
        Top = 35
        Width = 18
        Height = 18
        AutoSize = True
        Picture.Data = {
          07544269746D617026040000424D260400000000000036000000280000001200
          0000120000000100180000000000F0030000120B0000120B0000000000000000
          0000CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCC9C9C9BFBFBFB6B6B6B3B3B3BABABAC6C6C6CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC2C2C2A3
          A3A38484847979798E8E8EB8B8B8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB49B7EB17D24A97E17976713
          6E6E6EAEAEAECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCB48E62C87F01CF9200B77300696969ABABABCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCC9C9C9BFBFBFB6B6
          B6B3B3B3A88155CC8203D39500B47100626262999999B3B3B3B3B3B3B8B8B8C2
          C2C2CACACACCCCCC3D43CCCCCCCCCCCCC2C2C2A3A3A38484847979798A653ACA
          8002D29500B06F005454546D6D6D797979797979898989AEAEAEC6C6C6CCCCCC
          3D43CCCCCCCCCCCCB491869440267C3217844113A45D0AC97F02D19400B27000
          7F4A12743713712F138346136A61559E9E9EC4C4C4CCCCCC3D43CCCCCCCCCCCC
          BB8C7EA7330E9B2F08AC4C08C16C0CD38B10DB9D04BF7900AA58009739008C2A
          009F48006D604E9E9E9EC4C4C4CCCCCC3D43CCCCCCCCCCCCCEB1A8D5937EE9CD
          C2F4E3D8F3DEC5F1D19AEBB125CE8507BD670BAC4B119A3104A84D01887A67AE
          AEAEC6C6C6CCCCCC3D43CCCCCCCCCCCCD7CECBEEECECE7E1DFE4DAD2EFE5DBFE
          FBF6EFB831CF8404A3621EA96238A85D3DB06D35B2A99CC2C2C2CACACACCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD9D0C7FDF9F1ECB225C87E01
          696969ABABABCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCD5C7B7FBF1E0EBB123C47C00696969ABABABCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCDAD2C8FFFFFEF0BA36C97F02828282B3B3B3CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCC3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCE2E0DDFC
          F4E6F5C44ED48B0EB3B3B3C4C4C4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          3D43CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC3D43}
        Transparent = True
        OnClick = Image2Click
      end
      object rbAuto: TRadioButton
        Left = 40
        Top = 16
        Width = 145
        Height = 17
        Caption = 'Automatisch'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rbAutoClick
      end
      object rbSimple: TRadioButton
        Left = 40
        Top = 32
        Width = 145
        Height = 17
        Caption = 'Einfach (Basisdaten)'
        TabOrder = 1
        OnClick = rbAutoClick
      end
      object rbDetailed: TRadioButton
        Left = 40
        Top = 48
        Width = 145
        Height = 17
        Caption = 'Detailiert (Fl'#252'gelgeom.)'
        TabOrder = 2
        OnClick = rbAutoClick
      end
      object cbAutoZoom: TCheckBox
        Left = 232
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Automatisch'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = cbAutoZoomClick
      end
      object tbZoom: TTrackBar
        Left = 243
        Top = 35
        Width = 78
        Height = 33
        Enabled = False
        Max = 250
        Min = 1
        PageSize = 10
        Frequency = 25
        Position = 1
        TabOrder = 4
        ThumbLength = 18
        OnChange = tbZoomChange
      end
      object cbGrid: TCheckBox
        Left = 432
        Top = 24
        Width = 113
        Height = 9
        Caption = 'Gitter anzeigen'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = cbGridClick
      end
    end
  end
  object pnlPainter: TPanel
    Left = 0
    Top = 43
    Width = 647
    Height = 285
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 2
  end
end
