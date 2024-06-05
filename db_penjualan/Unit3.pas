unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dbgrd1: TDBGrid;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a, searchText : string;

implementation

uses
  Unit4;

{$R *.dfm}


procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('insert into kategori values(null,"'+edt1.text+'")');
DataModule4.zkategori.ExecSQL;

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori');
DataModule4.zkategori.Open;
ShowMessage('Data berhasil disimpan!');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('update kategori set name="'+edt1.text+'" where id= "'+a+'"');
DataModule4.zkategori.ExecSQL;

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori');
DataModule4.zkategori.Open;
ShowMessage('Data berhasil diupdate!');
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.zkategori.Fields[1].AsString;
a:= DataModule4.zkategori.Fields[0].AsString;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule4.zkategori.ExecSQL;

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori');
DataModule4.zkategori.Open;
ShowMessage('Data berhasil didelete!');
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
searchText := edt2.Text;

if edt2.Text = '' then
  begin
    ShowMessage('Masukkan teks untuk melakukan pencarian');
    Exit;
  end;

  DataModule4.zkategori.Close;
  DataModule4.zkategori.SQL.Clear;
  DataModule4.zkategori.SQL.Text := 'select * from kategori where name like :searchText';
  DataModule4.zkategori.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.zkategori.Open;
end;

procedure TForm3.btn5Click(Sender: TObject);
begin
DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori');
DataModule4.zkategori.Open;

edt2.Text := '';
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
edt1.Text := '';
edt1.SetFocus;

edt1.ReadOnly := False;
end;

end.
