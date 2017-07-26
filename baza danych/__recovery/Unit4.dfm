object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 414
  ClientWidth = 886
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
  object Ksiazki: TDBGrid
    Left = 8
    Top = 87
    Width = 465
    Height = 162
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 255
    Width = 460
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 591
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 504
    Top = 199
    Width = 321
    Height = 162
    DataSource = DataSource2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
    TableName = 'Ksiazki'
    Connection = UniConnection1
    Filtered = True
    Options.FieldsOrigin = True
    Options.InsertAllSetFields = True
    Left = 384
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = UniTable1
    Left = 144
    Top = 8
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 544
    Top = 16
  end
  object UniQuery1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO ksiazki'
      '  (IDksiazki, Tytul, Autor, IDucznia)'
      'VALUES'
      '  (:IDksiazki, :Tytul, :Autor, :IDucznia)')
    SQLDelete.Strings = (
      'DELETE FROM ksiazki'
      'WHERE'
      '  IDksiazki = :Old_IDksiazki')
    SQLUpdate.Strings = (
      'UPDATE ksiazki'
      'SET'
      
        '  IDksiazki = :IDksiazki, Tytul = :Tytul, Autor = :Autor, IDuczn' +
        'ia = :IDucznia'
      'WHERE'
      '  IDksiazki = :Old_IDksiazki')
    SQLLock.Strings = (
      'SELECT * FROM ksiazki'
      'WHERE'
      '  IDksiazki = :Old_IDksiazki'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT IDksiazki, Tytul, Autor, IDucznia FROM ksiazki'
      'WHERE'
      '  IDksiazki = :IDksiazki')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ksiazki')
    Connection = UniConnection1
    ParamCheck = False
    SQL.Strings = (
      'SELECT * FROM ksiazki WHERE IDksiazki>4;')
    ReadOnly = True
    Active = True
    Left = 448
    Top = 16
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
    Left = 56
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = UniQuery1
    Left = 720
    Top = 112
  end
end
