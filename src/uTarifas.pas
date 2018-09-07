unit uTarifas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, StdCtrls, Buttons, Grids, DBGrids,
  DB, DBTables, MemDS, DBAccess, MyAccess, Mask, DBCtrls;

type
  TfTarifas = class(TForm)
    pTarifa: TPanel;
    dsBuscarTarifa: TDataSource;
    bbNuevoT: TBitBtn;
    bbModiT: TBitBtn;
    bbBorrarT: TBitBtn;
    bbSalirT: TBitBtn;
    bbNuevaT: TBitBtn;
    bbBuscarT: TBitBtn;
    bbGrabarT: TBitBtn;
    bbReporteT: TBitBtn;
    lcod1: TLabel;
    ecodT: TEdit;
    eCod: TEdit;
    ldesc: TLabel;
    eDescri: TEdit;
    lcliente: TLabel;
    lcate: TLabel;
    eCate: TEdit;
    l55: TLabel;
    e7: TEdit;
    l46: TLabel;
    e6: TEdit;
    l34: TLabel;
    e5: TEdit;
    l23: TLabel;
    e4: TEdit;
    e3: TEdit;
    l9: TLabel;
    l5: TLabel;
    e2: TEdit;
    l1: TLabel;
    e1: TEdit;
    dbGBuscarTarifa: TDBGrid;
    lrd: TLabel;
    lus: TLabel;
    bbOkT: TBitBtn;
    e8: TEdit;
    l59: TLabel;
    qryCod: TMyQuery;
    qryGrabarT: TMyQuery;
    qryModificarT: TMyQuery;
    qryBorrarT: TMyQuery;
    qryBuscarTarifa: TMyQuery;
    lnota: TLabel;
    eNota: TEdit;
    qryClienteT: TMyQuery;
    qryClienteTcod_cliente: TIntegerField;
    qryClienteTnombre: TStringField;
    dbGClienteT: TDBGrid;
    eClienteT: TDBEdit;
    dsClienteT: TDataSource;
    bbA: TBitBtn;
    GBServicios: TGroupBox;
    qryServ: TMyQuery;
    qryGrabarServ: TMyQuery;
    qryNumServ: TMyQuery;
    dsServ: TDataSource;
    qryCodcod_t: TStringField;
    eID: TEdit;
    qryBuscarTarifaid: TIntegerField;
    qryBuscarTarifaCod_T: TStringField;
    qryBuscarTarifacod_d: TIntegerField;
    qryBuscarTarifaDescripcion: TStringField;
    qryBuscarTarifanota: TStringField;
    qryBuscarTarifaCod_Cliente: TIntegerField;
    qryBuscarTarifaCliente: TStringField;
    qryBuscarTarifaCate: TStringField;
    qryBuscarTarifauser_s: TStringField;
    qryBuscarTarifavalor1: TFloatField;
    qryBuscarTarifavalor2: TFloatField;
    qryBuscarTarifavalor3: TFloatField;
    qryBuscarTarifavalor4: TFloatField;
    qryBuscarTarifavalor5: TFloatField;
    qryBuscarTarifavalor6: TFloatField;
    qryBuscarTarifavalor7: TFloatField;
    qryBuscarTarifavalor8: TFloatField;
    GBserv: TGroupBox;
    dbGServ: TDBGrid;
    bSalirT: TButton;
    eP1: TEdit;
    eP11: TEdit;
    l11: TLabel;
    eP2: TEdit;
    l22: TLabel;
    eP22: TEdit;
    eP3: TEdit;
    l33: TLabel;
    eP33: TEdit;
    eP4: TEdit;
    l44: TLabel;
    eP44: TEdit;
    eP5: TEdit;
    l555: TLabel;
    eP55: TEdit;
    eP6: TEdit;
    l66: TLabel;
    eP66: TEdit;
    eP7: TEdit;
    l77: TLabel;
    eP77: TEdit;
    eP8: TEdit;
    l88: TLabel;
    eP88: TEdit;
    bGrabarRango: TButton;
    qryGrabarRango: TMyQuery;
    qryBuscarRango: TMyQuery;
    qryBuscarRangoid: TStringField;
    qryBuscarRangomin: TStringField;
    qryBuscarRangonum: TIntegerField;
    qryBuscarRangocod: TStringField;
    qryBuscarRangomax: TStringField;
    bModiRango: TButton;
    qryModiRango: TMyQuery;
    bbPor: TBitBtn;
    GBpor: TGroupBox;
    lcod: TLabel;
    eNumT: TEdit;
    lmas: TLabel;
    lmenos: TLabel;
    lpor2: TLabel;
    lpor1: TLabel;
    eMas: TEdit;
    eMenos: TEdit;
    bApP: TButton;
    bSalirP: TButton;
    qryMod: TMyQuery;
    bbListaT: TBitBtn;
    bBorrarSer: TButton;
    qryBorrarSer: TMyQuery;
    bNuevo: TButton;
    bGrabar: TButton;
    bSalir: TButton;
    eCod1: TEdit;
    lcodg: TLabel;
    ldescrip: TLabel;
    eDes1: TEdit;
    qryModSer: TMyQuery;
    bModser: TButton;
    procedure FormShow(Sender: TObject);
    procedure dbGBuscarTarifaCellClick(Column: TColumn);
    procedure bbSalirTClick(Sender: TObject);
    procedure bbNuevoTClick(Sender: TObject);
    procedure bbBuscarTClick(Sender: TObject);
    procedure bbGrabarTClick(Sender: TObject);
    procedure bbNuevaTClick(Sender: TObject);
    procedure bbReporteTClick(Sender: TObject);
    procedure bbOkTClick(Sender: TObject);
    procedure bbModiTClick(Sender: TObject);
    procedure bbBorrarTClick(Sender: TObject);
    procedure bbServClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure bNuevoClick(Sender: TObject);
    procedure bGrabarClick(Sender: TObject);
    procedure bbAClick(Sender: TObject);
    procedure dbGServDblClick(Sender: TObject);
    procedure bSalirTClick(Sender: TObject);
    procedure bGrabarRangoClick(Sender: TObject);
    procedure eP1Enter(Sender: TObject);
    procedure eP11Enter(Sender: TObject);
    procedure eP2Enter(Sender: TObject);
    procedure eP22Enter(Sender: TObject);
    procedure eP3Enter(Sender: TObject);
    procedure eP33Enter(Sender: TObject);
    procedure eP4Enter(Sender: TObject);
    procedure eP44Enter(Sender: TObject);
    procedure bModiRangoClick(Sender: TObject);
    procedure eP5Enter(Sender: TObject);
    procedure eP55Enter(Sender: TObject);
    procedure eP6Enter(Sender: TObject);
    procedure eP66Enter(Sender: TObject);
    procedure eP7Enter(Sender: TObject);
    procedure eP77Enter(Sender: TObject);
    procedure eP8Enter(Sender: TObject);
    procedure eP88Enter(Sender: TObject);
    procedure bbPorClick(Sender: TObject);
    procedure bSalirPClick(Sender: TObject);
    procedure bApPClick(Sender: TObject);
    procedure bbListaTClick(Sender: TObject);
    procedure dbGServCellClick(Column: TColumn);
    procedure bBorrarSerClick(Sender: TObject);
    procedure bModserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure desplegarBT;
    Procedure NuevoBT;
    Procedure DesplegarRango;
  end;

