unit uOrdenServicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ToolWin, ExtCtrls, DB, DBTables, DBCtrls,
  Grids, DBGrids, Mask, Buttons, DBAccess, MyAccess, MemDS, StrUtils;

type
  TfOrdenServicio = class(TForm)
    tbOrden: TToolBar;
    tbNuevo: TToolButton;
    tbGrabar: TToolButton;
    tbBorrar: TToolButton;
    tbModificar: TToolButton;
    separador1: TToolButton;
    tbConsulta: TToolButton;
    tbInicio: TToolButton;
    tbUltimo: TToolButton;
    tbAnterior: TToolButton;
    tbSiguiente: TToolButton;
    tbSalir: TToolButton;
    pOrdenServicio: TPanel;
    lOrdenNum: TLabel;
    eOrdenNum: TEdit;
    lFechaServicio: TLabel;
    lHoraServicio: TLabel;
    eHoraServicio: TEdit;
    lCliente: TLabel;
    lServicio: TLabel;
    eServicio: TEdit;
    lTipoServicio: TLabel;
    lPax: TLabel;
    lSolicitado: TLabel;
    eSolicitado: TEdit;
    lOrdenCliente: TLabel;
    eBonos: TEdit;
    lLineaA: TLabel;
    eLineaA: TEdit;
    lNumVuelo: TLabel;
    eNumVuelo: TEdit;
    lHoraVuelo: TLabel;
    eHoraVuelo: TEdit;
    lRuta: TLabel;
    eRuta: TEdit;
    memoObservaciones: TMemo;
    lObservaciones: TLabel;
    dsCliente: TDataSource;
    dbeCliente: TDBEdit;
    sdFicha: TDataSource;
    dbGTipoServicio: TDBGrid;
    dsTipoServicio: TDataSource;
    dbeTipoServicio: TDBEdit;
    dbGCliente: TDBGrid;
    lValorDolares: TLabel;
    lValorPesos: TLabel;
    dsChofer: TDataSource;
    dsChofer1: TDataSource;
    dsChofer2: TDataSource;
    GboxPatas: TGroupBox;
    lChofer1: TLabel;
    lChofer2: TLabel;
    lComision1: TLabel;
    lPorciento1: TLabel;
    lComision2: TLabel;
    lPorciento2: TLabel;
    dbeChofer1: TDBEdit;
    dbeChofer2: TDBEdit;
    dbGChofer2: TDBGrid;
    dbGChofer1: TDBGrid;
    checkbPatas: TCheckBox;
    GboxChofer: TGroupBox;
    lChofer: TLabel;
    dbGChofer: TDBGrid;
    dbeChofer: TDBEdit;
    lComision: TLabel;
    lPorciento: TLabel;
    dsServicio: TDataSource;
    datePOrden: TDateTimePicker;
    dsConsulta: TDataSource;
    GboxStatus: TGroupBox;
    rbCancelar: TRadioButton;
    rbActivar: TRadioButton;
    lCancelar: TLabel;
    dbeFicha1: TDBEdit;
    dbeFicha2: TDBEdit;
    dbGFicha1: TDBGrid;
    dbGFicha2: TDBGrid;
    dsFicha1: TDataSource;
    dsFicha2: TDataSource;
    dbGFicha: TDBGrid;
    dbeFichaa: TDBEdit;
    dbeFicha: TDBEdit;
    dbeFichaa1: TDBEdit;
    dbeFichaa2: TDBEdit;
    lCapacidad: TLabel;
    lFicha: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eCapacidad: TEdit;
    eComision: TEdit;
    eComision1: TEdit;
    eCapacidad1: TEdit;
    eComision2: TEdit;
    eCapacidad2: TEdit;
    cbBonos: TCheckBox;
    lbono: TLabel;
    ePax: TEdit;
    dbeValorPesos: TEdit;
    dbeValorDolares: TEdit;
    qryGrabar: TMyQuery;
    qryBorrar: TMyQuery;
    qryOrdenNum: TMyQuery;
    qryModificar: TMyQuery;
    qryConsulta: TMyQuery;
    qryCliente: TMyQuery;
    qryServicio: TMyQuery;
    qryPax: TMyQuery;
    qryTipoServicio: TMyQuery;
    qryCap: TMyQuery;
    qryFicha: TMyQuery;
    qryFicha1: TMyQuery;
    qryFicha2: TMyQuery;
    qryChofer: TMyQuery;
    qryChofer1: TMyQuery;
    qryChofer2: TMyQuery;
    qryFichaficha: TStringField;
    qryFichamarca: TStringField;
    qryFichacapacidad: TIntegerField;
    qryFichaporciento: TIntegerField;
    qryFicha1ficha: TStringField;
    qryFicha1marca: TStringField;
    qryFicha1capacidad: TIntegerField;
    qryFicha1porciento: TIntegerField;
    qryFicha2ficha: TStringField;
    qryFicha2marca: TStringField;
    qryFicha2capacidad: TIntegerField;
    qryFicha2porciento: TIntegerField;
    lnota2: TLabel;
    lnota1: TLabel;
    qryServicioCod_T: TStringField;
    qryServiciocod_d: TIntegerField;
    qryServicioDescripcion: TStringField;
    qryServicionota: TStringField;
    qryServicioCod_Cliente: TIntegerField;
    qryServicioCliente: TStringField;
    qryServicioCate: TStringField;
    qryServiciouser_s: TStringField;
    qryServiciovalor1: TFloatField;
    qryServiciovalor2: TFloatField;
    qryServiciovalor3: TFloatField;
    qryServiciovalor4: TFloatField;
    qryServiciovalor5: TFloatField;
    qryServiciovalor6: TFloatField;
    qryServiciovalor7: TFloatField;
    qryServiciovalor8: TFloatField;
    qryClientecod_cliente: TIntegerField;
    qryClientenombre: TStringField;
    qryClienteforma: TStringField;
    qryClientetarifa: TStringField;
    qryPaxid: TStringField;
    qryPaxmin: TStringField;
    qryPaxnum: TIntegerField;
    qryPaxcod: TStringField;
    qryPaxmax: TStringField;
    qryCapid: TIntegerField;
    qryCapmin: TStringField;
    qryCapmax: TStringField;
    qryCapcom: TStringField;
    ePax1: TEdit;
    ToolButton1: TToolButton;
    tbPrint: TToolButton;
    lrealizada: TLabel;
    lfechaR: TLabel;
    dbGServicio: TDBGrid;
    l1: TLabel;
    lraya1: TLabel;
    l11: TLabel;
    l2: TLabel;
    l22: TLabel;
    lraya2: TLabel;
    l3: TLabel;
    lraya3: TLabel;
    l33: TLabel;
    l4: TLabel;
    lraya4: TLabel;
    l44: TLabel;
    l5: TLabel;
    lraya5: TLabel;
    l55: TLabel;
    l6: TLabel;
    lraya6: TLabel;
    l66: TLabel;
    l7: TLabel;
    lraya7: TLabel;
    l77: TLabel;
    l8: TLabel;
    lraya8: TLabel;
    l88: TLabel;
    lvalorchofer: TLabel;
    eValorCh: TEdit;
    qryConsultaorden_n: TIntegerField;
    qryConsultafecha: TDateField;
    qryConsultafecha_r: TDateField;
    qryConsultahora: TStringField;
    qryConsultacapacidad: TIntegerField;
    qryConsultaservicio: TStringField;
    qryConsultapax: TIntegerField;
    qryConsultapax1: TIntegerField;
    qryConsultasolicitado: TStringField;
    qryConsultaorden_c: TStringField;
    qryConsultabonos: TStringField;
    qryConsultalinea_a: TStringField;
    qryConsultavuelo: TStringField;
    qryConsultahora_v: TStringField;
    qryConsultalugar: TStringField;
    qryConsultanombre: TStringField;
    qryConsultaficha1: TStringField;
    qryConsultaficha_o: TStringField;
    qryConsultatipo_servicio: TStringField;
    qryConsultavalor_rd: TFloatField;
    qryConsultavalor_us: TFloatField;
    qryConsultanombre_a: TStringField;
    qryConsultacomision: TFloatField;
    qryConsultachofer1: TStringField;
    qryConsultacom1: TFloatField;
    qryConsultauser_o: TStringField;
    qryConsultastatus: TStringField;
    qryConsultacodigo_c: TIntegerField;
    qryConsultamarca: TStringField;
    qryConsultacodigo_t: TIntegerField;
    qryConsultacodigo_ch: TIntegerField;
    qryConsultacodigo_ch1: TIntegerField;
    qryConsultacapa1: TIntegerField;
    qryConsultamarca1: TStringField;
    qryConsultapata: TStringField;
    qryConsultavalor_real: TFloatField;
    qryConsultavalor_t: TFloatField;
    qryConsultavalor_c: TFloatField;
    qryConsultaobser: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    dbGChoferT: TDBGrid;
    c1: TLabel;
    Label8: TLabel;
    c11: TLabel;
    c2: TLabel;
    Label11: TLabel;
    c22: TLabel;
    c3: TLabel;
    Label14: TLabel;
    c33: TLabel;
    c4: TLabel;
    Label17: TLabel;
    c44: TLabel;
    c5: TLabel;
    Label20: TLabel;
    c55: TLabel;
    c6: TLabel;
    Label23: TLabel;
    c66: TLabel;
    c7: TLabel;
    c77: TLabel;
    Label27: TLabel;
    c8: TLabel;
    Label29: TLabel;
    c88: TLabel;
    qryTarifaChofer: TMyQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    dsTarifaChofer: TDataSource;
    procedure tbGrabarClick(Sender: TObject);
    procedure tbNuevoClick(Sender: TObject);
    procedure checkbPatasClick(Sender: TObject);
    procedure dbGServicioDblClick(Sender: TObject);
    procedure tbSalirClick(Sender: TObject);
    procedure tbConsultaClick(Sender: TObject);
    procedure tbBorrarClick(Sender: TObject);
    procedure tbModificarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbInicioClick(Sender: TObject);
    procedure tbUltimoClick(Sender: TObject);
    procedure tbAnteriorClick(Sender: TObject);
    procedure tbSiguienteClick(Sender: TObject);
    procedure dbeChoferClick(Sender: TObject);
    procedure dbeChofer1Click(Sender: TObject);
    procedure dbeChofer2Click(Sender: TObject);
    procedure dbGFichaExit(Sender: TObject);
    procedure dbGFicha1Exit(Sender: TObject);
    procedure dbGFicha2Exit(Sender: TObject);
    procedure eCapacidadExit(Sender: TObject);
    procedure eCapacidad1Exit(Sender: TObject);
    procedure eCapacidad2Exit(Sender: TObject);
    procedure datePOrdenChange(Sender: TObject);
    procedure eHoraServicioChange(Sender: TObject);
    procedure eSolicitadoChange(Sender: TObject);
    procedure eBonosChange(Sender: TObject);
    procedure ePaxChange(Sender: TObject);
    procedure eServicioChange(Sender: TObject);
    procedure eRutaChange(Sender: TObject);
    procedure eLineaAChange(Sender: TObject);
    procedure eNumVueloChange(Sender: TObject);
    procedure eHoraVueloChange(Sender: TObject);
    procedure memoObservacionesChange(Sender: TObject);
    procedure eCapacidadChange(Sender: TObject);
    procedure eCapacidad1Change(Sender: TObject);
    procedure eCapacidad2Change(Sender: TObject);
    procedure dbGClienteDblClick(Sender: TObject);
    procedure dbGTipoServicioDblClick(Sender: TObject);
    procedure dbGChoferDblClick(Sender: TObject);
    procedure dbGChofer1DblClick(Sender: TObject);
    procedure dbGChofer2DblClick(Sender: TObject);
    procedure dbGFichaDblClick(Sender: TObject);
    procedure dbGFicha1DblClick(Sender: TObject);
    procedure dbGFicha2DblClick(Sender: TObject);
    procedure dbGChoferExit(Sender: TObject);
    procedure dbGChofer1Exit(Sender: TObject);
    procedure tbPrintClick(Sender: TObject);
    procedure dbGChofer2Exit(Sender: TObject);
    procedure dbGClienteExit(Sender: TObject);
    procedure eValorChChange(Sender: TObject);
    procedure dbGChoferTDblClick(Sender: TObject);


  private
    { Private declarations }
   

  public
    { Public declarations }
