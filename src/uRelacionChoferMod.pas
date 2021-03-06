unit uRelacionChoferMod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, Grids, DBGrids, StdCtrls,
  ExtCtrls, Mask, DBCtrls, Buttons;

type
  TfRelaChofModi = class(TForm)
    Panel1: TPanel;
    ltitulo11: TLabel;
    dbGRelaCho: TDBGrid;
    qryRelaCh: TMyQuery;
    dsRelaCh: TDataSource;
    ldieta: TLabel;
    lseguro: TLabel;
    lavanse: TLabel;
    bModificar: TButton;
    dbeDieta: TDBEdit;
    dbeSeguro: TDBEdit;
    dbeAvanse: TDBEdit;
    dbeNombre: TDBEdit;
    qryModRela: TMyQuery;
    dbeId: TDBEdit;
    lnombre: TLabel;
    bbSaliR: TBitBtn;
    qryCheck: TMyQuery;
    bReCalc: TButton;
    qryRelaChcodigo_ch: TIntegerField;
    qryRelaChnombre_a: TStringField;
    qryRelaChvalorT: TFloatField;
    qryRelaChValorFinal: TFloatField;
    qryRelaChfechaD: TDateField;
    qryRelaChfechaH: TDateField;
    qryRelaChid: TIntegerField;
    qryRelaChtipo: TStringField;
    qryRelaChDieta: TFloatField;
    qryRelaChSeguro: TFloatField;
    qryRelaChHExtra: TFloatField;
    qryRelaChAvanse: TFloatField;
    qryRelaChfechaR: TDateField;
    qryCheckcodigo_ch: TIntegerField;
    qryChecknombre_a: TStringField;
    qryCheckvalorT: TFloatField;
    qryCheckValorFinal: TFloatField;
    qryCheckfechaD: TDateField;
    qryCheckfechaH: TDateField;
    qryCheckid: TIntegerField;
    qryChecktipo: TStringField;
    qryCheckDieta: TFloatField;
    qryCheckSeguro: TFloatField;
    qryCheckHExtra: TFloatField;
    qryCheckAvanse: TFloatField;
    qryCheckfechaR: TDateField;
    Label1: TLabel;
    dbeHextra: TDBEdit;
    Label2: TLabel;
    qryModOrden: TMyQuery;
    qryCheckOrden: TMyQuery;
    qryChoferC: TMyQuery;
    qryChoferCcod_chofer: TIntegerField;
    qryChoferCnombre_a: TStringField;
    qryChoferCcedula: TStringField;
    qryChoferClicencia: TStringField;
    qryChoferCcomision: TIntegerField;
    qryChoferCcategoria: TStringField;
    qryChoferCtel1: TStringField;
    qryChoferCuser_ch: TStringField;
    qryChoferCcel: TStringField;
    qryChoferCdireccion: TStringField;
    qryChoferCficha: TStringField;
    qryChoferCsta: TStringField;
    qryChoferCtel2: TStringField;
    qryCheckOrdenorden_n: TIntegerField;
    qryCheckOrdenfecha: TDateField;
    qryCheckOrdenfecha_r: TDateField;
    qryCheckOrdenhora: TStringField;
    qryCheckOrdencapacidad: TIntegerField;
    qryCheckOrdenservicio: TStringField;
    qryCheckOrdenpax: TIntegerField;
    qryCheckOrdenpax1: TIntegerField;
    qryCheckOrdensolicitado: TStringField;
    qryCheckOrdenorden_c: TStringField;
    qryCheckOrdenbonos: TStringField;
    qryCheckOrdenlinea_a: TStringField;
    qryCheckOrdenvuelo: TStringField;
    qryCheckOrdenhora_v: TStringField;
    qryCheckOrdenlugar: TStringField;
    qryCheckOrdennombre: TStringField;
    qryCheckOrdenficha1: TStringField;
    qryCheckOrdenficha_o: TStringField;
    qryCheckOrdentipo_servicio: TStringField;
    qryCheckOrdenvalor_rd: TFloatField;
    qryCheckOrdenvalor_us: TFloatField;
    qryCheckOrdennombre_a: TStringField;
    qryCheckOrdencomision: TFloatField;
    qryCheckOrdenchofer1: TStringField;
    qryCheckOrdencom1: TFloatField;
    qryCheckOrdenuser_o: TStringField;
    qryCheckOrdenstatus: TStringField;
    qryCheckOrdencodigo_c: TIntegerField;
    qryCheckOrdenmarca: TStringField;
    qryCheckOrdencodigo_t: TIntegerField;
    qryCheckOrdencodigo_ch: TIntegerField;
    qryCheckOrdencodigo_ch1: TIntegerField;
    qryCheckOrdencapa1: TIntegerField;
    qryCheckOrdenmarca1: TStringField;
    qryCheckOrdenpata: TStringField;
    qryCheckOrdenvalor_t: TFloatField;
    qryCheckOrdenvalor_c: TFloatField;
    qryCheckOrdenvalor_real: TFloatField;
    qryCheckOrdenobser: TStringField;
    qrySave: TMyQuery;
    qrySavesumvalor_T: TFloatField;
    qryModR: TMyQuery;
    qryCheck1: TMyQuery;
    qryCheck1codigo_ch: TIntegerField;
    qryCheck1nombre_a: TStringField;
    qryCheck1valorT: TFloatField;
    qryCheck1ValorFinal: TFloatField;
    qryCheck1fechaD: TDateField;
    qryCheck1fechaH: TDateField;
    qryCheck1id: TIntegerField;
    qryCheck1tipo: TStringField;
    qryCheck1Dieta: TFloatField;
    qryCheck1Seguro: TFloatField;
    qryCheck1HExtra: TFloatField;
    qryCheck1Avanse: TFloatField;
    qryCheck1fechaR: TDateField;
    qryModRela1: TMyQuery;
    procedure FormShow(Sender: TObject);
    procedure bModificarClick(Sender: TObject);
    procedure bbSaliRClick(Sender: TObject);
    procedure bReCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelaChofModi: TfRelaChofModi;

