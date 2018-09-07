unit uCombustible;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, DBCtrls, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,
  ToolWin, DB, MemDS, DBAccess, MyAccess, Buttons;

type
  TfCombustible = class(TForm)
    tbCombustible: TToolBar;
    tbNuevoC: TToolButton;
    tbGrabarC: TToolButton;
    tbBorrarC: TToolButton;
    tbModificarC: TToolButton;
    separator1: TToolButton;
    tbInicioC: TToolButton;
    tbUltimoC: TToolButton;
    tbAnteriorC: TToolButton;
    tbSiguienteC: TToolButton;
    separator2: TToolButton;
    tbSalirC: TToolButton;
    pCombustible: TPanel;
    lcodcom: TLabel;
    lfechac: TLabel;
    lfichac: TLabel;
    lgalon: TLabel;
    ltotal: TLabel;
    eCodComb: TEdit;
    eGalon: TEdit;
    eTotal: TEdit;
    dpFechaCom: TDateTimePicker;
    dbGFichaC: TDBGrid;
    dbeMarcaC: TDBEdit;
    lgalones: TLabel;
    eGalones: TEdit;
    ehora: TEdit;
    lhora: TLabel;
    qryFichaC: TMyQuery;
    dsFichaC: TDataSource;
    qryGrabarC: TMyQuery;
    qryBorrarC: TMyQuery;
    qryModificarC: TMyQuery;
    qryConsultaC: TMyQuery;
    dsConsultaC: TDataSource;
    qryCod: TMyQuery;
    bbCalcular: TBitBtn;
    eKm: TEdit;
    lkm: TLabel;
    lk: TLabel;
    qryConsultaCcodigo: TIntegerField;
    qryConsultaCfecha: TDateField;
    qryConsultaChora: TStringField;
    qryConsultaCfichaC: TStringField;
    qryConsultaCmarcaC: TStringField;
    qryConsultaCgalones: TFloatField;
    qryConsultaCprecio: TFloatField;
    qryConsultaCtotal: TFloatField;
    qryConsultaCkm: TIntegerField;
    qryConsultaCuser_com: TStringField;
    tbConsultaC: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure tbNuevoCClick(Sender: TObject);
    procedure tbGrabarCClick(Sender: TObject);
    procedure tbBorrarCClick(Sender: TObject);
    procedure tbModificarCClick(Sender: TObject);
    procedure tbInicioCClick(Sender: TObject);
    procedure tbUltimoCClick(Sender: TObject);
    procedure tbAnteriorCClick(Sender: TObject);
    procedure tbSiguienteCClick(Sender: TObject);
    procedure tbSalirCClick(Sender: TObject);
    procedure dpFechaComChange(Sender: TObject);
    procedure eCodCombChange(Sender: TObject);
    procedure ehoraChange(Sender: TObject);
    procedure eGalonesChange(Sender: TObject);
    procedure eGalonChange(Sender: TObject);
    procedure eTotalChange(Sender: TObject);
    procedure dbGFichaCDblClick(Sender: TObject);
    procedure bbCalcularClick(Sender: TObject);
    procedure eKmChange(Sender: TObject);
    procedure tbConsultaCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarCom;
    procedure NuevoCom;
    procedure GrabarFechaCom;
    procedure ModificarFechaCom;

  end;

var
  fCombustible: TfCombustible;
  Cnum : String;       
  Ccambio : boolean;
  Cnew : boolean;
  Cusuario: string;     

implementation

uses uMenuOper, uMant, uPrincipal, uProduccionE, uConsultaCombustible;

{$R *.dfm}

procedure TfCombustible.FormShow(Sender: TObject);
begin
    fCombustible.Top:=90;
    fCombustible.Left:=90;
    fMenuOper.Hide;
    fMant.Hide;
    Ccambio:=false;
    NuevoCom;
end;

procedure TfCombustible.NuevoCom;
begin
eCodComb.Clear;
eHora.Clear;
eKm.Clear;
eGalones.Clear;
eGalon.Clear;
eTotal.Clear;
dbGFichaC.DataSource:=dsFichaC;
dbGFichaC.Columns[0].FieldName:='ficha';
qryCod.Close;
qryCod.Open;
qryFichaC.Close;
qryFichaC.Open;
end;

procedure TfCombustible.DesplegarCom;
begin
eCodComb.Text := qryConsultaCcodigo.AsString;
dpFechaCom.Date:= qryConsultaCfecha.AsDateTime;
ehora.Text := qryConsultaChora.AsString;
eKm.Text:= qryConsultaCkm.AsString;
egalones.Text := qryConsultaCgalones.AsString;
egalon.Text := qryConsultaCprecio.AsString;
etotal.Text := qryConsultaCtotal.AsString;
dbGFichaC.DataSource:=dsConsultaC;
dbGFichaC.Columns[0].FieldName:='fichaC';
dbeMarcaC.Text:= qryConsultaCmarcaC.AsString;

