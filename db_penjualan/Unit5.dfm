object Form5: TForm5
  Left = 533
  Top = 188
  Width = 584
  Height = 525
  Caption = 'satuan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 88
    Top = 16
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object lbl2: TLabel
    Left = 88
    Top = 56
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object lbl3: TLabel
    Left = 56
    Top = 320
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object edt1: TEdit
    Left = 192
    Top = 16
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 192
    Top = 56
    Width = 161
    Height = 21
    ReadOnly = True
    TabOrder = 1
  end
  object btn1: TButton
    Left = 56
    Top = 112
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 112
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 248
    Top = 112
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 344
    Top = 112
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = btn4Click
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 152
    Width = 441
    Height = 137
    DataSource = DataModule4.dssatuan
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt3: TEdit
    Left = 144
    Top = 320
    Width = 169
    Height = 21
    TabOrder = 7
  end
  object btn5: TButton
    Left = 320
    Top = 320
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 8
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 400
    Top = 320
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 9
    OnClick = btn6Click
  end
end
