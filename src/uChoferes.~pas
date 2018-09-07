unit uChoferes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, ExtCtrls, DB, DBTables, StdCtrls, Grids,
  DBGrids, Mask, DBCtrls, MemDS, DBAccess, MyAccess, Buttons;

type
  TfChoferes = class(TForm)
    pChofer: TPanel;
    tbChofer: TToolBar;
    tbNuevoH: TToolButton;
    tbGrabarH: TToolButton;
    tbBorrarH: TToolButton;
    tbModificarH: TToolButton;
    separador1: TToolButton;
    tbInicioH: TToolButton;
    tbUltimoH: TToolButton;
    tbAnteriorH: TToolButton;
    tbSiguienteH: TToolButton;
    separador2: TToolButton;
    tbSalirH: TToolButton;
    lChofer: TLabel;
    lNombreA: TLabel;
    lCedula: TLabel;
    lLicencia: TLabel;
    lTel: TLabel;
    lCel: TLabel;
    lDir: TLabel;
    lficha: TLabel;
    lCom1: TLabel;
    lcate: TLabel;
    eChoferNum: TEdit;
    eNombreA: TEdit;
    eCedula: TEdit;
    eLicencia: TEdit;
    eTel3: TEdit;
    eTel4: TEdit;
    eCel1: TEdit;
    eDirec: TEdit;
    eCate: TEdit;
    dbeCom1: TDBEdit;
    dbGFicha1: TDBGrid;
    lporci: TLabel;
    dsFichaH: TDataSource;
    dsConsultaH: TDataSource;
    qryFichaH: TMyQuery;
    qryChoferNum: TMyQuery;
    qryConsultaH: TMyQuery;
    qryGrabarH: TMyQuery;
    qryBorrarH: TMyQuery;
    qryModificarH: TMyQuery;
    GBCapa: TGroupBox;
    bbNuevoCapa: TBitBtn;
    bbGrabarCapa: TBitBtn;
    bbBorrarCapa: TBitBtn;
    bbModiCapa: TBitBtn;
    bbsalirCapa: TBitBtn;
    dsCapa: TDataSource;
    dbGCapa: TDBGrid;
    qryCapa: TMyQuery;
    eMin: TEdit;
    eMax: TEdit;
    eCom: TEdit;
    lraya: TLabel;
    lraya1: TLabel;
    lpor: TLabel;
    qryGrabarCapa: TMyQuery;
    qryBorrarCapa: TMyQuery;
    qryModiCapa: TMyQuery;
    eID: TEdit;
    qryCapaid: TIntegerField;
    qryCapamin: TStringField;
    qryCapamax: TStringField;
    qryCapacom: TStringField;
    tbCapH: TToolButton;
    tbListaH: TToolButton;
    lstatu: TLabel;
    eSta: TEdit;
    lnota: TLabel;
    lnota1: TLabel;
    qryConsultaHcod_chofer: TIntegerField;
    qryConsultaHnombre_a: TStringField;
    qryConsultaHcedula: TStringField;
    qryConsultaHlicencia: TStringField;
    qryConsultaHcomision: TIntegerField;
    qryConsultaHcategoria: TStringField;
    qryConsultaHtel1: TStringField;
    qryConsultaHuser_ch: TStringField;
    qryConsultaHcel: TStringField;
    qryConsultaHdireccion: TStringField;
    qryConsultaHficha: TStringField;
    qryConsultaHsta: TStringField;
    qryConsultaHtel2: TStringField;
    GBEFijo: TGroupBox;
    enombreE: TEdit;
    Label1: TLabel;
    ecodE: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    eCedE: TEdit;
    Label4: TLabel;
    eTelE: TEdit;
    Label5: TLabel;
    eFlotaE: TEdit;
    Label6: TLabel;
    eDireE: TEdit;
    bbSalir: TBitBtn;
    bbNuevo: TBitBtn;
    bbGrabar: TBitBtn;
    bbBorrar: TBitBtn;
    bbModificar: TBitBtn;
    bbListado: TBitBtn;
    bbInicio: TBitBtn;
    bbUltimo: TBitBtn;
    bbAnterior: TBitBtn;
    bbSiguiente: TBitBtn;
    tbConsulta: TToolButton;
    bbConsulta: TBitBtn;
    tbEfijo: TToolButton;
    Label7: TLabel;
    eEstaE: TEdit;
    Label8: TLabel;
    eCargo: TEdit;
    Label9: TLabel;
    eIngreso: TEdit;
    separator3: TToolButton;
    Label10: TLabel;
    eSueldo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure tbSalirHClick(Sender: TObject);
    procedure tbInicioHClick(Sender: TObject);
    procedure tbUltimoHClick(Sender: TObject);
    procedure tbAnteriorHClick(Sender: TObject);
    procedure tbSiguienteHClick(Sender: TObject);
    procedure tbNuevoHClick(Sender: TObject);
    procedure tbGrabarHClick(Sender: TObject);
    procedure tbBorrarHClick(Sender: TObject);
    procedure tbModificarHClick(Sender: TObject);
    procedure eChoferNumChange(Sender: TObject);
    procedure eNombreAChange(Sender: TObject);
    procedure eCedulaChange(Sender: TObject);
    procedure eLicenciaChange(Sender: TObject);
    procedure eTel3Change(Sender: TObject);
    procedure eTel4Change(Sender: TObject);
    procedure eDirecChange(Sender: TObject);
    procedure eCel1Change(Sender: TObject);
    procedure eCateChange(Sender: TObject);
    procedure dbGFicha1DblClick(Sender: TObject);
    procedure bbsalirCapaClick(Sender: TObject);
    procedure tbCapaHClick(Sender: TObject);
    procedure bbNuevoCapaClick(Sender: TObject);
    procedure dbGCapaCellClick(Column: TColumn);
    procedure bbBorrarCapaClick(Sender: TObject);
    procedure bbGrabarCapaClick(Sender: TObject);
    procedure bbModiCapaClick(Sender: TObject);
    procedure tbCapHClick(Sender: TObject);
    procedure tbListaHClick(Sender: TObject);
    procedure eStaChange(Sender: TObject);
    procedure bbSalirClick(Sender: TObject);
    procedure tbEfijoClick(Sender: TObject);
    procedure tbConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DesplegarH;
    procedure NuevoH;
  end;