implementation

uses uRelacionChofer;

{$R *.dfm}

procedure TfRelaChofModi.FormShow(Sender: TObject);
begin
dbeNombre.Clear;
dbeDieta.Clear;
dbeHextra.Clear;
dbeSeguro.Clear;
dbeAvanse.Clear;
end;

procedure TfRelaChofModi.bModificarClick(Sender: TObject);
var
IDn: string;
total: real;
dietas: real;
hextra: real;
seguros: real;
avances: real;
suma1: real;
suma2: real;
tfinal: real;
ttfinal: real;

begin

IDn:= qryRelaChid.AsString;

   qryModRela.ParamByName('vdieta').AsString:= dbeDieta.Text;
   qryModRela.ParamByName('vextra').AsString:= dbeHextra.Text;
   qryModRela.ParamByName('vseguro').AsString:= dbeSeguro.Text;
   qryModRela.ParamByName('vavanse').AsString:= dbeAvanse.Text ;
   qryModRela.ParamByName('v1id').AsString:= IDn ;
   qryModRela.Execute;


      qryCheck.SQL.Clear;
      qryCheck.SQL.Add('select * from relacionchofer');
      qryCheck.SQL.Add('where id = "'+ IDn +'"');
      qryCheck.Execute;


      total:= qryCheckvalorT.AsFloat;
      dietas:= qryCheckDieta.AsFloat;
      hextra:= qryCheckHextra.AsFloat;
      seguros:= qryCheckSeguro.AsFloat;
      avances:= qryCheckAvanse.AsFloat;
      suma1:= total + dietas;  // aqui le suma la dieta al total
      suma2:= suma1 + hextra;   // aqui se le suma el incentivo
      tfinal:= suma2 - seguros;   // aqui le resta el seguro al total
      ttfinal:= tfinal - avances;  //aqui le resta el avance


   qryModRela.ParamByName('vfinal').AsString:= FloatToStr(ttfinal);
   qryModRela.ParamByName('v1id').AsString:= IDn ;
   qryModRela.Execute;

   qryRelaCh.Close;
   qryRelaCh.Open;


end;

procedure TfRelaChofModi.bbSaliRClick(Sender: TObject);
begin
qryRelaCh.Close;
fRelaChofModi.Close;
end;

procedure TfRelaChofModi.bReCalcClick(Sender: TObject);
var
codch: string;
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
pata1: string;
orden1: string;
valorT1: real;
Total1: real;
IDn2: string;
total2: real;
dieta2: real;
hextra2: real;
seguro2: real;
avance2: real;
suma1: real;
suma2: real;
tfinal2: real;
ttfinal2: real;
label Sigue;

begin
  d1:= fRelacionChofer.dpDesde.Date;
  d2:= fRelacionChofer.dpHasta.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

