unit uSuplidores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, DB, DBTables, MemDS,
  DBAccess, MyAccess;

type
  TfSuplidores = class(TForm)
    tbSuplidor: TToolBar;
    tbNuevoS: TToolButton;
    tbGrabarS: TToolButton;
    tbBorrarS: TToolButton;
    tbModificarS: TToolButton;
    separador1: TToolButton;
    pSuplidor: TPanel;
    tbInicioS: TToolButton;
    tbUltimoS: TToolButton;
    tbAnteriorS: TToolButton;
    tbSiguienteS: TToolButton;
    separador2: TToolButton;
    tbSalirS: TToolButton;
    lnumsuplidor: TLabel;
    eSuplidorNum: TEdit;
    lNombre: TLabel;
    eNombreS: TEdit;
    qrySuplidorNum: TMyQuery;
    qryGrabarS: TMyQuery;
    qryConsultaS: TMyQuery;
    qryBorrarS: TMyQuery;
    qryModificarS: TMyQuery;
    tbListaS: TToolButton;
    qryConsultaScod_chofer: TIntegerField;
    qryConsultaSfi: TStringField;
    qryConsultaSuser_su: TStringField;
    qryConsultaSsta: TStringField;
    qryConsultaSsuplidor: TStringField;
    tbConsultaS: TToolButton;
    lstatuCl: TLabel;
    eStaS: TEdit;
    lnota: TLabel;
    lnota1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure tbSalirSClick(Sender: TObject);
    procedure tbInicioSClick(Sender: TObject);
    procedure tbUltimoSClick(Sender: TObject);
    procedure tbAnteriorSClick(Sender: TObject);
    procedure tbSiguienteSClick(Sender: TObject);
    procedure tbNuevoSClick(Sender: TObject);
    procedure tbGrabarSClick(Sender: TObject);
    procedure tbBorrarSClick(Sender: TObject);
    procedure tbModificarSClick(Sender: TObject);
    procedure eSuplidorNumChange(Sender: TObject);
    procedure eNombreSChange(Sender: TObject);
    procedure tbListaSClick(Sender: TObject);
    procedure tbConsultaSClick(Sender: TObject);
    procedure eStaSChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarS;
    procedure NuevoS;
  end;

var
  fSuplidores: TfSuplidores;
  Snum : String;
  Scambio : boolean;
  Snew : boolean;
  Susuario: string;

implementation

uses uMenuOper, uPrincipal, uRListaSupli, uConsultaSuplidor;

{$R *.dfm}

procedure TfSuplidores.FormShow(Sender: TObject);
begin
  fMenuOper.Hide;
  Scambio:=false;
  NuevoS;
end;