var
  fChoferes: TfChoferes;
  Hnum : String;
  Hcambio : boolean;
  Hnew : boolean;
  Husuario: string;
  HCapa: string;

implementation

uses uMenuOper, uPrincipal, uRListaChofer, uConsultaChofer;

{$R *.dfm}

procedure TfChoferes.FormShow(Sender: TObject);
begin
    fChoferes.Top:=90;
    fChoferes.Left:=90;
     fMenuOper.Hide;
     Hcambio:=false;
     NuevoH;       
end;

procedure TfChoferes.tbSalirHClick(Sender: TObject);
var
HChaboton : Integer;
begin
  if Hcambio = true then
    begin
    HChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
    If HChaboton = ID_YES Then
       begin
         if tbModificarH.Enabled = false then
         begin
         tbGrabarH.Click;
         exit;
         end
         else
         begin
         tbModificarH.Click;
         exit;
         end
       end
    end;

tbInicioH.Enabled:=true;
tbUltimoH.Enabled:=true;
tbAnteriorH.Enabled:=true;
tbSiguienteH.Enabled:=true;
tbNuevoH.Enabled:=true;
tbGrabarH.Enabled:=false;
tbBorrarH.Enabled:=false;
tbModificarH.Enabled:=false;

Hcambio:= false;
Hnew:=false;
NuevoH;
qryChoferNum.Close;
qryFichaH.Close;
qryConsultaH.Close;
fChoferes.Close;
end;

procedure TfChoferes.NuevoH;
begin
eChoferNum.Clear;
eNombreA.Clear;
eCedula.Clear;
eDirec.Clear;
eTel3.Clear;
eTel4.Clear;
eCate.Clear;
eCel1.Clear;
eSta.Clear;
eLicencia.Clear;
dbGFicha1.DataSource:=dsFichaH;
qryChoferNum.Close;
qryChoferNum.Open;
qryFichaH.Close;
qryFichaH.Open;

end;

procedure TfChoferes.DesplegarH;
begin
eChoferNum.Text := qryConsultaHcod_chofer.AsString;
eNombreA.Text := qryConsultaHnombre_a.AsString;
eCedula.Text := qryConsultaHcedula.AsString;
eDirec.Text := qryConsultaHdireccion.AsString;
eTel3.Text := qryConsultaHtel1.AsString;
eTel4.Text := qryConsultaHtel2.AsString;
eCate.Text := qryConsultaHcategoria.AsString;
eCel1.Text := qryConsultaHcel.AsString;
eSta.Text:= qryCOnsultaHsta.AsString;
eLicencia.Text := qryConsultaHlicencia.AsString;
dbGFicha1.DataSource:=dsConsultaH;
dbeCom1.Text:= qryConsultaHcomision.AsString;