//////////aqui se re-calcula el total del valor de los servicios de cada chofer..

qryChoferC.close;
repeat
qryChoferC.Open;
codch:= qryChoferCcod_chofer.AsString;

qryCheckOrden.SQL.Clear;
qryCheckOrden.SQL.Add('select * from ordenservicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
qryCheckOrden.SQL.Add('and codigo_ch = "'+ codch +'" or codigo_ch1 = "'+ codch +'"');
qryCheckOrden.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
qryCheckOrden.SQL.Add('and status = "'+ '' +'" ');
qryCheckOrden.SQL.Add('order by orden_n');
qryCheckOrden.Open;

if qryCheckOrden.IsEmpty then
  begin
  goto Sigue;
  end;

        qryCheckOrden.Close;
        repeat
        qryCheckOrden.Open;
        pata1:= qryCheckOrdenpata.AsString;
        orden1:= qryCheckOrdenorden_n.AsString;

                 if pata1 = 'P' then
                  begin
      //para cuando es por valor fijo se usa el campo de VALOR_real
      //cuando es por comision se usa el campo de VALOR_RD

                  valorT1:= qryCheckOrdenvalor_rd.AsFloat / 2;
                  qryModOrden.SQL.Clear;
                  qryModOrden.SQL.Add('Update OrdenServicio SET valor_t = "'+ FloatToStr(valorT1) +'"');
                  qryModOrden.SQL.Add('where  orden_n = "'+ orden1 +'"');
                  qryModOrden.Execute;
                  end
                 else
                  begin
                  valorT1:= qryCheckOrdenvalor_rd.AsFloat;
                  qryModOrden.SQL.Clear;
                  qryModOrden.SQL.Add('Update OrdenServicio SET valor_t = "'+ FloatToStr(valorT1) +'"');
                  qryModOrden.SQL.Add('where  orden_n = "'+ orden1 +'"');
                  qryModOrden.Execute;
                  end;

         qryCheckOrden.Next;
         until qryCheckOrden.EoF;

         qrySave.SQL.Clear;
         qrySave.SQL.Add('select sum(valor_T) from OrdenServicio');
         qrySave.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
         qrySave.SQL.Add('and codigo_ch = "'+ codch +'" or codigo_ch1 = "'+ codch +'"');
         qrySave.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
         qrySave.SQL.Add('and status = "'+ '' +'" ');
         qrySave.SQL.Add('order by orden_n');
         qrySave.Execute;
         Total1:= qrySavesumvalor_t.AsFloat;

         qryModR.SQL.Clear;
         qryModR.SQL.Add('Update relacionchofer SET valorT = "'+ FloatToStr(Total1) +'"');
         qryModR.SQL.Add('where codigo_ch = "'+ codch +'"');
         qryModR.SQL.Add('and fechaD = "'+ s1 +'" and fechaH = "'+ s2 +'"');
         qryModR.Execute;

Sigue:
qryChoferC.Next;
until qryChoferC.Eof;

//////////aqui se re-calcula el total final de cada chofer..
//////////calculos : valoservicio + dieta + incentivo - seguro - avanse = valorfinal

qryRelaCh.SQL.Clear;
qryRelaCh.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'" and fechaH = "'+ s2 +'"');
qryRelaCh.SQL.Add('order by id');
qryRelaCh.Open;

qryRelaCh.close;
repeat
qryRelaCh.Open;
IDn2:= qryRelaChid.AsString;

      qryCheck1.SQL.Clear;
      qryCheck1.SQL.Add('select * from relacionchofer');
      qryCheck1.SQL.Add('where id = "'+ IDn2 +'"');
      qryCheck1.Execute;

      total2:= qryCheck1valorT.AsFloat;
      dieta2:= qryCheck1Dieta.AsFloat;
      hextra2:= qryCheck1Hextra.AsFloat;
      seguro2:= qryCheck1Seguro.AsFloat;
      avance2:= qryCheck1Avanse.AsFloat;
      suma1:= total2 + dieta2;
      suma2:= suma1 + hextra2;
      tfinal2:= suma2 - seguro2;
      ttfinal2:= tfinal2 - avance2;

      qryModRela1.ParamByName('vfinal').AsString:= FloatToStr(ttfinal2);
      qryModRela1.ParamByName('v1id').AsString:= IDn2 ;
      qryModRela1.Execute;

qryRelaCh.Next;
until qryRelaCh.Eof;

qryRelaCh.Close;
qryRelaCh.Open;
end;

end.
