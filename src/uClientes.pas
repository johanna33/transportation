unit uClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DB, DBTables, MemDS,
  DBAccess, MyAccess;

type
  TfClientes = class(TForm)
    tbCliente: TToolBar;
    tbNuevoC: TToolButton;
    tbGrabarC: TToolButton;
    tbBorrarC: TToolButton;
    tbModificarC: TToolButton;
    separador1: TToolButton;
    tbInicioC: TToolButton;
    tbUltimoC: TToolButton;
    tbAnteriorC: TToolButton;
    tbSiguienteC: TToolButton;
    separador2: TToolButton;
    tbSalirC: TToolButton;
    pCliente: TPanel;
    lCienteNum: TLabel;
    lNombre: TLabel;
    lRnc: TLabel;
    lDireccion: TLabel;
    lTel: TLabel;
    lfax: TLabel;
    lCel: TLabel;
    lemail: TLabel;
    lWeb: TLabel;
    lContacto: TLabel;
    eClienteNum: TEdit;
    eNombre: TEdit;
    eRnc: TEdit;
    eDireccion: TEdit;
    eTel1: TEdit;
    eTel2: TEdit;
    eFax: TEdit;
    eCel: TEdit;
    eContacto: TEdit;
    eEmail: TEdit;
    eWeb: TEdit;
    lFoma: TLabel;
    eForma: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    qryConsultaC: TMyQuery;
    qryModificarC: TMyQuery;
    qryBorrarC: TMyQuery;
    qryGrabarC: TMyQuery;
    qryClienteNum: TMyQuery;
    ltarifa: TLabel;
    eTarifa: TEdit;
    tbListaC: TToolButton;
    tbConsultaC: TToolButton;
    eStacl: TEdit;
    lstatuCl: TLabel;
    lnota: TLabel;
    lnota1: TLabel;
    qryConsultaCcod_cliente: TIntegerField;
    qryConsultaCnombre: TStringField;
    qryConsultaCrnc: TStringField;
    qryConsultaCforma: TStringField;
    qryConsultaCtarifa: TStringField;
    qryConsultaCdireccion: TStringField;
    qryConsultaCtel_1: TStringField;
    qryConsultaCtel_2: TStringField;
    qryConsultaCfax: TStringField;
    qryConsultaCsta: TStringField;
    qryConsultaCcel: TStringField;
    qryConsultaCemail: TStringField;
    qryConsultaCweb: TStringField;
    qryConsultaCuser_c: TStringField;
    qryConsultaCcontacto: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tbInicioCClick(Sender: TObject);
    procedure tbUltimoCClick(Sender: TObject);
    procedure tbAnteriorCClick(Sender: TObject);
    procedure tbSiguienteCClick(Sender: TObject);
    procedure tbSalirCClick(Sender: TObject);
    procedure tbNuevoCClick(Sender: TObject);
    procedure tbGrabarCClick(Sender: TObject);
    procedure tbBorrarCClick(Sender: TObject);
    procedure tbModificarCClick(Sender: TObject);
    procedure eClienteNumChange(Sender: TObject);
    procedure eNombreChange(Sender: TObject);
    procedure eRncChange(Sender: TObject);
    procedure eDireccionChange(Sender: TObject);
    procedure eTel1Change(Sender: TObject);
    procedure eTel2Change(Sender: TObject);
    procedure eFaxChange(Sender: TObject);
    procedure eContactoChange(Sender: TObject);
    procedure eCelChange(Sender: TObject);
    procedure eEmailChange(Sender: TObject);
    procedure eWebChange(Sender: TObject);
    procedure eFormaChange(Sender: TObject);
    procedure eTarifaChange(Sender: TObject);
    procedure tbListaCClick(Sender: TObject);
    procedure tbConsultaCClick(Sender: TObject);
    procedure eStaclChange(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarC;
    procedure NuevoC;
  end;

var
  fClientes: TfClientes;
  Cnum : String;
  Ccambio : boolean;
  Cnew : boolean;
  Cusuario: string;

implementation

uses uMenuOper, uPrincipal, uRListaClientes, uConsultaCliente;

{$R *.dfm}

procedure TfClientes.NuevoC;
begin
eClienteNum.Clear;
eNombre.Clear;
eRnc.Clear;
eForma.Clear;
eDireccion.Clear;
eTel1.Clear;
eTel2.Clear;
eFax.Clear;
eCel.Clear;
eEmail.Clear;
eWeb.Clear;
eTarifa.Clear;
eContacto.Clear;
eStacl.Clear;
qryClienteNum.Close;
qryClienteNum.Open;
end;

procedure TfClientes.DesplegarC;
begin
eClienteNum.Text := qryConsultaCcod_cliente.AsString;
eNombre.Text := qryConsultaCnombre.AsString;
eRnc.Text := qryConsultaCrnc.AsString;
eForma.Text := qryConsultaCforma.AsString;
eDireccion.Text := qryConsultaCdireccion.AsString;
eTel1.Text := qryConsultaCtel_1.AsString;
eTel2.Text := qryConsultaCtel_2.AsString;
eFax.Text := qryConsultaCfax.AsString;
eCel.Text := qryConsultaCcel.AsString;
eEmail.Text := qryConsultaCemail.AsString;
eWeb.Text := qryConsultaCweb.AsString;
eContacto.Text := qryConsultaCcontacto.AsString;
eTarifa.Text:= qryConsultaCtarifa.AsString;
eStacl.Text:= qryConsultaCsta.AsString;

pCliente.Enabled:= False;

tbBorrarC.Enabled:=true;
tbModificarC.Enabled:=true;
tbGrabarC.Enabled:=false;
end;

procedure TfClientes.FormShow(Sender: TObject);
begin
    fClientes.Top:=90;
    fClientes.Left:=90;
    fMenuOper.Hide;
    Ccambio:=false;
    NuevoC;
end;

procedure TfClientes.tbInicioCClick(Sender: TObject);
var
CChaboton : Integer;
begin
   if Cnew = true then
   begin
      CChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If CChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if CChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.sql.Clear;
qryConsultaC.sql.Add('select * from clientes order by cod_cliente') ;
qryConsultaC.Open;
qryConsultaC.First;
DesplegarC;

if qryConsultaC.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfClientes.tbUltimoCClick(Sender: TObject);
var
CChaboton : Integer;
begin
   if Cnew = true then
   begin
      CChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If CChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if CChaboton = ID_NO then
      Cnew:=false;
   end;
   
qryConsultaC.sql.Clear;
qryConsultaC.sql.Add('select * from clientes order by cod_cliente') ;
qryConsultaC.Open;
qryConsultaC.Last;
DesplegarC;

if qryConsultaC.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfClientes.tbAnteriorCClick(Sender: TObject);
var
CChaboton : Integer;
begin
   if Cnew = true then
   begin
      CChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If CChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if CChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.Open;
qryConsultaC.Prior;
DesplegarC;

if qryConsultaC.Bof then
  showmessage('No hay más anteriores.');

end;

procedure TfClientes.tbSiguienteCClick(Sender: TObject);
var
CChaboton : Integer;
begin
   if Cnew = true then
   begin
      CChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If CChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if CChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.Open;
qryConsultaC.Next;
DesplegarC;

if qryConsultaC.Eof then
  showmessage('No hay más siguientes.');

end;

procedure TfClientes.tbSalirCClick(Sender: TObject);
var
CChaboton : Integer;
begin
    if Ccambio = true then
    begin
    CChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If CChaboton = ID_YES Then
       begin
         if tbModificarC.Enabled = false then
         begin
         tbGrabarC.Click;
         exit;
         end
         else
         begin
         tbModificarC.Click;
         exit;
         end
       end
    end;

tbInicioC.Enabled:=true;
tbUltimoC.Enabled:=true;
tbAnteriorC.Enabled:=true;
tbSiguienteC.Enabled:=true;
tbNuevoC.Enabled:=true;
tbGrabarC.Enabled:=false;
tbBorrarC.Enabled:=false;
tbModificarC.Enabled:=false;

Ccambio:= false;
Cnew:=false;
NuevoC;
qryClienteNum.Close;
qryConsultaC.Close;
fClientes.Close;
end;

procedure TfClientes.tbNuevoCClick(Sender: TObject);
begin
   Cnew:= true;
   pCliente.Enabled:= True;
   NuevoC;
   eClienteNum.Text:= qryClienteNum.FieldValues['max(cod_cliente)'] + 1 ;
   tbBorrarC.Enabled:=false;
   tbModificarC.Enabled:=false;
   tbGrabarC.Enabled:=true;
   Ccambio:= false;
end;

procedure TfClientes.tbGrabarCClick(Sender: TObject);
begin
    Cnew:=false;
    Cusuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eClienteNum.Text)= '' then
