object DataModule4: TDataModule4
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 181
  Width = 335
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\tugas smstr4\visual2\delphi7\libmysql.dll'
    Left = 40
    Top = 16
  end
  object zkategori: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kategori;')
    Params = <>
    Left = 120
    Top = 16
  end
  object dskategori: TDataSource
    DataSet = zkategori
    Left = 120
    Top = 72
  end
  object zsatuan: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from satuan;')
    Params = <>
    Left = 184
    Top = 16
  end
  object dssatuan: TDataSource
    DataSet = zsatuan
    Left = 184
    Top = 80
  end
end
