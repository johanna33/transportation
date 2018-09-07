unit uProduccionE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls, DB, DBTables, MemDS, DBAccess, MyAccess;

type
  TfProduccionE = class(TForm)
    pprodE: TPanel;
    ltituloP: TLabel;
    ldesde: TLabel;
    lhasta: TLabel;
    dpDesdeP: TDateTimePicker;
    dpHastaP: TDateTimePicker;
    GbSelectP: TGroupBox;
    rbPantallaP: TRadioButton;
    rbImpresoraP: TRadioButton;
    bbOkP: TBitBtn;
    bbCancelarP: TBitBtn;
    dbGFichaP: TDBGrid;
    dbeFichaP: TDBEdit;
    dsProdE: TDataSource;
    qryFichaP: TMyQuery;
    cbFicha: TCheckBox;
    procedure bbCancelarPClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkPClick(Sender: TObject);
    procedure cbFichaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure NuevoP;
  end;

var
  fProduccionE: TfProduccionE;

implementation

uses uMenuReportes, uProdEquipo, uRGastosM, uRGastosComb;

{$R *.dfm}

procedure TfProduccionE.NuevoP;
begin
  dpDesdeP.Date:= date;
  dpHastaP.Date:= date;
  qryFichaP.Close;
  qryFichaP.Open;
  rbPantallaP.Checked:=true;
end;

procedure TfProduccionE.cbFichaClick(Sender: TObject);
begin
     if cbFicha.Checked = true then
       begin
       dbGFichaP.Enabled:=true;
       dbeFichap.Enabled:=true;
       end
     else
       begin
       dbGFichaP.Enabled:=false;
       dbeFichaP.Enabled:=false;
       end
end;

procedure TfProduccionE.bbCancelarPClick(Sender: TObject);
begin
      NuevoP;
      qryFichaP.Close; 
      fProduccionE.Close;
end;

procedure TfProduccionE.FormShow(Sender: TObject);
begin
    fMenuReportes.Hide;
    dpDesdeP.Date:= date;
    dpHastaP.Date:= date;
    qryFichaP.Open;
end;

procedure TfProduccionE.bbOkPClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin

  d1:= dpDesdeP.Date;
  d2:= dpHastaP.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

//esto para el reporte de produccion por equipo.

     if ltituloP.Caption = 'REPORTE DE PRODUCCION POR EQUIPO' then
     begin
     if cbFicha.Checked = true then   //reporte individual.
        begin
        fprodEquipo.qrlhasta.Caption:= DateToStr(d2);
        fprodEquipo.qrldesde.Caption:= DateToStr(d1);
        fprodEquipo.qrlficha.Caption:= dbGFichaP.SelectedField.AsString;
        fprodEquipo.qrlmarca.Caption:= dbeFichaP.Text;

        fprodEquipo.qryProdu.SQL.Clear;
        fprodEquipo.qryProdu.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fprodEquipo.qryProdu.SQL.Add('and ficha_o = "'+ dbGFichaP.SelectedField.AsString +'" or ficha1 = "'+ dbGFichaP.SelectedField.AsString +'"');
        fprodEquipo.qryProdu.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fprodEquipo.qryProdu.SQL.Add('and status = "'+ '' +'"');
        fprodEquipo.qryProdu.Open;

        if fprodEquipo.qryProdu.IsEmpty then
           begin
           showmessage ('No existen Operaciones de esa Ficha con esa Fecha');
           Exit;
           end;

        if rbPantallaP.Checked = true then
           begin
           fprodEquipo.RprodEquipo.Preview;
           Exit;
           end
        else if rbPantallaP.Checked = false then
           begin
           fprodEquipo.RprodEquipo.Print;
           Exit;
           end

        end
        else if cbficha.Checked = false then  //reporte general.
           begin
           showmessage('Solo puede generar el reporte Individual por Ficha');
           Exit;
           end;
     end;

