unit uConsultaInventario;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  TdlgConsultaInventario = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    lconsultain: TLabel;
    eConsultaIn: TEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaInventario: TdlgConsultaInventario;

implementation

{$R *.dfm}

procedure TdlgConsultaInventario.FormShow(Sender: TObject);
begin
   eConsultaIn.SetFocus;
end;

end.