//aqui se declaran los procedimientos y funciones para usar en este formulario.
    procedure Nuevo;
    procedure GrabarFecha;
    procedure Desplegar;
    procedure ModificarFecha;
    procedure DesplegarRangoT;
    procedure DesplegarRangoTCH;
    procedure LimpiarR;
    function Pax(valor:string):string;    //esta funcion es para validar el rango de pax con sus respectivas capacidades.
    function Cap(valor:string):string;   //esta funcion es para validar el rango de capacidad con sus porcientos de comisiones.
    
  end;

var
  fOrdenServicio: TfOrdenServicio;
//aqui se declaran las variables generales para usar en este formulario.
  num : String;  //para poner el num orden asi comparar en modificar y borrar.
  cambio : boolean;  //para cuando hay cambios en algun edit.
  new : boolean;  //para cuando presiona el boton nuevo.
  control : string; //para saber si despliega el valor en RD o en US.
  usuario: string;  //para grabar el usuario activo.
  comi: string;  //para convertir la comision a decimal.
  comi1: string;
  
implementation

uses uConsultaOrden, uMenuOper, uPrincipal, uRprintOrden, uRprintPata;

{$R *.dfm}

procedure TfOrdenServicio.tbGrabarClick(Sender: TObject);
var
ii:integer;  //declara la variable numerica para validar si el campo es numero.
begin
   new:=false;   //le asigna valor falso a la varible si presiono nuevo.
   usuario:= fPrincipal.dbtUsuarioA.Caption;    //aqui le pasa el usuario activo a la variable para grabar.
   
//Valida que los campos obligatorios no queden vacios antes de Grabar.

if trim(eOrdenNum.Text)= '' then
begin
   showmessage ('Debe ingresar el Número de Orden');
   eOrdenNum.SetFocus;
   Exit;
end;

if trim(eHoraServicio.Text)= '' then
begin
   showmessage ('Debe ingresar la Hora');
   eHoraServicio.SetFocus;
   Exit;
end;

if trim(eServicio.Text)= '' then
begin
   showmessage ('Debe ingresar el Servicio');
   eServicio.SetFocus;
   Exit;
end;

if trim(ePax.Text)= '' then
begin
   showmessage ('Debe ingresar el Número de Pasajeros');
   ePax.SetFocus;
   Exit;
end;

if trim(ePax1.Text)= '' then
begin
   ePax1.Text:= '0';
end;


//Valida los campos numericos.

if TryStrToInt(ePax.Text, ii) = false then
  begin
  ShowMessage('Porfavor digite un Número de Pasajero');
  ePax.Clear;
  ePax.SetFocus;
  Exit;
  end;

if TryStrToInt(ePax1.Text, ii) = false then
  begin
  ShowMessage('Porfavor digite un Número de Pasajero');
  ePax1.Clear;
  ePax1.SetFocus;
  Exit;
  end;

//Verifica que si una orden existe no se duplique.
if eOrdenNum.Text = qryConsultaorden_n.AsString then
   begin
     showmessage ('Esta Orden Ya Existe');
     Exit;
   end;

//envian los valores escritos a las variables del qrygrabar
//para escribirla en la base de datos.

qryGrabar.ParamByName('vorden').AsString:= eOrdenNum.Text ;
qryGrabar.ParamByName('vhora').AsString:= eHoraServicio.Text ;
qryGrabar.ParamByName('vpax').AsString:= ePax.Text ;
qryGrabar.ParamByName('vpax1').AsString:= ePax1.Text ;
qryGrabar.ParamByName('vsolici').AsString:= eSolicitado.Text ;
qryGrabar.ParamByName('vordenc').AsString:= eBonos.Text;
qryGrabar.ParamByName('vlinea').AsString:= eLineaA.Text ;
qryGrabar.ParamByName('vvuelo').AsString:= eNumVuelo.Text ;
qryGrabar.ParamByName('vhorav').AsString:= eHoraVuelo.Text ;
qryGrabar.ParamByName('vlugar').AsString:= eRuta.Text ;
qryGrabar.ParamByName('vobser').AsString:= memoObservaciones.Text;
qryGrabar.ParamByName('vservicio').AsString:= eServicio.Text;
qryGrabar.ParamByName('vusero').AsString:= usuario;
qryGrabar.ParamByName('vrd').AsString:= dbeValorPesos.Text;
qryGrabar.ParamByName('vus').AsString:= dbeValorDolares.Text;
qryGrabar.ParamByName('vreal').AsString:= eValorCh.Text;

