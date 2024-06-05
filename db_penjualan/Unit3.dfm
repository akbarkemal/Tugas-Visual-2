object Form3: TForm3
  Left = 832
  Top = 167
  Width = 586
  Height = 507
  Caption = 'kategori'
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
    Left = 56
    Top = 48
    Width = 73
    Height = 13
    Caption = 'NAMA BARANG'
  end
  object lbl2: TLabel
    Left = 56
    Top = 288
    Width = 101
    Height = 13
    Caption = 'CARI NAMA BARANG'
  end
  object edt1: TEdit
    Left = 168
    Top = 48
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 0
  end
  object btn1: TButton
    Left = 112
    Top = 96
    Width = 75
    Height = 25
    Caption = 'INSERT'
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 200
    Top = 96
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 2
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 288
    Top = 96
    Width = 75
    Height = 25
    Caption = 'DELETE'
    TabOrder = 3
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 56
    Top = 152
    Width = 320
    Height = 120
    DataSource = DataModule4.dskategori
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt2: TEdit
    Left = 208
    Top = 288
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object btn4: TButton
    Left = 280
    Top = 320
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 6
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 184
    Top = 320
    Width = 75
    Height = 25
    Caption = 'KEMBALI'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Caption = 'NEW'
    TabOrder = 8
    OnClick = btn6Click
  end
end
