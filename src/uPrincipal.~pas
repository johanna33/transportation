unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, DB, DBTables, DBAccess, MyAccess,
  ImgList, QRExport, QRWebFilt, QRPDFFilt, MyDacVcl;

type
  TfPrincipal = class(TForm)
    pBarra: TPanel;
    pSysTray: TPanel;
    lReloj: TLabel;
    tReloj: TTimer;
    pMenu: TPanel;
    iActOperaciones: TImage;
    iActFacturacion: TImage;
    iActReportes: TImage;
    iActProcesos: TImage;
    iActSalir: TImage;
    iDesOperaciones: TImage;
    iDesFacturacion: TImage;
    iDesReportes: TImage;
    iDesProcesos: TImage;
    iDesSalir: TImage;
    dbtUsuarioA: TDBText;
    dsUser: TDataSource;
    iLogo: TImage;
    MyConnectT: TMyConnection;
    dbtTipo: TDBText;
    ListaIBarra: TImageList;
    Label1: TLabel;
    QRHTMLFilter1: TQRHTMLFilter;
    QRTextFilter1: TQRTextFilter;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure iActSalirClick(Sender: TObject);
    procedure tRelojTimer(Sender: TObject);
    procedure lRelojMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesOperacionesClick(Sender: TObject);
    procedure iDesFacturacionClick(Sender: TObject);
    procedure iDesReportesClick(Sender: TObject);
    procedure iDesProcesosClick(Sender: TObject);
    procedure iDesSalirMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesProcesosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

uses uMenuOper, uMant, uMenuProcesos, uMenuFacturacion, uMenuReportes,
  uOrdenServicio, uLogIn, uRegistroM, uClientes, uChoferes, uEquipos,
  uSuplidores, uCombustible, uFactA, uInventario, uRelacionChofer,
  uRDiario, uRrelaChofer2, uRelacionSupli, uRelaFact, uRGastosComb,
  uRGastosM, uRinven, uRListaChofer, uRListaClientes, uRListaEquipos,
  uRListaSupli, uRListaTarifa, uRopeGeneral, uRrelacionB, uRTarifa,
  uRprintOrden, uRprintPata, uRimpFact1, uRimpFact2, uProdEquipo;

{$R *.dfm}

procedure TfPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
//Esto cierra todas las opciones del menu cuando el mouse
//se mueve en la forma principal.

     iActOperaciones.Visible:=false;
     iActFacturacion.Visible:=false;
     iActReportes.Visible:=false;
     iActProcesos.Visible:=false;
     iActSalir.Visible:=false;

     iDesOperaciones.Visible:=true;
     iDesFacturacion.Visible:=true;
     iDesReportes.Visible:=true;
     iDesProcesos.Visible:=true;
     iDesSalir.Visible:=true;

    fMenuOper.Hide;
     fMant.Hide;
    fMenuProcesos.Hide;
    fMenuFacturacion.Hide;
    fMenuReportes.Hide;

end;

procedure TfPrincipal.FormShow(Sender: TObject);
var
NombreCompany: string;
Direccion: string;
RncCompania: string;
EmailCompania: string;
NotaFactura: string;
NotaFactura1: string;

begin
//Indica la posicion en la pantalla que va tener la forma
//principal cuando suba.

     fPrincipal.Left:=3;
     fPrincipal.Top:=2;
     fPrincipal.Width:=1018;
     fPrincipal.Height:=706;

//aqui valida el tipo de usuario y asigna los permisos.
    if dbtTipo.Caption = 'T' then
       begin
       fMenuOper.iActUsuario.Enabled:=true;
       fMenuFacturacion.iActFactServicio.Enabled:=true;
       fMenuFacturacion.iActFactTras.Enabled:=true;
       fMenuFacturacion.iActFactExc.Enabled:=true;
       fMenuReportes.iActReportePE.Enabled:=true;
       fOrdenServicio.tbBorrar.Visible:=true;
       fRegistroM.tbBorrarM.Visible:=true;
       fClientes.tbBorrarC.Visible:=true;
       fChoferes.tbBorrarH.Visible:=true;
       fChoferes.tbCapH.Visible:=true;
       fEquipos.tbBorrarE.Visible:=true;
       fSuplidores.tbBorrarS.Visible:=true;
       fCombustible.tbBorrarC.Visible:=true;
       fFactA.tbmodi.Visible:=true;
       fInventario.tbBorrarI.Visible:=true;
       fRelacionChofer.rbValorC.Enabled:=true;
       end;
    if dbtTipo.Caption = 'L' then
       begin
       fMenuOper.iActUsuario.Enabled:=false;
       fMenuFacturacion.iActFactServicio.Enabled:=false;
       fMenuFacturacion.iActFactTras.Enabled:=false;
       fMenuFacturacion.iActFactExc.Enabled:=false;
       fMenuReportes.iActReportePE.Enabled:=false;
       fOrdenServicio.tbBorrar.Visible:=false;
       fRegistroM.tbBorrarM.Visible:=false;
       fClientes.tbBorrarC.Visible:=false;
       fChoferes.tbBorrarH.Visible:=false;
       fChoferes.tbCapH.Visible:=false;
       fEquipos.tbBorrarE.Visible:=false;
       fSuplidores.tbBorrarS.Visible:=false;
       fCombustible.tbBorrarC.Visible:=false;
       fFactA.tbmodi.Visible:=false;
       fInventario.tbBorrarI.Visible:=false;
       fRelacionChofer.rbValorC.Enabled:=false;
       end;

