unit uMant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfMant = class(TForm)
    iDesRegistro: TImage;
    iDesInventario: TImage;
    iActRegistro: TImage;
    iActInventario: TImage;
    iDesCombustible: TImage;
    iActCombustible: TImage;
    procedure FormShow(Sender: TObject);
    procedure iDesInventarioMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesRegistroMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iActRegistroClick(Sender: TObject);
    procedure iActInventarioClick(Sender: TObject);
    procedure iDesCombustibleMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iActCombustibleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMant: TfMant;

implementation

uses uRegistroM, uCombustible, uInventario;

{$R *.dfm}

procedure TfMant.FormShow(Sender: TObject);
begin
//esta es la posicion en la pantalla en que carga
//el menu de mantenimiento.

       fMant.Top:=118;
       fMant.Left:=160;

//limpia el menu para que aparesca en blanco cada vez
//que haga click en la opcion
        iActRegistro.Visible:=false;
        iActInventario.Visible:=false;
        iActCombustible.Visible:=false;

        iDesCombustible.Visible:=true;
        iDesRegistro.Visible:=true;
        iDesInventario.Visible:=true;

end;

procedure TfMant.iDesInventarioMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de inventario.
        iActRegistro.Visible:=false;
        iActInventario.Visible:=true;
        iActCombustible.Visible:=false;

        iDesCombustible.Visible:=true;
        iDesRegistro.Visible:=true;
        iDesInventario.Visible:=false;
end;

procedure TfMant.iDesRegistroMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
//presenta activa la opcion de registro.

        iActRegistro.Visible:=true;
        iActInventario.Visible:=false;
        iActCombustible.Visible:=false;

        iDesCombustible.Visible:=true;
        iDesRegistro.Visible:=false;
        iDesInventario.Visible:=true;
end;

procedure TfMant.iActRegistroClick(Sender: TObject);
begin
    fRegistroM.Show;  //muestra el formulario de registro de mantenimiento.
end;

procedure TfMant.iActInventarioClick(Sender: TObject);
begin
  //  showmessage ('MODULO EN CONSTRUCCION !!!');
   fInventario.Show;  //muestra el formulario de registro de inventario.
end;

procedure TfMant.iDesCombustibleMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Combustible.

        iActRegistro.Visible:=false;
        iActInventario.Visible:=false;
        iActCombustible.Visible:=true;

        iDesCombustible.Visible:=false;
        iDesRegistro.Visible:=true;
        iDesInventario.Visible:=true;
end;

procedure TfMant.iActCombustibleClick(Sender: TObject);
begin
    fCombustible.Show;   //muestra el formulario de control de combustible.
end;

end.
