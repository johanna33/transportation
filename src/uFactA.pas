unit uFactA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls, ToolWin, DB, DBTables, MemDS, DBAccess, MyAccess;

type
  TfFactA = class(TForm)
    pFactA: TPanel;
    ldesde: TLabel;
    lhasta: TLabel;
    lclientef: TLabel;
    lnumfact: TLabel;
    lfechadia: TLabel;
    ltaza1: TLabel;
    eFactNum: TEdit;
    eFechaR: TEdit;
    eTaza: TEdit;
    ehasta: TEdit;
    lCancelar: TLabel;
    ltotalr: TLabel;
    ltotalu: TLabel;
    eNetoRD: TEdit;
    eNetoUS: TEdit;
    eClienteF: TEdit;
    tbFactA: TToolBar;
    tbmodi: TToolButton;
    tbcancelar: TToolButton;
    tbsalir: TToolButton;
    tbsigui: TToolButton;
    tbante: TToolButton;
    tbulti: TToolButton;
    tbini: TToolButton;
    tbconsulta: TToolButton;
    tbActivar: TToolButton;
    eCodC: TEdit;
    eForF: TEdit;
    eTipo: TEdit;
    lTipo: TLabel;
    qryCanA: TMyQuery;
    qryFactA: TMyQuery;
    tbborrar: TToolButton;
    sep1: TToolButton;
    sep2: TToolButton;
    qryBorrarA: TMyQuery;
    eDesc: TEdit;
    lporc: TLabel;
    ldes: TLabel;
    lau: TLabel;
    eAu: TEdit;
    lpoau: TLabel;
    Label1: TLabel;
    eNcfA: TEdit;
    qryFactAfact_n: TIntegerField;
    qryFactAncf: TStringField;
    qryFactAfechaR: TDateField;
    qryFactAfdesde: TDateField;
    qryFactAfhasta: TDateField;
    qryFactAtaza: TFloatField;
    qryFactAtotalRD: TFloatField;
    qryFactAtotalUS: TFloatField;
    qryFactAcodigo_c: TIntegerField;
    qryFactAnombre: TStringField;
    qryFactAstatus: TStringField;
    qryFactAforma: TStringField;
    qryFactAtipo: TStringField;
    qryFactAde: TFloatField;
    qryFactAau: TFloatField;
    qryFactAvalor: TFloatField;
    qryFactAuser_f: TStringField;
    eNC: TEdit;
    edesde: TEdit;
    procedure tbmodiClick(Sender: TObject);
    procedure tbcancelarClick(Sender: TObject);
    procedure tbActivarClick(Sender: TObject);
    procedure tbsalirClick(Sender: TObject);
    procedure tbsiguiClick(Sender: TObject);
    procedure tbanteClick(Sender: TObject);
    procedure tbultiClick(Sender: TObject);
    procedure tbiniClick(Sender: TObject);
    procedure tbconsultaClick(Sender: TObject);
    procedure tbborrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarA;
    procedure Limpiar;
  end;

var
  fFactA: TfFactA;
  iRD: string;  //para desplegar el formato float.
  iUS: string;
 
implementation

uses uModuloF, uConsultaFact;

{$R *.dfm}

procedure TfFactA.DesplegarA;
begin
eFActNum.Text:= qryFactAfact_n.AsString;
eNcfA.Text:= qryFactAncf.AsString;

 if eNcfA.Text = '' then
 begin
 eNC.Text:='';
 end
 else
 begin
 eNC.Text:= 'A010010010' + eNcfA.Text;
 end;
 
eFechaR.Text:= qryFactAfechaR.AsString;
edesde.Text:=qryFactAfdesde.AsString;
ehasta.Text:=qryFactAfhasta.AsString;
eClienteF.Text:=qryFactAnombre.AsString;
eCodC.Text:=qryFactAcodigo_c.AsString;
eForF.Text:=qryFactAforma.AsString;
eTipo.Text:=qryFactAtipo.AsString;
etaza.Text:=qryFactAtaza.AsString;
eDesc.Text:=qryFactAde.AsString;
eAu.Text:=qryFactAau.AsString;

iRD:= FormatFloat(',.00',qryFactAtotalrd.AsFloat); //es como la mascarilla para los valores.
iUS:= FormatFloat(',.00',qryFactAtotalus.AsFloat);
eNetoRD.Text:= iRd;
eNetoUS.Text:= iUS;