qryGrabar.ParamByName('vcodigo_c').AsString:=dbGCliente.SelectedField.AsString;
qryGrabar.ParamByName('vcliente').AsString:= dbeCliente.Text;
qryGrabar.ParamByName('vcodigo_t').AsString:= dbGTipoServicio.SelectedField.AsString;
qryGrabar.ParamByName('vtipos').AsString:= dbeTipoServicio.Text;

GrabarFecha;   //llama la funcion Grabar Fecha.

//esto graba si tiene bonos pendientes o no.

  if cbBonos.Checked=true then
     qryGrabar.ParamByName('vbonos').AsString:='YES';
  if cbBonos.Checked=false then
     qryGrabar.ParamByName('vbonos').AsString:='NO';

//esto graba si utiliza chofer individual o patas.

  if checkbPatas.Checked=false then
     begin
comi:= '0.' + eComision.Text;
qryGrabar.ParamByName('vcodigo_ch').AsString:= dbGChofer.SelectedField.AsString;
qryGrabar.ParamByName('vchofer').AsString:= dbeChofer.Text;
qryGrabar.ParamByName('vcom').AsString:= comi;
qryGrabar.ParamByName('vficha').AsString:= dbGFicha.SelectedField.AsString;
qryGrabar.ParamByName('vnombre_f').AsString:= dbeFicha.Text;
qryGrabar.ParamByName('vcapa').AsString:= eCapacidad.Text;

qryGrabar.ParamByName('vcodigo_ch1').AsString:= '';
qryGrabar.ParamByName('vchofer1').AsString:= '';
qryGrabar.ParamByName('vcom1').AsString:= '';
qryGrabar.ParamByName('vficha1').AsString:= '';
qryGrabar.ParamByName('vmarca1').AsString:= '';
qryGrabar.ParamByName('vcapa1').AsString:= '';

qryGrabar.ParamByName('vpata').AsString:= '';
     end

   else if checkbPatas.Checked=true then
   if dbeChofer1.Text <> dbeChofer2.Text then   //aqui valida que los choferes no sean iguales.
     begin
comi:= '0.' + eComision1.Text;
comi1:= '0.' + eComision2.Text;
eCapacidad.Text:='';
qryGrabar.ParamByName('vcodigo_ch').AsString:= dbGChofer1.SelectedField.AsString;
qryGrabar.ParamByName('vchofer').AsString:= dbeChofer1.Text;
qryGrabar.ParamByName('vcom').AsString:= comi;
qryGrabar.ParamByName('vcodigo_ch1').AsString:= dbGChofer2.SelectedField.AsString;
qryGrabar.ParamByName('vchofer1').AsString:= dbeChofer2.Text;
qryGrabar.ParamByName('vcom1').AsString:= comi1;

qryGrabar.ParamByName('vficha').AsString:= dbGFicha1.SelectedField.AsString;
qryGrabar.ParamByName('vnombre_f').AsString:= dbeFicha1.Text;
qryGrabar.ParamByName('vcapa').AsString:= eCapacidad1.Text;
qryGrabar.ParamByName('vficha1').AsString:= dbGFicha2.SelectedField.AsString;
qryGrabar.ParamByName('vmarca1').AsString:= dbeFicha2.Text;
qryGrabar.ParamByName('vcapa1').AsString:= eCapacidad2.Text;

qryGrabar.ParamByName('vpata').AsString:= 'P';
     end
  else
    begin
    showmessage ('En las Patas el Chofer no puede ser el mismo');
    Exit;
    end;

qryGrabar.Execute;     //ejecuta la grabacion.
Nuevo;     //limpia.
qryConsulta.Close;   //Refresca la Consulta.
pOrdenServicio.Enabled:=False;     //desactiva el formulario.
tbGrabar.Enabled:=false;      //desactiva el boton grabar cuando termina.
cambio:= false;     //desactiva a cambio.
qryServicio.Close;
LimpiarR;
end;

procedure TfOrdenServicio.GrabarFecha;
//esto graba la fecha en formato MySQL = 'yyyy/mm/dd'
var
s: string;
s1: string;
d: TDateTime;
d1: TDateTime;
begin
  d:= datePOrden.Date; //esta es la fecha del servicio.
  s:= FormatDateTime('yyyy/mm/dd',d);
  d1:= Date;   //esta es la fecha del sistema, cuando se hizo dicha orden.
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  qryGrabar.ParamByName('vfecha').AsString:= s ;
  qryGrabar.ParamByName('vfechar').AsString:= s1 ;
end;

procedure TfOrdenServicio.ModificarFecha;
//esto graba la fecha en formato MySQL = 'yyyy/mm/dd'
var
s: string;
s1: string;
d: TDateTime;
d1: TDateTime;
begin
  d:= datePOrden.Date;  //esta es la fecha del servicio.
  s:= FormatDateTime('yyyy/mm/dd',d);
  d1:= Date;   //esta es la fecha del sistema, cuando se hizo dicha orden.
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  qryModificar.ParamByName('vfecha').AsString:= s ;
  qryModificar.ParamByName('vfechar').AsString:= s1 ;
end;

procedure TfOrdenServicio.Nuevo;
begin
//limpia todos los campos.
   eOrdenNum.Clear;
   eServicio.Clear;
   dbeValorPesos.Clear;
   dbeValorDolares.Clear;
   ePax.Clear;
   ePax1.Clear;
   eSolicitado.Clear;
   eBonos.Clear;
   eLineaA.Clear;
   eNumVuelo.Clear;
   eRuta.Clear;
   eCapacidad.Clear;
   eComision.Clear;
   eCapacidad1.Clear;
   eComision1.Clear;
   eCapacidad2.Clear;
   eComision2.Clear;
   eHoraServicio.Clear;
   eHoraVuelo.Clear;
   memoObservaciones.Clear;
   checkbPatas.Checked:=false;
   cbBonos.Checked:=false;
   lCancelar.Visible:= False;
   datePOrden.Date:= Date;
   dbeValorPesos.Clear;
   dbeValorDolares.Clear;
   lfechaR.Caption:= '';
   eValorCh.Clear;
   
//asigna los source originales a cada opcion.

dbGCliente.DataSource:=dsCliente;
dbGCliente.Columns[0].FieldName:='cod_cliente';
dbGTipoServicio.DataSource:=dsTipoServicio;
dbGTipoServicio.Columns[0].FieldName:='id';
dbGChofer.DataSource:=dsChofer;
dbGChofer.Columns[0].FieldName:='cod_chofer';
dbGFicha.DataSource:=sdFicha;
dbGFicha.Columns[0].FieldName:='ficha';
dbGChofer1.DataSource:=dsChofer1;
dbGChofer1.Columns[0].FieldName:='cod_chofer';
dbGFicha1.DataSource:=dsFicha1;
dbGFicha1.Columns[0].FieldName:='ficha';
dbGChofer2.DataSource:=dsChofer2;
dbGChofer2.Columns[0].FieldName:='cod_chofer';
dbGFicha2.DataSource:=dsFicha2;
dbGFicha2.Columns[0].FieldName:='ficha';

//refresca los query.

   qryOrdenNum.Close;
   qryServicio.Close;
   qryTarifaChofer.Close;
   qryOrdenNum.Open;

   qryCliente.Close;
   qryTipoServicio.Close;
   qryChofer.Close;    
   qryChofer1.Close;
   qryChofer2.Close;
   qryFicha.Close;
   qryFicha1.Close;
   qryFicha2.Close;

   dbeCliente.Clear;
   dbeTipoServicio.Clear;
   dbeChofer.Clear;
   dbeFicha.Clear;
   dbeChofer1.Clear;
   dbeFicha1.Clear;
   dbeChofer2.Clear;
   dbeFicha2.Clear;
   
end;

procedure TfOrdenServicio.tbNuevoClick(Sender: TObject);
begin
    new:= true;    //al presionar nuevo esta variable es true.
    pOrdenServicio.Enabled:=True;  //activa el formulario.
    Nuevo;   //limpia los campos.
    limpiarR;
