unit uBuscarTarifa;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgBuscarTarifa = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lBuscarT: TLabel;
    eBuscarT: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgBuscarTarifa: TdlgBuscarTarifa;

implementation

{$R *.dfm}

procedure TdlgBuscarTarifa.FormShow(Sender: TObject);
begin
    eBuscarT.SetFocus;   //le da el foco al editBuscar.
end;

end.