pChofer.Enabled:= False;

tbBorrarH.Enabled:=true;
tbModificarH.Enabled:=true;
tbGrabarH.Enabled:=false;
end;

procedure TfChoferes.tbInicioHClick(Sender: TObject);
var
HChaboton : Integer;
begin
   if Hnew = true then
   begin
      HChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If HChaboton = ID_YES Then
      begin
      tbGrabarH.Click;
      Exit;
      end
      else if HChaboton = ID_NO then
      Hnew:=false;
   end;

qryConsultaH.sql.Clear;
qryConsultaH.sql.Add('select * from choferes order by cod_chofer') ;
qryConsultaH.Open;
qryConsultaH.First;
DesplegarH;

if qryConsultaH.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfChoferes.tbUltimoHClick(Sender: TObject);
var
HChaboton : Integer;
begin
   if Hnew = true then
   begin
      HChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If HChaboton = ID_YES Then
      begin
      tbGrabarH.Click;
      Exit;
      end
      else if HChaboton = ID_NO then
      Hnew:=false;
   end;

qryConsultaH.sql.Clear;
qryConsultaH.sql.Add('select * from choferes order by cod_chofer') ;
qryConsultaH.Open;
qryConsultaH.Last;
DesplegarH;

if qryConsultaH.IsEmpty then
  showmessage('No hay más!');
end;

procedure TfChoferes.tbAnteriorHClick(Sender: TObject);
var
HChaboton : Integer;
begin
   if Hnew = true then
   begin
      HChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If HChaboton = ID_YES Then
      begin
      tbGrabarH.Click;
      Exit;
      end
      else if HChaboton = ID_NO then
      Hnew:=false;
   end;

qryConsultaH.Open;
qryConsultaH.Prior;
DesplegarH;

if qryConsultaH.Bof then
  showmessage('No hay más anteriores.');

end;

procedure TfChoferes.tbSiguienteHClick(Sender: TObject);
var
HChaboton : Integer;
begin
   if Hnew = true then
   begin
      HChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If HChaboton = ID_YES Then
      begin
      tbGrabarH.Click;
      Exit;
      end
      else if HChaboton = ID_NO then
      Hnew:=false;
   end;

qryConsultaH.Open;
qryConsultaH.Next;
DesplegarH;

if qryConsultaH.Eof then
  showmessage('No hay más siguientes.');
end;

procedure TfChoferes.tbNuevoHClick(Sender: TObject);
begin
   Hnew:= true;
   pChofer.Enabled:= True;
   NuevoH;
   eChoferNum.Text:= qryChoferNum.FieldValues['max(cod_chofer)'] + 1 ;
   tbBorrarH.Enabled:=false;
   tbModificarH.Enabled:=false;
   tbGrabarH.Enabled:=true;
   Hcambio:= false;
end;

procedure TfChoferes.tbGrabarHClick(Sender: TObject);
begin
   Hnew:=false;
   Husuario:= fPrincipal.dbtUsuarioA.Caption;
   
if trim(eChoferNum.Text)= '' then
begin
   showmessage ('Debe ingresar el Número de Chofer');
   eChoferNum.SetFocus;
   Exit;
end;

if trim(eNombreA.Text)= '' then
begin
   showmessage ('Debe ingresar el Nombre');
   eNombreA.SetFocus;
   Exit;
end;