//esto despliega el numero de la siguiente orden, es un
//contador que le suma uno al ultimo num de orden.
    eOrdenNum.Text:= qryOrdenNum.FieldValues['max(orden_n)'] + 1 ;

//activa el boton grabar y desactiva borrar y modificar.
   tbBorrar.Enabled:=false;
   tbModificar.Enabled:=false;
   tbGrabar.Enabled:=true;

//abrir los querys
  qryCliente.Open;
  qryTipoServicio.Open;
  qryChofer.Open;
  qryFicha.Open;

  qryChofer1.Open;
  qryChofer2.Open;
  qryFicha1.Open;
  qryFicha2.Open;

//aqui pongo lo de la tarifa de chofer

  DesplegarRangoTCH;

  qryTarifaChofer.SQL.Clear;
  qryTarifaChofer.SQL.Add('select * from Servicios where Cod_T = "'+ 'TCH' +'"');
  qryTarifaChofer.SQL.Add('order by descripcion');
  qryTarifaChofer.Open;
/////////////

  cambio:= false;  //como es nuevo, cambios debe ser falso.
end;

procedure TfOrdenServicio.checkbPatasClick(Sender: TObject);
begin
//controla el uso de chofer individual o las patas.
   if checkbPatas.Checked=true then
     begin
        GboxPatas.visible:=true;
        GboxChofer.visible:=false;
     end;
   if checkbPatas.Checked=false then
     begin
        GboxPatas.visible:=false;
        GboxChofer.visible:=true;
     end

end;

procedure TfOrdenServicio.dbGServicioDblClick(Sender: TObject);
var
rango: string;  //este es el valor del editPax que se pasa a la funcion PAX y devuelve otro valor.
begin
   dbeValorPesos.Clear;
   dbeValorDolares.Clear;

if checkbPatas.Checked=true then
begin
eCapacidad.Text:=eCapacidad1.Text;
end;

   //para poder mostrar la lista de servicos debe ingresar la capacidad primero.
   if trim(eCapacidad.Text)= '' then
      begin
      showmessage ('Primero debe ingresar la Capacidad');
      eCapacidad.SetFocus;
      Exit;
      end;

   eServicio.Text:= dbGServicio.SelectedField.AsString;     //al hacer doble click en una seleccion desliega el dato en el edit servicio,

//y despliega el valor correspondiente.
    if eCapacidad.text <>'' then
       rango:=Pax(eCapacidad.text);  //estes es el resultado que devuelve la funcion PAX.

    if rango = '' then    //si es vacio es porque no existe en el rango.
       begin
       ShowMessage('Ese número de Capacidad No existe para ese Cliente');
       eServicio.Clear;
       eCapacidad.SetFocus;
       Exit;
       end;

 if control = 'RD' then    //aqui despliega el valor en pesos.
    begin
    if rango = '1' then
       begin
       dbeValorPesos.Text:= qryServiciovalor1.AsString;
       end;
    if rango = '2' then
       begin
       dbeValorPesos.Text:= qryServiciovalor2.AsString;
       end;
    if rango = '3' then
       begin
       dbeValorPesos.Text:= qryServiciovalor3.AsString;
       end;
    if rango = '4' then
       begin
       dbeValorPesos.Text:= qryServiciovalor4.AsString;
       end;
    if rango = '5' then
       begin
       dbeValorPesos.Text:= qryServiciovalor5.AsString;
       end;
    if rango = '6' then
       begin
       dbeValorPesos.Text:= qryServiciovalor6.AsString;
       end;
    if rango = '7' then
       begin
       dbeValorPesos.Text:= qryServiciovalor7.AsString;
       end;
    if rango = '8' then
       begin
       dbeValorPesos.Text:= qryServiciovalor8.AsString;
       end;
    end;

 if control = 'US' then   //aqui despliega el valor en dolares.
    begin
    if rango = '1' then
       begin
       dbeValorDolares.Text:= qryServiciovalor1.AsString;
       end;

    if rango = '2' then
       begin
       dbeValorDolares.Text:= qryServiciovalor2.AsString;
       end;
    if rango = '3' then
       begin
       dbeValorDolares.Text:= qryServiciovalor3.AsString;
       end;
    if rango = '4' then
       begin
       dbeValorDolares.Text:= qryServiciovalor4.AsString;
       end;
    if rango = '5' then
        begin
       dbeValorDolares.Text:= qryServiciovalor5.AsString;
       end;
    if rango = '6' then
       begin
       dbeValorDolares.Text:= qryServiciovalor6.AsString;
       end;
    if rango = '7' then
       begin
       dbeValorDolares.Text:= qryServiciovalor7.AsString;
       end;
    if rango = '8' then
       begin
       dbeValorDolares.Text:= qryServiciovalor8.AsString;
       end;
    end;

end;


procedure TfOrdenServicio.tbSalirClick(Sender: TObject);
var
Chaboton : Integer; //declara la variable para el resultado del message box.
begin
  if cambio = true then    //si hubo cambios pregunta si desde guardarlos.
    begin
    Chaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If Chaboton = ID_YES Then  
       begin
         if tbModificar.Enabled = false then
         begin
         tbGrabar.Click;
         exit;
         end
         else
         begin
         tbModificar.Click;
         exit;
         end
       end
    end;

tbConsulta.Enabled:=true;
tbInicio.Enabled:=true;
tbUltimo.Enabled:=true;
tbAnterior.Enabled:=true;
tbSiguiente.Enabled:=true;
tbNuevo.Enabled:=true;
tbGrabar.Enabled:=false;
tbBorrar.Enabled:=false;
tbModificar.Enabled:=false;

cambio:= false;
new:=false;
Nuevo;
limpiarR;
GboxStatus.Visible:=False;
qryConsulta.Close;
qryOrdenNum.Close;
qryPax.Close;
qryCliente.Close;
qryServicio.Close;
qryTipoServicio.Close;
qryChofer.Close;
qryChofer1.Close;
qryChofer2.Close;
qryFicha.Close;
qryFicha1.Close;
qryFicha2.Close;
qryCap.Close;
fOrdenServicio.Close;
end;

procedure TfOrdenServicio.tbConsultaClick(Sender: TObject);
var
Chaboton : Integer;
begin

   if new = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      Chaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If Chaboton = ID_YES Then
      begin
      tbGrabar.Click;
      Exit;
      end
      else if Chaboton = ID_NO then
      new:=false;
   end;


dlgConsultaOrden.ShowModal;   //muestra el dialogo de consulta.
qryConsulta.Close;

//si acepta el busca el num orden digitado y la despleiga.

if dlgConsultaOrden.ModalResult = mrOK then
begin
qryConsulta.sql.Clear;
qryConsulta.sql.Add('select * from OrdenServicio where orden_n is not null') ;
qryConsulta.sql.Add('and orden_n like "%' + dlgConsultaOrden.eConsultaOrden.Text  +'%"') ;
qryConsulta.Open;
Desplegar; //llama la funcion despleglar los datos.


if qryConsulta.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

procedure TfOrdenServicio.Desplegar;
begin
//Esta funcion toma los valores de la tabla y los Despliega en el formulario.

eOrdenNum.Text := qryConsultaorden_n.AsString;
datePOrden.Date := qryConsultafecha.AsDateTime;
eServicio.Text := qryConsultaservicio.AsString;
ePax.Text := qryConsultapax.AsString;
ePax1.Text := qryConsultapax1.AsString;
eSolicitado.Text := qryConsultasolicitado.AsString;
eBonos.Text := qryConsultaorden_c.AsString;
cbBonos.Checked := qryConsultabonos.AsBoolean;
eLineaA.Text := qryConsultalinea_a.AsString;
eNumVuelo.Text := qryConsultavuelo.AsString;
eRuta.Text := qryConsultalugar.AsString;
memoObservaciones.Text := qryConsultaobser.AsString;
eHoraServicio.Text := qryConsultahora.AsString;
eHoraVuelo.Text := qryConsultahora_v.AsString;
dbeValorPesos.Text := qryConsultavalor_rd.AsString;
dbeValorDolares.Text := qryConsultavalor_us.AsString;
lfechaR.Caption:= qryConsultafecha_r.AsString;
eValorCh.Text:= qryConsultavalor_real.AsString;

