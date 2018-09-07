unit uConsultaCombustible;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaCombustible = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lconsultacom: TLabel;
    eConsultaCom: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaCombustible: TdlgConsultaCombustible;

implementation

{$R *.dfm}

procedure TdlgConsultaCombustible.FormShow(Sender: TObject);
begin
eConsultaCom.SetFocus;
end;

end.
