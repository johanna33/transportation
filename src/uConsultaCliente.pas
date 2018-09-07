unit uConsultaCliente;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaCliente = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lconsultacliente: TLabel;
    eConsultaCliente: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaCliente: TdlgConsultaCliente;

implementation

{$R *.dfm}

procedure TdlgConsultaCliente.FormShow(Sender: TObject);
begin
eConsultaCliente.SetFocus;
end;

end.
