unit uMenuReportes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfMenuReportes = class(TForm)
    iDesImprimirO: TImage;
    iDesInventario: TImage;
    iDesRelacionC: TImage;
    iDesRelacionM: TImage;
    iDesReporteGE: TImage;
    iDesReporteGO: TImage;
    iDesReporteGT: TImage;
    iDesReporteH: TImage;
    iDesReportePE: TImage;
    iActReportePE: TImage;
    iActReporteH: TImage;
    iActReporteGT: TImage;
    iActReporteGO: TImage;
    iActReporteGE: TImage;
    iActRelacionM: TImage;
    iActRelacionC: TImage;
    iActInventario: TImage;
    iActImprimirO: TImage;
    iDesDiario: TImage;
    iActDiario: TImage;
    iActGastoComb: TImage;
    iDesGastoComb: TImage;
    procedure FormShow(Sender: TObject);
    procedure iDesImprimirOMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesInventarioMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure iDesRelacionCMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesRelacionMMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesReporteGEMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesReporteGOMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesReporteGTMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesReporteHMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesReportePEMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iActReporteGOClick(Sender: TObject);
    procedure iActReporteGTClick(Sender: TObject);
    procedure iActReporteGEClick(Sender: TObject);
    procedure iActImprimirOClick(Sender: TObject);
    procedure iActReporteHClick(Sender: TObject);
    procedure iActReportePEClick(Sender: TObject);
    procedure iActRelacionMClick(Sender: TObject);
    procedure iActRelacionCClick(Sender: TObject);
    procedure iDesDiarioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iActDiarioClick(Sender: TObject);
    procedure iDesGastoCombMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iActGastoCombClick(Sender: TObject);
    procedure iActInventarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuReportes: TfMenuReportes;

implementation

uses uRListaClientes, uReporteOpe, uRListaChofer, uRListaEquipos,
  uRListaSupli, uImprimirOrden, uProduccionE, uRelacionChofer, uDiarioOpe,
  uRinven, UReporteIven;

{$R *.dfm}

procedure TfMenuReportes.FormShow(Sender: TObject);
begin
//esta es la posicion en la pantalla que carga el menu
//de Reportes.

       fMenuReportes.Top:=75;
       fMenuReportes.Left:=282;
//limpia el menu para que aparesca en blanco cada vez
//que haga click en la opcion
     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesImprimirOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Imprimir Orden

     iActImprimirO.Visible:=true;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=false;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;

end;

procedure TfMenuReportes.iDesInventarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Inventario.

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=true;

     iDesInventario.Visible:=false;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesRelacionCMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Relacion Servicios choferes

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=true;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=false;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesRelacionMMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  relacion Gastos mantenimiento

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=true;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=false;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesReporteGEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Reporte Excursiones

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=true;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=false;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesReporteGOMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Reporte Operaciones

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=true;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=false;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesReporteGTMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Reporte traslados

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=true;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=false;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesReporteHMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  reportes Historicos

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=true;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=false;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iDesReportePEMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de reporte Produccion equipo

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=true;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=false;
end;

procedure TfMenuReportes.iActReporteGOClick(Sender: TObject);
begin
   fReporteOpe.Show;  //muestra el formulario de reporte de operaciones generales.
   fReporteOpe.ltituloR.Caption:='REPORTE GENERAL DE OPERACIONES';   //y le asigna su titulo.
end;

procedure TfMenuReportes.iActReporteGTClick(Sender: TObject);
begin
   fReporteOpe.Show;  //muestra el formulario de reporte de traslados.
   fReporteOpe.ltituloR.Caption:='REPORTE GENERAL DE TRASLADOS';  //y le asigna su titulo.
end;

procedure TfMenuReportes.iActReporteGEClick(Sender: TObject);
begin
   fReporteOpe.Show;  //muestra el formulario de reporte de excursiones.
   fReporteOpe.ltituloR.Caption:='REPORTE GENERAL DE EXCURSIONES'; //y le asigna su titulo.
end;

procedure TfMenuReportes.iActImprimirOClick(Sender: TObject);
begin
   fImprimirOrden.Show;  //muestra el formulario de imprimir orden.
end;

procedure TfMenuReportes.iActReporteHClick(Sender: TObject);
begin
   showmessage ('MODULO EN CONSTRUCCION !!!');
end;

procedure TfMenuReportes.iActReportePEClick(Sender: TObject);
begin
   fProduccionE.Show;  //muestra el formulario de reporte de produccion.
   fProduccionE.ltituloP.Caption:='REPORTE DE PRODUCCION POR EQUIPO';   //y le asigna su titulo.
   fProduccionE.Caption:='Reporte de Producci�n por Equipo';
end;

procedure TfMenuReportes.iActRelacionMClick(Sender: TObject);
begin
   fProduccionE.Show;  //muestra el formulario de reporte de produccion.
   fProduccionE.ltituloP.Caption:='RELACION DE GASTOS DE MANTENIMIENTO';   //y le asigna su titulo.
   fProduccionE.Caption:='Relaci�n de Gastos de Mantenimiento';
end;

procedure TfMenuReportes.iActRelacionCClick(Sender: TObject);
begin
      fRelacionChofer.Show;   //muestra el formulario de relacion de servicios choferes.
end;

procedure TfMenuReportes.iDesDiarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Diario de Operaciones

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=true;
     iActGastoComb.Visible:=false;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=true;
     iDesDiario.Visible:=false;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iActDiarioClick(Sender: TObject);
begin
    fDiarioOpe.Show;   //muestra el formulario de diario de operaciones
end;

procedure TfMenuReportes.iDesGastoCombMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Gastos de Combustible

     iActImprimirO.Visible:=false;
     iActRelacionC.Visible:=false;
     iActRelacionM.Visible:=false;
     iActReporteGE.Visible:=false;
     iActReporteGO.Visible:=false;
     iActReporteGT.Visible:=false;
     iActReporteH.Visible:=false;
     iActReportePE.Visible:=false;
     iActDiario.Visible:=false;
     iActGastoComb.Visible:=true;
     iActInventario.Visible:=false;

     iDesInventario.Visible:=true;
     iDesGastoComb.Visible:=false;
     iDesDiario.Visible:=true;
     iDesImprimirO.Visible:=true;
     iDesRelacionC.Visible:=true;
     iDesRelacionM.Visible:=true;
     iDesReporteGE.Visible:=true;
     iDesReporteGO.Visible:=true;
     iDesReporteGT.Visible:=true;
     iDesReporteH.Visible:=true;
     iDesReportePE.Visible:=true;
end;

procedure TfMenuReportes.iActGastoCombClick(Sender: TObject);
begin
   fProduccionE.Show;  //muestra el formulario de relacion de gastos de combustible.
   fProduccionE.ltituloP.Caption:='RELACION DE GASTOS DE COMBUSTIBLE';   //y le asigna su titulo.
   fProduccionE.Caption:='Relaci�n de Gastos de Combustible';
end;

procedure TfMenuReportes.iActInventarioClick(Sender: TObject);
begin
  fReporteIven.Show;    //muestra el formulario de reporte de inventario.
end;

end.
