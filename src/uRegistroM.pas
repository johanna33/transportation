unit uRegistroM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ToolWin, ComCtrls, StdCtrls, DB, DBTables, Grids,
  DBGrids, Mask, DBCtrls, MemDS, DBAccess, MyAccess;

type
  TfRegistroM = class(TForm)
    tbRegistroM: TToolBar;
    pRegistroM: TPanel;
    tbNuevoM: TToolButton;
    tbGrabarM: TToolButton;
    tbBorrarM: TToolButton;
    tbModificarM: TToolButton;
    separator1: TToolButton;
    tbInicioM: TToolButton;
    tbUltimoM: TToolButton;
    tbAnteriorM: TToolButton;
    tbSiguienteM: TToolButton;
    separator2: TToolButton;
    tbSalirM: TToolButton;
    lcodm: TLabel;
    lfecham: TLabel;
    lficham: TLabel;
    lrecibo: TLabel;
    lnombrem: TLabel;
    ldecrip: TLabel;
    lkmt: TLabel;
    limporte: TLabel;
    lkmtss: TLabel;
    eCodMant: TEdit;
    eReciboM: TEdit;
    eNombreM: TEdit;
    eKmt: TEdit;
    eImporte: TEdit;
    dpFechaM: TDateTimePicker;
    dbGFichaM: TDBGrid;
    dsFichaM: TDataSource;
    dbeMarcaM: TDBEdit;
    dsConsultaM: TDataSource;
    qryCodM: TMyQuery;
    qryFichaM: TMyQuery;
    qryGrabarM: TMyQuery;
    qryBorrarM: TMyQuery;
    qryModificarM: TMyQuery;
    qryConsultaM: TMyQuery;
    qryConsultaMcod_m: TIntegerField;
    qryConsultaMfecham: TDateField;
    qryConsultaMrecibo: TStringField;
    qryConsultaMdescrip: TStringField;
    qryConsultaMnombrem: TStringField;
    qryConsultaMficham: TStringField;
    qryConsultaMmarcam: TStringField;
    qryConsultaMkmt: TIntegerField;
    qryConsultaMimporte: TFloatField;
    qryConsultaMuser_m: TStringField;
    tbConsultaM: TToolButton;
    eDescriM: TMemo;
    procedure FormShow(Sender: TObject);
    procedure tbNuevoMClick(Sender: TObject);
    procedure tbGrabarMClick(Sender: TObject);
    procedure tbBorrarMClick(Sender: TObject);
    procedure tbModificarMClick(Sender: TObject);
    procedure tbInicioMClick(Sender: TObject);
    procedure tbUltimoMClick(Sender: TObject);
    procedure tbAnteriorMClick(Sender: TObject);
    procedure tbSiguienteMClick(Sender: TObject);
    procedure tbSalirMClick(Sender: TObject);
    procedure eCodMantChange(Sender: TObject);
    procedure eReciboMChange(Sender: TObject);
    procedure eNombreMChange(Sender: TObject);
    procedure eDescriM1Change(Sender: TObject);
    procedure eKmtChange(Sender: TObject);
    procedure eImporteChange(Sender: TObject);
    procedure dpFechaMChange(Sender: TObject);
    procedure dbGFichaMDblClick(Sender: TObject);
    procedure tbConsultaMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarM;
    procedure NuevoM;
    procedure GrabarFechaM;
    procedure ModificarFechaM;
  end;

var
  fRegistroM: TfRegistroM;
  Mnum : String;
  Mcambio : boolean;
  Mnew : boolean;
  Musuario: string;

implementation

uses uMenuOper, uMant, uPrincipal, uConsultaRegistro;

{$R *.dfm}

procedure TfRegistroM.FormShow(Sender: TObject);
begin
    fRegistroM.Top:=90;
    fRegistroM.Left:=90;
   fMenuOper.Hide;
   fMant.Hide;
   Mcambio:=false;
   NuevoM;
end;

procedure TfRegistroM.NuevoM;
begin
eCodMant.Clear;
eNombreM.Clear;
eReciboM.Clear;
eKmt.Clear;
eDescriM.Clear;
eImporte.Clear;
dbGFichaM.DataSource:=dsFichaM;
dbGFichaM.Columns[0].FieldName:='ficha';
qryCodM.Close;
qryCodM.Open;
qryFichaM.Close;
qryFichaM.Open;
end;

procedure TfRegistroM.DesplegarM;
begin
eCodMant.Text := qryConsultaMcod_m.AsString;
eNombreM.Text := qryConsultaMnombreM.AsString;
eReciboM.Text := qryConsultaMrecibo.AsString;
eKmt.Text := qryConsultaMkmt.AsString;
eDescriM.Text := qryConsultaMdescrip.AsString;
dpFechaM.Date:= qryConsultaMFechaM.AsDateTime;
dbGFichaM.DataSource:=dsConsultaM;
dbGFichaM.Columns[0].FieldName:='ficham';
dbeMarcaM.Text:= qryConsultaMmarcaM.AsString;
eImporte.Text := qryConsultaMimporte.AsString;

