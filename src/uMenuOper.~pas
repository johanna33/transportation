unit uMenuOper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfMenuOper = class(TForm)
    iDesOrdenServicio: TImage;
    iDesMantenimiento: TImage;
    iDesTarifas: TImage;
    iDesClientes: TImage;
    iDesChoferes: TImage;
    iDesEquipos: TImage;
    iActOrdenServicio: TImage;
    iActMantenimiento: TImage;
    iActTarifas: TImage;
    iActClientes: TImage;
    iActChoferes: TImage;
    iActEquipos: TImage;
    iActSuplidor: TImage;
    iDesSuplidor: TImage;
    iActUsuario: TImage;
    iDesUsuario: TImage;
    procedure FormShow(Sender: TObject);
    procedure iActMantenimientoClick(Sender: TObject);
    procedure iDesChoferesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesClientesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesEquiposMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesMantenimientoMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure iDesOrdenServicioMouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure iDesTarifasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iActOrdenServicioClick(Sender: TObject);
    procedure iActClientesClick(Sender: TObject);
    procedure iActEquiposClick(Sender: TObject);
    procedure iActTarifasClick(Sender: TObject);
    procedure iActChoferesClick(Sender: TObject);
    procedure iDesSuplidorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iActSuplidorClick(Sender: TObject);
    procedure iDesUsuarioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iActUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuOper: TfMenuOper;

implementation

uses uMant, uOrdenServicio, uClientes, uEquipos, uTarifas, uChoferes,
  uSuplidores, uUsuarios;

{$R *.dfm}

procedure TfMenuOper.FormShow(Sender: TObject);
begin
//esta es la posicion en la pantalla que carga el menu
//de Operaciones.

       fMenuOper.Top:=75;
       fMenuOper.Left:=10;
//limpia el menu para que aparesca en blanco cada vez
//que haga click en la opcion

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;
        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;

end;

procedure TfMenuOper.iActMantenimientoClick(Sender: TObject);
begin
//muestra el menu de mantenimiento al hacer click en
//la opcion Mantenimiento.

     fMant.show;
end;

procedure TfMenuOper.iDesChoferesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Choferes.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=true;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=false;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;
end;

procedure TfMenuOper.iDesClientesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Clientes.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=true;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=false;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;
end;

procedure TfMenuOper.iDesEquiposMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Equipos.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=true;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=false;
        iDesSuplidor.Visible:=true;
end;

procedure TfMenuOper.iDesMantenimientoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Mantenimiento.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=true;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=false;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;
end;

procedure TfMenuOper.iDesOrdenServicioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Orden de Servicio.

        iActOrdenServicio.Visible:=true;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=false;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;

//mientras Orden de Servicio esta activo cierra
//el menu mantenimiento.
        fMant.Hide;
end;

procedure TfMenuOper.iDesTarifasMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Tarifas.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=true;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=false;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;

//mientras Tarifas esta activo cierra
//el menu mantenimiento.
        fMant.Hide;
end;

procedure TfMenuOper.iActOrdenServicioClick(Sender: TObject);
begin
//muestra el formulario de Orden de Servicio al hacer
//click en la opcion Orden de Servicio.
    fOrdenServicio.show;
end;

procedure TfMenuOper.iActClientesClick(Sender: TObject);
begin
    fClientes.show;   //muestra el formulario de Clientes.
end;

procedure TfMenuOper.iActEquiposClick(Sender: TObject);
begin
     fEquipos.Show;   //muestra el formulario de Equipos.
end;

procedure TfMenuOper.iActTarifasClick(Sender: TObject);
begin
     fTarifas.Show;    //muestra el formulario de Tarifas.
end;

procedure TfMenuOper.iActChoferesClick(Sender: TObject);
begin
    fChoferes.Show;   //muestra el formulario de Choferes.
end;

procedure TfMenuOper.iDesSuplidorMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Suplidores.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=true;
        iActUsuario.Visible:=false;

        iDesUsuario.Visible:=true;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=false;

end;

procedure TfMenuOper.iActSuplidorClick(Sender: TObject);
begin
        fSuplidores.Show;   //muestra el formulario de Suplidores.
end;

procedure TfMenuOper.iDesUsuarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Usuarios.

        iActOrdenServicio.Visible:=false;
        iActMantenimiento.Visible:=false;
        iActTarifas.Visible:=false;
        iActClientes.Visible:=false;
        iActChoferes.Visible:=false;
        iActEquipos.Visible:=false;
        iActSuplidor.Visible:=false;
        iActUsuario.Visible:=true;

        iDesUsuario.Visible:=false;
        iDesOrdenServicio.Visible:=true;
        iDesMantenimiento.Visible:=true;
        iDesTarifas.Visible:=true;
        iDesClientes.Visible:=true;
        iDesChoferes.Visible:=true;
        iDesEquipos.Visible:=true;
        iDesSuplidor.Visible:=true;

end;

procedure TfMenuOper.iActUsuarioClick(Sender: TObject);
begin
       fUsuarios.Show;  //muestra el formulario de Usuarios.
end;

end.
