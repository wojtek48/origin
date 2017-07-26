unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, MemDS, DBAccess, Uni, UniProvider, MySQLUniProvider,
  Vcl.ExtCtrls, Vcl.DBCtrls, UniDacVcl;

type
  TForm4 = class(TForm)
    UniConnection1: TUniConnection;
    UniTable1: TUniTable;
    Ksiazki: TDBGrid;
    DataSource1: TDataSource;
    MySQLUniProvider1: TMySQLUniProvider;
    UniQuery1: TUniQuery;
    DBNavigator1: TDBNavigator;
    UniConnectDialog1: TUniConnectDialog;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
 UniQuery1.Active:=true;
 UniQuery1.SQL.Text:='SELECT * FROM ksiazki WHERE IDksiazki> :a ;';
 UniQuery1.ParamByName('a').AsInteger :=2;
 UniQuery1.Execute;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
    UniConnectDialog1.Execute;

    //UniConnection1.Connect;
   UniTable1.Active:=true;
end;

end.