begin
   showmessage ('Debe ingresar el Número de Cliente');
   eClienteNum.SetFocus;
   Exit;
end;

if trim(eNombre.Text)= '' then
begin
   showmessage ('Debe ingresar el Nombre');
   eNombre.SetFocus;
   Exit;
end;

if trim(eTel1.Text)= '' then
begin
   showmessage ('Debe ingresar un Número de Telefono');
   eTel1.SetFocus;
   Exit;
end;

if trim(eForma.Text)= '' then
begin
   showmessage ('Debe ingresar la Forma de Facturación');
   eForma.SetFocus;
   Exit;
end;

if trim(eStacl.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Cliente');
   eStacl.SetFocus;
   Exit;
end;


if eClienteNum.Text = qryConsultaCcod_cliente.AsString then
   begin
     showmessage ('Este Cliente Ya Existe');
     Exit;
   end;


qryGrabarC.ParamByName('vcodcliente').AsString:= eClienteNum.Text ;
qryGrabarC.ParamByName('vnombre').AsString:= eNombre.Text ;
qryGrabarC.ParamByName('vrnc').AsString:= eRnc.Text ;
qryGrabarC.ParamByName('vdir').AsString:= eDireccion.Text ;
qryGrabarC.ParamByName('vtel1').AsString:= eTel1.Text ;
qryGrabarC.ParamByName('vtel2').AsString:= eTel2.Text ;
qryGrabarC.ParamByName('vfax').AsString:= eFax.Text ;
qryGrabarC.ParamByName('vcel').AsString:= eCel.Text ;
qryGrabarC.ParamByName('vemail').AsString:= eEmail.Text ;
qryGrabarC.ParamByName('vweb').AsString:= eWeb.Text ;
qryGrabarC.ParamByName('vcontacto').AsString:= eContacto.Text ;
qryGrabarC.ParamByName('vforma').AsString:= eForma.Text ;
qryGrabarC.ParamByName('vuserc').AsString:= Cusuario ;
qryGrabarC.ParamByName('vtarifa').AsString:= eTarifa.Text ;
qryGrabarC.ParamByName('vstac').AsString:= eStacl.Text;

qryGrabarC.Execute;
NuevoC;
qryConsultaC.Close;
pCliente.Enabled:=False;
tbGrabarC.Enabled:=false;
Ccambio:= false;
end;

procedure TfClientes.tbBorrarCClick(Sender: TObject);
var
BCboton : Integer;
begin
   if trim(eClienteNum.Text)= '' then
   begin
   showmessage ('Debe buscar un Cliente para borrar');
   Exit;
   end;

   if eClienteNum.Text = '100' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BCboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Cliente',MB_YESNO+MB_ICONINFORMATION);
   If BCboton = ID_YES Then
      begin
      Cnum:= eClienteNum.Text;
      qryBorrarC.ParamByName('bclien').AsString:= Cnum;
      qryBorrarC.Execute;
      NuevoC;
      qryConsultaC.Close;
      tbBorrarC.Enabled:=false;
      tbModificarC.Enabled:=false;
      end
   Else
    Exit;

end;

procedure TfClientes.tbModificarCClick(Sender: TObject);
begin

   if trim(eClienteNum.Text)= '' then
   begin
   showmessage ('Debe buscar un Cliente para modificar');
   Exit;
   end;

   if pCliente.Enabled = false then
   begin
   pCliente.Enabled:=True;
   tbInicioC.Enabled:=false;
   tbUltimoC.Enabled:=false;
   tbAnteriorC.Enabled:=false;
   tbSiguienteC.Enabled:=false;
   tbBorrarC.Enabled:=false;
   tbNuevoC.Enabled:=false;
   Exit;
   end;

      Cnum:= eClienteNum.Text;
      Cusuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eNombre.Text)= '' then