if qryFactAtipo.AsString = 'O' then    //desliega el letrero dependiento el tipo de factura.
   lTipo.Caption:= 'TARIFA GENERAL';
if qryFactAtipo.AsString = 'T' then
   lTipo.Caption:= 'TARIFA DE TRASLADOS';
if qryFactAtipo.AsString = 'E' then
   lTipo.Caption:= 'TARIFA DE EXCURSIONES';

if qryFactAstatus.AsString = '' then    //despliega un letrero si esta cancelada o no.
lCancelar.Visible:= False
else
lCancelar.Visible:= True;

end;

procedure TfFactA.tbmodiClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin

   if Trim(eFactNum.Text) = '' then
      begin
      showmessage('Debe buscar una factura para Editar');
      Exit;
      end;


   if qryFactAstatus.AsString = 'C' then
      begin
      showmessage ('Esta factura esta Cancelada');
      Exit;
      end;


   d1:= StrToDate(eDesde.Text);
   d2:= StrToDate(eHasta.Text);
   s1:= FormatDateTime('yyyy/mm/dd',d1);
   s2:= FormatDateTime('yyyy/mm/dd',d2);

if qryFactAtipo.AsString = 'O' then  //si es factura general.
   begin
   fModuloF.qryFact.SQL.Clear;
   fModuloF.qryFact.SQL.Add('SELECT orden_n, fecha, capacidad, capa1, pax, pax1, orden_c, solicitado, valor_rd, valor_us, lugar, servicio, tipo_servicio FROM ordenservicio');
   fModuloF.qryFact.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
   fModuloF.qryFact.SQL.Add('and codigo_c = "'+ eCodC.Text +'"');
   fModuloF.qryFact.SQL.Add('and status = "'+ '' +'" ');
   fModuloF.qryFact.SQL.Add('order by fecha');
   fModuloF.qryFact.Open;
   end;

if qryFactAtipo.AsString = 'T' then   //si es factura de traslados.
   begin
   fModuloF.qryFact.SQL.Clear;
   fModuloF.qryFact.SQL.Add('SELECT orden_n, fecha, capacidad, capa1, pax, pax1, orden_c, solicitado, valor_rd, valor_us, lugar, servicio, tipo_servicio FROM ordenservicio');
   fModuloF.qryFact.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
   fModuloF.qryFact.SQL.Add('and codigo_c = "'+ eCodC.Text +'"');
   fModuloF.qryFact.SQL.Add('and status = "'+ '' +'" ');
   fModuloF.qryFact.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'" ');
   fModuloF.qryFact.SQL.Add('order by fecha');
   fModuloF.qryFact.Open;
   end;

if qryFactAtipo.AsString = 'E' then  //si es factura de excursiones.
   begin
   fModuloF.qryFact.SQL.Clear;
   fModuloF.qryFact.SQL.Add('SELECT orden_n, fecha, capacidad, capa1, pax, pax1, orden_c, solicitado, valor_rd, valor_us, lugar, servicio, tipo_servicio FROM ordenservicio');
   fModuloF.qryFact.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
   fModuloF.qryFact.SQL.Add('and codigo_c = "'+ eCodC.Text +'"');
   fModuloF.qryFact.SQL.Add('and status = "'+ '' +'" ');
   fModuloF.qryFact.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'" ');
   fModuloF.qryFact.SQL.Add('order by fecha');
   fModuloF.qryFact.Open;
   end;

  //despliega los datos de la fact en el modulo de modificar.
   fModuloF.eFactN.Text:= eFactNum.Text;
   fModuloF.eFechaDia.Text:= eFechaR.Text;
   fMOduloF.eNCF.Text:= eNC.Text;
   fModuloF.eClienteF.Text:= eClienteF.Text;

   fModuloF.eDesdeF.date:= d1;
   fModuloF.eHastaF.date:= d2;

   fModuloF.eFormaF.Text:= eForF.Text;
   fModuloF.eCodF.Text:= eCodC.Text;
   fModuloF.eTipoF.Text:= eTipo.Text;

   fModuloF.eAum.Text:= eAu.Text;
   fModuloF.eDes.Text:= eDesc.Text;
   fModuloF.eTotalRD.Text:= iRD;
   fModuloF.eTaza.Text:= etaza.Text;
   fModuloF.eTotalUS.Text:= iUS;
   fModuloF.eRD.Clear;
   fModuloF.eUS.Clear;

   fModuloF.Show;   //muestra el modulo de modificar.