pRegistroM.Enabled:= False;
tbBorrarM.Enabled:=true;
tbModificarM.Enabled:=true;
tbGrabarM.Enabled:=false;
end;

procedure TfRegistroM.GrabarFechaM;
var
s: string;
d: TDateTime;
begin
  d:= dpFechaM.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);
  qryGrabarM.ParamByName('vfecham').AsString:= s ;
end;

procedure TfRegistroM.ModificarFechaM;
var
s: string;
d: TDateTime;
begin
  d:= dpFechaM.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);
  qryModificarM.ParamByName('vfecham').AsString:= s ;
end;

procedure TfRegistroM.tbNuevoMClick(Sender: TObject);
begin
   Mnew:= true;
   pRegistroM.Enabled:= True;
   NuevoM;
   eCodMant.Text:= qryCodM.FieldValues['max(cod_m)'] + 1 ;
   dpFechaM.Date:= Date;
   tbBorrarM.Enabled:=false;
   tbModificarM.Enabled:=false;
   tbGrabarM.Enabled:=true;
   Mcambio:= false;
end;

procedure TfRegistroM.tbGrabarMClick(Sender: TObject);
begin
     Mnew:=false;
     Musuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eCodMant.Text)= '' then
begin
   showmessage ('Debe ingresar el Código del Registro');
   eCodMant.SetFocus;
   Exit;
end;

if trim(eDescriM.Text)= '' then
begin
   showmessage ('Debe ingresar la Descripción');
   eDescriM.SetFocus;
   Exit;
end;

if trim(eImporte.Text)= '' then
begin
   showmessage ('Debe ingresar el Monto');
   eImporte.SetFocus;
   Exit;
end;

if eCodMant.Text = qryConsultaMcod_m.AsString then
   begin
     showmessage ('Este Registro Ya Existe');
     Exit;
   end;

qryGrabarM.ParamByName('vcodm').AsString:= eCodMant.Text ;
qryGrabarM.ParamByName('vnombrem').AsString:= eNombreM.Text ;
qryGrabarM.ParamByName('vrecibo').AsString:= eReciboM.Text ;
qryGrabarM.ParamByName('vdescrip').AsString:= eDescriM.Text ;
qryGrabarM.ParamByName('vkmt').AsString:= eKmt.Text ;
qryGrabarM.ParamByName('vimporte').AsString:= eImporte.Text ;
qryGrabarM.ParamByName('vfichaM').AsString:= dbGFichaM.SelectedField.AsString;
qryGrabarM.ParamByName('vmarcam').AsString:= dbeMarcaM.Text;
qryGrabarM.ParamByName('vuserm').AsString:= Musuario;
GrabarFechaM;

qryGrabarM.Execute;
NuevoM;
qryConsultaM.Close;
pRegistroM.Enabled:= False;
tbGrabarM.Enabled:=false;
Mcambio:= false;
end;

procedure TfRegistroM.tbBorrarMClick(Sender: TObject);
var
BMboton : Integer;
begin
   if trim(eCodMant.Text)= '' then
   begin
   showmessage ('Debe buscar un Registro para borrar');
   Exit;
   end;

   if eCodMant.Text = '1001' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BMboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Registro',MB_YESNO+MB_ICONINFORMATION);
   If BMboton = ID_YES Then
      begin
      Mnum:= eCodMant.Text;
      qryBorrarM.ParamByName('bmant').AsString:= Mnum;
      qryBorrarM.Execute;
      NuevoM;
      qryConsultaM.Close;
      tbBorrarM.Enabled:=false;
      tbModificarM.Enabled:=false;
      end
   Else
    Exit;

end;

procedure TfRegistroM.tbModificarMClick(Sender: TObject);
begin

   if trim(eCodMant.Text)= '' then
   begin
   showmessage ('Debe buscar un Registro para modificar');
   Exit;
   end;

   if pRegistroM.Enabled = false then
   begin
   pRegistroM.Enabled:=True;
   tbInicioM.Enabled:=false;
   tbUltimoM.Enabled:=false;
   tbAnteriorM.Enabled:=false;
   tbSiguienteM.Enabled:=false;
   tbBorrarM.Enabled:=false;
   tbNuevoM.Enabled:=false;
   Exit;
   end;

      Mnum:= eCodMant.Text;
      Musuario:= fPrincipal.dbtUsuarioA.Caption;
      
if trim(eDescriM.Text)= '' then
begin
   showmessage ('Debe ingresar la Descripción');
   eDescriM.SetFocus;
   Exit;
end;

if trim(eImporte.Text)= '' then
begin
   showmessage ('Debe ingresar el Monto');
   eImporte.SetFocus;
   Exit;
end;

