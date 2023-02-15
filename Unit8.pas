unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls,
  REST.Types, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  REST.Client, REST.Authenticator.Basic, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, REST.Response.Adapter, Data.Bind.Components,
  Data.Bind.ObjectScope, Vcl.Grids, Vcl.DBGrids;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    str : TStringStream;
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
    nomor,
    text1,
    OTP,
    text2 : string;
const url = 'http://localhost:2000/sendmessage?auth=qwerty&nomor=';
begin
text1 := '&text1='+edit6.Text;
OTP   := '&OTP='+inttostr(random(9))+inttostr(random(9))+inttostr(random(9))+inttostr(random(9));
text2 := '&text2='+edit7.Text;
nomor := edit2.Text;
restclient1.BaseURL := url+nomor+Text1+OTP+text2;
restrequest1.Execute;

edit1.text:=fdmemtable1.FieldByName('OTP').AsString;
edit3.text:=fdmemtable1.FieldByName('Status').AsString;
edit4.text:=fdmemtable1.FieldByName('text1').AsString;
edit5.text:=fdmemtable1.FieldByName('text2').AsString;

end;

end.
