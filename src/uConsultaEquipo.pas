unit uConsultaEquipo;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaEquipo = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lconsultachofer: TLabel;
    eConsultaF: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaEquipo: TdlgConsultaEquipo;

implementation

{$R *.dfm}

procedure TdlgConsultaEquipo.FormShow(Sender: TObject);
begin
eConsultaF.SetFocus;
end;

end.
