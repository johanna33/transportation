unit uEquipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, StdCtrls, DB, DBTables, MemDS,
  DBAccess, MyAccess;

type
  TfEquipos = class(TForm)
    pEquipo: TPanel;
    tbEquipo: TToolBar;
    tbNuevoE: TToolButton;
    tbGrabarE: TToolButton;
    tbBorrarE: TToolButton;
    tbModificarE: TToolButton;
    separador1: TToolButton;
    tbInicioE: TToolButton;
    tbUltimoE: TToolButton;
    tbAnteriorE: TToolButton;
    tbSiguienteE: TToolButton;
    separador2: TToolButton;
    tbSalirE: TToolButton;
    lFicha: TLabel;
    lMarca: TLabel;
    lModelo: TLabel;
    lChasis: TLabel;
    lRegistro: TLabel;
    lSeguro: TLabel;
    lColor: TLabel;
    lCapacidad: TLabel;
    lPlaca: TLabel;
    lPorciento: TLabel;
    eFicha: TEdit;
    eMarca: TEdit;
    eModelo: TEdit;
    eColor: TEdit;
    eChasis: TEdit;
    eCapa: TEdit;
    eRegistro: TEdit;
    ePlaca: TEdit;
    eSeguro: TEdit;
    eCom: TEdit;
    lporciento1: TLabel;
    qryGrabarE: TMyQuery;
    qryBorrarE: TMyQuery;
    qryModificarE: TMyQuery;
    qryConsultaE: TMyQuery;
    tbListaE: TToolButton;
    tbConsultaE: TToolButton;
    lstatuCl: TLabel;
    eStaE: TEdit;
    lnota: TLabel;
    lnota1: TLabel;
    qryConsultaEficha: TStringField;
    qryConsultaEmarca: TStringField;
    qryConsultaEmodelo: TStringField;
    qryConsultaEchasis: TStringField;
    qryConsultaEregistro: TStringField;
    qryConsultaEseguro: TStringField;
    qryConsultaEcolor: TStringField;
    qryConsultaEcapacidad: TIntegerField;
    qryConsultaEuser_e: TStringField;
    qryConsultaEporciento: TIntegerField;
    qryConsultaEsta: TStringField;
    qryConsultaEplaca: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tbInicioEClick(Sender: TObject);
    procedure tbUltimoEClick(Sender: TObject);
    procedure tbAnteriorEClick(Sender: TObject);
    procedure tbSiguienteEClick(Sender: TObject);
    procedure tbSalirEClick(Sender: TObject);
    procedure tbNuevoEClick(Sender: TObject);
    procedure tbGrabarEClick(Sender: TObject);
    procedure tbBorrarEClick(Sender: TObject);
    procedure tbModificarEClick(Sender: TObject);
    procedure eFichaChange(Sender: TObject);
    procedure eMarcaChange(Sender: TObject);
    procedure eModeloChange(Sender: TObject);
    procedure eColorChange(Sender: TObject);
    procedure eChasisChange(Sender: TObject);
    procedure ePlacaChange(Sender: TObject);
    procedure eRegistroChange(Sender: TObject);
    procedure eSeguroChange(Sender: TObject);
    procedure eCapaChange(Sender: TObject);
    procedure eComChange(Sender: TObject);
    procedure tbListaEClick(Sender: TObject);
    procedure tbConsultaEClick(Sender: TObject);
    procedure eStaEChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarE;
    procedure NuevoE;
  end;

var
  fEquipos: TfEquipos;
  Enum : String;
  Ecambio : boolean;
  Enew : boolean;
  Eusuario: string;

implementation

uses uMenuOper, uPrincipal, uRListaEquipos, uConsultaEquipo;

{$R *.dfm}

procedure TfEquipos.NuevoE;
begin
eFicha.Clear;
eMarca.Clear;
eModelo.Clear;
eColor.Clear;
eChasis.Clear;
eCapa.Clear;
ePlaca.Clear;
eCom.Clear;
eRegistro.Clear;
eSeguro.Clear;
eStaE.Clear;
end;