dbGCliente.DataSource:=dsConsulta;
dbGCliente.Columns[0].FieldName:='codigo_c';
dbeCliente.Text:= qryConsultanombre.AsString;
dbGTipoServicio.DataSource:=dsConsulta;
dbGTipoServicio.Columns[0].FieldName:='codigo_t';
dbeTipoServicio.Text:= qryConsultatipo_servicio.AsString;

//aqui despliega si es chofer individual o patas.

if qryConsultaChofer1.AsString = '' then  //si chofer 1 es vacio es porque no usa patas.
   begin
   checkbPatas.Checked:=false;
   dbGChofer.DataSource:=dsConsulta;
   dbGChofer.Columns[0].FieldName:='codigo_ch';
   dbeChofer.Text:= qryConsultanombre_a.AsString;
   eComision.Text:= qryConsultacomision.AsString;
   dbGFicha.DataSource:=dsConsulta;
   dbGFicha.Columns[0].FieldName:='ficha_o';
   dbeFicha.Text:= qryConsultamarca.AsString;
   eCapacidad.Text:= qryConsultacapacidad.AsString;

   end
else
   begin
   checkbPatas.Checked:=true;
   dbGChofer1.DataSource:=dsConsulta;
   dbGChofer1.Columns[0].FieldName:='codigo_ch';
   dbeChofer1.Text:= qryConsultanombre_a.AsString;
   eComision1.Text:= qryConsultacomision.AsString;
   dbGChofer2.DataSource:=dsConsulta;
   dbGChofer2.Columns[0].FieldName:='codigo_ch1';
   dbeChofer2.Text:= qryConsultachofer1.AsString;
   eComision2.Text:= qryConsultacom1.AsString;
   dbGFicha1.DataSource:=dsConsulta;
   dbGFicha1.Columns[0].FieldName:='ficha_o';
   dbeFicha1.Text:= qryConsultamarca.AsString;
   eCapacidad1.Text:= qryConsultacapacidad.AsString;
   dbGFicha2.DataSource:=dsConsulta;
   dbGFicha2.Columns[0].FieldName:='ficha1';
   dbeFicha2.Text:= qryConsultamarca1.AsString;
   eCapacidad2.Text:= qryConsultacapa1.AsString;

   end;
//esto despliega el label si esta cancelada o no.
if qryConsultastatus.AsString = '' then
lCancelar.Visible:= False
else
lCancelar.Visible:= True;

//aqui se desactiva el formulario para que sea read only.
pOrdenServicio.Enabled:=false;
//activa los botones borrar y modificar y desactiva grabar.
tbBorrar.Enabled:=true;
tbModificar.Enabled:=true;
tbGrabar.Enabled:=false;
end;


procedure TfOrdenServicio.tbBorrarClick(Sender: TObject);
var
Bboton : Integer;
begin

   if trim(eOrdenNum.Text)= '' then      //si esta vacio no borra.
   begin
   showmessage ('Debe buscar una Orden para borrar');
   Exit;
   end;

   if eOrdenNum.Text = '1000000000' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

Bboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Orden',MB_YESNO+MB_ICONINFORMATION);
   If Bboton = ID_YES Then
      begin
      num:= eOrdenNum.Text;
      qryBorrar.ParamByName('borden').AsString:= num;
      qryBorrar.Execute;
      Nuevo;
      tbBorrar.Enabled:=false;
      tbModificar.Enabled:=false;
      end
   Else
    Exit;

end;

procedure TfOrdenServicio.tbModificarClick(Sender: TObject);
var
ee : Integer;  //esto para validar si es un numero.
begin
   //si no selecciona un numero de orden no puede modificar.
   if trim(eOrdenNum.Text)= '' then
   begin
   showmessage ('Debe buscar una Orden para modificar');
   Exit;
   end;

//aqui pongo lo de la tarifa de chofer

  DesplegarRangoTCH;

  qryTarifaChofer.SQL.Clear;
  qryTarifaChofer.SQL.Add('select * from Servicios where Cod_T = "'+ 'TCH' +'"');
  qryTarifaChofer.SQL.Add('order by descripcion');
  qryTarifaChofer.Open;
/////////////



   //activa el panel para que se pueda escribir y muestra opciones de modificar.
   if pOrdenServicio.Enabled = false then
   begin
   pOrdenServicio.Enabled:=True;
   GboxStatus.Visible:=True;
     if qryConsultastatus.AsString = '' then
     rbActivar.Checked:= True;
     if qryConsultastatus.AsString <> '' then
     rbCancelar.Checked:= True;

   tbConsulta.Enabled:=false;
   tbInicio.Enabled:=false;
   tbUltimo.Enabled:=false;
   tbAnterior.Enabled:=false;
   tbSiguiente.Enabled:=false;
   tbBorrar.Enabled:=false;
   tbNuevo.Enabled:=false;
   Exit;
   end;

num:= eOrdenNum.Text;
usuario:= fPrincipal.dbtUsuarioA.Caption;



//valida los campos obligatorios que no queden vacios.
if trim(eHoraServicio.Text)= '' then
begin
showmessage ('Debe ingresar la Hora');
eHoraServicio.SetFocus;
Exit;
end;
if trim(eServicio.Text)= '' then
begin
showmessage ('Debe ingresar el Servicio');
eServicio.SetFocus;
Exit;
end;
if trim(ePax.Text)= '' then
begin
showmessage ('Debe ingresar el Número de Pasajeros');
ePax.SetFocus;
Exit;
end;
if trim(ePax1.Text)= '' then
begin
ePax1.Text:= '0';
end;
if TryStrToInt(ePax.Text, ee) = false then
begin
ShowMessage('Porfavor digite un Número de Pasajero');
ePax.Clear;
ePax.SetFocus;
Exit;
end;
if TryStrToInt(ePax1.Text, ee) = false then
begin
ShowMessage('Porfavor digite un Número de Pasajero');
ePax1.Clear;
ePax1.SetFocus;
Exit;
end;

//envia los valores a las variables para modificar en la BD.
qryModificar.ParamByName('vorden').AsString:= eOrdenNum.Text ;
qryModificar.ParamByName('vhora').AsString:= eHoraServicio.Text ;
qryModificar.ParamByName('vpax').AsString:= ePax.Text ;
qryModificar.ParamByName('vpax1').AsString:= ePax1.Text ;
qryModificar.ParamByName('vsolici').AsString:= eSolicitado.Text ;
qryModificar.ParamByName('vordenc').AsString:= eBonos.Text ;
qryModificar.ParamByName('vlinea').AsString:= eLineaA.Text ;
qryModificar.ParamByName('vvuelo').AsString:= eNumVuelo.Text ;
qryModificar.ParamByName('vhorav').AsString:= eHoraVuelo.Text ;
qryModificar.ParamByName('vlugar').AsString:= eRuta.Text ;
qryModificar.ParamByName('vobser').AsString:= memoObservaciones.Text;
qryModificar.ParamByName('vservicio').AsString:= eServicio.Text ;
qryModificar.ParamByName('vcodigo_c').AsString:=dbGCliente.SelectedField.AsString;
qryModificar.ParamByName('vcliente').AsString:= dbeCliente.Text;
qryModificar.ParamByName('vcodigo_t').AsString:= dbGTipoServicio.SelectedField.AsString;
qryModificar.ParamByName('vtipos').AsString:= dbeTipoServicio.Text;
qryModificar.ParamByName('vusero').AsString:= usuario;
qryModificar.ParamByName('vrd').AsString:= dbeValorPesos.Text;
qryModificar.ParamByName('vus').AsString:= dbeValorDolares.Text;
qryModificar.ParamByName('vreal').AsString:= eValorCh.Text;
ModificarFecha;

if cbBonos.Checked=true then
   qryModificar.ParamByName('vbonos').AsString:='YES';
if cbBonos.Checked=false then
   qryModificar.ParamByName('vbonos').AsString:='NO';

if checkbPatas.Checked=false then
     begin
eCapacidad.SetFocus;
eComision.SetFocus;
comi:= '0.' + eComision.Text;
qryModificar.ParamByName('vcodigo_ch').AsString:= dbGChofer.SelectedField.AsString;
qryModificar.ParamByName('vchofer').AsString:= dbeChofer.Text;
qryModificar.ParamByName('vcom').AsString:= comi;
qryModificar.ParamByName('vficha').AsString:= dbGFicha.SelectedField.AsString;
qryModificar.ParamByName('vnombre_f').AsString:= dbeFicha.Text;
qryModificar.ParamByName('vcapa').AsString:= eCapacidad.Text;

