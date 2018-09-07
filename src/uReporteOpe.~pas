unit uReporteOpe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, Mask, DBCtrls, DB,
  DBTables, Grids, DBGrids, MemDS, DBAccess, MyAccess;

type
  TfReporteOpe = class(TForm)
    pReporteOpe: TPanel;
    ltituloR: TLabel;
    ldesde: TLabel;
    lhasta: TLabel;
    dpDesdeR: TDateTimePicker;
    dpHastaR: TDateTimePicker;
    GbSelectR: TGroupBox;
    rbPantallaR: TRadioButton;
    rbImpresoraR: TRadioButton;
    bbOkR: TBitBtn;
    bbCancelarR: TBitBtn;
    dbGClienteR: TDBGrid;
    dsClienteR: TDataSource;
    dbeCliente: TDBEdit;
    cBoxCliente: TCheckBox;
    qryClienteR: TMyQuery;
    procedure bbCancelarRClick(Sender: TObject);
    procedure cBoxClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NuevoR;
  end;

var
  fReporteOpe: TfReporteOpe;

implementation

uses uMenuReportes, uRopeGeneral;

{$R *.dfm}

procedure TfReporteOpe.NuevoR;
begin
  dpDesdeR.Date:= date;
  dpHastaR.Date:= date;
  qryClienteR.Close;
  qryClienteR.Open;
  cBoxCliente.Checked:=false;
  rbPantallaR.Checked:=true;
end;

procedure TfReporteOpe.bbCancelarRClick(Sender: TObject);
begin
      NuevoR;
      qryClienteR.Close;
      fReporteOpe.Close;
end;

procedure TfReporteOpe.cBoxClienteClick(Sender: TObject);
begin
    if cBoxCliente.Checked = true then
       begin
       dbGClienteR.Enabled:=true;
       dbeCliente.Enabled:=true;
       end
     else
       begin
       dbGClienteR.Enabled:=false;
       dbeCliente.Enabled:=false;
       end
end;

procedure TfReporteOpe.FormShow(Sender: TObject);
begin
    fMenuReportes.Hide;
    dpDesdeR.Date:= date;
    dpHastaR.Date:= date;
    qryClienteR.Open;
end;

procedure TfReporteOpe.bbOkRClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin

  d1:= dpDesdeR.Date;
  d2:= dpHastaR.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

        fRopeGeneral.qrlfecha1.Caption:= DateToStr(d1);
        fRopeGeneral.qrlfecha2.Caption:= DateToStr(d2);

