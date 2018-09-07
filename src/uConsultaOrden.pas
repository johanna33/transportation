unit uConsultaOrden;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaOrden = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lbConsultaOrden: TLabel;
    eConsultaOrden: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaOrden: TdlgConsultaOrden;

implementation

{$R *.dfm}

procedure TdlgConsultaOrden.FormShow(Sender: TObject);
begin
       eConsultaOrden.SetFocus; //le da el foco al edit Consulta orden
end;

end.