var
  fTarifas: TfTarifas;
  Tnum : String;
  Tusuario: string;
  D1: Boolean;
  D2: Boolean;
  D3: Boolean;
  D4: Boolean;
  D5: Boolean;
  D6: Boolean;
  D7: Boolean;
  D8: Boolean;

  SCod: String;
  SDescri: String;


implementation

uses uMenuOper, uBuscarTarifa, uRTarifa, uPrincipal, uRListaTarifa;

{$R *.dfm}

procedure TfTarifas.FormShow(Sender: TObject);
begin
    fTarifas.Top:=29;
    fTarifas.Left:=8;
    fMenuOper.Hide;
    bbNuevaT.Enabled:=true;
    bbBuscarT.Enabled:=true;
    bbReporteT.Enabled:=true;
    bbSalirT.Enabled:=true;
    bbNuevoT.Enabled:=false;
    bbGrabarT.Enabled:=false;
    bbBorrarT.Enabled:=false;
    bbModiT.Enabled:=false;
    bModiRango.Enabled:=false;
    NuevoBT;
    qryClienteT.Close;
    GBServicios.Visible:=false;
    GBServ.Visible:=false;
    GBpor.Visible:=false;
end;

procedure TfTarifas.desplegarBT;
begin
eCodT.Text:= qryBuscarTarifacod_T.AsString;
eCod.Text:= qryBuscarTarifaCod_D.AsString;
eDescri.Text:= qryBuscarTarifadescripcion.AsString;
eNota.Text:=qryBuscarTarifanota.AsString;
eClienteT.Text:=qryBuscarTarifacliente.AsString;
eCate.Text:=qryBuscarTarifacate.AsString;
e1.Text:= qryBuscarTarifavalor1.AsString;
e2.Text:= qryBuscarTarifavalor2.AsString;
e3.Text:= qryBuscarTarifavalor3.AsString;
e4.Text:= qryBuscarTarifavalor4.AsString;
e5.Text:= qryBuscarTarifavalor5.AsString;
e6.Text:= qryBuscarTarifavalor6.AsString;
e7.Text:= qryBuscarTarifavalor7.AsString;
e8.Text:= qryBuscarTarifavalor8.AsString;
dbGClienteT.DataSource:=dsBuscarTarifa;
eID.Text:= qryBuscarTarifaid.AsString;
end;

procedure TfTarifas.DesplegarRango;
begin
qryBuscarRango.First;
eP1.Text:= qryBuscarRangomin.AsString;
eP11.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP2.Text:= qryBuscarRangomin.AsString;
eP22.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP3.Text:= qryBuscarRangomin.AsString;
eP33.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP4.Text:= qryBuscarRangomin.AsString;
eP44.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP5.Text:= qryBuscarRangomin.AsString;
eP55.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP6.Text:= qryBuscarRangomin.AsString;
eP66.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP7.Text:= qryBuscarRangomin.AsString;
eP77.Text:= qryBuscarRangomax.AsString;
qryBuscarRango.Next;
eP8.Text:= qryBuscarRangomin.AsString;
eP88.Text:= qryBuscarRangomax.AsString;
end;

procedure TfTarifas.NuevoBT;
begin
eCodT.Clear;
eCod.Clear;
eDescri.Clear;
eNota.Clear;
eCate.Clear;
e1.Clear;
e2.Clear;
e3.Clear;
e4.Clear;
e5.Clear;
e6.Clear;
e7.Clear;
e8.Clear;
eP1.Clear;
eP11.Clear;
eP2.Clear;
eP22.Clear;
eP3.Clear;
eP33.Clear;
eP4.Clear;
eP44.Clear;
eP5.Clear;
eP55.Clear;
eP6.Clear;
eP66.Clear;
eP7.Clear;
eP77.Clear;
eP8.Clear;
eP88.Clear;
dbGClienteT.DataSource:=dsClienteT;
eClienteT.Clear;
qryBuscarTarifa.Close;
qryClienteT.Close;
end;