procedure TfSuplidores.tbSalirSClick(Sender: TObject);
var
SChaboton : Integer;
begin
    if Scambio = true then
    begin
    SChaboton := Application.MessageBox ('�Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If SChaboton = ID_YES Then
       begin
         if tbModificarS.Enabled = false then
         begin
         tbGrabarS.Click;
         exit;
         end
         else
         begin
         tbModificarS.Click;
         exit;
         end
       end
    end;

tbInicioS.Enabled:=true;
tbUltimoS.Enabled:=true;
tbAnteriorS.Enabled:=true;
tbSiguienteS.Enabled:=true;
tbNuevoS.Enabled:=true;
tbGrabarS.Enabled:=false;
tbBorrarS.Enabled:=false;
tbModificarS.Enabled:=false;

Scambio:= false;
Snew:=false;
NuevoS;
qryConsultaS.Close;
qrySuplidorNum.Close;
fSuplidores.Close;
end;

procedure TfSuplidores.NuevoS;
begin
eSuplidorNum.Clear;
eNombreS.Clear;
eStas.Clear;
qrySuplidorNum.Close;
qrySuplidorNum.Open;
end;

procedure TfSuplidores.DesplegarS;
begin
eSuplidorNum.Text := qryConsultaScod_chofer.AsString;
eNombreS.Text := qryConsultaSsuplidor.AsString;
eStas.Text:= qryConsultaSsta.AsString;

pSuplidor.Enabled:= False;

tbBorrarS.Enabled:=true;
tbModificarS.Enabled:=true;
tbGrabarS.Enabled:=false;

end;

procedure TfSuplidores.tbInicioSClick(Sender: TObject);
var
SChaboton : Integer;
begin
   if Snew = true then
   begin
      SChaboton := Application.MessageBox ('�Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If SChaboton = ID_YES Then
      begin
      tbGrabarS.Click;
      Exit;
      end
      else if SChaboton = ID_NO then
      Snew:=false;
   end;

qryConsultaS.sql.Clear;
qryConsultaS.sql.Add('select * from suplidores order by cod_chofer') ;
qryConsultaS.Open;
qryConsultaS.First;
DesplegarS;

if qryConsultaS.IsEmpty then
  showmessage('No hay m�s!');


end;

procedure TfSuplidores.tbUltimoSClick(Sender: TObject);
var
SChaboton : Integer;
begin
   if Snew = true then
   begin
      SChaboton := Application.MessageBox ('�Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If SChaboton = ID_YES Then
      begin
      tbGrabarS.Click;
      Exit;
      end
      else if SChaboton = ID_NO then
      Snew:=false;
   end;

qryConsultaS.sql.Clear;
qryConsultaS.sql.Add('select * from suplidores order by cod_chofer') ;
qryConsultaS.Open;
qryConsultaS.Last;
DesplegarS;

if qryConsultaS.IsEmpty then
  showmessage('No hay m�s!');

end;

procedure TfSuplidores.tbAnteriorSClick(Sender: TObject);
var
SChaboton : Integer;
begin
   if Snew = true then
   begin
      SChaboton := Application.MessageBox ('�Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If SChaboton = ID_YES Then
      begin
      tbGrabarS.Click;
      Exit;
      end
      else if SChaboton = ID_NO then
      Snew:=false;
   end;

qryConsultaS.Open;
qryConsultaS.Prior;
DesplegarS;

if qryConsultaS.Bof then
  showmessage('No hay m�s anteriores.');


end;

procedure TfSuplidores.tbSiguienteSClick(Sender: TObject);
var
SChaboton : Integer;
begin
   if Snew = true then
   begin
      SChaboton := Application.MessageBox ('�Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If SChaboton = ID_YES Then
      begin
      tbGrabarS.Click;
      Exit;
      end
      else if SChaboton = ID_NO then
      Snew:=false;
   end;

qryConsultaS.Open;
qryConsultaS.Next;
DesplegarS;

if qryConsultaS.Eof then
  showmessage('No hay m�s siguientes.');


end;

procedure TfSuplidores.tbNuevoSClick(Sender: TObject);
begin
   Snew:= true;
   pSuplidor.Enabled:= True;
   NuevoS;
   eSuplidorNum.Text:= qrySuplidorNum.FieldValues['max(cod_chofer)'] + 1 ;
   eNombreS.Text:='SUPLIDOR: ';
   eNombreS.SetFocus;
   tbBorrarS.Enabled:=false;
   tbModificarS.Enabled:=false;
   tbGrabarS.Enabled:=true;
   Scambio:= false;
end;

procedure TfSuplidores.tbGrabarSClick(Sender: TObject);
begin
    Snew:=false;
    Susuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eSuplidorNum.Text)= '' then
begin
   showmessage ('Debe ingresar el N�mero de Suplidor');
   eSuplidorNum.SetFocus;
   Exit;
end;

if trim(eNombreS.Text)= '' then
begin
   showmessage ('Debe ingresar el Nombre del Suplidor');
   eNombreS.SetFocus;
   Exit;
end;

if trim(eStas.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Suplidor');
   eStaS.SetFocus;
   Exit;
end;

if eSuplidorNum.Text = qryConsultaScod_chofer.AsString then
   begin
     showmessage ('Este Suplidor Ya Existe');
     Exit;
   end;

qryGrabarS.ParamByName('vcod').AsString:= eSuplidorNum.Text ;
qryGrabarS.ParamByName('vsuplidor').AsString:= eNombreS.Text ;
qryGrabarS.ParamByName('vfi').AsString:= 'F-00' ;
qryGrabarS.ParamByName('vusersu').AsString:= Susuario ;
qryGrabarS.ParamByName('vsta').AsString:= eStas.Text ;

qryGrabarS.Execute;
NuevoS;
qryConsultaS.Close;
pSuplidor.Enabled:= False;
tbGrabarS.Enabled:=false;
Scambio:= false;
end;

procedure TfSuplidores.tbBorrarSClick(Sender: TObject);
var
BSboton : Integer;
begin
   if trim(eSuplidorNum.Text)= '' then
   begin
   showmessage ('Debe buscar un Suplidor para borrar');
   Exit;
   end;

   if eSuplidorNum.Text = '901' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BSboton := Application.MessageBox ('�Est� seguro que desea Borrar?',
                              'Borrar Suplidor',MB_YESNO+MB_ICONINFORMATION);
   If BSboton = ID_YES Then
      begin
      Snum:= eSuplidorNum.Text;
      qryBorrarS.ParamByName('bcod').AsString:= Snum;
      qryBorrarS.Execute;
      NuevoS;
      qryConsultaS.Close;
      tbBorrarS.Enabled:=false;
      tbModificarS.Enabled:=false;
      end
   Else
    Exit;
end;

procedure TfSuplidores.tbModificarSClick(Sender: TObject);
begin
   if trim(eSuplidorNum.Text)= '' then
   begin
   showmessage ('Debe buscar un Suplidor para modificar');
   Exit;
   end;

   if pSuplidor.Enabled = false then
   begin
   pSuplidor.Enabled:=True;
   tbInicioS.Enabled:=false;
   tbUltimoS.Enabled:=false;
   tbAnteriorS.Enabled:=false;
   tbSiguienteS.Enabled:=false;
   tbBorrarS.Enabled:=false;
   tbNuevoS.Enabled:=false;
   Exit;
   end;

      Snum:= eSuplidorNum.Text;
      Susuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eNombreS.Text)= '' then
begin
   showmessage ('Debe ingresar el Nombre del Suplidor');
   eNombreS.SetFocus;
   Exit;
end;


if trim(eStaS.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Suplidor');
   eStas.SetFocus;
   Exit;
end;


qryModificarS.ParamByName('vcod').AsString:= eSuplidorNum.Text ;
qryModificarS.ParamByName('vsuplidor').AsString:= eNombreS.Text ;
qryModificarS.ParamByName('vfi').AsString:= 'F-00' ;
qryModificarS.ParamByName('vusersu').AsString:= Susuario ;
qryModificarS.ParamByName('vsta').AsString:= eStas.Text ;

qryModificarS.ParamByName('v1cod').AsString:= Snum ;
qryModificarS.Execute;
qryConsultaS.RefreshRecord;

      pSuplidor.Enabled:= False;
      tbInicioS.Enabled:=true;
      tbUltimoS.Enabled:=true;
      tbAnteriorS.Enabled:=true;
      tbSiguienteS.Enabled:=true;
      tbNuevoS.Enabled:=true;
      tbBorrarS.Enabled:=false;
      tbModificarS.Enabled:=false;
      Scambio:= false;
end;

procedure TfSuplidores.eSuplidorNumChange(Sender: TObject);
begin
if pSuplidor.Enabled = true then
 Scambio:= true;
end;

procedure TfSuplidores.eNombreSChange(Sender: TObject);
begin
if pSuplidor.Enabled = true then
 Scambio:= true;
end;

procedure TfSuplidores.tbListaSClick(Sender: TObject);
begin
   fRListaSupli.qrySupliL.Close;
   fRListaSupli.qrySupliL.Open;
   fRListaSupli.RListaSupli.Preview;   //muestra el reporte de Lista Suplidores.
end;

procedure TfSuplidores.tbConsultaSClick(Sender: TObject);
var
SChaboton : Integer;
begin

   if Snew = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      SChaboton := Application.MessageBox ('�Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If SChaboton = ID_YES Then
      begin
      tbGrabarS.Click;
      Exit;
      end
      else if SChaboton = ID_NO then
      Snew:=false;
   end;

dlgConsultaSuplidor.ShowModal;   //muestra el dialogo de consulta.
qryConsultaS.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaSuplidor.ModalResult = mrOK then
begin
qryConsultaS.sql.Clear;
qryConsultaS.sql.Add('select * from suplidores where cod_chofer is not null') ;
qryConsultaS.sql.Add('and cod_chofer like "%' + dlgConsultaSuplidor.eConsultaSupli.Text  +'%"') ;
qryConsultaS.Open;
DesplegarS; //llama la funcion despleglar los datos.

if qryConsultaS.IsEmpty then
  showmessage('No se Encontr�');

end
else
   Exit;

end;

procedure TfSuplidores.eStaSChange(Sender: TObject);
begin
 if pSuplidor.Enabled = true then
 Scambio:= true;

end;

end.