qryModificar.ParamByName('vcodigo_ch1').AsString:= '';
qryModificar.ParamByName('vchofer1').AsString:= '';
qryModificar.ParamByName('vcom1').AsString:= '';
qryModificar.ParamByName('vficha1').AsString:= '';
qryModificar.ParamByName('vmarca1').AsString:= '';
qryModificar.ParamByName('vcapa1').AsString:= '';

qryModificar.ParamByName('vpata').AsString:= '';
     end

else if checkbPatas.Checked=true then
if dbeChofer1.Text <> dbeChofer2.Text then
     begin
eCapacidad1.SetFocus;
eComision1.SetFocus;
eCapacidad2.SetFocus;
eComision2.SetFocus;
comi:= '0.' + eComision1.Text;
comi1:= '0.' + eComision2.Text;
eCapacidad.Text:=''; 
qryModificar.ParamByName('vcodigo_ch').AsString:= dbGChofer1.SelectedField.AsString;
qryModificar.ParamByName('vchofer').AsString:= dbeChofer1.Text;
qryModificar.ParamByName('vcom').AsString:= comi;
qryModificar.ParamByName('vcodigo_ch1').AsString:= dbGChofer2.SelectedField.AsString;
qryModificar.ParamByName('vchofer1').AsString:= dbeChofer2.Text;
qryModificar.ParamByName('vcom1').AsString:= comi1;

qryModificar.ParamByName('vficha').AsString:= dbGFicha1.SelectedField.AsString;
qryModificar.ParamByName('vnombre_f').AsString:= dbeFicha1.Text;
qryModificar.ParamByName('vcapa').AsString:= eCapacidad1.Text;
qryModificar.ParamByName('vficha1').AsString:= dbGFicha2.SelectedField.AsString;
qryModificar.ParamByName('vmarca1').AsString:= dbeFicha2.Text;
qryModificar.ParamByName('vcapa1').AsString:= eCapacidad2.Text;

qryModificar.ParamByName('vpata').AsString:= 'P';
     end
else
    begin
    showmessage ('En las Patas el Chofer no puede ser el mismo');
    Exit;
    end;

/////aqui esta el control de cancelar y restaurar una orden.
      if rbCancelar.Checked = true then
      begin
      qryModificar.ParamByName('vcodigo_ch').AsString:= '100';
      qryModificar.ParamByName('vcodigo_ch1').AsString:= '100';
      qryModificar.ParamByName('vchofer').AsString:= '';
      qryModificar.ParamByName('vchofer1').AsString:= '';
      qryModificar.ParamByName('vcom').AsString:= '0';
      qryModificar.ParamByName('vcom1').AsString:= '0';
      qryModificar.ParamByName('vficha').AsString:= 'F-00';
      qryModificar.ParamByName('vficha1').AsString:= 'F-00';
      qryModificar.ParamByName('vnombre_f').AsString:= '';
      qryModificar.ParamByName('vmarca1').AsString:= '';
      qryModificar.ParamByName('vrd').AsString:= '0';
      qryModificar.ParamByName('vus').AsString:= '0';
      dbeChofer.Clear;
      dbeChofer1.Clear;
      dbeChofer2.Clear;
      dbeFicha.Clear;
      dbeFicha1.Clear;
      dbeFicha2.Clear;
      dbeValorPesos.Clear;
      dbeValorDolares.Clear;
      qryModificar.ParamByName('vsta').AsString:= 'CANCELADA';
      lCancelar.Visible:= True;
      end
       else
          begin
          qryModificar.ParamByName('vsta').AsString:= '';
          lCancelar.Visible:= False;
          end;
             
//aqui se modifica el registro con el numero de orden seleccionado.
      qryModificar.ParamByName('v1orden').AsString:= num ;
      qryModificar.Execute;
      qryConsulta.RefreshRecord;

      GboxStatus.Visible:=False;
      pOrdenServicio.Enabled:=False;
      tbConsulta.Enabled:=true;
      tbInicio.Enabled:=true;
      tbUltimo.Enabled:=true;
      tbAnterior.Enabled:=true;
      tbSiguiente.Enabled:=true;
      tbNuevo.Enabled:=true;
      tbBorrar.Enabled:=false;
      tbModificar.Enabled:=false;
      cambio:= false;
      qryServicio.Close;
      qryTarifaChofer.Close;
      LimpiarR;
end;

procedure TfOrdenServicio.FormShow(Sender: TObject);
begin
    fOrdenServicio.Top:=8;
    fOrdenServicio.Left:=55;
      fMenuOper.Hide;   //esconde el menu de operaciones.
      cambio:=false;  //le asigan el valor falso a la variable de cambios.
      Nuevo;    //llama la funcion nuevo.
      LimpiarR;
end;

procedure TfOrdenServicio.tbInicioClick(Sender: TObject);
var
Chaboton : Integer;
begin

   if new = true then
   begin
      Chaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If Chaboton = ID_YES Then
      begin
      tbGrabar.Click;
      Exit;
      end
      else if Chaboton = ID_NO then
      new:=false;
   end;


//esto muestra la primera orden de servicio en la BD.
qryConsulta.sql.Clear;
qryConsulta.sql.Add('select * from OrdenServicio') ;
qryConsulta.Open;
qryConsulta.First;
Desplegar;

if qryConsulta.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfOrdenServicio.tbUltimoClick(Sender: TObject);
var
Chaboton : Integer;
begin

   if new = true then
   begin
      Chaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If Chaboton = ID_YES Then
      begin
      tbGrabar.Click;
      Exit;
      end
      else if Chaboton = ID_NO then
      new:=false;
   end;


//esto muestra la ultima orden de servicio en la BD.
qryConsulta.sql.Clear;
qryConsulta.sql.Add('select * from OrdenServicio') ;
qryConsulta.Open;
qryConsulta.Last;
Desplegar;

if qryConsulta.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfOrdenServicio.tbAnteriorClick(Sender: TObject);
var
Chaboton : Integer;
begin

   if new = true then
   begin
      Chaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If Chaboton = ID_YES Then
      begin
      tbGrabar.Click;
      Exit;
      end
      else if Chaboton = ID_NO then
      new:=false;
   end;


//esto muestra la orden anterior.
qryConsulta.Open;
qryConsulta.Prior;
Desplegar;

if qryConsulta.Bof then
  showmessage('No hay más anteriores.');

end;

procedure TfOrdenServicio.tbSiguienteClick(Sender: TObject);
var
Chaboton : Integer;
begin

   if new = true then
   begin
      Chaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If Chaboton = ID_YES Then
      begin
      tbGrabar.Click;
      Exit;
      end
      else if Chaboton = ID_NO then
      new:=false;
   end;


//esto muestra la orden siguiente.
qryConsulta.Open;
qryConsulta.Next;
Desplegar;

if qryConsulta.Eof then
  showmessage('No hay más siguientes.');

end;

procedure TfOrdenServicio.dbeChoferClick(Sender: TObject);
begin
dbeChofer.Hint:= dbeFichaa.Text;   //muestra la ficha de dicho chofer.
end;

procedure TfOrdenServicio.dbeChofer1Click(Sender: TObject);
begin
dbeChofer1.Hint:= dbeFichaa1.Text;  //muestra la ficha de dicho chofer.
end;

procedure TfOrdenServicio.dbeChofer2Click(Sender: TObject);
begin
dbeChofer2.Hint:= dbeFichaa2.Text;  //muestra la ficha de dicho chofer.
end;

procedure TfOrdenServicio.dbGFichaExit(Sender: TObject);
begin
eCapacidad.Text:= qryFichacapacidad.AsString;  //muestra la cap de esa ficha.
eComision.Text:= qryFichaporciento.AsString;   //y su comision.
//eComision.Text:= '0';
end;

procedure TfOrdenServicio.dbGFicha1Exit(Sender: TObject);
var
c : Variant;
d : String;
begin
eCapacidad1.Text:= qryFicha1capacidad.AsString;  //muestra la cap de esa ficha.
//y aqui despliega la mitad de la comision asignada.
d:= qryFicha1porciento.AsString;
c:= StrToInt(d) div 2;
eComision1.Text:= '0'+ IntToStr(c);
//eComision1.Text:= '0';
end;