procedure TfTarifas.dbGBuscarTarifaCellClick(Column: TColumn);
begin
    desplegarBT;
end;

procedure TfTarifas.bbSalirTClick(Sender: TObject);
begin
bbNuevaT.Enabled:=true;
bbBuscarT.Enabled:=true;
bbReporteT.Enabled:=true;
bbSalirT.Enabled:=true;
bbNuevoT.Enabled:=false;
bbGrabarT.Enabled:=false;
bbBorrarT.Enabled:=false;
bbModiT.Enabled:=false;
bModiRango.Enabled:=false;
NuevoBT;
qryBuscarTarifa.Close;
qryCod.Close;
qryClienteT.Close;
qryServ.Close;
qryNumServ.Close;
qryBuscarRango.Close;
qryMod.Close;
fTarifas.Close;
end;

procedure TfTarifas.bbNuevoTClick(Sender: TObject);
begin
   if trim(eCodT.Text)= '' then
   begin
   showmessage ('Debe Buscar una Tarifa');
   Exit;
   end;

   eCod.Clear;
   eDescri.Clear;
   e1.Clear;
   e2.Clear;
   e3.Clear;
   e4.Clear;
   e5.Clear;
   e6.Clear;
   e7.Clear;
   e8.Clear;
   bbA.SetFocus;
   eCodT.Enabled:=false;
   eCate.Enabled:=false;
   dbGClienteT.Enabled:=false;

   bbGrabarT.Enabled:=true;
   bbModiT.Enabled:=false;
   bbBorrarT.Enabled:=false;
   bModiRango.Enabled:=true;
end;

procedure TfTarifas.bbBuscarTClick(Sender: TObject);
begin
bbOkT.Visible:=false;
NuevoBT;
dlgBuscarTarifa.ShowModal;

if dlgBuscarTarifa.ModalResult = mrOK then
   begin
   qryBuscarTarifa.SQL.Clear;
   qryBuscarTarifa.SQL.Add('select * from Servicios where cod_T = "'+ dlgBuscarTarifa.eBuscarT.Text +'" ');
   qryBuscarTarifa.Open;

   if qryBuscarTarifa.IsEmpty then
      begin
      showmessage ('Esa Tarifa no Existe');
      NuevoBT;
      Exit;
      end;

     //despliega los datos de la tarifa. 
    eCodT.Text:= qryBuscarTarifacod_T.AsString;
    dbGClienteT.DataSource:=dsBuscarTarifa;
    eClienteT.Text:=qryBuscarTarifacliente.AsString;
    eCate.Text:=qryBuscarTarifacate.AsString;
    eNota.Text:=qryBuscarTarifanota.AsString;

//esto busca en la tabla paxa el rango y los despliega en el formulario.
     qryBUscarRango.SQL.Clear;
     qryBUscarRango.SQL.Add('select * from Paxa where cod = "'+ dlgBuscarTarifa.eBuscarT.Text +'"');
     qryBUscarRango.SQL.Add('order by id');
     qryBUscarRango.Open;

     if qryBuscarRango.IsEmpty then
        begin
        Exit;
        end;

     DesplegarRango;

    end
Else
   Exit;

eCodT.Enabled:=false;
eCate.Enabled:=false;
dbGClienteT.Enabled:=false;
bbGrabarT.Enabled:=false;
bbNuevoT.Enabled:=true;
bbModiT.Enabled:=true;
bbBorrarT.Enabled:=true;
bModiRango.Enabled:=true;

end;

procedure TfTarifas.bbGrabarTClick(Sender: TObject);
begin
   Tusuario:= fPrincipal.dbtUsuarioA.Caption;

   if trim(eCodT.Text)= '' then
      begin
      showmessage ('Debe ingresar el Código de la Tarifa');
      eCodT.SetFocus;
      Exit;
   end;

   if trim(eCate.Text)= '' then
      begin
      showmessage ('Debe indicar si es RD (pesos) o US (doláres)');
      eCate.SetFocus;
      Exit;
   end;


   if trim(eCod.Text)= '' then
      begin
      showmessage ('Debe ingresar el Código de la Servicio');
      eCod.SetFocus;
      Exit;
   end;

   if trim(eDescri.Text)= '' then
      begin
      showmessage ('Debe ingresar el Servicio');
      eDescri.SetFocus;
      Exit;
   end;

qryGrabarT.ParamByName('vcodt').AsString:= ecodT.Text ;
qryGrabarT.ParamByName('vcodd').AsString:= eCod.Text ;
qryGrabarT.ParamByName('vdescri').AsString:= eDescri.Text ;
qryGrabarT.ParamByName('vnota').AsString:= eNota.Text ;
qryGrabarT.ParamByName('vcodc').AsString:= dbGClienteT.SelectedField.AsString;
qryGrabarT.ParamByName('vcliente').AsString:= eClienteT.Text ;
qryGrabarT.ParamByName('vcate').AsString:= eCate.Text ;
qryGrabarT.ParamByName('v1').AsString:= e1.Text ;
qryGrabarT.ParamByName('v2').AsString:= e2.Text ;
qryGrabarT.ParamByName('v3').AsString:= e3.Text ;
qryGrabarT.ParamByName('v4').AsString:= e4.Text ;
qryGrabarT.ParamByName('v5').AsString:= e5.Text ;
qryGrabarT.ParamByName('v6').AsString:= e6.Text ;
qryGrabarT.ParamByName('v7').AsString:= e7.Text ;
qryGrabarT.ParamByName('v8').AsString:= e8.Text ;
qryGrabarT.ParamByName('vusers').AsString:= Tusuario ;

