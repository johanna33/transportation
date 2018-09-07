unit uLogIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, MemDS, DBAccess, MyAccess,
  Buttons;

type
  TfLogIn = class(TForm)
    pLogIn: TPanel;
    lUsuario: TLabel;
    lClave: TLabel;
    eUsuario: TEdit;
    eClave: TEdit;
    qryLogin: TMyQuery;
    qryLoginusuario: TStringField;
    qryLoginclave: TStringField;
    qryLogintipo: TStringField;
    bbEntrar: TBitBtn;
    bbSalir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bbSalirClick(Sender: TObject);
    procedure bbEntrarClick(Sender: TObject);
    procedure eClaveKeyPress(Sender: TObject; var Key: Char);
    procedure eUsuarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogIn: TfLogIn;
  Usuario: string;
  Clave: string;
  Tipo: string;
  
implementation

uses uPrincipal, uOrdenServicio;

{$R *.dfm}

procedure TfLogIn.FormShow(Sender: TObject);
begin
     fPrincipal.MyConnectT.Connect; 
     fOrdenServicio.Close;
end;

procedure TfLogIn.bbSalirClick(Sender: TObject);
begin
    qryLogin.Close;
    flogin.Close;
end;

procedure TfLogIn.bbEntrarClick(Sender: TObject);
begin
    if trim(eUsuario.Text) = '' then
       begin
       showmessage('Debe ingresar el nombre del Usuario');
       eUsuario.SetFocus;
       Exit;
       end;
    if trim(eClave.Text) = '' then
       begin
       showmessage('Debe ingresar la Clave');
       eClave.SetFocus;
       Exit;
       end;

//aqui valida el usuario con su clave, si existe.

   qryLogin.Close;
   repeat
   qryLogin.Open;

   usuario:= qryLoginusuario.AsString;
   clave:= qryLoginclave.AsString;

if eUsuario.Text = usuario then
   begin
   if eClave.Text = clave then
      begin
      fPrincipal.Show;
      fLogin.Hide;
      Exit;
      end
   else
      begin
      showmessage('El Usuario o la Clave es incorrecta');
      eUsuario.Clear;
      eClave.Clear;
      eUsuario.SetFocus;
      Exit;
      end;
   end;

   qryLogin.Next;
   until qryLogin.Eof;

showmessage('El Usuario o la Clave es incorrecta');
eUsuario.Clear;
eClave.Clear;
eUsuario.SetFocus;
end;

procedure TfLogIn.eClaveKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key=#13) then
      bbEntrar.Click;
   if (Key=#27) then
      bbSalir.Click;
end;

procedure TfLogIn.eUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key=#27) then
      bbSalir.Click;
end;

end.