procedure TfEquipos.DesplegarE;
begin
eFicha.Text := qryConsultaEficha.AsString;
eModelo.Text := qryConsultaEmodelo.AsString;
eChasis.Text := qryConsultaEchasis.AsString;
eRegistro.Text := qryConsultaEregistro.AsString;
eSeguro.Text := qryConsultaEseguro.AsString;
eMarca.Text := qryConsultaEmarca.AsString;
eColor.Text := qryConsultaEcolor.AsString;
eCapa.Text := qryConsultaEcapacidad.AsString;
ePlaca.Text := qryConsultaEplaca.AsString;
eCom.Text := qryConsultaEporciento.AsString;
eStaE.Text:= qryConsultaEsta.AsString;

pEquipo.Enabled:= False;

tbBorrarE.Enabled:=true;
tbModificarE.Enabled:=true;
tbGrabarE.Enabled:=false;
end;

procedure TfEquipos.FormShow(Sender: TObject);
begin
    fEquipos.Top:=90;
    fEquipos.Left:=90;
           fMenuOper.Hide;
           Ecambio:=false;
           NuevoE;
end;

procedure TfEquipos.tbInicioEClick(Sender: TObject);
var
EChaboton : Integer;
begin
   if Enew = true then
   begin
      EChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If EChaboton = ID_YES Then
      begin
      tbGrabarE.Click;
      Exit;
      end
      else if EChaboton = ID_NO then
      Enew:=false;
   end;

qryConsultaE.sql.Clear;
qryConsultaE.sql.Add('select * from equipos order by ficha') ;
qryConsultaE.Open;
qryConsultaE.First;
DesplegarE;

if qryConsultaE.IsEmpty then
  showmessage('No hay más!');

end;

procedure TfEquipos.tbUltimoEClick(Sender: TObject);
var
EChaboton : Integer;
begin
   if Enew = true then
   begin
      EChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If EChaboton = ID_YES Then
      begin
      tbGrabarE.Click;
      Exit;
      end
      else if EChaboton = ID_NO then
      Enew:=false;
   end;

qryConsultaE.sql.Clear;
qryConsultaE.sql.Add('select * from equipos order by ficha') ;
qryConsultaE.Open;
qryConsultaE.Last;
DesplegarE;

if qryConsultaE.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfEquipos.tbAnteriorEClick(Sender: TObject);
var
EChaboton : Integer;
begin
   if Enew = true then
   begin
      EChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If EChaboton = ID_YES Then
      begin
      tbGrabarE.Click;
      Exit;
      end
      else if EChaboton = ID_NO then
      Enew:=false;
   end;

qryConsultaE.Open;
qryConsultaE.Prior;
DesplegarE;

if qryConsultaE.Bof then
  showmessage('No hay más anteriores.');
end;

procedure TfEquipos.tbSiguienteEClick(Sender: TObject);
var
EChaboton : Integer;
begin
   if Enew = true then
   begin
      EChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If EChaboton = ID_YES Then
      begin
      tbGrabarE.Click;
      Exit;
      end
      else if EChaboton = ID_NO then
      Enew:=false;
   end;

qryConsultaE.Open;
qryConsultaE.Next;
DesplegarE;

if qryConsultaE.Eof then
  showmessage('No hay más siguientes.');

end;

procedure TfEquipos.tbSalirEClick(Sender: TObject);
var
EChaboton : Integer;
begin
  if Ecambio = true then
    begin
    EChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If EChaboton = ID_YES Then
       begin
         if tbModificarE.Enabled = false then
         begin
         tbGrabarE.Click;
         Exit;
         end
         else
         begin
         tbModificarE.Click;
         Exit;
         end
       end
    end;

tbInicioE.Enabled:=true;
tbUltimoE.Enabled:=true;
tbAnteriorE.Enabled:=true;
tbSiguienteE.Enabled:=true;
tbNuevoE.Enabled:=true;
tbGrabarE.Enabled:=false;
tbBorrarE.Enabled:=false;
tbModificarE.Enabled:=false;

Ecambio:= false;
Enew:=false;
NuevoE;
qryConsultaE.Close;
fEquipos.Close;

end;

procedure TfEquipos.tbNuevoEClick(Sender: TObject);
begin
   Enew:= true;
   pEquipo.Enabled:= True;
   NuevoE;
   eFicha.ReadOnly:=False;
   eFicha.SetFocus;
   tbBorrarE.Enabled:=false;
   tbModificarE.Enabled:=false;
   tbGrabarE.Enabled:=true;
   Ecambio:= false;
end;

procedure TfEquipos.tbGrabarEClick(Sender: TObject);
var
aa:integer;
begin
   Enew:=false;
   Eusuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eFicha.Text)= '' then