qryGrabarT.Execute;
bbNuevoT.Click;
bbGrabarT.Enabled:=false;
bbNuevoT.Enabled:=true;
bbModiT.Enabled:=true;
bbBorrarT.Enabled:=true;
bbOkT.Visible:=false;
bModiRango.Enabled:=true;

qryBuscarTarifa.Close;
qryBuscarTarifa.SQL.Clear;
qryBuscarTarifa.SQL.Add('select * from Servicios where cod_T = "'+ eCodT.Text +'" ');
qryBuscarTarifa.Open;

end;

procedure TfTarifas.bbNuevaTClick(Sender: TObject);
begin
   NuevoBT;
   bbNuevoT.Enabled:=false;
   bbGrabarT.Enabled:=false;
   bbModiT.Enabled:=false;
   bbBorrarT.Enabled:=false;
   bModiRango.Enabled:=false;

   eCodT.Enabled:=true;
   eCate.Enabled:=true;
   dbGClienteT.Enabled:=true;
   qryClienteT.Open;
   eCodT.SetFocus;
   bbOkT.Visible:=true;
end;

procedure TfTarifas.bbReporteTClick(Sender: TObject);
begin
   NuevoBT;
   bbNuevoT.Enabled:=false;
   bbGrabarT.Enabled:=false;
   bbModiT.Enabled:=false;
   bbBorrarT.Enabled:=false;
   bModiRango.Enabled:=false;
   bbOkT.Visible:=false;
   eCodT.Enabled:=false;
   eCate.Enabled:=false;
   dbGClienteT.Enabled:=false;
   
dlgBuscarTarifa.ShowModal;

if dlgBuscarTarifa.ModalResult = mrOK then
   begin
   fRtarifa.qryRTarifa.SQL.Clear;
   fRtarifa.qryRTarifa.SQL.Add('select * from Servicios where cod_T = "'+ dlgBuscarTarifa.eBuscarT.Text +'" ');
   fRtarifa.qryRTarifa.Open;

   if fRtarifa.qryRTarifa.IsEmpty then
      begin
      showmessage ('Esa Tarifa no Existe');
      Exit;
      end;

//esto busca el la tabla de paxa el rango.
     qryBuscarRango.SQL.Clear;
     qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ dlgBuscarTarifa.eBuscarT.Text +'"');
     qryBuscarRango.SQL.Add('order by id');
     qryBuscarRango.Open;

     if qryBuscarRango.IsEmpty then
        begin
        Exit;
        end;

//aqui asigno los valores de los rangos a los labels en el reporte.
     qryBuscarRango.First;
     fRtarifa.qrlvalor1.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor2.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor3.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor4.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor5.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor6.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor7.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
     qryBuscarRango.Next;
     fRtarifa.qrlvalor8.Caption:= qryBuscarRangomin.AsString + '-' + qryBuscarRangomax.AsString;
 

   if fRtarifa.qryRTarifacate.AsString = 'RD' then
       begin
       fRtarifa.qrlTitulo7.Caption:='TARIFA DE SERVICIOS (RD$)';
       fRtarifa.qrlTitulo7.Enabled:=true;
       end;
   if fRtarifa.qryRTarifacate.AsString = 'US' then
       begin
       fRtarifa.qrlTitulo7.Caption:='TARIFA DE SERVICIOS (US$)';
       fRtarifa.qrlTitulo7.Enabled:=true;
       end;

   fRtarifa.RTarifa.Preview;

   Exit;
   end
Else
   Exit;

end;

procedure TfTarifas.bbOkTClick(Sender: TObject);
begin
   //si la tarifa existe tira ERROR
qryCod.Close;
repeat
qryCod.Open;
   if eCodT.Text = qryCodcod_t.AsString then
      begin
      showmessage ('Esa Tarifa Ya Existe');
      Exit;
      end;
qryCod.Next;
until qryCod.Eof;


if trim(eP1.Text)= '' then
   begin
   showmessage ('Debe ingresar el Rango de Pasajeros');
   eP1.SetFocus;
   Exit;
   end;
