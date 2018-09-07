unit uMenuProcesos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TfMenuProcesos = class(TForm)
    iDesBackup: TImage;
    iDesRestaurar: TImage;
    iDesThistorico: TImage;
    iDesPhistorico: TImage;
    iActBackup: TImage;
    iActRestaurar: TImage;
    iActThistorico: TImage;
    iActPhistorico: TImage;
    procedure FormShow(Sender: TObject);
    procedure iDesBackupMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure iDesPhistoricoMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesRestaurarMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iDesThistoricoMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure iActThistoricoClick(Sender: TObject);
    procedure iActPhistoricoClick(Sender: TObject);
    procedure iActBackupClick(Sender: TObject);
    procedure iActRestaurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuProcesos: TfMenuProcesos;

implementation

{$R *.dfm}

procedure TfMenuProcesos.FormShow(Sender: TObject);
begin
//esta es la posicion en la pantalla que carga el menu
//de procesos.

        fMenuProcesos.Top:=75;
        fMenuProcesos.Left:=418;
//limpia el menu para que aparesca en blanco cada vez
//que haga click en la opcion
    iActBackup.Visible:=false;
    iActRestaurar.Visible:=false;
    iActThistorico.Visible:=false;
    iActPhistorico.Visible:=false;
    iDesBackup.Visible:=true;
    iDesRestaurar.Visible:=true;
    iDesThistorico.Visible:=true;
    iDesPhistorico.Visible:=true;

end;

procedure TfMenuProcesos.iDesBackupMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Backup

    iActBackup.Visible:=true;
    iActRestaurar.Visible:=false;
    iActThistorico.Visible:=false;
    iActPhistorico.Visible:=false;

    iDesBackup.Visible:=false;
    iDesRestaurar.Visible:=true;
    iDesThistorico.Visible:=true;
    iDesPhistorico.Visible:=true;

end;

procedure TfMenuProcesos.iDesPhistoricoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Purgar el Historico

    iActBackup.Visible:=false;
    iActRestaurar.Visible:=false;
    iActThistorico.Visible:=false;
    iActPhistorico.Visible:=true;

    iDesBackup.Visible:=true;
    iDesRestaurar.Visible:=true;
    iDesThistorico.Visible:=true;
    iDesPhistorico.Visible:=false;

end;

procedure TfMenuProcesos.iDesRestaurarMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Restaurar

    iActBackup.Visible:=false;
    iActRestaurar.Visible:=true;
    iActThistorico.Visible:=false;
    iActPhistorico.Visible:=false;

    iDesBackup.Visible:=true;
    iDesRestaurar.Visible:=false;
    iDesThistorico.Visible:=true;
    iDesPhistorico.Visible:=true;
end;

procedure TfMenuProcesos.iDesThistoricoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
//presenta activa la opcion de Transferir al Historico

    iActBackup.Visible:=false;
    iActRestaurar.Visible:=false;
    iActThistorico.Visible:=true;
    iActPhistorico.Visible:=false;

    iDesBackup.Visible:=true;
    iDesRestaurar.Visible:=true;
    iDesThistorico.Visible:=false;
    iDesPhistorico.Visible:=true;
end;

procedure TfMenuProcesos.iActThistoricoClick(Sender: TObject);
begin
 showmessage ('MODULO EN CONSTRUCCION !!!');
end;

procedure TfMenuProcesos.iActPhistoricoClick(Sender: TObject);
begin
  showmessage ('MODULO EN CONSTRUCCION !!!');
end;

procedure TfMenuProcesos.iActBackupClick(Sender: TObject);
begin
    showmessage ('MODULO EN CONSTRUCCION !!!');
end;

procedure TfMenuProcesos.iActRestaurarClick(Sender: TObject);
begin
    showmessage ('MODULO EN CONSTRUCCION !!!');
end;

end.
