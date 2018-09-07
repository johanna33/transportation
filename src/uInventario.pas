unit uInventario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DB, MemDS, DBAccess,
  MyAccess;

type
  TfInventario = class(TForm)
    tbInventario: TToolBar;
    tbNuevoI: TToolButton;
    tbGrabarI: TToolButton;
    tbBorrarI: TToolButton;
    tbModificarI: TToolButton;
    separator1: TToolButton;
    tbInicioI: TToolButton;
    tbUltimoI: TToolButton;
    tbAnteriorI: TToolButton;
    tbSiguienteI: TToolButton;
    separator2: TToolButton;
    tbSalirI: TToolButton;
    pInventario: TPanel;
    lcod: TLabel;
    larticulo: TLabel;
    lprecio: TLabel;
    lcant: TLabel;
    eCodi: TEdit;
    eArti: TEdit;
    ePreci: TEdit;
    eCanti: TEdit;
    lfecha: TLabel;
    dpFechai: TDateTimePicker;
    qryCodi: TMyQuery;
    qryGrabari: TMyQuery;
    qryBorrari: TMyQuery;
    qryModifi: TMyQuery;
    qryConsultaI: TMyQuery;
    dsConsultaI: TDataSource;
    lnota: TLabel;
    qryConsultaIcodi: TIntegerField;
    qryConsultaIarticulo: TStringField;
    qryConsultaIprecio: TFloatField;
    qryConsultaIcanti: TFloatField;
    qryConsultaIuser_i: TStringField;
    qryConsultaInota: TStringField;
    qryConsultaIfechai: TDateField;
    memoNota: TEdit;
    tbConsultaI: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure tbNuevoIClick(Sender: TObject);
    procedure tbGrabarIClick(Sender: TObject);
    procedure tbBorrarIClick(Sender: TObject);
    procedure tbModificarIClick(Sender: TObject);
    procedure tbInicioIClick(Sender: TObject);
    procedure tbUltimoIClick(Sender: TObject);
    procedure tbAnteriorIClick(Sender: TObject);
    procedure tbSiguienteIClick(Sender: TObject);
    procedure tbSalirIClick(Sender: TObject);
    procedure eCodiChange(Sender: TObject);
    procedure dpFechaiChange(Sender: TObject);
    procedure eArtiChange(Sender: TObject);
    procedure ePreciChange(Sender: TObject);
    procedure eCantiChange(Sender: TObject);
    procedure memoNota1Change(Sender: TObject);
    procedure tbConsultaIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarI;
    procedure NuevoI;
    procedure GrabarFechaI;
    procedure ModificarFechaI;
  end;

var
  fInventario: TfInventario;
  Inum : String;
  Icambio : boolean;
  Inew : boolean;
  Iusuario: string;

implementation

uses uMenuOper, uMant, uPrincipal, uConsultaInventario;

{$R *.dfm}

procedure TfInventario.FormShow(Sender: TObject);
begin
    fInventario.Top:=90;
    fInventario.Left:=90;
    fMenuOper.Hide;
    fMant.Hide;
    Icambio:=false;
    NuevoI;
end;

procedure TfInventario.NuevoI;
begin
eCodi.Clear;
eArti.Clear;
ePreci.Clear;
eCanti.Clear;
memonota.Clear;
qryCodi.Close;
qryCodi.Open;
end;

procedure TfInventario.DesplegarI;
begin
eCodi.Text := qryConsultaicodi.AsString;
eArti.Text := qryConsultaiarticulo.AsString;
ePreci.Text := qryConsultaiprecio.AsString;
eCanti.Text := qryConsultaicanti.AsString;
dpFechai.Date:= qryConsultaifechai.AsDateTime;
memonota.Text:= qryConsultainota.AsString;

pInventario.Enabled:= False;
tbBorrarI.Enabled:=true;
tbModificarI.Enabled:=true;
tbGrabarI.Enabled:=false;
end;

procedure TfInventario.GrabarFechaI;
var
s: string;
d: TDateTime;
begin
  d:= dpFechai.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);
  qryGrabari.ParamByName('vfechai').AsString:= s ;
end;

procedure TfInventario.ModificarFechaI;
var
s: string;
d: TDateTime;
begin
  d:= dpFechai.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);
  qryModifi.ParamByName('vfechai').AsString:= s ;