begin
   showmessage ('Debe ingresar La Ficha');
   eFicha.SetFocus;
   Exit;
end;

if trim(eMarca.Text)= '' then
begin
   showmessage ('Debe ingresar la Marca');
   eMarca.SetFocus;
   Exit;
end;

if trim(ePlaca.Text)= '' then
begin
   showmessage ('Debe ingresar el Número de Placa');
   ePlaca.SetFocus;
   Exit;
end;

if trim(eCapa.Text)= '' then
begin
   showmessage ('Debe ingresar la Capacidad');
   eCapa.SetFocus;
   Exit;
end;

if trim(eCom.Text)= '' then
begin
   showmessage ('Debe ingresar el Porciento de Comisión');
   eCom.SetFocus;
   Exit;
end;

if trim(eStaE.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Equipo');
   eStaE.SetFocus;
   Exit;
end;


if TryStrToInt(eCapa.Text, aa) = false then
  begin
  ShowMessage('Porfavor digite un Número en la Capacidad');
  eCapa.Clear;
  eCapa.SetFocus;
  Exit;
  end;

if TryStrToInt(eCom.Text, aa) = false then
  begin
  ShowMessage('Porfavor digite un Número en la Comisión');
  eCom.Clear;
  eCom.SetFocus;
  Exit;
  end;

//aqui valida si la ficha ya existe, para no repetir.
qryConsultaE.Close;
Repeat
qryConsultaE.Open;
if eFicha.Text = qryConsultaEficha.AsString then
   begin
   showmessage ('Esta Ficha Ya Existe');
   Exit;
   end;
qryConsultaE.Next;
Until  qryConsultaE.Eof ;


qryGrabarE.ParamByName('vfichae').AsString:= eFicha.Text ;
qryGrabarE.ParamByName('vmarca').AsString:= eMarca.Text ;
qryGrabarE.ParamByName('vmodelo').AsString:= eModelo.Text ;
qryGrabarE.ParamByName('vchasis').AsString:= eChasis.Text ;
qryGrabarE.ParamByName('vreg').AsString:= eRegistro.Text ;
qryGrabarE.ParamByName('vseguro').AsString:= eSeguro.Text ;
qryGrabarE.ParamByName('vcolor').AsString:= eColor.Text ;
qryGrabarE.ParamByName('vcap').AsString:= eCapa.Text ;
qryGrabarE.ParamByName('vplaca').AsString:= ePlaca.Text ;
qryGrabarE.ParamByName('vporc').AsString:= eCom.Text ;
qryGrabarE.ParamByName('vusere').AsString:= Eusuario ;
qryGrabarE.ParamByName('vstae').AsString:= eStaE.Text;


qryGrabarE.Execute;
NuevoE;
qryConsultaE.Close;
pEquipo.Enabled:= False;
tbGrabarE.Enabled:=false;
Ecambio:= false;

end;

procedure TfEquipos.tbBorrarEClick(Sender: TObject);
var
BEboton : Integer;
begin
   if trim(eFicha.Text)= '' then
   begin
   showmessage ('Debe buscar una Ficha para borrar');
   Exit;
   end;

   if eFicha.Text = 'F-00' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BEboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Equipo',MB_YESNO+MB_ICONINFORMATION);
   If BEboton = ID_YES Then
      begin
      Enum:= eFicha.Text;
      qryBorrarE.ParamByName('bficha').AsString:= Enum;
      qryBorrarE.Execute;
      NuevoE;
      qryConsultaE.Close;
      tbBorrarE.Enabled:=false;
      tbModificarE.Enabled:=false;
      end
   Else
    Exit;

end;

procedure TfEquipos.tbModificarEClick(Sender: TObject);
var
uu:integer;
begin

   if trim(eFicha.Text)= '' then
   begin
   showmessage ('Debe buscar una Ficha para modificar');
   Exit;
   end;

   if pEquipo.Enabled = false then
   begin
   pEquipo.Enabled:=True;
   eFicha.ReadOnly:=True;
   tbInicioE.Enabled:=false;
   tbUltimoE.Enabled:=false;
   tbAnteriorE.Enabled:=false;
   tbSiguienteE.Enabled:=false;
   tbBorrarE.Enabled:=false;
   tbNuevoE.Enabled:=false;
   Exit;
   end;

      Enum:= eFicha.Text;
      Eusuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eFicha.Text)= '' then
