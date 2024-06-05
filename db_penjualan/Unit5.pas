unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    dbgrd1: TDBGrid;
    lbl3: TLabel;
    edt3: TEdit;
    btn5: TButton;
    btn6: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  a, searchText : string;


implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm5.btn2Click(Sender: TObject);
begin
DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('insert into satuan values(null,"'+edt1.text+'","'+edt2.text+'")');
DataModule4.zsatuan.ExecSQL;

DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('select * from satuan');
DataModule4.zsatuan.Open;
ShowMessage('Data berhasil disimpan!');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('update satuan set name="'+edt1.text+'" where id= "'+a+'"');
DataModule4.zsatuan.ExecSQL;

DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('update satuan set diskripsi="'+edt2.text+'" where id= "'+a+'"');
DataModule4.zsatuan.ExecSQL;

DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('select * from satuan');
DataModule4.zsatuan.Open;
ShowMessage('Data berhasil diupdate!');
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
edt1.text := '';
edt2.text := '';

edt1.ReadOnly := True;
edt2.ReadOnly := True;

edt1.SetFocus;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
searchText := edt3.Text;

if edt3.Text = '' then
  begin
    ShowMessage('Masukkan teks untuk melakukan pencarian');
    Exit;
  end;

  DataModule4.zsatuan.Close;
  DataModule4.zsatuan.SQL.Clear;
  DataModule4.zsatuan.SQL.Text := 'select * from satuan where name like :searchText';
  DataModule4.zsatuan.Params.ParamByName('searchText').AsString := '%' + searchText + '%';
  DataModule4.zsatuan.Open;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('select * from satuan');
DataModule4.zsatuan.Open;

edt3.Text := '';
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
edt1.Text := '';
edt2.Text := '';
edt1.SetFocus;

edt1.ReadOnly := False;
edt2.ReadOnly := False;
end;

end.
