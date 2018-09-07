unit uDiarioOpe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls;

type
  TfDiarioOpe = class(TForm)
    pReporteOpe: TPanel;
    ltitulo: TLabel;
    lfecha: TLabel;
    dpFechaDia: TDateTimePicker;
    GbSelectD: TGroupBox;
    rbPantallaD: TRadioButton;
    rbImpresoraD: TRadioButton;
    bbOkD: TBitBtn;
    bbCancelarD: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bbCancelarDClick(Sender: TObject);
    procedure bbOkDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDiarioOpe: TfDiarioOpe;

implementation

uses uMenuReportes, uRDiario;

{$R *.dfm}

procedure TfDiarioOpe.FormShow(Sender: TObject);
begin
    fMenuReportes.Hide;
    dpFechaDia.Date:= date;
    rbPantallaD.Checked:=true;
end;

procedure TfDiarioOpe.bbCancelarDClick(Sender: TObject);
begin
    fDiarioOpe.Close;
end;

procedure TfDiarioOpe.bbOkDClick(Sender: TObject);
var
s1: string;
d1: TDateTime;
begin

  d1:= dpFechaDia.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);

//esto para el reporte diario de operaciones.
  
        fRDiario.qrlfecha1.Caption:= DateToStr(d1);

        fRDiario.qryDiario.SQL.Clear;
        fRDiario.qryDiario.SQL.Add('select * from OrdenServicio where fecha = "'+ s1 +'" ');
        fRDiario.qryDiario.SQL.Add('and status = "'+ '' +'" ');
        fRDiario.qryDiario.SQL.Add('order by hora');
        fRDiario.qryDiario.Open;

        if fRDiario.qryDiario.IsEmpty then
           begin
           showmessage ('No existen Operaciones con esa Fecha');
           Exit;
           end;

        if rbPantallaD.Checked = true then
        begin
            fRDiario.RopeGeneral.Preview;

        exit;
        end
        else if rbPantallaD.Checked = false then
        begin
        fRDiario.RopeGeneral.Print;
        exit;
        end

end;

end.
