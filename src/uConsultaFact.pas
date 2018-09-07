unit uConsultaFact;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, OKCANCL1;

type
  TdlgConsultaFact = class(TOKBottomDlg)
    lbConsultaFact: TLabel;
    eConsultaFact: TEdit;
    procedure HelpBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlgConsultaFact: TdlgConsultaFact;

implementation

{$R *.dfm}

procedure TdlgConsultaFact.HelpBtnClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

procedure TdlgConsultaFact.FormShow(Sender: TObject);
begin
    eConsultaFact.SetFocus;
end;

end.
 