begin
   showmessage ('Debe ingresar La Ficha');
   eFicha.SetFocus;
   Exit;
end;

if trim(eMarca.Text)= '' then
begin
   showmessage ('Debe ingresar la Marca');
   eMarca.SetFocus;
   Exit;
end;

if trim(ePlaca.Text)= '' then
begin
   showmessage ('Debe ingresar el Número de Placa');
   ePlaca.SetFocus;
   Exit;
end;

if trim(eCapa.Text)= '' then
begin
   showmessage ('Debe ingresar la Capacidad');
   eCapa.SetFocus;
   Exit;
end;

if trim(eCom.Text)= '' then
begin
   showmessage ('Debe ingresar el Porciento de Comisión');
   eCom.SetFocus;
   Exit;
end;

if trim(eStaE.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Equipo');
   eStaE.SetFocus;
   Exit;
end;


if TryStrToInt(eCapa.Text, uu) = false then
  begin
  ShowMessage('Porfavor digite un Número en la Capacidad');
  eCapa.Clear;
  eCapa.SetFocus;
  Exit;
  end;

if TryStrToInt(eCom.Text, uu) = false then
  begin
  ShowMessage('Porfavor digite un Número en la Comisión');
  eCom.Clear;
  eCom.SetFocus;
  Exit;
  end;

qryModificarE.ParamByName('vfichae').AsString:= eFicha.Text ;
qryModificarE.ParamByName('vmarca').AsString:= eMarca.Text ;
qryModificarE.ParamByName('vmodelo').AsString:= eModelo.Text ;
qryModificarE.ParamByName('vchasis').AsString:= eChasis.Text ;
qryModificarE.ParamByName('vreg').AsString:= eRegistro.Text ;
qryModificarE.ParamByName('vseguro').AsString:= eSeguro.Text ;
qryModificarE.ParamByName('vcolor').AsString:= eColor.Text ;
qryModificarE.ParamByName('vcap').AsString:= eCapa.Text ;
qryModificarE.ParamByName('vplaca').AsString:= ePlaca.Text ;
qryModificarE.ParamByName('vporc').AsString:= eCom.Text ;
qryModificarE.ParamByName('vusere').AsString:= Eusuario ;
qryModificarE.ParamByName('vstae').AsString:= eStaE.Text;


qryModificarE.ParamByName('v1ficha').AsString:= Enum ;
qryModificarE.Execute;
qryConsultaE.RefreshRecord;

      pEquipo.Enabled:= False;
      tbInicioE.Enabled:=true;
      tbUltimoE.Enabled:=true;
      tbAnteriorE.Enabled:=true;
      tbSiguienteE.Enabled:=true;
      tbNuevoE.Enabled:=true;
      tbBorrarE.Enabled:=false;
      tbModificarE.Enabled:=false;
      Ecambio:= false;
end;

procedure TfEquipos.eFichaChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eMarcaChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eModeloChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eColorChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eChasisChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.ePlacaChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eRegistroChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eSeguroChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eCapaChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.eComChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

procedure TfEquipos.tbListaEClick(Sender: TObject);
begin
  fRListaEquipos.qryEquiposL.Close;
  fRListaEquipos.qryEquiposL.Open;
  fRListaEquipos.RListaEquipos.Preview;  //muestra el reporte de Lista Equipos.
end;

procedure TfEquipos.tbConsultaEClick(Sender: TObject);
var
EChaboton : Integer;
begin

   if Enew = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      EChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If EChaboton = ID_YES Then
      begin
      tbGrabarE.Click;
      Exit;
      end
      else if EChaboton = ID_NO then
      Enew:=false;
   end;

dlgConsultaEquipo.ShowModal;   //muestra el dialogo de consulta.
qryConsultaE.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaEquipo.ModalResult = mrOK then
begin
qryConsultaE.sql.Clear;
qryConsultaE.sql.Add('select * from equipos where ficha is not null') ;
qryConsultaE.sql.Add('and ficha like "%' + dlgConsultaEquipo.eConsultaF.Text  +'%"') ;
qryConsultaE.Open;
DesplegarE; //llama la funcion despleglar los datos.

if qryConsultaE.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

procedure TfEquipos.eStaEChange(Sender: TObject);
begin
 if pEquipo.Enabled = true then
 Ecambio:= true;
end;

end.
