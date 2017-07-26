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
    Gatunek: TDBGrid;
    DataSource1: TDataSource;
    Button1: TButton;
    MySQLUniProvider1: TMySQLUniProvider;
    UniQuery1: TUniQuery;
    DBNavigator1: TDBNavigator;
    UniConnectDialog1: TUniConnectDialog;
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
 UniTable1.Append;
 UniTable1.Fields[1].AsString:='kot';
 UniTable1.Fields[2].AsInteger:=10;
 UniTable1.Fields[3].AsInteger:=44;
 UniTable1.Fields[4].AsInteger:=28;
 UniTable1.Post;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
    UniConnectDialog1.Execute;

    //UniConnection1.Connect;
   UniTable1.Active:=true;
end;

end.