procedure TfOrdenServicio.dbGFicha2Exit(Sender: TObject);
var
c : Variant;
d : String;
begin
eCapacidad2.Text:= qryFicha2capacidad.AsString; //muestra la cap de esa ficha.
//y aqui despliega la mitad de la comision asignada.
d:= qryFicha2porciento.AsString;
c:= StrToInt(d) div 2;
eComision2.Text:= '0'+ IntToStr(c);
//eComision2.Text:= '0';
end;

procedure TfOrdenServicio.eCapacidadExit(Sender: TObject);
var
capacidad: string;  //estes es el valor para enviar a la funcion CAP y devuelve otro valor.
begin
   if eCapacidad.text <>'' then
      capacidad:= Cap(eCapacidad.text); //estes es el resultado que devuelve la funcion CAP.

    if capacidad = '' then   //si es vacio no existe en el rango, da un error.
       begin
       ShowMessage('Número de Capacidad Incorrecto');
       eComision.Clear;
       eCapacidad.Clear;
       eCapacidad.SetFocus;
       Exit;
       end;
 //de lo contrario despliega la comision que esta dentro del rango.
    eComision.Text:= capacidad;
 //   eComision.Text:= '0';;

end;

procedure TfOrdenServicio.eCapacidad1Exit(Sender: TObject);
var
f : Variant;
g : String;
begin
  if eCapacidad1.text <>'' then
     g:= Cap(eCapacidad1.text); //estes es el resultado que devuelve la funcion CAP.

     if g = '' then
       begin
       ShowMessage('Número de Capacidad Incorrecto');
       eComision1.Clear;
       eCapacidad1.Clear;
       eCapacidad1.SetFocus;
       Exit;
       end;
//aqui despliega la comision que esta dentro del rango entre dos, osea la mitad.
     f:= StrToInt(g) div 2;
     eComision1.Text:= '0'+ IntToStr(f);
   //eComision1.Text:= '0';
end;

procedure TfOrdenServicio.eCapacidad2Exit(Sender: TObject);
var
f : Variant;
g : String;
begin
  if eCapacidad2.text <>'' then
     g:= Cap(eCapacidad2.text);  //estes es el resultado que devuelve la funcion CAP.

     if g = '' then
       begin
       ShowMessage('Número de Capacidad Incorrecto');
       eComision2.Clear;
       eCapacidad2.Clear;
       eCapacidad2.SetFocus;
       Exit;
       end;
//aqui despliega la comision que esta dentro del rango entre dos, osea la mitad.
     f:= StrToInt(g) div 2;
     eComision2.Text:= '0'+ IntToStr(f);
    //eComision2.Text:= '0'
  end;

