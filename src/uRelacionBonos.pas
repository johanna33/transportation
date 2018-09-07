unit uRelacionBonos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls, DB, DBTables, MemDS, DBAccess, MyAccess;

type
  TfRelacionBonos = class(TForm)
    pRelacionB: TPanel;
    ltituloB: TLabel;
    ldesde: TLabel;
    lhasta: TLabel;
    dpDesdeB: TDateTimePicker;
    dpHastaB: TDateTimePicker;
    GbSelectB: TGroupBox;
    rbPantallaB: TRadioButton;
    rbImpresoraB: TRadioButton;
    bbOkB: TBitBtn;
    bbCancelarB: TBitBtn;
    dbGClienteB: TDBGrid;
    dbeClienteB: TDBEdit;
    dsClienteB: TDataSource;
    lclienteB: TLabel;
    qryClienteB: TMyQuery;
    procedure bbCancelarBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NuevoB;
  end;

var
  fRelacionBonos: TfRelacionBonos;

implementation

uses uMenuFacturacion, uRrelacionB, uRopeGeneral;

{$R *.dfm}

procedure TfRelacionBonos.NuevoB;
begin
  dpDesdeB.Date:= date;
  dpHastaB.Date:= date;
  qryClienteB.Close;
  qryClienteB.Open;
  rbPantallaB.Checked:=true;
end;

procedure TfRelacionBonos.bbCancelarBClick(Sender: TObject);
begin
      NuevoB;
      qryClienteB.Close;
      fRelacionBonos.Close;
end;

procedure TfRelacionBonos.FormShow(Sender: TObject);
begin
    fMenuFacturacion.Hide;
    dpDesdeB.Date:= date;
    dpHastaB.Date:= date;
    qryClienteB.Open;
end;

procedure TfRelacionBonos.bbOkBClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin

  d1:= dpDesdeB.Date;
  d2:= dpHastaB.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);



  //esto para la relacion de bonos pendientes.

     if ltituloB.Caption = 'RELACION DE BONOS PENDIENTES' then
        begin
        fRrelacionB.qrlhasta.Caption:= DateToStr(d2);
        fRrelacionB.qrldesde.Caption:= DateToStr(d1);
        fRrelacionB.qrlTitulo8.Caption:='RELACION DE BONOS PENDIENTES';
        fRrelacionB.qryRelacionB.SQL.Clear;
        fRrelacionB.qryRelacionB.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRrelacionB.qryRelacionB.SQL.Add('and codigo_c = "'+ dbGClienteB.SelectedField.AsString +'" ');
        fRrelacionB.qryRelacionB.SQL.Add('and bonos = "'+ 'YES' +'" ');
        fRrelacionB.qryRelacionB.SQL.Add('and status = "'+ '' +'" ');
        fRrelacionB.qryRelacionB.SQL.Add('order by fecha');
        fRrelacionB.qryRelacionB.Open;

        if fRrelacionB.qryRelacionB.IsEmpty then
           begin
           showmessage ('No existen Bonos Pendientes con esa Fecha');
           Exit;
           end;

        if rbPantallaB.Checked = true then
        begin
        fRrelacionB.RrelacionB.Preview;
        exit;
        end
        else if rbPantallaB.Checked = false then
        begin
        fRrelacionB.RrelacionB.Print;
        exit;
        end

        end;

//esto para la relacion de bonos identificados.

     if ltituloB.Caption = 'RELACION DE BONOS IDENTIFICADOS' then
        begin
        fRrelacionB.qrlhasta.Caption:= DateToStr(d2);
        fRrelacionB.qrldesde.Caption:= DateToStr(d1);
        fRrelacionB.qrlTitulo8.Caption:='RELACION DE BONOS IDENTIFICADOS';
        fRrelacionB.qryRelacionB.SQL.Clear;
        fRrelacionB.qryRelacionB.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRrelacionB.qryRelacionB.SQL.Add('and codigo_c = "'+ dbGClienteB.SelectedField.AsString +'" ');
        fRrelacionB.qryRelacionB.SQL.Add('and bonos = "'+ 'NO' +'" ');
        fRrelacionB.qryRelacionB.SQL.Add('and status = "'+ '' +'" ');
        fRrelacionB.qryRelacionB.SQL.Add('order by fecha');
        fRrelacionB.qryRelacionB.Open;

        if fRrelacionB.qryRelacionB.IsEmpty then
           begin
           showmessage ('No existen Bonos Identificados con esa Fecha');
           Exit;
           end;

        if rbPantallaB.Checked = true then
        begin
        fRrelacionB.RrelacionB.Preview;
        exit;
        end
        else if rbPantallaB.Checked = false then
        begin
        fRrelacionB.RrelacionB.Print;
        exit;
        end

        end;
end;

end.