if trim(eP11.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP11.SetFocus;
   Exit;
   end;

if trim(eDescri.Text)= '' then
   begin
   showmessage ('Debe ingresar el Servicio');
   bbA.SetFocus;
   Exit;
   end;

    bGrabarRango.Click;
    bbGrabarT.Click;
    bbNuevoT.Click;
    bbGrabarT.Enabled:=false;
    bbModiT.Enabled:=true;
end;

procedure TfTarifas.bbModiTClick(Sender: TObject);
begin
if trim(eCod.Text)= '' then
   begin
   showmessage ('Debe elegir una Linea para Modificar');
   Exit;
   end;

Tnum:= eID.Text;
Tusuario:= fPrincipal.dbtUsuarioA.Caption;

   if trim(eCod.Text)= '' then
      begin
      showmessage ('Debe ingresar el Código de la Servicio');
      eCod.SetFocus;
      Exit;
   end;

   if trim(eDescri.Text)= '' then
      begin
      showmessage ('Debe ingresar el Servicio');
      eDescri.SetFocus;
      Exit;
   end;

qryModificarT.ParamByName('vcodt').AsString:= ecodT.Text ;
qryModificarT.ParamByName('vcodd').AsString:= eCod.Text ;
qryModificarT.ParamByName('vdescri').AsString:= eDescri.Text ;
qryModificarT.ParamByName('vnota').AsString:= eNota.Text ;
qryModificarT.ParamByName('vcodc').AsString:= dbGClienteT.SelectedField.AsString ;
qryModificarT.ParamByName('vcliente').AsString:= eClienteT.Text ;
qryModificarT.ParamByName('vcate').AsString:= eCate.Text ;
qryModificarT.ParamByName('v1').AsString:= e1.Text ;
qryModificarT.ParamByName('v2').AsString:= e2.Text ;
qryModificarT.ParamByName('v3').AsString:= e3.Text ;
qryModificarT.ParamByName('v4').AsString:= e4.Text ;
qryModificarT.ParamByName('v5').AsString:= e5.Text ;
qryModificarT.ParamByName('v6').AsString:= e6.Text ;
qryModificarT.ParamByName('v7').AsString:= e7.Text ;
qryModificarT.ParamByName('v8').AsString:= e8.Text ;
qryModificarT.ParamByName('vusers').AsString:= Tusuario ;

qryModificarT.ParamByName('v1tarifa').AsString:= Tnum ;
qryModificarT.Execute;
qryBuscarTarifa.RefreshRecord;

bbGrabarT.Enabled:=false;
bbNuevoT.Enabled:=true;
bbModiT.Enabled:=true;
bbBorrarT.Enabled:=true;
bModiRango.Enabled:=true;
end;

procedure TfTarifas.bbBorrarTClick(Sender: TObject);
var
BTboton : Integer;
begin
   if trim(eCod.Text)= '' then
   begin
   showmessage ('Debe elegir una Linea para borrar');
   Exit;
   end;

BTboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Servicio',MB_YESNO+MB_ICONINFORMATION);
   If BTboton = ID_YES Then
      begin
      Tnum:= eID.Text;
      qryBorrarT.ParamByName('btarifa').AsString:= Tnum;
      qryBorrarT.Execute;
      bbNuevoT.Click;
      bbGrabarT.Enabled:=false;
      bbNuevoT.Enabled:=true;
      bbModiT.Enabled:=true;
      bbBorrarT.Enabled:=true;
      bModiRango.Enabled:=true;
      qryBuscarTarifa.Refresh;
      end
   Else
    Exit;
end;

procedure TfTarifas.bbServClick(Sender: TObject);
begin
   GBservicios.Visible:=true;
   bNuevo.Click;
end;

procedure TfTarifas.bSalirClick(Sender: TObject);
begin
    qryServ.Close;
    qryNumServ.Close;
    GBServicios.Visible:=false;
end;

procedure TfTarifas.bNuevoClick(Sender: TObject);
begin
qryNumServ.Close;
qryNumServ.Open;
eCod1.Clear;
eDes1.Clear;
eDes1.SetFocus;
eCod1.Text:= qryNumServ.FieldValues['max(cod_d)'] + 1 ;
end;

procedure TfTarifas.bGrabarClick(Sender: TObject);
begin
if trim(eDes1.Text)= '' then
begin
   showmessage ('Debe ingresar el Servicio');
   eDes1.SetFocus;
   Exit;
end;

qryGrabarServ.ParamByName('vcod').AsString:= eCod1.Text ;
qryGrabarServ.ParamByName('vdes').AsString:= eDes1.Text ;
qryGrabarServ.Execute;

      qryServ.Close;
      qryServ.Open;

end;

procedure TfTarifas.bbAClick(Sender: TObject);
begin
qryServ.Open;
GBserv.Visible:=true;
end;

procedure TfTarifas.dbGServDblClick(Sender: TObject);
begin
eCod.Text:= dbGServ.Fields[0].AsString;
eDescri.Text:= dbGServ.Fields[1].AsString;
GBserv.Visible:=false;
end;

procedure TfTarifas.bSalirTClick(Sender: TObject);
begin
GBserv.Visible:=false;
end;

procedure TfTarifas.bGrabarRangoClick(Sender: TObject);
var
i:integer;
begin

if trim(eP1.Text)= '' then
   begin
   showmessage ('Debe ingresar el Rango de Pasajeros');
   eP1.SetFocus;
   Exit;
   end;
if trim(eP11.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP11.SetFocus;
   Exit;
   end;

if TryStrToInt(eP1.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP1.SetFocus;
  Exit;
  end;
if TryStrToInt(eP11.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP11.SetFocus;
  Exit;
  end;

if trim(eP2.Text)= '' then
   begin
   eP2.Text:= '0';
   eP22.Text:= '0';
   end;
if trim(eP22.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP22.SetFocus;
   Exit;
   end;

if TryStrToInt(eP2.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP2.SetFocus;
  Exit;
  end;
if TryStrToInt(eP22.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP22.SetFocus;
  Exit;
  end;

if trim(eP3.Text)= '' then
   begin
   eP3.Text:= '0';
   eP33.Text:= '0';
   end;
if trim(eP33.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP33.SetFocus;
   Exit;
   end;

if TryStrToInt(eP3.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP3.SetFocus;
  Exit;
  end;
if TryStrToInt(eP33.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP33.SetFocus;
  Exit;
  end;

if trim(eP4.Text)= '' then
   begin
   eP4.Text:= '0';
   eP44.Text:= '0';
   end;
if trim(eP44.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP44.SetFocus;
   Exit;
   end;

if TryStrToInt(eP4.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP4.SetFocus;
  Exit;
  end;
if TryStrToInt(eP44.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP44.SetFocus;
  Exit;
  end;

if trim(eP5.Text)= '' then
   begin
   eP5.Text:= '0';
   eP55.Text:= '0';
   end;
if trim(eP55.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP55.SetFocus;
   Exit;
   end;

if TryStrToInt(eP5.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP5.SetFocus;
  Exit;
  end;
if TryStrToInt(eP55.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP55.SetFocus;
  Exit;
  end;

if trim(eP6.Text)= '' then
   begin
   eP6.Text:= '0';
   eP66.Text:= '0';
   end;
if trim(eP66.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP66.SetFocus;
   Exit;
   end;

if TryStrToInt(eP6.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP6.SetFocus;
  Exit;
  end;
if TryStrToInt(eP66.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP66.SetFocus;
  Exit;
  end;

if trim(eP7.Text)= '' then
   begin
   eP7.Text:= '0';
   eP77.Text:= '0';
   end;
if trim(eP77.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP77.SetFocus;
   Exit;
   end;

if TryStrToInt(eP7.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP7.SetFocus;
  Exit;
  end;
if TryStrToInt(eP77.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP77.SetFocus;
  Exit;
  end;

if trim(eP8.Text)= '' then
   begin
   eP8.Text:= '0';
   eP88.Text:= '0';
   end;
if trim(eP88.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP88.SetFocus;
   Exit;
   end;

if TryStrToInt(eP8.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP8.SetFocus;
  Exit;
  end;
if TryStrToInt(eP88.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP88.SetFocus;
  Exit;
  end;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '1';
qryGrabarRango.ParamByName('vmin').AsString:= eP1.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP11.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '2';
qryGrabarRango.ParamByName('vmin').AsString:= eP2.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP22.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '3';
qryGrabarRango.ParamByName('vmin').AsString:= eP3.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP33.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '4';
qryGrabarRango.ParamByName('vmin').AsString:= eP4.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP44.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '5';
qryGrabarRango.ParamByName('vmin').AsString:= eP5.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP55.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '6';
qryGrabarRango.ParamByName('vmin').AsString:= eP6.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP66.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '7';
qryGrabarRango.ParamByName('vmin').AsString:= eP7.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP77.Text;
qryGrabarRango.Execute;

qryGrabarRango.ParamByName('vcod').AsString:= eCodT.Text;
qryGrabarRango.ParamByName('vid').AsString:= '8';
qryGrabarRango.ParamByName('vmin').AsString:= eP8.Text;
qryGrabarRango.ParamByName('vmax').AsString:= eP88.Text;
qryGrabarRango.Execute;

end;

procedure TfTarifas.eP1Enter(Sender: TObject);
begin
  D1:= true;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP11Enter(Sender: TObject);
begin
  D1:= true;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP2Enter(Sender: TObject);
begin
  D2:= true;
  D1:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP22Enter(Sender: TObject);
begin
  D2:= true;
  D1:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP3Enter(Sender: TObject);
begin
  D3:= true;
  D1:= false;
  D2:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP33Enter(Sender: TObject);
begin
  D3:= true;
  D1:= false;
  D2:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP4Enter(Sender: TObject);
begin
  D4:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP44Enter(Sender: TObject);
begin
  D4:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D5:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.bModiRangoClick(Sender: TObject);
var
Mnum: string;
i: integer;
begin
   if trim(eCodT.Text)= '' then
   begin
   showmessage ('Debe elegir una Linea para Obtener el Código de la Tarifa');
   Exit;
   end;

if D1 = true then  //el 1er par de rango.
   begin
   if trim(eP1.Text)= '' then
      begin
      showmessage ('Debe ingresar el Rango de Pasajeros');
      eP1.SetFocus;
      Exit;
      end;
   if trim(eP11.Text)= '' then
      begin
      showmessage ('Debe completar el Rango de Pasajeros');
      eP11.SetFocus;
      Exit;
      end;

   if TryStrToInt(eP1.Text, i) = false then
      begin
      ShowMessage('El Rango de Pasajero debe ser Número');
      eP1.SetFocus;
      Exit;
      end;
   if TryStrToInt(eP11.Text, i) = false then
      begin
      ShowMessage('El Rango de Pasajero debe ser Número');
      eP11.SetFocus;
      Exit;
      end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '1' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '1' ;
   qryModiRango.ParamByName('vmin').AsString:= eP1.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP11.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D2 = true then  //el 2do par de rango.
   begin
   if trim(eP2.Text)= '' then
   begin
   eP2.Text:= '0';
   eP22.Text:= '0';
   end;
   if trim(eP22.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP22.SetFocus;
   Exit;
   end;

  if TryStrToInt(eP2.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP2.SetFocus;
  Exit;
  end;
  if TryStrToInt(eP22.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP22.SetFocus;
  Exit;
  end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '2' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '2' ;
   qryModiRango.ParamByName('vmin').AsString:= eP2.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP22.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D3 = true then  //el 3er par de rango
   begin
   if trim(eP3.Text)= '' then
   begin
   eP3.Text:= '0';
   eP33.Text:= '0';
   end;
   if trim(eP33.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP33.SetFocus;
   Exit;
   end;

  if TryStrToInt(eP3.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP3.SetFocus;
  Exit;
  end;
  if TryStrToInt(eP33.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP33.SetFocus;
  Exit;
  end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '3' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '3' ;
   qryModiRango.ParamByName('vmin').AsString:= eP3.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP33.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D4 = true then  //el 4to par de rango
   begin
    if trim(eP4.Text)= '' then
   begin
   eP4.Text:= '0';
   eP44.Text:= '0';
   end;
   if trim(eP44.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP44.SetFocus;
   Exit;
   end;

   if TryStrToInt(eP4.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP4.SetFocus;
  Exit;
  end;
   if TryStrToInt(eP44.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP44.SetFocus;
  Exit;
  end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '4' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '4' ;
   qryModiRango.ParamByName('vmin').AsString:= eP4.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP44.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D5 = true then  //el 5to par de rango
   begin
   if trim(eP5.Text)= '' then
   begin
   eP5.Text:= '0';
   eP55.Text:= '0';
   end;
   if trim(eP55.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP55.SetFocus;
   Exit;
   end;

   if TryStrToInt(eP5.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP5.SetFocus;
  Exit;
  end;
   if TryStrToInt(eP55.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP55.SetFocus;
  Exit;
  end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '5' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '5' ;
   qryModiRango.ParamByName('vmin').AsString:= eP5.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP55.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D6 = true then   //el 6to par de rango
   begin
   if trim(eP6.Text)= '' then
   begin
   eP6.Text:= '0';
   eP66.Text:= '0';
   end;
    if trim(eP66.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP66.SetFocus;
   Exit;
   end;

   if TryStrToInt(eP6.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP6.SetFocus;
  Exit;
  end;
   if TryStrToInt(eP66.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP66.SetFocus;
  Exit;
  end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '6' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '6' ;
   qryModiRango.ParamByName('vmin').AsString:= eP6.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP66.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D7 = true then //el 7mo par de rango
   begin
   if trim(eP7.Text)= '' then
   begin
   eP7.Text:= '0';
   eP77.Text:= '0';
   end;
    if trim(eP77.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP77.SetFocus;
   Exit;
   end;

   if TryStrToInt(eP7.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP7.SetFocus;
  Exit;
  end;
   if TryStrToInt(eP77.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP77.SetFocus;
  Exit;
  end;


   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '7' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '7' ;
   qryModiRango.ParamByName('vmin').AsString:= eP7.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP77.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;

if D8 = true then   //el 8vo par de rango
   begin
   if trim(eP8.Text)= '' then
   begin
   eP8.Text:= '0';
   eP88.Text:= '0';
   end;
    if trim(eP88.Text)= '' then
   begin
   showmessage ('Debe completar el Rango de Pasajeros');
   eP88.SetFocus;
   Exit;
   end;

   if TryStrToInt(eP8.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP8.SetFocus;
  Exit;
  end;
   if TryStrToInt(eP88.Text, i) = false then
  begin
  ShowMessage('El Rango de Pasajero debe ser Número');
  eP88.SetFocus;
  Exit;
  end;

   qryBuscarRango.SQL.Clear;
   qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
   qryBuscarRango.SQL.Add('and id = "'+ '8' +'"');
   qryBuscarRango.Open;
   Mnum:= qryBuscarRangonum.AsString;

   qryModiRango.ParamByName('vcod').AsString:= ecodT.Text ;
   qryModiRango.ParamByName('vid').AsString:= '8' ;
   qryModiRango.ParamByName('vmin').AsString:= eP8.Text ;
   qryModiRango.ParamByName('vmax').AsString:= eP88.Text ;
   qryModiRango.ParamByName('v1num').AsString:= Mnum ;
   qryModiRango.Execute;
   end;   //aqui termina el 8vo par de rango. fin de todos.

qryBuscarRango.SQL.Clear;
qryBuscarRango.SQL.Add('select * from Paxa where cod = "'+ eCodT.Text +'"');
qryBuscarRango.SQL.Add('order by id');
qryBuscarRango.Open;

        if qryBuscarRango.IsEmpty then
           begin
           Exit;
           end;

DesplegarRango;
end;

procedure TfTarifas.eP5Enter(Sender: TObject);
begin
  D5:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP55Enter(Sender: TObject);
begin
  D5:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D6:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP6Enter(Sender: TObject);
begin
  D6:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP66Enter(Sender: TObject);
begin
  D6:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D7:= false;
  D8:= false;
end;

procedure TfTarifas.eP7Enter(Sender: TObject);
begin
  D7:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D8:= false;
end;

procedure TfTarifas.eP77Enter(Sender: TObject);
begin
  D7:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D8:= false;
end;

procedure TfTarifas.eP8Enter(Sender: TObject);
begin
  D8:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
end;

procedure TfTarifas.eP88Enter(Sender: TObject);
begin
  D8:= true;
  D1:= false;
  D2:= false;
  D3:= false;
  D4:= false;
  D5:= false;
  D6:= false;
  D7:= false;
end;

procedure TfTarifas.bbPorClick(Sender: TObject);
begin
   GBpor.Visible:=true;
   eNumT.Clear;
   eMas.Clear;
   eMenos.Clear;
   eNumt.SetFocus;
end;

procedure TfTarifas.bSalirPClick(Sender: TObject);
begin
GBpor.Visible:=false;
end;

procedure TfTarifas.bApPClick(Sender: TObject);
var
id: string;
aa: Single;
A: string;
B: real;
v1: real;
v2: real;
v3: real;
v4: real;
v5: real;
v6: real;
v7: real;
v8: real;
c1: real;
c2: real;
c3: real;
c4: real;
c5: real;
c6: real;
c7: real;
c8: real;
begin

   if trim(eNumT.Text)= '' then
      begin
      showmessage ('Debe ingresar el Número de Tarifa');
      eNumT.SetFocus;
      Exit;
      end;

   if trim(eMas.Text) <> '0' then
      eMenos.Text:= '0';
   if trim(eMenos.Text) <> '0' then
      eMas.Text:= '0';

   if TryStrToFloat(eMas.Text, aa) = false then
      begin
      ShowMessage('Porfavor el porciento debe ser Número');
      eMas.Clear;
      eMas.SetFocus;
      Exit;
      end;
   if TryStrToFloat(eMenos.Text, aa) = false then
      begin
      ShowMessage('Porfavor el porciento debe ser Número');
      eMenos.Clear;
      eMenos.SetFocus;
      Exit;
      end;

   qryBuscarTarifa.SQL.Clear;
   qryBuscarTarifa.SQL.Add('select * from Servicios where cod_T = "'+ eNumT.Text +'" ');
   qryBuscarTarifa.Open;

   if qryBuscarTarifa.IsEmpty then
      begin
      showmessage ('Esa Tarifa no Existe');
      Exit;
      end;


if trim(eMas.Text) <> '0' then
   begin
      A:= '0.' + eMas.Text;
      B:= StrToFloat(A);

      qryBuscarTarifa.Close;
        repeat
        qryBuscarTarifa.Open;
        id:= qryBuscarTarifaid.AsString;
        v1:= qryBuscarTarifavalor1.AsFloat;
        v2:= qryBuscarTarifavalor2.AsFloat;
        v3:= qryBuscarTarifavalor3.AsFloat;
        v4:= qryBuscarTarifavalor4.AsFloat;
        v5:= qryBuscarTarifavalor5.AsFloat;
        v6:= qryBuscarTarifavalor6.AsFloat;
        v7:= qryBuscarTarifavalor7.AsFloat;
        v8:= qryBuscarTarifavalor8.AsFloat;

        c1:= v1 * B;
        c2:= v2 * B;
        c3:= v3 * B;
        c4:= v4 * B;
        c5:= v5 * B;
        c6:= v6 * B;
        c7:= v7 * B;
        c8:= v8 * B;

        v1:= v1 + c1;
        v2:= v2 + c2;
        v3:= v3 + c3;
        v4:= v4 + c4;
        v5:= v5 + c5;
        v6:= v6 + c6;
        v7:= v7 + c7;
        v8:= v8 + c8;

        qryMod.SQL.Clear;
        qryMod.SQL.Add('Update Servicios SET valor1 = "'+ FloatToStr(v1) +'", valor2 = "'+ FloatToStr(v2) +'", valor3 = "'+ FloatToStr(v3) +'", valor4 = "'+ FloatToStr(v4) +'", valor5 = "'+ FloatToStr(v5) +'", valor6 = "'+ FloatToStr(v6) +'", valor7 = "'+ FloatToStr(v7) +'", valor8 = "'+ FloatToStr(v8) +'"');
        qryMod.SQL.Add('where  id = "'+ id +'"');
        qryMod.Execute;

        qryBuscarTarifa.Next;
        until qryBuscarTarifa.Eof;

        qryBuscarTarifa.Close;
        qryBuscarTarifa.Open;
    end
else if trim(eMenos.Text) <> '0' then
   begin
      A:= '0.' + eMenos.Text;
      B:= StrToFloat(A);

      qryBuscarTarifa.Close;
        repeat
        qryBuscarTarifa.Open;
        id:= qryBuscarTarifaid.AsString;
        v1:= qryBuscarTarifavalor1.AsFloat;
        v2:= qryBuscarTarifavalor2.AsFloat;
        v3:= qryBuscarTarifavalor3.AsFloat;
        v4:= qryBuscarTarifavalor4.AsFloat;
        v5:= qryBuscarTarifavalor5.AsFloat;
        v6:= qryBuscarTarifavalor6.AsFloat;
        v7:= qryBuscarTarifavalor7.AsFloat;
        v8:= qryBuscarTarifavalor8.AsFloat;

        c1:= v1 * B;
        c2:= v2 * B;
        c3:= v3 * B;
        c4:= v4 * B;
        c5:= v5 * B;
        c6:= v6 * B;
        c7:= v7 * B;
        c8:= v8 * B;

        v1:= v1 - c1;
        v2:= v2 - c2;
        v3:= v3 - c3;
        v4:= v4 - c4;
        v5:= v5 - c5;
        v6:= v6 - c6;
        v7:= v7 - c7;
        v8:= v8 - c8;


        qryMod.SQL.Clear;
        qryMod.SQL.Add('Update Servicios SET valor1 = "'+ FloatToStr(v1) +'", valor2 = "'+ FloatToStr(v2) +'", valor3 = "'+ FloatToStr(v3) +'", valor4 = "'+ FloatToStr(v4) +'", valor5 = "'+ FloatToStr(v5) +'", valor6 = "'+ FloatToStr(v6) +'", valor7 = "'+ FloatToStr(v7) +'", valor8 = "'+ FloatToStr(v8) +'"');
        qryMod.SQL.Add('where  id = "'+ id +'"');
        qryMod.Execute;

        qryBuscarTarifa.Next;
        until qryBuscarTarifa.Eof;

        qryBuscarTarifa.Close;
        qryBuscarTarifa.Open;
   end;


end;

procedure TfTarifas.bbListaTClick(Sender: TObject);
begin
NuevoBT;

fRListaTarifa.qryTarifa.Close;
fRListaTarifa.qryTarifa.Open;

fRListaTarifa.RListaTarifa.Preview;  //muestra el Listado de Tarifas.

end;

procedure TfTarifas.dbGServCellClick(Column: TColumn);
begin
//aqui se captan los valores para saber si le da a borrar.

SCod:= dbGServ.Fields[0].AsString;
SDescri:= dbGServ.Fields[1].AsString;

eCod1.Text:= Scod;
eDes1.Text:= SDescri;

end;

procedure TfTarifas.bBorrarSerClick(Sender: TObject);
begin
//aqui hace lo de borrar el servicio

   if trim(eDes1.Text)= '' then
   begin
   showmessage ('Debe buscar un Servicio para Borrar');
   Exit;
   end;

      qryBorrarSer.ParamByName('bcod').AsString:= SCod;
      qryBorrarSer.Execute;

      qryServ.Close;
      qryServ.Open;

eCod1.Clear;
eDes1.Clear;

end;

procedure TfTarifas.bModserClick(Sender: TObject);
begin
// aqui se modifica el servicio

   if trim(eDes1.Text)= '' then
   begin
   showmessage ('Debe buscar un Servicio para modificar');
   Exit;
   end;

   qryModSer.ParamByName('vcod').AsString:= eCod1.Text ;
   qryModSer.ParamByName('vdes').AsString:= eDes1.Text ;

   qryModSer.ParamByName('v1cod').AsString:= Scod ;
   qryModSer.Execute;

   qryServ.RefreshRecord;


end;

end.
