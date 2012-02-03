object InstelForm: TInstelForm
  Left = 554
  Top = 133
  Width = 721
  Height = 395
  Caption = 'Settings '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 705
    Height = 357
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label1: TLabel
      Left = 48
      Top = 40
      Width = 14
      Height = 13
      Caption = 'SP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 48
      Top = 88
      Width = 21
      Height = 13
      Caption = 'M02'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 48
      Top = 136
      Width = 21
      Height = 13
      Caption = 'M04'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 48
      Top = 184
      Width = 21
      Height = 13
      Caption = 'M06'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 48
      Top = 232
      Width = 21
      Height = 13
      Caption = 'M08'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 24
      Width = 168
      Height = 13
      Caption = 'Verschuiving signalen grafiek'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 232
      Top = 24
      Width = 141
      Height = 13
      Caption = 'Gegevens voor grafiek 1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 256
      Top = 88
      Width = 101
      Height = 13
      Caption = 'Signalen / coefficient'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit1: TSpinEdit
      Left = 48
      Top = 56
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 0
      Value = 0
    end
    object SpinEdit2: TSpinEdit
      Left = 48
      Top = 104
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 1
      Value = 5
    end
    object SpinEdit3: TSpinEdit
      Left = 48
      Top = 152
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 2
      Value = 10
    end
    object SpinEdit4: TSpinEdit
      Left = 48
      Top = 200
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 15
    end
    object SpinEdit5: TSpinEdit
      Left = 48
      Top = 248
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 20
    end
    object CB_Keuze: TCheckBox
      Left = 256
      Top = 56
      Width = 233
      Height = 17
      Caption = 'CB_Keuze'
      TabOrder = 5
      OnClick = CB_KeuzeClick
    end
    object SpinEditSchaal: TSpinEdit
      Left = 256
      Top = 104
      Width = 73
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 10
    end
  end
end
