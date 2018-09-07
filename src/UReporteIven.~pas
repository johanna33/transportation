unit UReporteIven;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfReporteIven = class(TForm)
    pRinventario: TPanel;
    ldesde: TLabel;
    dpDesdeI: TDateTimePicker;
    lhasta: TLabel;
    dpHastaI: TDateTimePicker;
    GbSelectI: TGroupBox;
    rbPantallaI: TRadioButton;
    rbImpresoraI: TRadioButton;
    bbOkI: TBitBtn;
    bbCancelarI: TBitBtn;
    ltituloI: TLabel;
    procedure bbCancelarIClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkIClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NuevoII;

  end;

var
  fReporteIven: TfReporteIven;

implementation

uses uMenuReportes, uRinven;

{$R *.dfm}

procedure TfReporteIven.NuevoII;
begin
  dpDesdeI.Date:= date;
  dpHastaI.Date:= date;
  rbPantallaI.Checked:=true;
end;
procedure TfReporteIven.bbCancelarIClick(Sender: TObject);
begin
     NuevoII;
     fReporteIven.Close;
end;

procedure TfReporteIven.FormShow(Sender: TObject);
begin
    fMenuReportes.Hide;
    dpDesdeI.Date:= date;
    dpHastaI.Date:= date;
end;

procedure TfReporteIven.bbOkIClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin

  d1:= dpDesdeI.Date;
  d2:= dpHastaI.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

//esto para el reporte de inventario.

        fRinven.qrlhasta.Caption:= DateToStr(d2);
        fRinven.qrldesde.Caption:= DateToStr(d1);
        
        fRinven.qryInven.SQL.Clear;
        fRinven.qryInven.SQL.Add('select * from Inventario where fechai between "'+ s1 +'" and "'+ s2 +'"');
        fRinven.qryInven.SQL.Add('order by fechai');
        fRinven.qryInven.Open;

        if fRinven.qryInven.IsEmpty then
           begin
           showmessage ('No existe Inventario en esa Fecha');
           Exit;
           end;

        if rbPantallaI.Checked = true then
           begin
           fRinven.RInven.Preview;
           Exit;
           end
        else if rbPantallaI.Checked = false then
           begin
           fRinven.RInven.Print;
           Exit;
           end;
end;

end.
