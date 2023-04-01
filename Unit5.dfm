object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 474
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 474
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 0
    object Label4: TLabel
      Left = 218
      Top = 14
      Width = 196
      Height = 21
      Caption = 'PAGE D'#39'INSCRIPTION'
      Color = clSkyBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Algerian'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 0
      Top = 453
      Width = 72
      Height = 15
      Caption = 'By H.Derrick'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Dutch801 XBd BT'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 22
      Top = 50
      Width = 325
      Height = 340
      BevelOuter = bvNone
      BiDiMode = bdLeftToRight
      Color = clSkyBlue
      ParentBiDiMode = False
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont, seClient]
      object Label1: TLabel
        Left = 23
        Top = 60
        Width = 77
        Height = 17
        Caption = 'PRENOM : '
        Color = clLime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Dutch801 XBd BT'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 23
        Top = 113
        Width = 117
        Height = 17
        Caption = 'MOT DE PASSE :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Dutch801 XBd BT'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 23
        Top = 185
        Width = 127
        Height = 17
        Caption = 'DATE CREATION :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Dutch801 XBd BT'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 105
        Top = 60
        Width = 198
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '@Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 146
        Top = 113
        Width = 157
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 142
        Top = 330
        Width = 123
        Height = 37
        Align = alCustom
        Caption = 'INSCRIPTION'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -14
        Font.Name = 'Dutch801 XBd BT'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button1Click
      end
      object Memo2: TMemo
        Left = 158
        Top = 187
        Width = 145
        Height = 30
        Color = clGrayText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnChange = Memo2Change
      end
      object Button4: TButton
        Left = 0
        Top = 0
        Width = 158
        Height = 44
        Caption = 'Actualiser'
        Style = bsCommandLink
        TabOrder = 4
        OnClick = Button4Click
      end
      object CheckBox1: TCheckBox
        Left = 146
        Top = 145
        Width = 127
        Height = 17
        Caption = 'Voir mot de passe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox1Click
      end
    end
    object Panel3: TPanel
      Left = 403
      Top = 50
      Width = 238
      Height = 160
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 1
      object ListBox1: TListBox
        Left = 7
        Top = 7
        Width = 226
        Height = 145
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 0
        OnClick = ListBox1Click
      end
    end
    object Panel4: TPanel
      Left = 403
      Top = 230
      Width = 238
      Height = 160
      Color = clGradientActiveCaption
      ParentBackground = False
      TabOrder = 2
      object Memo1: TMemo
        Left = 7
        Top = 7
        Width = 226
        Height = 145
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Button2: TButton
      Left = 446
      Top = 403
      Width = 111
      Height = 30
      Caption = 'Reinitialisation'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Dutch801 XBd BT'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 541
      Top = 22
      Width = 95
      Height = 22
      Caption = 'Mise '#224' zero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
  end
end