end;

procedure TfInventario.tbNuevoIClick(Sender: TObject);
begin
   Inew:= true;
   pInventario.Enabled:= True;
   NuevoI;
   eCodi.Text:= qryCodi.FieldValues['max(codi)'] + 1 ;
   dpFechai.Date:= Date;
   tbBorrarI.Enabled:=false;
   tbModificarI.Enabled:=false;
   tbGrabarI.Enabled:=true;
   Icambio:= false;
end;

procedure TfInventario.tbGrabarIClick(Sender: TObject);
begin
     Inew:=false;
     Iusuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eCodi.Text)= '' then
begin
   showmessage ('Debe ingresar el Código del Artículo');
   eCodi.SetFocus;
   Exit;
end;

if trim(eArti.Text)= '' then
begin
   showmessage ('Debe ingresar el Artículo');
   eArti.SetFocus;
   Exit;
end;

if trim(eCanti.Text)= '' then
begin
   showmessage ('Debe ingresar la Cantidad');
   eCanti.SetFocus;
   Exit;
end;

if eCodi.Text = qryConsultaicodi.AsString then
   begin
     showmessage ('Ese Registro Ya Existe');
     Exit;
   end;

qryGrabari.ParamByName('vcodi').AsString:= eCodi.Text ;
qryGrabari.ParamByName('varti').AsString:= eArti.Text ;
qryGrabari.ParamByName('vprecio').AsString:= ePreci.Text ;
qryGrabari.ParamByName('vcanti').AsString:= eCanti.Text ;
qryGrabari.ParamByName('vuseri').AsString:= Iusuario;
qryGrabari.ParamByName('vnota').AsString:= memonota.Text;
GrabarFechaI;

qryGrabari.Execute;
NuevoI;
qryConsultaI.Close;
pInventario.Enabled:= False;
tbGrabarI.Enabled:=false;
Icambio:= false;
end;

procedure TfInventario.tbBorrarIClick(Sender: TObject);
var
BMboton : Integer;
begin
   if trim(eCodi.Text)= '' then
   begin
   showmessage ('Debe buscar un Artículo para borrar');
   Exit;
   end;

   if eCodi.Text = '10000' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BMboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Registro',MB_YESNO+MB_ICONINFORMATION);
   If BMboton = ID_YES Then
      begin
      Inum:= eCodi.Text;
      qryBorrarI.ParamByName('bcodi').AsString:= Inum;
      qryBorrarI.Execute;
      NuevoI;
      qryConsultaI.Close;
      tbBorrarI.Enabled:=false;
      tbModificarI.Enabled:=false;
      end
   Else
    Exit;
end;

procedure TfInventario.tbModificarIClick(Sender: TObject);
begin
   if trim(eCodi.Text)= '' then
   begin
   showmessage ('Debe buscar un Artículo para modificar');
   Exit;
   end;

   if pInventario.Enabled = false then
   begin
   pInventario.Enabled:=True;
   tbInicioI.Enabled:=false;
   tbUltimoI.Enabled:=false;
   tbAnteriorI.Enabled:=false;
   tbSiguienteI.Enabled:=false;
   tbBorrarI.Enabled:=false;
   tbNuevoI.Enabled:=false;
   Exit;
   end;

      Inum:= eCodi.Text;
      Iusuario:= fPrincipal.dbtUsuarioA.Caption;
      
if trim(eArti.Text)= '' then
begin
   showmessage ('Debe ingresar el Artículo');
   eArti.SetFocus;
   Exit;
end;

if trim(eCanti.Text)= '' then
begin
   showmessage ('Debe ingresar la Cantidad');
   eCanti.SetFocus;
   Exit;
end;

qryModifi.ParamByName('vcodi').AsString:= eCodi.Text ;
qryModifi.ParamByName('varti').AsString:= eArti.Text ;
qryModifi.ParamByName('vprecio').AsString:= ePreci.Text ;
qryModifi.ParamByName('vcanti').AsString:= eCanti.Text ;
qryModifi.ParamByName('vuseri').AsString:= Iusuario;
qryModifi.ParamByName('vnota').AsString:= memonota.Text;
ModificarFechaI;