begin
   showmessage ('Debe ingresar el Nombre');
   eNombre.SetFocus;
   Exit;
end;

if trim(eTel1.Text)= '' then
begin
   showmessage ('Debe ingresar un Número de Telefono');
   eTel1.SetFocus;
   Exit;
end;

if trim(eForma.Text)= '' then
begin
   showmessage ('Debe ingresar la Forma de Facturación');
   eForma.SetFocus;
   Exit;
end;

if trim(eStacl.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Cliente');
   eStacl.SetFocus;
   Exit;
end;

qryModificarC.ParamByName('vstac').AsString:= eStacl.Text;
qryModificarC.ParamByName('vcodcliente').AsString:= eClienteNum.Text ;
qryModificarC.ParamByName('vnombre').AsString:= eNombre.Text ;
qryModificarC.ParamByName('vrnc').AsString:= eRnc.Text ;
qryModificarC.ParamByName('vdir').AsString:= eDireccion.Text ;
qryModificarC.ParamByName('vtel1').AsString:= eTel1.Text ;
qryModificarC.ParamByName('vtel2').AsString:= eTel2.Text ;
qryModificarC.ParamByName('vfax').AsString:= eFax.Text ;
qryModificarC.ParamByName('vcel').AsString:= eCel.Text ;
qryModificarC.ParamByName('vemail').AsString:= eEmail.Text ;
qryModificarC.ParamByName('vweb').AsString:= eWeb.Text ;
qryModificarC.ParamByName('vcontacto').AsString:= eContacto.Text ;
qryModificarC.ParamByName('vforma').AsString:= eForma.Text ;
qryModificarC.ParamByName('vuserc').AsString:= Cusuario ;
qryModificarC.ParamByName('vtarifa').AsString:= eTarifa.Text ;

qryModificarC.ParamByName('v1clien').AsString:= Cnum ;
qryModificarC.Execute;
qryConsultaC.RefreshRecord;

      pCliente.Enabled:= False;
      tbInicioC.Enabled:=true;
      tbUltimoC.Enabled:=true;
      tbAnteriorC.Enabled:=true;
      tbSiguienteC.Enabled:=true;
      tbNuevoC.Enabled:=true;
      tbBorrarC.Enabled:=false;
      tbModificarC.Enabled:=false;
      Ccambio:= false;
end;

procedure TfClientes.eClienteNumChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eNombreChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eRncChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eDireccionChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eTel1Change(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eTel2Change(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eFaxChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eContactoChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eCelChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eEmailChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eWebChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eFormaChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.eTarifaChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

procedure TfClientes.tbListaCClick(Sender: TObject);
begin
   fRListaCliente.qryClienteL.Close;
   fRListaCliente.qryClienteL.Open;
   fRListaCliente.RListaCliente.Preview;  //muestra el reporte de Lista Clientes.
end;

procedure TfClientes.tbConsultaCClick(Sender: TObject);
var
CChaboton : Integer;
begin

   if Cnew = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      CChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If CChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if CChaboton = ID_NO then
      Cnew:=false;
   end;

dlgConsultaCliente.ShowModal;   //muestra el dialogo de consulta.
qryConsultaC.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaCliente.ModalResult = mrOK then
begin
qryConsultaC.sql.Clear;
qryConsultaC.sql.Add('select * from clientes where cod_cliente is not null') ;
qryConsultaC.sql.Add('and cod_cliente like "%' + dlgConsultaCliente.eConsultaCliente.Text  +'%"') ;
qryConsultaC.Open;
DesplegarC; //llama la funcion despleglar los datos.

if qryConsultaC.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

procedure TfClientes.eStaclChange(Sender: TObject);
begin
 if pCliente.Enabled = true then
 Ccambio:= true;
end;

end.
