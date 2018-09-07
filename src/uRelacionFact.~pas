unit uRelacionFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, ExtCtrls, MemDS, DBAccess, MyAccess;

type
  TfRelacionFact = class(TForm)
    pRelacionF: TPanel;
    ltituloF: TLabel;
    ldesde: TLabel;
    lhasta: TLabel;
    dpDesdeF: TDateTimePicker;
    dpHastaF: TDateTimePicker;
    GbSelectF: TGroupBox;
    rbPantallaF: TRadioButton;
    rbImpresoraF: TRadioButton;
    bbOkFact: TBitBtn;
    bbCancelarFact: TBitBtn;
    dbGClientef: TDBGrid;
    dbeClienteF: TDBEdit;
    dsClienteFact: TDataSource;
    cbCliente: TCheckBox;
    qryClienteFact: TMyQuery;
    procedure bbCancelarFactClick(Sender: TObject);
    procedure cbClienteClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkFactClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure NuevoF;
  end;

var
  fRelacionFact: TfRelacionFact;

implementation

uses uMenuFacturacion, uRelaFact;

{$R *.dfm}

procedure TfRelacionFact.NuevoF;
begin
  dpDesdeF.Date:= date;
  dpHastaF.Date:= date;
  qryClienteFact.Close;
  qryClienteFact.Open;
  cbCliente.Checked:=false;
  rbPantallaF.Checked:=true;
end;

procedure TfRelacionFact.bbCancelarFactClick(Sender: TObject);
begin
      NuevoF;
      qryClienteFact.Close;  
      fRelacionFact.Close;
end;

procedure TfRelacionFact.cbClienteClick(Sender: TObject);
begin
     if cbCliente.Checked = true then
       begin
       dbGClientef.Enabled:=true;
       dbeClienteF.Enabled:=true;
       end
     else
       begin
       dbGClientef.Enabled:=false;
       dbeClienteF.Enabled:=false;
       end
end;

procedure TfRelacionFact.FormShow(Sender: TObject);
begin
    fMenuFacturacion.Hide;
    dpDesdeF.Date:= date;
    dpHastaF.Date:= date;
    qryClienteFact.Open;
end;

procedure TfRelacionFact.bbOkFactClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin

  d1:= dpDesdeF.Date;
  d2:= dpHastaF.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

//esto para la relacion de Facturas.

     if cbCliente.Checked = false then   //estoces la relacion es general.
        begin
        fRelaFact.qrlhasta.Caption:= DateToStr(d2);
        fRelaFact.qrldesde.Caption:= DateToStr(d1);
        fRelaFact.qryRelaFact.SQL.Clear;
        fRelaFact.qryRelaFact.SQL.Add('select * from Fact where fechaR between "'+ s1 +'" and "'+ s2 +'"');
        fRelaFact.qryRelaFact.SQL.Add('order by fact_n');
        fRelaFact.qryRelaFact.Open;

        if fRelaFact.qryRelaFact.IsEmpty then
           begin
           showmessage ('No existen Facturas con esa Fecha');
           Exit;
           end;

        if rbPantallaF.Checked = true then
           begin
           fRelaFact.RrelaFact.Preview;
           Exit;
           end
           else if rbPantallaF.Checked = false then
           begin
           fRelaFact.RrelaFact.Print;
           Exit;
           end
       end
     else if cbCliente.Checked = true then   //entonces la relacion es por cia.
        begin
        fRelaFact.qrlhasta.Caption:= DateToStr(d2);
        fRelaFact.qrldesde.Caption:= DateToStr(d1);
        fRelaFact.qryRelaFact.SQL.Clear;
        fRelaFact.qryRelaFact.SQL.Add('select * from Fact where codigo_c = "'+ dbGClientef.SelectedField.AsString +'"');
        fRelaFact.qryRelaFact.SQL.Add('and fechaR between "'+ s1 +'" and "'+ s2 +'"');
        fRelaFact.qryRelaFact.SQL.Add('order by fact_n');
        fRelaFact.qryRelaFact.Open;

        if fRelaFact.qryRelaFact.IsEmpty then
           begin
           showmessage ('No existen Facturas de ese Cliente con esa Fecha');
           Exit;
           end;

        if rbPantallaF.Checked = true then
           begin
           fRelaFact.RrelaFact.Preview;
           Exit;
           end
           else if rbPantallaF.Checked = false then
           begin
           fRelaFact.RrelaFact.Print;
           Exit;
           end
        end

end;

end.