if trim(eSta.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Chofer');
   eSta.SetFocus;
   Exit;
end;

if eChoferNum.Text = qryConsultaHcod_chofer.AsString then
   begin
     showmessage ('Este Chofer Ya Existe');
     Exit;
   end;

qryGrabarH.ParamByName('vcodchofer').AsString:= eChoferNum.Text ;
qryGrabarH.ParamByName('vnombrea').AsString:= eNombreA.Text ;
qryGrabarH.ParamByName('vced').AsString:= eCedula.Text ;
qryGrabarH.ParamByName('vdire').AsString:= eDirec.Text ;
qryGrabarH.ParamByName('vtell1').AsString:= eTel3.Text ;
qryGrabarH.ParamByName('vtell2').AsString:= eTel4.Text ;
qryGrabarH.ParamByName('vlice').AsString:= eLicencia.Text ;
qryGrabarH.ParamByName('vcell').AsString:= eCel1.Text ;
qryGrabarH.ParamByName('vuserch').AsString:= Husuario ;
qryGrabarH.ParamByName('vcate').AsString:= eCate.Text ;
qryGrabarH.ParamByName('vficha1').AsString:= dbGFicha1.SelectedField.AsString;
qryGrabarH.ParamByName('vcomi').AsString:= dbeCom1.Text;
qryGrabarH.ParamByName('vsta').AsString:= eSta.Text;

qryGrabarH.Execute;
NuevoH;
qryConsultaH.Close;
pChofer.Enabled:= False;
tbGrabarH.Enabled:=false;
Hcambio:= false;    
end;

procedure TfChoferes.tbBorrarHClick(Sender: TObject);
var
BHboton : Integer;
begin
   if trim(eChoferNum.Text)= '' then
   begin
   showmessage ('Debe buscar un Chofer para borrar');
   Exit;
   end;

   if eChoferNum.Text = '100' then
   begin
   showmessage ('No puede Borrar este Codigo');
   Exit;
   end;

BHboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Chofer',MB_YESNO+MB_ICONINFORMATION);
   If BHboton = ID_YES Then
      begin
      Hnum:= eChoferNum.Text;
      qryBorrarH.ParamByName('bchofer').AsString:= Hnum;
      qryBorrarH.Execute;
      NuevoH;
      qryConsultaH.Close;
      tbBorrarH.Enabled:=false;
      tbModificarH.Enabled:=false;
      end
   Else
    Exit;


end;

procedure TfChoferes.tbModificarHClick(Sender: TObject);
begin

   if trim(eChoferNum.Text)= '' then
   begin
   showmessage ('Debe buscar un Chofer para modificar');
   Exit;
   end;

   if pChofer.Enabled = false then
   begin
   pChofer.Enabled:=True;
   tbInicioH.Enabled:=false;
   tbUltimoH.Enabled:=false;
   tbAnteriorH.Enabled:=false;
   tbSiguienteH.Enabled:=false;
   tbBorrarH.Enabled:=false;
   tbNuevoH.Enabled:=false;
   Exit;
   end;


      Hnum:= eChoferNum.Text;
      Husuario:= fPrincipal.dbtUsuarioA.Caption;

if trim(eNombreA.Text)= '' then
begin
   showmessage ('Debe ingresar el Nombre');
   eNombreA.SetFocus;
   Exit;
end;

if trim(eSta.Text)= '' then
begin
   showmessage ('Debe ingresar el Status del Chofer');
   eSta.SetFocus;
   Exit;
end;

qryModificarH.ParamByName('vcodchofer').AsString:= eChoferNum.Text ;
qryModificarH.ParamByName('vnombrea').AsString:= eNombreA.Text ;
qryModificarH.ParamByName('vced').AsString:= eCedula.Text ;
qryModificarH.ParamByName('vdire').AsString:= eDirec.Text ;
qryModificarH.ParamByName('vtell1').AsString:= eTel3.Text ;
qryModificarH.ParamByName('vtell2').AsString:= eTel4.Text ;
qryModificarH.ParamByName('vlice').AsString:= eLicencia.Text ;
qryModificarH.ParamByName('vcell').AsString:= eCel1.Text ;
qryModificarH.ParamByName('vuserch').AsString:= Husuario ;
qryModificarH.ParamByName('vcate').AsString:= eCate.Text ;
qryModificarH.ParamByName('vficha1').AsString:= dbGFicha1.SelectedField.AsString;
qryModificarH.ParamByName('vcomi').AsString:= dbeCom1.Text;
qryModificarH.ParamByName('vsta').AsString:= eSta.Text;

qryModificarH.ParamByName('v1chofer').AsString:= Hnum ;
qryModificarH.Execute;
qryConsultaH.RefreshRecord;

      pChofer.Enabled:= False;
      tbInicioH.Enabled:=true;
      tbUltimoH.Enabled:=true;
      tbAnteriorH.Enabled:=true;
      tbSiguienteH.Enabled:=true;
      tbNuevoH.Enabled:=true;
      tbBorrarH.Enabled:=false;
      tbModificarH.Enabled:=false;
      Hcambio:= false;
end;

procedure TfChoferes.eChoferNumChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eNombreAChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eCedulaChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eLicenciaChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eTel3Change(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eTel4Change(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eDirecChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eCel1Change(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.eCateChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.dbGFicha1DblClick(Sender: TObject);
begin
dbGFicha1.DataSource:=dsFichaH;
qryFichaH.Close;
qryFichaH.Open;
Hcambio:= true;
end;

procedure TfChoferes.bbsalirCapaClick(Sender: TObject);
begin
eMin.Clear;
eMax.Clear;
eCom.Clear;
qryCapa.Close;
   GBCapa.Visible:= false;
   pChofer.Enabled:=false;
end;

procedure TfChoferes.tbCapaHClick(Sender: TObject);
begin
   GBCapa.Visible:= true;
end;

procedure TfChoferes.bbNuevoCapaClick(Sender: TObject);
begin
eMin.Clear;
eMax.Clear;
eCom.Clear;
eID.Clear;
eMin.SetFocus;
bbGrabarCapa.Enabled:=true;
bbBorrarCapa.Enabled:=false;
bbModiCapa.Enabled:=false;
end;

procedure TfChoferes.dbGCapaCellClick(Column: TColumn);
begin
eMin.Text:= qryCapamin.AsString;
eMax.Text:= qryCapamax.AsString;
eCom.Text:= qryCapacom.AsString;
eID.Text:= qryCapaid.AsString;
end;

procedure TfChoferes.bbBorrarCapaClick(Sender: TObject);
begin
   if trim(eID.Text)= '' then
      begin
      showmessage ('Debe elegir una Linea para borrar');
      Exit;
      end;

   HCapa:= eID.Text;
   qryBorrarCapa.ParamByName('bid').AsString:= HCapa;
   qryBorrarCapa.Execute;
   eMin.Clear;
   eMax.Clear;
   eCom.Clear;
   qryCapa.Close;
   qryCapa.Open;
end;

procedure TfChoferes.bbGrabarCapaClick(Sender: TObject);
var
i: integer;
begin
   if trim(eMin.Text)= '' then
      begin
      showmessage ('Debe ingresar el Minimo');
      eMin.SetFocus;
      Exit;
      end;

   if trim(eMax.Text)= '' then
      begin
      showmessage ('Debe ingresar el Máximo');
      eMax.SetFocus;
      Exit;
      end;

   if trim(eCom.Text)= '' then
      begin
      showmessage ('Debe ingresar La Comisión');
      eCom.SetFocus;
      Exit;
      end;

      if TryStrToInt(eMin.Text, i) = false then
      begin
      ShowMessage('Debe ser Número');
      eMin.SetFocus;
      Exit;
      end;
      if TryStrToInt(eMax.Text, i) = false then
      begin
      ShowMessage('Debe ser Número');
      eMax.SetFocus;
      Exit;
      end;
      if TryStrToInt(eCom.Text, i) = false then
      begin
      ShowMessage('Debe ser Número');
      eCom.SetFocus;
      Exit;
      end;

if eID.Text = qryCapaid.AsString then
   begin
   showmessage ('Esta Ya Existe');
   Exit;
   end;

qryGrabarCapa.ParamByName('vmin').AsString:= eMin.Text ;
qryGrabarCapa.ParamByName('vmax').AsString:= eMax.Text ;
qryGrabarCapa.ParamByName('vcom').AsString:= eCom.Text ;
qryGrabarCapa.Execute;
eMin.Clear;
eMax.Clear;
eCom.Clear;
qryCapa.Close;
qryCapa.Open;
bbGrabarCapa.Enabled:=true;
bbBorrarCapa.Enabled:=true;
bbModiCapa.Enabled:=true;
end;

procedure TfChoferes.bbModiCapaClick(Sender: TObject);
var
i:integer;
begin
   if trim(eID.Text)= '' then
      begin
      showmessage ('Debe elegir una Linea para Modificar');
      Exit;
      end;

   HCapa:= eID.Text;
   
  if trim(eMin.Text)= '' then
      begin
      showmessage ('Debe ingresar el Minimo');
      eMin.SetFocus;
      Exit;
      end;

   if trim(eMax.Text)= '' then
      begin
      showmessage ('Debe ingresar el Máximo');
      eMax.SetFocus;
      Exit;
      end;

   if trim(eCom.Text)= '' then
      begin
      showmessage ('Debe ingresar La Comisión');
      eCom.SetFocus;
      Exit;
      end;

      if TryStrToInt(eMin.Text, i) = false then
      begin
      ShowMessage('Debe ser Número');
      eMin.SetFocus;
      Exit;
      end;
      if TryStrToInt(eMax.Text, i) = false then
      begin
      ShowMessage('Debe ser Número');
      eMax.SetFocus;
      Exit;
      end;
      if TryStrToInt(eCom.Text, i) = false then
      begin
      ShowMessage('Debe ser Número');
      eCom.SetFocus;
      Exit;
      end;

qryModiCapa.ParamByName('vmin').AsString:= eMin.Text ;
qryModiCapa.ParamByName('vmax').AsString:= eMax.Text ;
qryModiCapa.ParamByName('vcom').AsString:= eCom.Text ;
qryModiCapa.ParamByName('v1id').AsString:= HCapa ;
qryModiCapa.Execute;

   eMin.Clear;
   eMax.Clear;
   eCom.Clear;
   qryCapa.Close;
   qryCapa.Open;
end;

procedure TfChoferes.tbCapHClick(Sender: TObject);
begin
  pChofer.Enabled:=True;
bbNuevoCapa.Enabled:=true;
bbGrabarCapa.Enabled:=true;
bbBorrarCapa.Enabled:=true;
bbModiCapa.Enabled:=true;
qryCapa.Open;
   GBCapa.Visible:= true;
end;

procedure TfChoferes.tbListaHClick(Sender: TObject);
begin
   fRListaChofer.qryChoferL.Close;
   fRListaChofer.qryChoferL.Open;
   fRListaChofer.RListaChofer.Preview;   //muestra el reporte de Lista Chofer.
end;

procedure TfChoferes.eStaChange(Sender: TObject);
begin
 if pChofer.Enabled = true then
 Hcambio:= true;
end;

procedure TfChoferes.bbSalirClick(Sender: TObject);
begin
eCodE.Clear;
enombreE.Clear;
eCedE.Clear;
eTelE.Clear;
eFlotaE.Clear;
eDireE.Clear;
eEstaE.Clear;
eCargo.Clear;
eIngreso.Clear;
eSueldo.Clear;

//qryCapa.Close;
   GBEFijo.Visible:= false;
   pChofer.Enabled:=false;
end;

procedure TfChoferes.tbEfijoClick(Sender: TObject);
begin
  pChofer.Enabled:=True;
bbNuevo.Enabled:=true;
bbGrabar.Enabled:=true;
bbBorrar.Enabled:=true;
bbModificar.Enabled:=true;
bbConsulta.Enabled:=true;
bbListado.Enabled:=true;
bbInicio.Enabled:=true;
bbUltimo.Enabled:=true;
bbAnterior.Enabled:=true;
bbSiguiente.Enabled:=true;
bbSalir.Enabled:=true;

//aqui va el qry de la tabla empleado//qryCapa.Open;

   GBEFijo.Visible:= true;
end;

procedure TfChoferes.tbConsultaClick(Sender: TObject);
var
HChaboton : Integer;
begin

   if Hnew = true then  //si presiono nuevo y luego consulta pregunta si desde guardar los cambios.
   begin
      HChaboton := Application.MessageBox ('¿Desea guardar los Cambios?',
                 'Guardar Cambios',MB_YESNO+MB_ICONINFORMATION);
      If HChaboton = ID_YES Then
      begin
      tbGrabarH.Click;
      Exit;
      end
      else if HChaboton = ID_NO then
      Hnew:=false;
   end;

dlgConsultaChofer.ShowModal;   //muestra el dialogo de consulta.
qryConsultaH.Close;

//si acepta el busca el codigo chofer digitado y lo despliega.

if dlgConsultaChofer.ModalResult = mrOK then
begin
qryConsultaH.sql.Clear;
qryConsultaH.sql.Add('select * from choferes where cod_chofer is not null') ;
qryConsultaH.sql.Add('and cod_chofer like "%' + dlgConsultaChofer.eConsultaCh.Text  +'%"') ;
qryConsultaH.Open;
DesplegarH; //llama la funcion despleglar los datos.

if qryConsultaH.IsEmpty then
  showmessage('No se Encontró');

end
else
   Exit;

end;

end.
