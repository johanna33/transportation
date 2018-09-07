unit uUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, ToolWin, DB,
  MemDS, DBAccess, MyAccess;

type
  TfUsuarios = class(TForm)
    tbUsuario: TToolBar;
    tbNuevoU: TToolButton;
    tbGrabarU: TToolButton;
    tbBorrarU: TToolButton;
    tbModificarU: TToolButton;
    separador2: TToolButton;
    tbSalirU: TToolButton;
    pUsuario: TPanel;
    lusuario: TLabel;
    lclave: TLabel;
    lpermiso: TLabel;
    eUsuario: TEdit;
    eClave: TEdit;
    eTipo: TEdit;
    lT: TLabel;
    lL: TLabel;
    dbGUsuario: TDBGrid;
    eIdu: TEdit;
    dsUsuario: TDataSource;
    qryUsuario: TMyQuery;
    qryUsuarioid: TIntegerField;
    qryUsuariousuario: TStringField;
    qryUsuariotipo: TStringField;
    qryUsuarioclave: TStringField;
    qryGrabarU: TMyQuery;
    qryBorrarU: TMyQuery;
    qryModiU: TMyQuery;
    procedure dbGUsuarioCellClick(Column: TColumn);
    procedure tbNuevoUClick(Sender: TObject);
    procedure tbSalirUClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbGrabarUClick(Sender: TObject);
    procedure tbBorrarUClick(Sender: TObject);
    procedure tbModificarUClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUsuarios: TfUsuarios;
  Unum : String;

implementation

uses uMenuOper;

{$R *.dfm}

procedure TfUsuarios.dbGUsuarioCellClick(Column: TColumn);
begin
eidu.Text:= qryUsuarioid.AsString;
eUsuario.Text:= qryUsuariousuario.AsString;
eClave.Text:= qryUsuarioclave.AsString;
eTipo.Text:= qryUsuariotipo.AsString;
tbGrabarU.Enabled:=false;
tbBorrarU.Enabled:=true;
tbModificarU.Enabled:=true;
end;

procedure TfUsuarios.tbNuevoUClick(Sender: TObject);
begin
eUsuario.Clear;
eClave.Clear;
eTipo.Clear;
eIdu.Clear;
eUsuario.SetFocus;
tbGrabarU.Enabled:=true;
tbBorrarU.Enabled:=false;
tbModificarU.Enabled:=false;
end;

procedure TfUsuarios.tbSalirUClick(Sender: TObject);
begin
eUsuario.Clear;
eClave.Clear;
eTipo.Clear;
eIdu.Clear;
qryUsuario.Close;
fUsuarios.Close;
end;

procedure TfUsuarios.FormShow(Sender: TObject);
begin
    fUsuarios.Top:=208;
    fUsuarios.Left:=288;
    fMenuOper.Hide;
    qryUsuario.Open;
end;

procedure TfUsuarios.tbGrabarUClick(Sender: TObject);
begin
   if trim(eUsuario.Text)= '' then
      begin
      showmessage ('Debe ingresar el nombre del Usuario');
      eUsuario.SetFocus;
      Exit;
      end;

   if trim(eClave.Text)= '' then
      begin
      showmessage ('Debe ingresar la Clave');
      eClave.SetFocus;
      Exit;
      end;

   if trim(eTipo.Text)= '' then
      begin
      showmessage ('Debe ingresar el tipo de Permiso');
      eTipo.SetFocus;
      Exit;
      end;

if eIDu.Text = qryUsuarioid.AsString then
   begin
   showmessage ('Ese Usuario Ya Existe');
   Exit;
   end;

qryGrabarU.ParamByName('vusuario').AsString:= eUsuario.Text ;
qryGrabarU.ParamByName('vclave').AsString:= eClave.Text ;
qryGrabarU.ParamByName('vtipo').AsString:= eTipo.Text ;
qryGrabarU.Execute;
eUsuario.Clear;
eClave.Clear;
eTipo.Clear;
qryUsuario.Close;
qryUsuario.Open;
tbGrabarU.Enabled:=false;
tbBorrarU.Enabled:=true;
tbModificarU.Enabled:=true;
end;

procedure TfUsuarios.tbBorrarUClick(Sender: TObject);
begin
   if trim(eIDu.Text)= '' then
      begin
      showmessage ('Debe elegir un Usuario para borrar');
      Exit;
      end;

   Unum:= eidu.Text;
   qryBorrarU.ParamByName('bidu').AsString:= Unum;
   qryBorrarU.Execute;
   eUsuario.Clear;
   eClave.Clear;
   eTipo.Clear;
   qryUsuario.Close;
   qryUsuario.Open;
end;

procedure TfUsuarios.tbModificarUClick(Sender: TObject);
begin
   if trim(eIDu.Text)= '' then
      begin
      showmessage ('Debe elegir un Usuario para Modificar');
      Exit;
      end;

   Unum:= eIDu.Text;
   
  if trim(eUsuario.Text)= '' then
      begin
      showmessage ('Debe ingresar el nombre del Usuario');
      eUsuario.SetFocus;
      Exit;
      end;

   if trim(eClave.Text)= '' then
      begin
      showmessage ('Debe ingresar la Clave');
      eClave.SetFocus;
      Exit;
      end;

   if trim(eTipo.Text)= '' then
      begin
      showmessage ('Debe ingresar el tipo de Permiso');
      eTipo.SetFocus;
      Exit;
      end;

qryModiU.ParamByName('vusuario').AsString:= eUsuario.Text ;
qryModiU.ParamByName('vclave').AsString:= eClave.Text ;
qryModiU.ParamByName('vtipo').AsString:= eTipo.Text ;
qryModiU.ParamByName('v1idu').AsString:= Unum ;
qryModiU.Execute;

   eUsuario.Clear;
   eClave.Clear;
   eTipo.Clear;
   qryUsuario.Close;
   qryUsuario.Open;
end;

end.