// // // aqui cambia el nombre de la compania en todos los reportes// // //

NombreCompany:= 'Sendero Transport, S.R.L.';
Direccion:= 'Km 40 Carr. Higuey-Punta Cana. Cruce Domingo maiz, paraje de Veron.  Tel/Fax: 809-455-1014';
RncCompania:= 'RNC: ';
EmailCompania:='juanecalderon@hotmail.com';
NotaFactura:='Favor de emitir cheque a nombre de Sendero Transport, S.R.L.';
NotaFactura1:= 'Facturas que generan creditos y/o sustentan costos y gastos';

// //  //  //  //  // //  //  //  // // //  //  //  // // //  //  //  //

fRDiario.qrlLogo1.Caption:= NombreCompany;
fRDiario.qrlLogo1.Font.Color:=clMaroon;

fRelaChofer2.qrlLogo1.Caption:= NombreCompany;
fRelaChofer2.qrlLogo1.Font.Color:=clMaroon;

fRelacionSupli.qrlLogo11.Caption:= NombreCompany;
fRelacionSupli.qrlLogo11.Font.Color:=clMaroon;

fRelaFact.qrlLogo1.Caption:= NombreCompany;
fRelaFact.qrlLogo1.Font.Color:=clMaroon;

fRGastoComb.qrlLogo1.Caption:= NombreCompany;
fRGastoComb.qrlLogo1.Font.Color:=clMaroon;

fRGastosM.qrlLogo1.Caption:= NombreCompany;
fRGastosM.qrlLogo1.Font.Color:=clMaroon;

fRinven.qrlLogo1.Caption:= NombreCompany;
fRinven.qrlLogo1.Font.Color:=clMaroon;

fRListaChofer.qrlLogo1.Caption:= NombreCompany;
fRListaChofer.qrlLogo1.Font.Color:=clMaroon;

fRListaCliente.qrlLogo.Caption:= NombreCompany;
fRListaCliente.qrlLogo.Font.Color:=clMaroon;

fRListaEquipos.qrlLogo1.Caption:= NombreCompany;
fRListaEquipos.qrlLogo1.Font.Color:=clMaroon;

fRListaSupli.qrlLogo1.Caption:= NombreCompany;
fRListaSupli.qrlLogo1.Font.Color:=clMaroon;

fRListaTarifa.qrlLogo1.Caption:= NombreCompany;
fRListaTarifa.qrlLogo1.Font.Color:=clMaroon;

fRopeGeneral.qrlLogo1.Caption:= NombreCompany;
fRopeGeneral.qrlLogo1.Font.Color:=clMaroon;

fRrelacionB.qrlLogo1.Caption:= NombreCompany;
fRrelacionB.qrlLogo1.Font.Color:=clMaroon;

fProdEquipo.qrlLogo1.Caption:= NombreCompany;
fProdEquipo.qrlLogo1.Font.Color:=clMaroon;

fRTarifa.qrlLogo1.Caption:= NombreCompany;
fRTarifa.qrlLogo1.Font.Color:=clMaroon;
fRTarifa.qrlLogo2.Caption:= Direccion;
fRTarifa.qrlLogo3.Caption:= RncCompania;

fRprintOrden.qrlLogo1.Caption:= NombreCompany;
fRprintOrden.qrlLogo2.Caption:= Direccion;
fRprintOrden.qrlLogo3.Caption:=  RncCompania;

fRprintPata.qrlLogo.Caption:= NombreCompany;
fRprintPata.qrlLogo2.Caption:= NombreCompany;
fRprintPata.qrldirec.Caption:= Direccion;
fRprintPata.qrldirec2.Caption:= Direccion;
fRprintPata.qrlrnc.Caption:= RncCompania;
fRprintPata.qrlrnc2.Caption:= RncCompania;

fFactImprimir.qrlLogo1.Caption:= NombreCompany;
fFactImprimir.qrlLogo1.Font.Color:=clMaroon;
fFactImprimir.qrlLogo2.Caption:= Direccion;
fFactImprimir.qrlLogo3.Caption:= RncCompania;
fFactImprimir.QRLabel1.Caption:= EmailCompania;
fFactImprimir.qrlnota3.Caption:= NotaFactura;
fFactImprimir.qrlnota4.Caption:= NotaFactura1;

