unit uConsultaChofer;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaChofer = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lconsultachofer: TLabel;
    eConsultaCh: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaChofer: TdlgConsultaChofer;

implementation

{$R *.dfm}

procedure TdlgConsultaChofer.FormShow(Sender: TObject);
begin
  eConsultaCh.SetFocus;
end;

end.