pCombustible.Enabled:= False;
tbBorrarC.Enabled:=true;
tbModificarC.Enabled:=true;
tbGrabarC.Enabled:=false;
end;

procedure TfCombustible.GrabarFechaCom;
var
s: string;
d: TDateTime;
begin
  d:= dpFechaCom.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);
  qryGrabarC.ParamByName('vfecha').AsString:= s ;
end;

procedure TfCombustible.ModificarFechaCom;
var
s: string;
d: TDateTime;
begin
  d:= dpFechaCom.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);
  qryModificarC.ParamByName('vfecha').AsString:= s ;
end;


procedure TfCombustible.tbNuevoCClick(Sender: TObject);
begin
   Cnew:= true;
   pCombustible.Enabled:= True;
   NuevoCom;
   eCodComb.Text:= qryCod.FieldValues['max(codigo)'] + 1 ;
   dpFechaCom.Date:= Date;
   tbBorrarC.Enabled:=false;
   tbModificarC.Enabled:=false;
   tbGrabarC.Enabled:=true;
   Ccambio:= false;
end;

procedure TfCombustible.tbGrabarCClick(Sender: TObject);
begin
     Cnew:=false;
     Cusuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eCodComb.Text)= '' then
begin
   showmessage ('Debe ingresar el Código');
   eCodComb.SetFocus;
   Exit;
end;

if trim(eGalones.Text)= '' then
begin
   showmessage ('Debe ingresar la Cantidad de Galones');
   eGalones.SetFocus;
   Exit;
end;

if trim(eGalon.Text)= '' then
begin
   showmessage ('Debe ingresar el precio del Galón');
   eGalon.SetFocus;
   Exit;
end;

if trim(eTotal.Text)= '' then
begin
   showmessage ('Debe ingresar el Total');
   eTotal.SetFocus;
   Exit;
end;

if eCodComb.Text = qryConsultaCcodigo.AsString then
   begin
     showmessage ('Este Registro Ya Existe');
     Exit;
   end;

qryGrabarC.ParamByName('vcod').AsString:= eCodComb.Text ;
qryGrabarC.ParamByName('vhora').AsString:= ehora.Text ;
qryGrabarC.ParamByName('vkm').AsString:= ekm.Text ;
qryGrabarC.ParamByName('vfichac').AsString:= dbGFichaC.SelectedField.AsString;
qryGrabarC.ParamByName('vmarcac').AsString:= dbeMarcaC.Text;
qryGrabarC.ParamByName('vgalones').AsString:= eGalones.Text ;
qryGrabarC.ParamByName('vprecio').AsString:= eGalon.Text ;
qryGrabarC.ParamByName('vtotal').AsString:= eTotal.Text;
qryGrabarC.ParamByName('vusercom').AsString:= Cusuario;
GrabarFechaCom;

qryGrabarC.Execute;
NuevoCom;
qryConsultaC.Close;
pCombustible.Enabled:= False;
tbGrabarC.Enabled:=false;
Ccambio:= false;
end;

procedure TfCombustible.tbBorrarCClick(Sender: TObject);
var
BMboton : Integer;
begin
   if trim(eCodComb.Text)= '' then
   begin
   showmessage ('Debe buscar un Registro para borrar');
   Exit;
   end;

   if eCodComb.Text = '10001' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BMboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Registro',MB_YESNO+MB_ICONINFORMATION);
   If BMboton = ID_YES Then
      begin
      Cnum:= eCodComb.Text;
      qryBorrarC.ParamByName('bcomb').AsString:= Cnum;
      qryBorrarC.Execute;
      NuevoCom;
      qryConsultaC.Close;
      tbBorrarC.Enabled:=false;
      tbModificarC.Enabled:=false;
      end
   Else
    Exit;
end;

procedure TfCombustible.tbModificarCClick(Sender: TObject);
begin

   if trim(eCodComb.Text)= '' then
   begin
   showmessage ('Debe buscar un Registro para modificar');
   Exit;
   end;

   if pCombustible.Enabled = false then
   begin
   pCombustible.Enabled:=True;
   tbInicioC.Enabled:=false;
   tbUltimoC.Enabled:=false;
   tbAnteriorC.Enabled:=false;
   tbSiguienteC.Enabled:=false;
   tbBorrarC.Enabled:=false;
   tbNuevoC.Enabled:=false;
   Exit;
   end;

      Cnum:= eCodComb.Text;
      Cusuario:= fPrincipal.dbtUsuarioA.Caption;


if trim(eGalones.Text)= '' then
begin
   showmessage ('Debe ingresar la Cantidad de Galones');
   eGalones.SetFocus;
   Exit;
end;

if trim(eGalon.Text)= '' then
begin
   showmessage ('Debe ingresar el precio del Galón');
   eGalon.SetFocus;
   Exit;