fFactImprimir2.qrlLogo1.Caption:= NombreCompany;
fFactImprimir2.qrlLogo1.Font.Color:=clMaroon;
fFactImprimir2.qrlLogo2.Caption:= Direccion;
fFactImprimir2.qrlLogo3.Caption:= RncCompania;
fFactImprimir2.QRLabel1.Caption:= EmailCompania;

end;

procedure TfPrincipal.iActSalirClick(Sender: TObject);
begin
//sale del programa cuando hace click en Salir.
       fLogin.qryLogin.Close;
       Application.Terminate;
end;

procedure TfPrincipal.tRelojTimer(Sender: TObject);
begin
//Despliega la hora del sistema en el Label lReloj.
 lReloj.Caption := TimeToStr(TIME());
end;

procedure TfPrincipal.lRelojMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//Despliega la fecha del sistema al mover el mouse por el
//label Lreloj.
  lReloj.Hint := DateToStr(DATE());
end;

procedure TfPrincipal.iDesOperacionesClick(Sender: TObject);
begin
//presenta activa la opcion de operaciones y muestra el menu.

     iActOperaciones.Visible:=true;
     iActFacturacion.Visible:=false;
     iActReportes.Visible:=false;
     iActProcesos.Visible:=false;
     iActSalir.Visible:=false;

     iDesOperaciones.Visible:=false;
     iDesFacturacion.Visible:=true;
     iDesReportes.Visible:=true;
     iDesProcesos.Visible:=true;
     iDesSalir.Visible:=true;

     fMenuOper.Show;
//mientras Operaciones esta activo cierra los demas menus.
     fMenuProcesos.Hide;
     fMenuFacturacion.Hide;
     fMenuReportes.Hide;
end;

procedure TfPrincipal.iDesFacturacionClick(Sender: TObject);
begin
//presenta activa la opcion de Facturacion y muestra el menu.

     iActOperaciones.Visible:=false;
     iActFacturacion.Visible:=true;
     iActReportes.Visible:=false;
     iActProcesos.Visible:=false;
     iActSalir.Visible:=false;

     iDesOperaciones.Visible:=true;
     iDesFacturacion.Visible:=false;
     iDesReportes.Visible:=true;
     iDesProcesos.Visible:=true;
     iDesSalir.Visible:=true;

     fMenuFacturacion.Show;
//mientras facturacion esta activo cierra los demas menus.
     fMenuOper.Hide;
     fMenuProcesos.Hide;
     fMenuReportes.Hide;
end;

procedure TfPrincipal.iDesReportesClick(Sender: TObject);
begin
//presenta activa la opcion de Reportes y muestra el menu.

     iActOperaciones.Visible:=false;
     iActFacturacion.Visible:=false;
     iActReportes.Visible:=true;
     iActProcesos.Visible:=false;
     iActSalir.Visible:=false;

     iDesOperaciones.Visible:=true;
     iDesFacturacion.Visible:=true;
     iDesReportes.Visible:=false;
     iDesProcesos.Visible:=true;
     iDesSalir.Visible:=true;

     fMenuReportes.Show;
//mientras Reportes esta activo cierra los demas menus.
     fMenuOper.Hide;
     fMenuProcesos.Hide;
     fMenuFacturacion.Hide;
end;

procedure TfPrincipal.iDesProcesosClick(Sender: TObject);
begin
//presenta activa la opcion de Procesos y muestra el menu.

     iActOperaciones.Visible:=false;
     iActFacturacion.Visible:=false;
     iActReportes.Visible:=false;
     iActProcesos.Visible:=true;
     iActSalir.Visible:=false;

     iDesOperaciones.Visible:=true;
     iDesFacturacion.Visible:=true;
     iDesReportes.Visible:=true;
     iDesProcesos.Visible:=false;
     iDesSalir.Visible:=true;

     fMenuProcesos.Show;
//mientras Procesos esta activo cierra los demas menus.
     fMenuOper.Hide;
     fMenuFacturacion.Hide;
     fMenuReportes.Hide;
end;

procedure TfPrincipal.iDesSalirMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Salir.

     iActOperaciones.Visible:=false;
     iActFacturacion.Visible:=false;
     iActReportes.Visible:=false;
     iActProcesos.Visible:=false;
     iActSalir.Visible:=true;

     iDesOperaciones.Visible:=true;
     iDesFacturacion.Visible:=true;
     iDesReportes.Visible:=true;
     iDesProcesos.Visible:=true;
     iDesSalir.Visible:=false;

//mientras Salir esta activo cierra los demas menus.
     fMenuOper.Hide;
     fMenuProcesos.Hide;
     fMenuFacturacion.Hide;
     fMenuReportes.Hide;
end;

procedure TfPrincipal.iDesProcesosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
         iActSalir.Visible:=false;
         iDesSalir.Visible:=true;
end;

end.