qryModifi.ParamByName('v1codi').AsString:= Inum ;
qryModifi.Execute;
qryConsultaI.RefreshRecord;

      pInventario.Enabled:= False;
      tbInicioI.Enabled:=true;
      tbUltimoI.Enabled:=true;
      tbAnteriorI.Enabled:=true;
      tbSiguienteI.Enabled:=true;
      tbNuevoI.Enabled:=true;
      tbBorrarI.Enabled:=false;
      tbModificarI.Enabled:=false;
      Icambio:= false;
end;

procedure TfInventario.tbInicioIClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Inew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarI.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Inew:=false;
   end;

qryConsultaI.sql.Clear;
qryConsultaI.sql.Add('select * from inventario order by codi') ;
qryConsultaI.Open;
qryConsultaI.First;
DesplegarI;

if qryConsultaI.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfInventario.tbUltimoIClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Inew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarI.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Inew:=false;
   end;

qryConsultaI.sql.Clear;
qryConsultaI.sql.Add('select * from inventario order by codi') ;
qryConsultaI.Open;
qryConsultaI.Last;
DesplegarI;

if qryConsultaI.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfInventario.tbAnteriorIClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Inew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarI.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Inew:=false;
   end;

qryConsultaI.Open;
qryConsultaI.Prior;
DesplegarI;

if qryConsultaI.Bof then
  showmessage('No hay más anteriores.');
end;

procedure TfInventario.tbSiguienteIClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Inew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarI.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Inew:=false;
   end;

qryConsultaI.Open;
qryConsultaI.Next;
DesplegarI;

if qryConsultaI.Eof then
  showmessage('No hay más siguientes.');
end;

procedure TfInventario.tbSalirIClick(Sender: TObject);
var
MChaboton : Integer;
begin
  if Icambio = true then
    begin
    MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If MChaboton = ID_YES Then
       begin
         if tbModificarI.Enabled = false then
         begin
         tbGrabarI.Click;
         exit;
         end
         else
         begin
         tbModificarI.Click;
         exit;
         end
       end
    end;

tbInicioI.Enabled:=true;
tbUltimoI.Enabled:=true;
tbAnteriorI.Enabled:=true;
tbSiguienteI.Enabled:=true;
tbNuevoI.Enabled:=true;
tbGrabarI.Enabled:=false;
tbBorrarI.Enabled:=false;
tbModificarI.Enabled:=false;

Icambio:= false;
Inew:=false;
NuevoI;
qryConsultaI.Close;
qryCodi.Close;
fInventario.Close; 
end;

procedure TfInventario.eCodiChange(Sender: TObject);
begin
if pInventario.Enabled = true then
   Icambio:= true;
end;

procedure TfInventario.dpFechaiChange(Sender: TObject);
begin
if pInventario.Enabled = true then
   Icambio:= true;
end;

procedure TfInventario.eArtiChange(Sender: TObject);
begin
if pInventario.Enabled = true then
   Icambio:= true;
end;

procedure TfInventario.ePreciChange(Sender: TObject);
begin
if pInventario.Enabled = true then
   Icambio:= true;
end;

procedure TfInventario.eCantiChange(Sender: TObject);
begin
if pInventario.Enabled = true then
   Icambio:= true;
end;

procedure TfInventario.memoNota1Change(Sender: TObject);
begin
if pInventario.Enabled = true then
   Icambio:= true;
end;

procedure TfInventario.tbConsultaIClick(Sender: TObject);
var
IChaboton : Integer;
begin

   if Inew = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      IChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If IChaboton = ID_YES Then
      begin
      tbGrabarI.Click;
      Exit;
      end
      else if IChaboton = ID_NO then
      Inew:=false;
   end;

dlgConsultaInventario.ShowModal;   //muestra el dialogo de consulta.
qryConsultaI.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaInventario.ModalResult = mrOK then
begin
qryConsultaI.sql.Clear;
qryConsultaI.sql.Add('select * from inventario where codi is not null') ;
qryConsultaI.sql.Add('and codi like "%' + dlgConsultaInventario.eConsultaIn.Text  +'%"') ;
qryConsultaI.Open;
DesplegarI; //llama la funcion despleglar los datos.

if qryConsultaI.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

end.