qryModificarM.ParamByName('vcodm').AsString:= eCodMant.Text ;
qryModificarM.ParamByName('vnombrem').AsString:= eNombreM.Text ;
qryModificarM.ParamByName('vrecibo').AsString:= eReciboM.Text ;
qryModificarM.ParamByName('vdescrip').AsString:= eDescriM.Text ;
qryModificarM.ParamByName('vkmt').AsString:= eKmt.Text ;
qryModificarM.ParamByName('vimporte').AsString:= eImporte.Text ;
qryModificarM.ParamByName('vfichaM').AsString:= dbGFichaM.SelectedField.AsString;
qryModificarM.ParamByName('vmarcam').AsString:= dbeMarcaM.Text;
qryModificarM.ParamByName('vuserm').AsString:= Musuario;
ModificarFechaM;

qryModificarM.ParamByName('v1mant').AsString:= Mnum ;
qryModificarM.Execute;
qryConsultaM.RefreshRecord;

      pRegistroM.Enabled:= False;
      tbInicioM.Enabled:=true;
      tbUltimoM.Enabled:=true;
      tbAnteriorM.Enabled:=true;
      tbSiguienteM.Enabled:=true;
      tbNuevoM.Enabled:=true;
      tbBorrarM.Enabled:=false;
      tbModificarM.Enabled:=false;
      Mcambio:= false;
end;

procedure TfRegistroM.tbInicioMClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Mnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarM.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Mnew:=false;
   end;

qryConsultaM.sql.Clear;
qryConsultaM.sql.Add('select * from mantenimiento order by cod_m') ;
qryConsultaM.Open;
qryConsultaM.First;
DesplegarM;

if qryConsultaM.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfRegistroM.tbUltimoMClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Mnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarM.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Mnew:=false;
   end;

qryConsultaM.sql.Clear;
qryConsultaM.sql.Add('select * from mantenimiento order by cod_m') ;
qryConsultaM.Open;
qryConsultaM.Last;
DesplegarM;

if qryConsultaM.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfRegistroM.tbAnteriorMClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Mnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarM.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Mnew:=false;
   end;

qryConsultaM.Open;
qryConsultaM.Prior;
DesplegarM;

if qryConsultaM.Bof then
  showmessage('No hay más anteriores.');

end;

procedure TfRegistroM.tbSiguienteMClick(Sender: TObject);
var
MChaboton : Integer;
begin
   if Mnew = true then
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarM.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Mnew:=false;
   end;

qryConsultaM.Open;
qryConsultaM.Next;
DesplegarM;

if qryConsultaM.Eof then
  showmessage('No hay más siguientes.');

end;

procedure TfRegistroM.tbSalirMClick(Sender: TObject);
var
MChaboton : Integer;
begin
  if Mcambio = true then
    begin
    MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If MChaboton = ID_YES Then
       begin
         if tbModificarM.Enabled = false then
         begin
         tbGrabarM.Click;
         exit;
         end
         else
         begin
         tbModificarM.Click;
         exit;
         end
       end
    end;

tbInicioM.Enabled:=true;
tbUltimoM.Enabled:=true;
tbAnteriorM.Enabled:=true;
tbSiguienteM.Enabled:=true;
tbNuevoM.Enabled:=true;
tbGrabarM.Enabled:=false;
tbBorrarM.Enabled:=false;
tbModificarM.Enabled:=false;

Mcambio:= false;
Mnew:=false;
NuevoM;
qryConsultaM.Close;
qryCodM.Close;
qryFichaM.Close;
fRegistroM.Close;

end;

procedure TfRegistroM.eCodMantChange(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.eReciboMChange(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.eNombreMChange(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.eDescriM1Change(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.eKmtChange(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.eImporteChange(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.dpFechaMChange(Sender: TObject);
begin
if pRegistroM.Enabled = true then
   Mcambio:= true;
end;

procedure TfRegistroM.dbGFichaMDblClick(Sender: TObject);
begin
dbGFichaM.DataSource:=dsFichaM;
qryFichaM.Close;
qryFichaM.Open;
Mcambio:= true;
end;

procedure TfRegistroM.tbConsultaMClick(Sender: TObject);
var
MChaboton : Integer;
begin

   if Mnew = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      MChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If MChaboton = ID_YES Then
      begin
      tbGrabarM.Click;
      Exit;
      end
      else if MChaboton = ID_NO then
      Mnew:=false;
   end;

dlgConsultaRegistro.ShowModal;   //muestra el dialogo de consulta.
qryConsultaM.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaRegistro.ModalResult = mrOK then
begin
qryConsultaM.sql.Clear;
qryConsultaM.sql.Add('select * from mantenimiento where cod_m is not null') ;
qryConsultaM.sql.Add('and cod_m like "%' + dlgConsultaRegistro.eConsultaM.Text  +'%"') ;
qryConsultaM.Open;
DesplegarM; //llama la funcion despleglar los datos.

if qryConsultaM.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

end.
