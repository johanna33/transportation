unit uMenuFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfMenuFacturacion = class(TForm)
    iDesBonosI: TImage;
    iDesBonosP: TImage;
    iDesFactA: TImage;
    iDesFactExc: TImage;
    iDesFactServicio: TImage;
    iDesFactTras: TImage;
    iDesImprimirF: TImage;
    iDesRelacionF: TImage;
    iActBonosI: TImage;
    iActBonosP: TImage;
    iActFactA: TImage;
    iActFactExc: TImage;
    iActFactServicio: TImage;
    iActFactTras: TImage;
    iActImprimirF: TImage;
    iActRelacionF: TImage;
    iDesSupliR: TImage;
    iActSupliR: TImage;
    procedure FormShow(Sender: TObject);
    procedure iDesBonosIMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesBonosPMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesFactAMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesFactExcMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesFactServicioMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure iDesFactTrasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesImprimirFMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesRelacionFMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesSupliRMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iActSupliRClick(Sender: TObject);
    procedure iActBonosPClick(Sender: TObject);
    procedure iActBonosIClick(Sender: TObject);
    procedure iActFactServicioClick(Sender: TObject);
    procedure iActFactExcClick(Sender: TObject);
    procedure iActFactTrasClick(Sender: TObject);
    procedure iActFactAClick(Sender: TObject);
    procedure iActImprimirFClick(Sender: TObject);
    procedure iActRelacionFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuFacturacion: TfMenuFacturacion;

implementation

uses uMenuProcesos, uRelacionS, uRelacionBonos, uFacturacion, uFactA,
  uImprimirFact, uRelacionFact;

{$R *.dfm}

procedure TfMenuFacturacion.FormShow(Sender: TObject);
begin
//esta es la posicion en la pantalla que carga el menu
//de Facturacion.

        fMenuFacturacion.Top:=75;
        fMenuFacturacion.Left:=146;
//limpia el menu para que aparesca en blanco cada vez
//que haga click en la opcion
    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;
    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;

end;

procedure TfMenuFacturacion.iDesBonosIMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Bonos Identificados

    iActBonosI.Visible:=true;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=false;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesBonosPMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Bonos Pendientes

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=true;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=false;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesFactAMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Facturas <Archivo>

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=true;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=false;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesFactExcMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Facturacion de Excursiones

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=true;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=false;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesFactServicioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Facturacion de Servicios

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=true;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=false;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesFactTrasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Facturacion de Traslados

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=true;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=false;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesImprimirFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Imprimir facturas

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=true;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=false;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iDesRelacionFMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Relacion General de Facturas

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=true;
    iActSupliR.Visible:=false;

    iDesSupliR.Visible:=true;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=false;
end;

procedure TfMenuFacturacion.iDesSupliRMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de  Relacion De Suplidores

    iActBonosI.Visible:=false;
    iActBonosP.Visible:=false;
    iActFactA.Visible:=false;
    iActFactExc.Visible:=false;
    iActFactServicio.Visible:=false;
    iActFactTras.Visible:=false;
    iActImprimirF.Visible:=false;
    iActRelacionF.Visible:=false;
    iActSupliR.Visible:=true;

    iDesSupliR.Visible:=false;
    iDesBonosI.Visible:=true;
    iDesBonosP.Visible:=true;
    iDesFactA.Visible:=true;
    iDesFactExc.Visible:=true;
    iDesFactServicio.Visible:=true;
    iDesFactTras.Visible:=true;
    iDesImprimirF.Visible:=true;
    iDesRelacionF.Visible:=true;
end;

procedure TfMenuFacturacion.iActSupliRClick(Sender: TObject);
begin
     fRelacionS.Show;  //muestra el formulario de relacion suplidores.
end;

procedure TfMenuFacturacion.iActBonosPClick(Sender: TObject);
begin
     fRelacionBonos.Show;  //muestra el formulario de relacion de bonos pendientes.
     fRelacionBonos.ltituloB.Caption:='RELACION DE BONOS PENDIENTES';  //y le asigna su titulo.
end;

procedure TfMenuFacturacion.iActBonosIClick(Sender: TObject);
begin
     fRelacionBonos.Show;  //muestra el formulario de relacion de bonos identificados.
     fRelacionBonos.ltituloB.Caption:='RELACION DE BONOS IDENTIFICADOS'; //y le asigna su titulo.
end;

procedure TfMenuFacturacion.iActFactServicioClick(Sender: TObject);
begin
    fFacturacion.Show;   //muestra el formulario de facturacion.
    ffacturacion.ltituloF.Caption:='FACTURACION DE SERVICIOS'; //y le asigna su titulo.
end;

procedure TfMenuFacturacion.iActFactExcClick(Sender: TObject);
begin
    fFacturacion.Show;   //muestra el formulario de facturacion.
    ffacturacion.ltituloF.Caption:='FACTURACION DE EXCURSIONES';  //y le asigna su titulo.
end;

procedure TfMenuFacturacion.iActFactTrasClick(Sender: TObject);
begin
    fFacturacion.Show;    //muestra el formulario de facturacion.
    ffacturacion.ltituloF.Caption:='FACTURACION DE TRASLADOS'; //y le asigna su titulo.
end;

procedure TfMenuFacturacion.iActFactAClick(Sender: TObject);
begin
     fFactA.Show; //muestra el formulario de archivos de facturas.
end;

procedure TfMenuFacturacion.iActImprimirFClick(Sender: TObject);
begin
   fImpFact.Show;  //muestra el formulario e imprimir facturas.
end;

procedure TfMenuFacturacion.iActRelacionFClick(Sender: TObject);
begin
   fRelacionFact.Show;  //muestra el formulario de relacion de facturas.
end;

end.
