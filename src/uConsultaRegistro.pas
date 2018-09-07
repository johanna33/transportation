unit uConsultaRegistro;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaRegistro = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lconsultamant: TLabel;
    eConsultaM: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaRegistro: TdlgConsultaRegistro;

implementation

{$R *.dfm}

procedure TdlgConsultaRegistro.FormShow(Sender: TObject);
begin
eConsultaM.SetFocus;
end;

end.