procedure TfOrdenServicio.datePOrdenChange(Sender: TObject);
begin
//si nuevo o modificar fue presionado
//y hubo cambio entonces cambio es true.
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eHoraServicioChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eSolicitadoChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eBonosChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.ePaxChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eServicioChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eRutaChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eLineaAChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eNumVueloChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eHoraVueloChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.memoObservacionesChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eCapacidadChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eCapacidad1Change(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.eCapacidad2Change(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.dbGClienteDblClick(Sender: TObject);
begin
//esto permite modificar, y cambio es true.
dbGCliente.DataSource:=dsCliente;
dbGCliente.Columns[0].FieldName:='cod_cliente';
qryCliente.Close;
qryCliente.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGTipoServicioDblClick(Sender: TObject);
begin
dbGTipoServicio.DataSource:=dsTipoServicio;
dbGTipoServicio.Columns[0].FieldName:='id';
qryTipoServicio.Close;
qryTipoServicio.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGChoferDblClick(Sender: TObject);
begin
dbGChofer.DataSource:=dsChofer;
dbGChofer.Columns[0].FieldName:='cod_chofer';
qryChofer.Close;
qryChofer.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGChofer1DblClick(Sender: TObject);
begin
dbGChofer1.DataSource:=dsChofer1;
dbGChofer1.Columns[0].FieldName:='cod_chofer';
qryChofer1.Close;
qryChofer1.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGChofer2DblClick(Sender: TObject);
begin
dbGChofer2.DataSource:=dsChofer2;
dbGChofer2.Columns[0].FieldName:='cod_chofer';
qryChofer2.Close;
qryChofer2.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGFichaDblClick(Sender: TObject);
begin
dbGFicha.DataSource:=sdFicha;
dbGFicha.Columns[0].FieldName:='ficha';
qryFicha.Close;
qryFicha.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGFicha1DblClick(Sender: TObject);
begin
dbGFicha1.DataSource:=dsFicha1;
dbGFicha1.Columns[0].FieldName:='ficha';
qryFicha1.Close;
qryFicha1.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGFicha2DblClick(Sender: TObject);
begin
dbGFicha2.DataSource:=dsFicha2;
dbGFicha2.Columns[0].FieldName:='ficha';
qryFicha2.Close;
qryFicha2.Open;
cambio:= true;
end;

procedure TfOrdenServicio.dbGChoferExit(Sender: TObject);
var
cadena:string;
begin
    cadena:=dbGChofer.SelectedField.AsString ;  //esto guarda el codigo del chofer.

//si el primer caracter a la izquierda es 9 entonces es un suplidor particular.
    if LeftStr(cadena, 1)= '9' then
       begin
       dbGFicha.DataSource:=sdFicha;
       dbGFicha.Columns[0].FieldName:='ficha';
       qryFicha.Close;
       qryFicha.Open;
       end;
       
//si el primer caracter a la izquierda es 1 entonces es un chofer.
    if LeftStr(cadena, 1)= '1' then
       dbGFicha.DataSource:=sdFicha;
end;

Function TfOrdenServicio.Pax(valor:string):string;
var
i:integer;
begin

qryPax.SQL.Clear;
qryPax.SQL.Add('select * from Paxa where cod = "'+ qryClientetarifa.AsString +'"');
qryPax.SQL.Add('order by id');
qryPax.Open;

if qryPax.IsEmpty then
  begin
  qryPax.SQL.Clear;
  qryPax.SQL.Add('select * from Paxa where cod = "'+ 'T1' +'"');
  qryPax.SQL.Add('order by id');
  qryPax.Open;
  end;

  qryPax.Close;
  Repeat  ///////esa busqueda se repite hasta que el query llege al final.
  qryPax.Open;
     for i:= qryPaxmin.AsInteger to qryPaxmax.AsInteger do    //aqui valida si esta comprendido entre el min y max de la tabla.
       begin
       if StrToInt(valor) = i then    //valor es el dato que se le envio (ej: epax.text).
          begin
          Pax:= qryPaxid.AsString;  //si esta en ese rango entonces devuelve el id que me indica la columana del valor que voy a asignar.
          Exit;
          end;
       end;
  qryPax.Next;
  Until qryPax.EoF; /////aqui termina el repeat.

  Pax:= ''; //si no esta en ese rango me devuelve vacio, y tira un error.

end;

Function TfOrdenServicio.Cap(valor:string):string;
var
i:integer;
begin
  qryCap.Close;
  Repeat
  qryCap.Open;
    for i:= qryCapmin.AsInteger to qryCapmax.AsInteger do  //aqui valida si esta comprendido entre el min y max de la tabla.
       begin
       if StrToInt(valor) = i then   //valor es el dato que se le envio (ej: eCapacidad.text).
          begin
          Cap:= qryCapcom.AsString;  //si esta en ese rango me develve la comision de dicha capacidad.
          Exit;
          end;
       end;
   qryCap.Next;
   Until qryCap.EoF;

   Cap:= '';  //si no esta en ese rango me devuelve vacio, y tira un error.

end;


procedure TfOrdenServicio.dbGChofer1Exit(Sender: TObject);
var
cadena:string;
begin
    cadena:=dbGChofer1.SelectedField.AsString ;
    if LeftStr(cadena, 1)= '9' then
       begin
       dbGFicha1.DataSource:=dsFicha1;
       dbGFicha1.Columns[0].FieldName:='ficha';
       qryFicha1.Close;
       qryFicha1.Open;
       end;

    if LeftStr(cadena, 1)= '1' then
       dbGFicha1.DataSource:=dsFicha1;
end;

procedure TfOrdenServicio.tbPrintClick(Sender: TObject);
begin

 if trim(eOrdenNum.Text)= '' then
   begin
   showmessage ('Debe elegir una Orden para imprimir');
   Exit;
   end;

if checkbPatas.Checked=false then
   begin
   fRprintOrden.qryPrintOrden.SQL.Clear;
   fRprintOrden.qryPrintOrden.SQL.Add('select * from OrdenServicio where orden_n = "'+ eOrdenNum.Text +'"');
   fRprintOrden.qryPrintOrden.SQL.Add('and codigo_ch1 = "'+ '' +'"');
   fRprintOrden.qryPrintOrden.SQL.Add('and status = "'+ '' +'" ');
   fRprintOrden.qryPrintOrden.Open;

      if fRprintOrden.qryPrintOrden.IsEmpty then
         begin
         showmessage ('Esta Orden no Existe');
         Exit;
         end;
   fRprintOrden.RprintOrden.Print;
   end

else if checkbPatas.Checked=true then
   begin
   fRprintPata.qryPrintPata.SQL.Clear;
   fRprintPata.qryPrintPata.SQL.Add('select * from OrdenServicio where orden_n = "'+ eOrdenNum.Text +'"');
   fRprintPata.qryPrintPata.SQL.Add('and codigo_ch1 <> "'+ '' +'"');
   fRprintPata.qryPrintPata.SQL.Add('and status = "'+ '' +'" ');
   fRprintPata.qryPrintPata.Open;

     if fRprintPata.qryPrintPata.IsEmpty then
         begin
         showmessage ('Esta Orden no Existe');
         Exit;
         end;
   fRprintPata.RprintPata.Print;
   end;

end;

procedure TfOrdenServicio.dbGChofer2Exit(Sender: TObject);
var
cadena:string;
begin
    cadena:=dbGChofer2.SelectedField.AsString ;
    if LeftStr(cadena, 1)= '9' then
       begin
       dbGFicha2.DataSource:=dsFicha2;
       dbGFicha2.Columns[0].FieldName:='ficha';
       qryFicha2.Close;
       qryFicha2.Open;
       end;

    if LeftStr(cadena, 1)= '1' then
       dbGFicha2.DataSource:=dsFicha1;
end;

procedure TfOrdenServicio.dbGClienteExit(Sender: TObject);
begin
       DesplegarRangoT;

  if qryClienteforma.AsString = 'RD' then   //si la forma del cliente es pesos despliega la tarifa en pesos.
     begin
        control:='RD';

        if qryClientetarifa.AsString <> '' then
            begin
            qryServicio.SQL.Clear;
            qryServicio.SQL.Add('select * from Servicios where cod_t = "'+ qryClientetarifa.AsString +'"');
            qryServicio.SQL.Add('order by descripcion');
            qryServicio.Open;
            Exit;
            end
        else if qryClientetarifa.AsString = '' then
            begin
            qryServicio.SQL.Clear;
            qryServicio.SQL.Add('select * from Servicios where cod_t = "'+ 'T1' +'"');
            qryServicio.SQL.Add('order by descripcion');
            qryServicio.Open;
            Exit;
            end;
     end;

  if qryClienteforma.AsString = 'US' then   //si la forma del cliente es dolares despliega la tarifa en dolares.
     begin
        control:='US';

        if qryClientetarifa.AsString <> '' then
            begin
            qryServicio.SQL.Clear;
            qryServicio.SQL.Add('select * from Servicios where cod_t = "'+ qryClientetarifa.AsString +'"');
            qryServicio.SQL.Add('order by descripcion');
            qryServicio.Open;
            Exit;
            end
        else if qryClientetarifa.AsString = '' then
            begin
            qryServicio.SQL.Clear;
            qryServicio.SQL.Add('select * from Servicios where cod_t = "'+ 'T2' +'"');
            qryServicio.SQL.Add('order by descripcion');
            qryServicio.Open;
            Exit;
            end;
     end;
end;

procedure TfOrdenServicio.DesplegarRangoT;
begin
qryPax.SQL.Clear;
qryPax.SQL.Add('select * from Paxa where cod = "'+ qryClientetarifa.AsString +'"');
qryPax.SQL.Add('order by id');
qryPax.Open;

  if qryPax.IsEmpty then
  begin
  qryPax.SQL.Clear;
  qryPax.SQL.Add('select * from Paxa where cod = "'+ 'T1' +'"');
  qryPax.SQL.Add('order by id');
  qryPax.Open;
  end;

qryPax.First;
l1.Caption:= qryPaxmin.AsString;
l11.Caption:= qryPaxmax.AsString;
qryPax.Next;
l2.Caption:= qryPaxmin.AsString;
l22.Caption:= qryPaxmax.AsString;
qryPax.Next;
l3.Caption:= qryPaxmin.AsString;
l33.Caption:= qryPaxmax.AsString;
qryPax.Next;
l4.Caption:= qryPaxmin.AsString;
l44.Caption:= qryPaxmax.AsString;
qryPax.Next;
l5.Caption:= qryPaxmin.AsString;
l55.Caption:= qryPaxmax.AsString;
qryPax.Next;
l6.Caption:= qryPaxmin.AsString;
l66.Caption:= qryPaxmax.AsString;
qryPax.Next;
l7.Caption:= qryPaxmin.AsString;
l77.Caption:= qryPaxmax.AsString;
qryPax.Next;
l8.Caption:= qryPaxmin.AsString;
l88.Caption:= qryPaxmax.AsString;
end;

procedure TfOrdenServicio.DesplegarRangoTCH;
begin
qryPax.SQL.Clear;
qryPax.SQL.Add('select * from Paxa where cod = "'+ 'T1' +'"');
qryPax.SQL.Add('order by id');
qryPax.Open;

//  if qryPax.IsEmpty then
//  begin
//  qryPax.SQL.Clear;
//  qryPax.SQL.Add('select * from Paxa where cod = "'+ 'T1' +'"');
//  qryPax.SQL.Add('order by id');
//  qryPax.Open;
//  end;

qryPax.First;
c1.Caption:= qryPaxmin.AsString;
c11.Caption:= qryPaxmax.AsString;
qryPax.Next;
c2.Caption:= qryPaxmin.AsString;
c22.Caption:= qryPaxmax.AsString;
qryPax.Next;
c3.Caption:= qryPaxmin.AsString;
c33.Caption:= qryPaxmax.AsString;
qryPax.Next;
c4.Caption:= qryPaxmin.AsString;
c44.Caption:= qryPaxmax.AsString;
qryPax.Next;
c5.Caption:= qryPaxmin.AsString;
c55.Caption:= qryPaxmax.AsString;
qryPax.Next;
c6.Caption:= qryPaxmin.AsString;
c66.Caption:= qryPaxmax.AsString;
qryPax.Next;
c7.Caption:= qryPaxmin.AsString;
c77.Caption:= qryPaxmax.AsString;
qryPax.Next;
c8.Caption:= qryPaxmin.AsString;
c88.Caption:= qryPaxmax.AsString;
end;

procedure TfOrdenServicio.LimpiarR;
begin
l1.Caption:= '00';
l11.Caption:= '00';
l2.Caption:= '00';
l22.Caption:= '00';
l3.Caption:= '00';
l33.Caption:= '00';
l4.Caption:= '00';
l44.Caption:= '00';
l5.Caption:= '00';
l55.Caption:= '00';
l6.Caption:= '00';
l66.Caption:= '00';
l7.Caption:= '00';
l77.Caption:= '00';
l8.Caption:= '00';
l88.Caption:= '00';

c1.Caption:= '00';
c11.Caption:= '00';
c2.Caption:= '00';
c22.Caption:= '00';
c3.Caption:= '00';
c33.Caption:= '00';
c4.Caption:= '00';
c44.Caption:= '00';
c5.Caption:= '00';
c55.Caption:= '00';
c6.Caption:= '00';
c66.Caption:= '00';
c7.Caption:= '00';
c77.Caption:= '00';
c8.Caption:= '00';
c88.Caption:= '00';

end;

procedure TfOrdenServicio.eValorChChange(Sender: TObject);
begin
 if pOrdenServicio.Enabled = true then
    cambio:= true;
end;

procedure TfOrdenServicio.dbGChoferTDblClick(Sender: TObject);
begin
   eValorCh.Text:= dbGChoferT.SelectedField.AsString;

end;

end.

