object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 414
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Gatunek: TDBGrid
    Left = 24
    Top = 103
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 416
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 272
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object UniConnection1: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'test'
    Server = 'localhost'
    Connected = True
    ConnectDialog = UniConnectDialog1
    LoginPrompt = False
    Left = 272
    Top = 16
  end
  object UniTable1: TUniTable
    TableName = 'zwierzeta'
    Connection = UniConnection1
    Filtered = True
    Options.FieldsOrigin = True
    Options.InsertAllSetFields = True
    Left = 384
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = UniTable1
    Left = 120
    Top = 24
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 408
    Top = 160
  end
  object UniQuery1: TUniQuery
    Connection = UniConnection1
    Left = 448
    Top = 56
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Baza Danych'
    PortLabel = 'Port'
    ProviderLabel = 'Dostawca'
    Caption = 'Rejestracja'
    UsernameLabel = 'U'#380'ytkownik'
    PasswordLabel = 'Has'#322'o'
    ServerLabel = 'Opis hosta'
    ConnectButton = 'Ok'
    CancelButton = 'Anuluj'
    LabelSet = lsPolish
    Left = 432
    Top = 264
  end
end