end;

procedure TfFactA.tbcancelarClick(Sender: TObject);
begin
  if Trim(eFactNum.Text) = '' then
      begin
      showmessage('Debe buscar una factura para Cancelar');
      Exit;
      end;

 if lCancelar.Visible = false then    //esto cancela la factura.
     begin
     qryCanA.SQL.Clear;
     qryCanA.SQL.Add('Update Fact SET status = "'+ 'C' +'"');
     qryCanA.SQL.Add('where fact_n = "'+ eFactNum.Text +'" ');
     qryCanA.Execute;
     showmessage('Factura Cancelada!!!');
     lCancelar.Visible:= True;
     end
  else
     begin
     showmessage('Esta factura Ya esta Cancelada.');
     Exit;
     end;
end;

procedure TfFactA.tbActivarClick(Sender: TObject);
begin
   if Trim(eFactNum.Text) = '' then
      begin
      showmessage('Debe buscar una factura para Activar');
      Exit;
      end;

 if lCancelar.Visible = true then    //esto activa la factura.
    begin
     qryCanA.SQL.Clear;
     qryCanA.SQL.Add('Update Fact SET status = "'+ '' +'"');
     qryCanA.SQL.Add('where fact_n = "'+ eFactNum.Text +'" ');
     qryCanA.Execute;
     showmessage('Factura Activada!!!');
     lCancelar.Visible:= False;
     end
  else
     begin
     showmessage('Esta factura Ya esta Activa.');
     Exit;
     end;
end;

procedure TfFactA.tbsalirClick(Sender: TObject);
begin
   qryFactA.Close;
   fFactA.Close;
end;

procedure TfFactA.tbsiguiClick(Sender: TObject);
begin
qryFactA.Open;
qryFactA.Next;
DesplegarA;

if qryFactA.Eof then
  showmessage('No hay más siguientes.');
end;

procedure TfFactA.tbanteClick(Sender: TObject);
begin
qryFactA.Open;
qryFactA.Prior;
DesplegarA;

if qryFactA.Bof then
  showmessage('No hay más anteriores.');
end;

procedure TfFactA.tbultiClick(Sender: TObject);
begin
qryFactA.sql.Clear;
qryFactA.sql.Add('select * from Fact order by fact_n') ;
qryFactA.Open;
qryFactA.Last;
DesplegarA;

if qryFactA.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfFactA.tbiniClick(Sender: TObject);
begin
qryFactA.sql.Clear;
qryFactA.sql.Add('select * from Fact order by fact_n') ;
qryFactA.Open;
qryFactA.First;
DesplegarA;

if qryFactA.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfFactA.tbconsultaClick(Sender: TObject);
begin
dlgConsultaFact.ShowModal;
qryFactA.Close;

if dlgConsultaFact.ModalResult = mrOK then
begin
qryFactA.sql.Clear;
qryFactA.sql.Add('select * from Fact where fact_n is not null') ;
qryFactA.sql.Add('and fact_n = "'+ dlgConsultaFact.eConsultaFact.Text +'"') ;
qryFactA.sql.Add('order by fact_n');
qryFactA.Open;
DesplegarA;

if qryFactA.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

procedure TfFactA.tbborrarClick(Sender: TObject);
var
Bboton : Integer;
Fnum : string;
begin
   if trim(eFactNum.Text)= '' then
   begin
   showmessage ('Debe buscar una Factura para borrar');
   Exit;
   end;

Bboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Factura',MB_YESNO+MB_ICONINFORMATION);
   If Bboton = ID_YES Then
      begin
      Fnum:= eFactNum.Text;
      qryBorrarA.ParamByName('bfact').AsString:= Fnum;
      qryBorrarA.Execute;
      qryFactA.Close;
      Limpiar;
      end
   Else
    Exit;
end;

procedure TfFactA.Limpiar;
begin
eFActNum.Clear;
eNcfA.Clear;
eNC.Clear;
eFechaR.Clear;
edesde.Clear;
ehasta.Clear;
eClienteF.Clear;
etaza.Clear;
eNetoRD.Clear;
eNetoUS.Clear;
eDesc.Clear;
eAu.Clear;
lCancelar.Visible:= False
end;

end.