//esto para el reporte general de operaciones.

     if ltituloR.Caption = 'REPORTE GENERAL DE OPERACIONES' then
     begin
     if cBoxCliente.Checked = false then
        begin
        fRopeGeneral.qrlTitulo5.Caption:='REPORTE GENERAL DE OPERACIONES';
        fRopeGeneral.qryOpeG.SQL.Clear;
        fRopeGeneral.qryOpeG.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRopeGeneral.qryOpeG.SQL.Add('order by nombre, fecha');
        fRopeGeneral.qryOpeG.Open;

        if fRopeGeneral.qryOpeG.IsEmpty then
           begin
           showmessage ('No existen Operaciones con esa Fecha');
           Exit;
           end;

        if rbPantallaR.Checked = true then
        begin
        fRopeGeneral.RopeGeneral.Preview;
        exit;
        end
        else if rbPantallaR.Checked = false then
        begin
        fRopeGeneral.RopeGeneral.Print;
        exit;
        end
        end
     else if cBoxCliente.Checked = true then
        begin
        fRopeGeneral.qrlTitulo5.Caption:='REPORTE GENERAL DE OPERACIONES POR CÍA';
        fRopeGeneral.qryOpeG.SQL.Clear;
        fRopeGeneral.qryOpeG.SQL.Add('select * from OrdenServicio where codigo_c = "'+ dbGClienteR.SelectedField.AsString +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRopeGeneral.qryOpeG.SQL.Add('order by fecha');
        fRopeGeneral.qryOpeG.Open;

        if fRopeGeneral.qryOpeG.IsEmpty then
           begin
           showmessage ('No existen Operaciones de ese Cliente con esa Fecha');
           Exit;
           end;

        if rbPantallaR.Checked = true then
        begin
        fRopeGeneral.RopeGeneral.Preview;
        exit;
        end
        else if rbPantallaR.Checked = false then
        begin
        fRopeGeneral.RopeGeneral.Print;
        exit;
        end
        end
     end;

//esto para el reporte general de traslados.

     if ltituloR.Caption = 'REPORTE GENERAL DE TRASLADOS' then
     begin
     if cBoxCliente.Checked = false then
        begin
        fRopeGeneral.qrlTitulo5.Caption:='REPORTE GENERAL DE TRASLADOS';
        fRopeGeneral.qryOpeG.SQL.Clear;
        fRopeGeneral.qryOpeG.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'"');
        fRopeGeneral.qryOpeG.SQL.Add('order by nombre, fecha');
        fRopeGeneral.qryOpeG.Open;

        if fRopeGeneral.qryOpeG.IsEmpty then
           begin
           showmessage ('No existen Operaciones con esa Fecha');
           Exit;
           end;

        if rbPantallaR.Checked = true then
        begin
        fRopeGeneral.RopeGeneral.Preview;
        exit;
        end
        else if rbPantallaR.Checked = false then
        begin
        fRopeGeneral.RopeGeneral.Print;
        exit;
        end
        end
     else if cBoxCliente.Checked = true then
        begin
        fRopeGeneral.qrlTitulo5.Caption:='REPORTE GENERAL DE TRASLADOS POR CÍA';
        fRopeGeneral.qryOpeG.SQL.Clear;
        fRopeGeneral.qryOpeG.SQL.Add('select * from OrdenServicio where codigo_c = "'+ dbGClienteR.SelectedField.AsString +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'"');
        fRopeGeneral.qryOpeG.SQL.Add('order by fecha');
        fRopeGeneral.qryOpeG.Open;

        if fRopeGeneral.qryOpeG.IsEmpty then
           begin
           showmessage ('No existen Operaciones de ese Cliente con esa Fecha');
           Exit;
           end;

        if rbPantallaR.Checked = true then
        begin
        fRopeGeneral.RopeGeneral.Preview;
        exit;
        end
        else if rbPantallaR.Checked = false then
        begin
        fRopeGeneral.RopeGeneral.Print;
        exit;
        end
        end
     end;

//esto para el reporte general de excursiones.

     if ltituloR.Caption = 'REPORTE GENERAL DE EXCURSIONES' then
     begin
     if cBoxCliente.Checked = false then
        begin
        fRopeGeneral.qrlTitulo5.Caption:='REPORTE GENERAL DE EXCURSIONES';
        fRopeGeneral.qryOpeG.SQL.Clear;
        fRopeGeneral.qryOpeG.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'"');
        fRopeGeneral.qryOpeG.SQL.Add('order by nombre, fecha');
        fRopeGeneral.qryOpeG.Open;

        if fRopeGeneral.qryOpeG.IsEmpty then
           begin
           showmessage ('No existen Operaciones con esa Fecha');
           Exit;
           end;

        if rbPantallaR.Checked = true then
        begin
        fRopeGeneral.RopeGeneral.Preview;
        exit;
        end
        else if rbPantallaR.Checked = false then
        begin
        fRopeGeneral.RopeGeneral.Print;
        exit;
        end
        end
     else if cBoxCliente.Checked = true then
        begin
        fRopeGeneral.qrlTitulo5.Caption:='REPORTE GENERAL DE EXCURSIONES POR CÍA';
        fRopeGeneral.qryOpeG.SQL.Clear;
        fRopeGeneral.qryOpeG.SQL.Add('select * from OrdenServicio where codigo_c = "'+ dbGClienteR.SelectedField.AsString +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRopeGeneral.qryOpeG.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'"');
        fRopeGeneral.qryOpeG.SQL.Add('order by fecha');
        fRopeGeneral.qryOpeG.Open;

        if fRopeGeneral.qryOpeG.IsEmpty then
           begin
           showmessage ('No existen Operaciones de ese Cliente con esa Fecha');
           Exit;
           end;

        if rbPantallaR.Checked = true then
        begin
        fRopeGeneral.RopeGeneral.Preview;
        exit;
        end
        else if rbPantallaR.Checked = false then
        begin
        fRopeGeneral.RopeGeneral.Print;
        exit;
        end
        end
     end;

end;

end.