//esto para la relacion de gastos de mantenimiento.

     if ltituloP.Caption = 'RELACION DE GASTOS DE MANTENIMIENTO' then
     begin
     if cbficha.Checked = false then
        begin
        fRGastosM.qrlhasta.Caption:= DateToStr(d2);
        fRGastosM.qrldesde.Caption:= DateToStr(d1);
        fRGastosM.qryGastosM.SQL.Clear;
        fRGastosM.qryGastosM.SQL.Add('select * from Mantenimiento where fechaM between "'+ s1 +'" and "'+ s2 +'"');
        fRGastosM.qryGastosM.SQL.Add('order by fichaM, fecham');
        fRGastosM.qryGastosM.Open;

        if fRGastosM.qryGastosM.IsEmpty then
           begin
           showmessage ('No existen Registros con esa Fecha');
           Exit;
           end;

        if rbPantallaP.Checked = true then
           begin
           fRGastosM.RgastosM.Preview;
           Exit;
           end
        else if rbPantallaP.Checked = false then
           begin
           fRGastosM.RgastosM.Print;
           Exit;
           end
           
        end
     else if cbFicha.Checked = true then
        begin
        fRGastosM.qrlhasta.Caption:= DateToStr(d2);
        fRGastosM.qrldesde.Caption:= DateToStr(d1);
        fRGastosM.qryGastosM.SQL.Clear;
        fRGastosM.qryGastosM.SQL.Add('select * from Mantenimiento where fichaM = "'+ dbGFichaP.SelectedField.AsString +'"');
        fRGastosM.qryGastosM.SQL.Add('and fechaM between "'+ s1 +'" and "'+ s2 +'"');
        fRGastosM.qryGastosM.SQL.Add('order by fecham');
        fRGastosM.qryGastosM.Open;

       if fRGastosM.qryGastosM.IsEmpty then
           begin
           showmessage ('No existen Registros de esa Ficha con esa Fecha');
           Exit;
           end;

        if rbPantallaP.Checked = true then
           begin
           fRGastosM.RgastosM.Preview;
           Exit;
           end
        else if rbPantallaP.Checked = false then
           begin
           fRGastosM.RgastosM.Print;
           Exit;
           end
        end
     end;
//esto para la relacion de gastos de combustible.

       if ltituloP.Caption = 'RELACION DE GASTOS DE COMBUSTIBLE' then
     begin
     if cbficha.Checked = false then
        begin
        fRGastoComb.qrlhasta.Caption:= DateToStr(d2);
        fRGastoComb.qrldesde.Caption:= DateToStr(d1);
        fRGastoComb.qryGastosComb.SQL.Clear;
        fRGastoComb.qryGastosComb.SQL.Add('select * from Combustible where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRGastoComb.qryGastosComb.SQL.Add('order by fichaC, fecha');
        fRGastoComb.qryGastosComb.Open;

        if fRGastoComb.qryGastosComb.IsEmpty then
           begin
           showmessage ('No existen Registros con esa Fecha');
           Exit;
           end;

        if rbPantallaP.Checked = true then
           begin
           fRGastoComb.RgastosComb.Preview;
           Exit;
           end
        else if rbPantallaP.Checked = false then
           begin
           fRGastoComb.RgastosComb.Print;
           Exit;
           end
           
        end
     else if cbFicha.Checked = true then
        begin
        fRGastoComb.qrlhasta.Caption:= DateToStr(d2);
        fRGastoComb.qrldesde.Caption:= DateToStr(d1);
        fRGastoComb.qryGastosComb.SQL.Clear;
        fRGastoComb.qryGastosComb.SQL.Add('select * from Combustible where fichaC = "'+ dbGFichaP.SelectedField.AsString +'"');
        fRGastoComb.qryGastosComb.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRGastoComb.qryGastosComb.SQL.Add('order by fecha');
        fRGastoComb.qryGastosComb.Open;

       if fRGastoComb.qryGastosComb.IsEmpty then
           begin
           showmessage ('No existen Registros de esa Ficha con esa Fecha');
           Exit;
           end;

        if rbPantallaP.Checked = true then
           begin
           fRGastoComb.RgastosComb.Preview;
           Exit;
           end
        else if rbPantallaP.Checked = false then
           begin
           fRGastoComb.RgastosComb.Print;
           Exit;
           end
        end
     end;

end;


end.
