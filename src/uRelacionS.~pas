unit uRelacionS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ComCtrls, StrUtils,
  ExtCtrls, DB, DBTables, MemDS, DBAccess, MyAccess;

type
  TfRelacionS = class(TForm)
    pRelacionS: TPanel;
    ltituloS: TLabel;
    ldesdeS: TLabel;
    lhastaS: TLabel;
    dpDesdeS: TDateTimePicker;
    dpHastaS: TDateTimePicker;
    GbSelectS: TGroupBox;
    rbPantallaS: TRadioButton;
    rbImpresoraS: TRadioButton;
    bbOkS: TBitBtn;
    bbCancelarS: TBitBtn;
    dbGClienteS: TDBGrid;
    dbeClienteS: TDBEdit;
    dsClienteS: TDataSource;
    qryClienteS: TMyQuery;
    lsupli: TLabel;
    procedure bbCancelarSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure NuevoS;

  end;

var
  fRelacionS: TfRelacionS;

implementation

uses uMenuFacturacion, uRelacionSupli, uRopeGeneral;

{$R *.dfm}

procedure TfRelacionS.NuevoS;
begin
  dpDesdeS.Date:= date;
  dpHastaS.Date:= date;
  qryClienteS.Close;
  qryClienteS.Open;
  rbPantallaS.Checked:=true;
end;

procedure TfRelacionS.bbCancelarSClick(Sender: TObject);
begin
      NuevoS;
      qryClienteS.Close;
      fRelacionS.Close;
end;

procedure TfRelacionS.FormShow(Sender: TObject);
begin
    fMenuFacturacion.Hide;
    dpDesdeS.Date:= date;
    dpHastaS.Date:= date;
    qryClienteS.Open;
end;

procedure TfRelacionS.bbOkSClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
begin
  d1:= dpDesdeS.Date;
  d2:= dpHastaS.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

        fRelacionSupli.qryRelacionS.Close;
 
  //relacion individual
      
        fRelacionSupli.qrldesde.Caption:= DateToStr(d1);
        fRelacionSupli.qrlhasta.Caption:= DateToStr(d2);
        fRelacionSupli.qrlchofer.Caption:= dbeClienteS.Text;

        fRelacionSupli.qryRelacionS.SQL.Clear;
        fRelacionSupli.qryRelacionS.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRelacionSupli.qryRelacionS.SQL.Add('and codigo_ch = "'+ dbGClienteS.SelectedField.AsString +'" or codigo_ch1 = "'+ dbGClienteS.SelectedField.AsString +'"');
        fRelacionSupli.qryRelacionS.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRelacionSupli.qryRelacionS.SQL.Add('and status = "'+ '' +'" ');
        fRelacionSupli.qryRelacionS.SQL.Add('order by fecha');
        fRelacionSupli.qryRelacionS.Open;

        if fRelacionSupli.qryRelacionS.IsEmpty then
           begin
           showmessage ('No existen Operaciones en esa fecha con ese Suplidor');
           Exit;
           end;

        if rbPantallaS.Checked = true then
        begin
        fRelacionSupli.RrelacionS.Preview;
        Exit;
        end
        else if rbPantallaS.Checked = false then
        begin
        fRelacionSupli.RrelacionS.Print;
        Exit;
        end
   
end;

end.