end;

if trim(eTotal.Text)= '' then
begin
   showmessage ('Debe ingresar el Total');
   eTotal.SetFocus;
   Exit;
end;

qryModificarC.ParamByName('vcod').AsString:= eCodComb.Text ;
qryModificarC.ParamByName('vhora').AsString:= ehora.Text ;
qryModificarC.ParamByName('vkm').AsString:= ekm.Text ;
qryModificarC.ParamByName('vfichac').AsString:= dbGFichaC.SelectedField.AsString;
qryModificarC.ParamByName('vmarcac').AsString:= dbeMarcaC.Text;
qryModificarC.ParamByName('vgalones').AsString:= eGalones.Text ;
qryModificarC.ParamByName('vprecio').AsString:= eGalon.Text ;
qryModificarC.ParamByName('vtotal').AsString:= eTotal.Text;
qryModificarC.ParamByName('vusercom').AsString:= Cusuario;
ModificarFechaCom;

qryModificarC.ParamByName('v1comb').AsString:= Cnum ;
qryModificarC.Execute;
qryConsultaC.RefreshRecord;

      pCombustible.Enabled:= False;
      tbInicioC.Enabled:=true;
      tbUltimoC.Enabled:=true;
      tbAnteriorC.Enabled:=true;
      tbSiguienteC.Enabled:=true;
      tbNuevoC.Enabled:=true;
      tbBorrarC.Enabled:=false;
      tbModificarC.Enabled:=false;
      Ccambio:= false;
end;


procedure TfCombustible.tbInicioCClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Cnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.sql.Clear;
qryConsultaC.sql.Add('select * from combustible order by codigo') ;
qryConsultaC.Open;
qryConsultaC.First;
DesplegarCom;

if qryConsultaC.IsEmpty then
  showmessage('No hay más!');

end;


procedure TfCombustible.tbUltimoCClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Cnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.sql.Clear;
qryConsultaC.sql.Add('select * from combustible order by codigo') ;
qryConsultaC.Open;
qryConsultaC.Last;
DesplegarCom;

if qryConsultaC.IsEmpty then
  showmessage('No hay más!');

end;


procedure TfCombustible.tbAnteriorCClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Cnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.Open;
qryConsultaC.Prior;
DesplegarCom;

if qryConsultaC.Bof then
  showmessage('No hay más anteriores.');

end;


procedure TfCombustible.tbSiguienteCClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Cnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarC.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Cnew:=false;
   end;

qryConsultaC.Open;
qryConsultaC.Next;
DesplegarCom;

if qryConsultaC.Eof then
  showmessage('No hay más siguientes.');

end;


procedure TfCombustible.tbSalirCClick(Sender: TObject);
var
MChaboton : Integer;
begin
  if Ccambio = true then
    begin
    MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If MChaboton = ID_YES Then
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
NuevoCom;
qryConsultaC.Close;
qryCod.Close;
qryFichaC.Close;
fCombustible.Close;
end;


procedure TfCombustible.dpFechaComChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.eCodCombChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.ehoraChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.eGalonesChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.eGalonChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.eTotalChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.dbGFichaCDblClick(Sender: TObject);
begin
dbGFichaC.DataSource:=dsFichaC;
qryFichaC.Close;
qryFichaC.Open;
Ccambio:= true;
end;

procedure TfCombustible.bbCalcularClick(Sender: TObject);
var
a: Single;
T: real;
G: real;
P: real;
begin
  if TryStrToFloat(eGalones.Text, a) = false then
     begin
     ShowMessage('Porfavor la cantidad de Galones debe ser Número');
     eGalones.Clear;
     eGalones.SetFocus;
     Exit;
     end;

  if TryStrToFloat(eGalon.Text, a) = false then
     begin
     ShowMessage('Porfavor el Precio del Galón debe ser Número');
     eGalon.Clear;
     eGalon.SetFocus;
     Exit;
     end;

G:= StrToFloat(eGalones.Text);
P:= StrToFloat(eGalon.Text);
T:= G * P;

eTotal.Text:= FloatToStr(T);
end;

procedure TfCombustible.eKmChange(Sender: TObject);
begin
if pCombustible.Enabled = true then
   Ccambio:= true;
end;

procedure TfCombustible.tbConsultaCClick(Sender: TObject);
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

dlgConsultaCombustible.ShowModal;   //muestra el dialogo de consulta.
qryConsultaC.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaCombustible.ModalResult = mrOK then
begin
qryConsultaC.sql.Clear;
qryConsultaC.sql.Add('select * from combustible where codigo is not null') ;
qryConsultaC.sql.Add('and codigo like "%' + dlgConsultaCombustible.eConsultaCom.Text  +'%"') ;
qryConsultaC.Open;
DesplegarCom; //llama la funcion despleglar los datos.

if qryConsultaC.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

end.
