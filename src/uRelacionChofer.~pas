unit uRelacionChofer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ComCtrls,
  ExtCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TfRelacionChofer = class(TForm)
    pRelaChofer: TPanel;
    ltituloS: TLabel;
    ldesdeS: TLabel;
    lhastaS: TLabel;
    lchofer: TLabel;
    dpDesdeC: TDateTimePicker;
    dpHastaC: TDateTimePicker;
    GbSelectC: TGroupBox;
    rbPantallaC: TRadioButton;
    rbImpresoraC: TRadioButton;
    bbOkC: TBitBtn;
    bbCancelarC: TBitBtn;
    dbGChoferR: TDBGrid;
    dbeChoferR: TDBEdit;
    qryChoferR: TMyQuery;
    dsChoferR: TDataSource;
    ePor: TEdit;
    lpor: TLabel;
    qryPor: TMyQuery;
    qryPorModi: TMyQuery;
    qryPorid: TIntegerField;
    qryPorvalor: TFloatField;
    bModi: TButton;
    lraya: TLabel;
    qryModi: TMyQuery;
    dbtStatus: TDBText;
    bListaRelacion: TButton;
    qryRLista: TMyQuery;
    qryModiRL: TMyQuery;
    qryChoferRcod_chofer: TIntegerField;
    qryChoferRnombre_a: TStringField;
    qryChoferRcedula: TStringField;
    qryChoferRlicencia: TStringField;
    qryChoferRcomision: TIntegerField;
    qryChoferRcategoria: TStringField;
    qryChoferRtel1: TStringField;
    qryChoferRuser_ch: TStringField;
    qryChoferRcel: TStringField;
    qryChoferRdireccion: TStringField;
    qryChoferRficha: TStringField;
    qryChoferRsta: TStringField;
    qryChoferRtel2: TStringField;
    qryMod: TMyQuery;
    bListaR: TButton;
    ltitulo2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    dpDesde: TDateTimePicker;
    dpHasta: TDateTimePicker;
    GbTipoR: TGroupBox;
    rbValorA: TRadioButton;
    rbValorC: TRadioButton;
    qryModiorden_n: TIntegerField;
    qryModifecha: TDateField;
    qryModifecha_r: TDateField;
    qryModihora: TStringField;
    qryModicapacidad: TIntegerField;
    qryModiservicio: TStringField;
    qryModipax: TIntegerField;
    qryModipax1: TIntegerField;
    qryModisolicitado: TStringField;
    qryModiorden_c: TStringField;
    qryModibonos: TStringField;
    qryModilinea_a: TStringField;
    qryModivuelo: TStringField;
    qryModihora_v: TStringField;
    qryModilugar: TStringField;
    qryModinombre: TStringField;
    qryModificha1: TStringField;
    qryModificha_o: TStringField;
    qryModitipo_servicio: TStringField;
    qryModivalor_rd: TFloatField;
    qryModivalor_us: TFloatField;
    qryModinombre_a: TStringField;
    qryModicomision: TFloatField;
    qryModichofer1: TStringField;
    qryModicom1: TFloatField;
    qryModiuser_o: TStringField;
    qryModistatus: TStringField;
    qryModicodigo_c: TIntegerField;
    qryModimarca: TStringField;
    qryModicodigo_t: TIntegerField;
    qryModicodigo_ch: TIntegerField;
    qryModicodigo_ch1: TIntegerField;
    qryModicapa1: TIntegerField;
    qryModimarca1: TStringField;
    qryModipata: TStringField;
    qryModivalor_real: TFloatField;
    qryModivalor_t: TFloatField;
    qryModivalor_c: TFloatField;
    qryModiobser: TStringField;
    qryRListaorden_n: TIntegerField;
    qryRListafecha: TDateField;
    qryRListafecha_r: TDateField;
    qryRListahora: TStringField;
    qryRListacapacidad: TIntegerField;
    qryRListaservicio: TStringField;
    qryRListapax: TIntegerField;
    qryRListapax1: TIntegerField;
    qryRListasolicitado: TStringField;
    qryRListaorden_c: TStringField;
    qryRListabonos: TStringField;
    qryRListalinea_a: TStringField;
    qryRListavuelo: TStringField;
    qryRListahora_v: TStringField;
    qryRListalugar: TStringField;
    qryRListanombre: TStringField;
    qryRListaficha1: TStringField;
    qryRListaficha_o: TStringField;
    qryRListatipo_servicio: TStringField;
    qryRListavalor_rd: TFloatField;
    qryRListavalor_us: TFloatField;
    qryRListanombre_a: TStringField;
    qryRListacomision: TFloatField;
    qryRListachofer1: TStringField;
    qryRListacom1: TFloatField;
    qryRListauser_o: TStringField;
    qryRListastatus: TStringField;
    qryRListacodigo_c: TIntegerField;
    qryRListamarca: TStringField;
    qryRListacodigo_t: TIntegerField;
    qryRListacodigo_ch: TIntegerField;
    qryRListacodigo_ch1: TIntegerField;
    qryRListacapa1: TIntegerField;
    qryRListamarca1: TStringField;
    qryRListapata: TStringField;
    qryRListavalor_real: TFloatField;
    qryRListavalor_t: TFloatField;
    qryRListavalor_c: TFloatField;
    qryRListaobser: TStringField;
    qryModsumvalor_T: TFloatField;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    qryDesc: TMyQuery;
    qryDescid: TStringField;
    qryDescdieta: TFloatField;
    qryDescseguro: TFloatField;
    dbeDieta: TDBEdit;
    dbeSeguro: TDBEdit;
    dsDesc: TDataSource;
    qryModiRLcodigo_ch: TIntegerField;
    qryModiRLnombre_a: TStringField;
    qryModiRLvalorT: TFloatField;
    qryModiRLValorFinal: TFloatField;
    qryModiRLfechaD: TDateField;
    qryModiRLfechaH: TDateField;
    qryModiRLid: TIntegerField;
    qryModiRLtipo: TStringField;
    qryModiRLDieta: TFloatField;
    qryModiRLSeguro: TFloatField;
    qryModiRLAvanse: TFloatField;
    qryModiRLfechaR: TDateField;
    Label7: TLabel;
    Shape2: TShape;
    qryDescModi: TMyQuery;
    bmoddesc: TButton;
    bBorrarRelacion: TButton;
    qryBorrarR: TMyQuery;
    procedure bbCancelarCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkCClick(Sender: TObject);
    procedure bModiClick(Sender: TObject);
    procedure bListaRelacionClick(Sender: TObject);
    procedure bListaRClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bmoddescClick(Sender: TObject);
    procedure bBorrarRelacionClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  procedure NuevoC;
  end;

var
  fRelacionChofer: TfRelacionChofer;

implementation

uses uMenuReportes, uRrelaChofer, uPrincipal, uRrelaChofer1, uRrelaChofer2,
  uRelacionChoferMod;

{$R *.dfm}

procedure TfRelacionChofer.NuevoC;
begin
  dpDesdeC.Date:= date;
  dpHastaC.Date:= date;
  qryChoferR.Close;
  qryChoferR.Open;
  rbPantallaC.Checked:=true;
end;

procedure TfRelacionChofer.bbCancelarCClick(Sender: TObject);
begin
      NuevoC;
      //rbValorA.Checked:=true;
      rbValorC.Checked:=true;
      qryChoferR.Close;
      qryPor.Close;
      fRelacionChofer.Close;
end;

procedure TfRelacionChofer.FormShow(Sender: TObject);
begin
    fMenuReportes.Hide;
    dpDesdeC.Date:= date;
    dpHastaC.Date:= date;
    dpDesde.Date:= date;
    dpHasta.Date:= date;
    qryChoferR.Open;
    qryPor.Open;
    ePor.Text:= qryPorvalor.AsString;
    //rbValorA.Checked:=true;
    rbValorC.Checked:=true;
end;

procedure TfRelacionChofer.bbOkCClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;

POR: real;
ordenN: String;
V: real;
M: real;
VR: real;
com: string;

begin
  d1:= dpDesdeC.Date;
  d2:= dpHastaC.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

if rbValorC.Checked = true then
   begin

//////////////////Relacion servicios individual ( calculo por porciento de comision)  //////////////////

        fRelaChofer.qrldesde.Caption:= DateToStr(d1);
        fRelaChofer.qrlhasta.Caption:= DateToStr(d2);
        fRelaChofer.qrlNchofer.Caption:= dbeChoferR.Text;

   //  seleccion para el calculo:

        fRelaChofer.qryRelaChofer.SQL.Clear;
        fRelaChofer.qryRelaChofer.SQL.Add('select * from ordenservicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRelaChofer.qryRelaChofer.SQL.Add('and codigo_ch = "'+ dbGChoferR.SelectedField.AsString +'" or codigo_ch1 = "'+ dbGChoferR.SelectedField.AsString +'"');
        fRelaChofer.qryRelaChofer.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRelaChofer.qryRelaChofer.SQL.Add('and status = "'+ '' +'" ');
        fRelaChofer.qryRelaChofer.SQL.Add('order by orden_n');
        fRelaChofer.qryRelaChofer.Open;

        if fRelaChofer.qryRelaChofer.IsEmpty then
           begin
           showmessage ('No existen Operaciones en esa fecha con ese Chofer');
           Exit;
           end;

     //calculo del valor real:

        com:= '0.' + ePor.Text;
        POR:= StrToFloat(com);

       	fRelaChofer.qryRelaChofer.Close;
        repeat
        fRelaChofer.qryRelaChofer.Open;
        ordenN:= fRelaChofer.qryRelaChoferorden_n.AsString;
        V:= fRelaChofer.qryRelaChofervalor_rd.AsFloat;
        M:=  V * POR;
        VR:= V - M;

        qryModi.SQL.Clear;
        qryModi.SQL.Add('Update OrdenServicio SET valor_c = "'+ FloatToStr(VR) +'"');
        qryModi.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModi.Execute;
        fRelaChofer.qryRelaChofer.Next;
        until fRelaChofer.qryRelaChofer.Eof;

        fRelaChofer.qryRelaChofer.Close;
        fRelaChofer.qryRelaChofer.Open;

//busca datos en relacionchofer para deslegar en reporte

        fRelaChofer.qryReCho1.SQL.Clear;
        fRelaChofer.qryReCho1.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'"');
        fRelaChofer.qryReCho1.SQL.Add('and fechaH = "'+ s2 +'"');
        fRelaChofer.qryReCho1.SQL.Add('and codigo_ch = "'+ dbGChoferR.SelectedField.AsString +'"');
        fRelaChofer.qryReCho1.Open;


        if fRelaChofer.qryReCho1.IsEmpty then
           begin
           showmessage ('1ro debe crear la Relacion General para poder ver la individual');
           Exit;
           end;

    //despliega en el reporte:


        if rbPantallaC.Checked = true then
        begin
        fRelaChofer.RrelaChofer.Preview;
        Exit;
       end
        else if rbPantallaC.Checked = false then
        begin
        fRelaChofer.RrelaChofer.Print;
        Exit;
        end

   end;


if rbValorA.Checked = true then
   begin

/////////////Relacion servicios individual  ( calculo por valor asignado fijo) /////////////

        fRelaChofer1.qrldesde.Caption:= DateToStr(d1);
        fRelaChofer1.qrlhasta.Caption:= DateToStr(d2);
        fRelaChofer1.qrlNchofer.Caption:= dbeChoferR.Text;

     //seleccion para el calculo:

        fRelaChofer1.qryRelaChofer1.SQL.Clear;
        fRelaChofer1.qryRelaChofer1.SQL.Add('select * from ordenservicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRelaChofer1.qryRelaChofer1.SQL.Add('and codigo_ch = "'+ dbGChoferR.SelectedField.AsString +'" or codigo_ch1 = "'+ dbGChoferR.SelectedField.AsString +'"');
        fRelaChofer1.qryRelaChofer1.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
        fRelaChofer1.qryRelaChofer1.SQL.Add('and status = "'+ '' +'" ');
        fRelaChofer1.qryRelaChofer1.SQL.Add('order by orden_n');
        fRelaChofer1.qryRelaChofer1.Open;

        if fRelaChofer1.qryRelaChofer1.IsEmpty then
           begin
           showmessage ('No existen Operaciones en esa fecha con ese Chofer');
           Exit;
           end;

//busca datos en relacionchofer para deslegar en reporte

        fRelaChofer1.qryReCho.SQL.Clear;
        fRelaChofer1.qryReCho.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'"');
        fRelaChofer1.qryReCho.SQL.Add('and fechaH = "'+ s2 +'"');
        fRelaChofer1.qryReCho.SQL.Add('and codigo_ch = "'+ dbGChoferR.SelectedField.AsString +'"');
        fRelaChofer1.qryReCho.Open;

       if fRelaChofer1.qryReCho.IsEmpty then
           begin
           showmessage ('1ro debe crear la Relacion General para poder ver la individual');
           Exit;
           end;

   //despliega en el reporte:


        if rbPantallaC.Checked = true then
        begin
        fRelaChofer1.RrelaChofer1.Preview;
        Exit;
        end
        else if rbPantallaC.Checked = false then
        begin
        fRelaChofer1.RrelaChofer1.Print;
        Exit;
        end

   end;

end;

procedure TfRelacionChofer.bModiClick(Sender: TObject);
var
aa: Single;
Pusuario: string;
begin
   Pusuario:= fPrincipal.dbtUsuarioA.Caption;

   if TryStrToFloat(ePor.Text, aa) = false then
      begin
      ShowMessage('el Porciento Debe ser Número');
      ePor.Clear;
      ePor.SetFocus;
      Exit;
      end;

qryPorModi.ParamByName('vuserp').AsString:= Pusuario ;
qryPorModi.ParamByName('vvalor').AsString:= ePor.Text ;
qryPorModi.ParamByName('v1id').AsString:= '1' ;
qryPorModi.Execute;

qryPor.Close;
qryPor.Open;
end;

procedure TfRelacionChofer.bListaRelacionClick(Sender: TObject);
var
s1: string;
s2: string;
s: string;
d: TDateTime;
d1: TDateTime;
d2: TDateTime;
cod_ch: string;
nombre: string;
pata: string;
orden: string;
comi: real;
valorC: real;
mul: real;
valorT: real;
Suma: real;
Total: real;
POR1: real;
ordenC: String;
V1: real;
M1: real;
VR1: real;
dieta1: real;
seguro1: real;
valorF: real;
sumaF: real;
com1: string;
label Sigue;


begin
  d1:= dpDesde.Date;
  d2:= dpHasta.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);
  d:= Date;
  s:= FormatDateTime('yyyy/mm/dd',d);

if rbValorC.Checked = true then
begin
qryModiRL.SQL.Clear;
qryModiRL.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'" and fechaH = "'+ s2 +'"');
qryModiRL.SQL.Add('and tipo = "'+ 'C' +'"');
qryModiRL.Open;
end;

if rbValorA.Checked = true then
begin
qryModiRL.SQL.Clear;
qryModiRL.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'" and fechaH = "'+ s2 +'"');
qryModiRL.SQL.Add('and tipo = "'+ 'A' +'"');
qryModiRL.Open;
end;

if qryModiRL.IsEmpty = false then
  begin
  showmessage ('La Relacion con esa fecha Ya esta Creada.');
  Exit;
  end;


   if rbValorC.Checked = true then
      begin
      qryRLista.SQL.Clear;
      qryRLista.SQL.Add('select * from ordenservicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
      qryRLista.SQL.Add('and status = "'+ '' +'" ');
      qryRLista.SQL.Add('order by orden_n');
      qryRLista.Open;

      if qryRLista.IsEmpty then
         begin
         showmessage ('No existen Operaciones en esa Fecha');
         Exit;
         end;

        com1:= '0.' + ePor.Text;
        POR1:= StrToFloat(com1);

       	qryRLista.Close;
        repeat
        qryRLista.Open;
        ordenC:= qryRListaorden_n.AsString;
        V1:= qryRListavalor_rd.AsFloat;
        M1:=  V1 * POR1;
        VR1:= V1 - M1;

        qryModi.SQL.Clear;
        qryModi.SQL.Add('Update OrdenServicio SET valor_c = "'+ FloatToStr(VR1) +'"');
        qryModi.SQL.Add('where  orden_n = "'+ ordenC +'"');
        qryModi.Execute;
        qryRLista.Next;
        until qryRLista.Eof;
      end;

qryChoferR.close;
repeat
qryChoferR.Open;
cod_ch:= qryChoferRcod_chofer.AsString;
nombre:= qryChoferRnombre_a.AsString;

qryRLista.SQL.Clear;
qryRLista.SQL.Add('select * from ordenservicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
qryRLista.SQL.Add('and codigo_ch = "'+ cod_ch +'" or codigo_ch1 = "'+ cod_ch +'"');
qryRLista.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
qryRLista.SQL.Add('and status = "'+ '' +'" ');
qryRLista.SQL.Add('order by orden_n');
qryRLista.Open;

if qryRLista.IsEmpty then
  begin
  goto Sigue;
  end;

        qryRLista.Close;
        repeat
        qryRLista.Open;
        pata:= qryRListapata.AsString;
        orden:= qryRListaorden_n.AsString;

            if rbValorA.Checked = true then
               begin
                 if pata = 'P' then
                  begin
                  valorT:= qryRListavalor_real.AsFloat / 2;
                  qryModiRL.SQL.Clear;
                  qryModiRL.SQL.Add('Update OrdenServicio SET valor_t = "'+ FloatToStr(valorT) +'"');
                  qryModiRL.SQL.Add('where  orden_n = "'+ orden +'"');
                  qryModiRL.Execute;
                  end
                 else
                  begin
                  valorT:= qryRListavalor_real.AsFloat;
                  qryModiRL.SQL.Clear;
                  qryModiRL.SQL.Add('Update OrdenServicio SET valor_t = "'+ FloatToStr(valorT) +'"');
                  qryModiRL.SQL.Add('where  orden_n = "'+ orden +'"');
                  qryModiRL.Execute;
                  end;
                end;

             if rbValorC.Checked = true then
                begin
                comi:= qryRListacomision.AsFloat;
                valorC:= qryRListavalor_c.AsFloat;
                mul:=  valorC * comi;

                qryModiRL.SQL.Clear;
                qryModiRL.SQL.Add('Update OrdenServicio SET valor_t = "'+ FloatToStr(mul) +'"');
                qryModiRL.SQL.Add('where  orden_n = "'+ orden +'"');
                qryModiRL.Execute;
                end;

         qryRLista.Next;
         until qryRLista.EoF;

         qryMod.SQL.Clear;
         qryMod.SQL.Add('select sum(valor_T) from OrdenServicio');
         qryMod.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
         qryMod.SQL.Add('and codigo_ch = "'+ cod_ch +'" or codigo_ch1 = "'+ cod_ch +'"');
         qryMod.SQL.Add('and fecha between "'+ s1 +'" and "'+ s2 +'"');
         qryMod.SQL.Add('and status = "'+ '' +'" ');
         qryMod.SQL.Add('order by orden_n');
         qryMod.Execute;
         Suma:= qryModsumvalor_t.AsFloat;
         Total:= Suma;

  //calculos : valot  +  dieta  -  seguro   -  avanse   =   valorfinal

         dieta1:= qryDescdieta.AsFloat;
         seguro1:= qryDescseguro.AsFloat;
         sumaF:= total + dieta1;  // aqui le suma la dieta al total
         valorF:= sumaF - seguro1;   // aqui le resta el seguro al total


     if rbValorA.Checked = true then
         begin
         qryModiRL.SQL.Clear;
         qryModiRL.SQL.Add('Insert into relacionchofer (codigo_ch, nombre_a, valorT, fechaD, fechaH, fechaR, tipo, dieta, seguro, ValorFinal)');
         qryModiRL.SQL.Add('values ("'+ cod_ch +'", "'+ nombre +'", "'+ FloatToStr(Total) +'", "'+ s1 +'", "'+ s2 +'", "'+ s +'", "'+ 'A' +'", "'+ dbeDieta.Text +'", "'+ dbeSeguro.Text +'", "'+ FloatToStr(ValorF) +'" )');
         qryModiRL.Execute;
         end;

     if rbValorC.Checked = true then
         begin
         qryModiRL.SQL.Clear;
         qryModiRL.SQL.Add('Insert into relacionchofer (codigo_ch, nombre_a, valorT, fechaD, fechaH, fechaR, tipo, dieta, seguro, ValorFinal)');
         qryModiRL.SQL.Add('values ("'+ cod_ch +'", "'+ nombre +'", "'+ FloatToStr(Total) +'", "'+ s1 +'", "'+ s2 +'", "'+ s +'", "'+ 'C' +'", "'+ dbeDieta.Text +'", "'+ dbeSeguro.Text +'", "'+ FloatToStr(ValorF) +'" )');
         qryModiRL.Execute;
         end;

Sigue:
qryChoferR.Next;
until qryChoferR.Eof;

showmessage ('Relacion Creada Satisfactoriamente!!');
qryChoferR.Close;
qryChoferR.Open;

end;

procedure TfRelacionChofer.bListaRClick(Sender: TObject);
var
d4: TDateTime;
d5: TDateTime;
s4: string;
s5: string;
begin
  d4:= dpDesde.Date;
  d5:= dpHasta.Date;
  s4:= FormatDateTime('yyyy/mm/dd',d4);
  s5:= FormatDateTime('yyyy/mm/dd',d5);

  fRelaChofer2.qrldesde.Caption:= DateToStr(d4);
  fRelaChofer2.qrlhasta.Caption:= DateToStr(d5);


if rbValorC.Checked = true then
begin
fRelaChofer2.qryRChofer2.SQL.Clear;
fRelaChofer2.qryRChofer2.SQL.Add('select * from relacionchofer where fechaD = "'+ s4 +'" and fechaH = "'+ s5 +'"');
fRelaChofer2.qryRChofer2.SQL.Add('and tipo = "'+ 'C' +'"');
fRelaChofer2.qryRChofer2.SQL.Add('order by codigo_ch');
fRelaChofer2.qryRChofer2.Open;
end;

if rbValorA.Checked = true then
begin
fRelaChofer2.qryRChofer2.SQL.Clear;
fRelaChofer2.qryRChofer2.SQL.Add('select * from relacionchofer where fechaD = "'+ s4 +'" and fechaH = "'+ s5 +'"');
fRelaChofer2.qryRChofer2.SQL.Add('and tipo = "'+ 'A' +'"');
fRelaChofer2.qryRChofer2.SQL.Add('order by codigo_ch');
fRelaChofer2.qryRChofer2.Open;
end;

if fRelaChofer2.qryRChofer2.IsEmpty then
  begin
  showmessage ('La Relacion con esa Fecha no Existe.');
  Exit;
  end;

        if rbPantallaC.Checked = true then
        begin
        fRelaChofer2.RrelaChofer2.Preview;
        Exit;
        end
        else if rbPantallaC.Checked = false then
        begin
        fRelaChofer2.RrelaChofer2.Print;
        Exit;
        end;
end;

procedure TfRelacionChofer.Button1Click(Sender: TObject);
var
s1: string;
s2: string;
s: string;
d: TDateTime;
d1: TDateTime;
d2: TDateTime;

begin
  d1:= dpDesde.Date;
  d2:= dpHasta.Date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);
  d:= Date;
  s:= FormatDateTime('yyyy/mm/dd',d);


if rbValorC.Checked = true then
begin
fRelaChofModi.qryRelaCh.SQL.Clear;
fRelaChofModi.qryRelaCh.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'" and fechaH = "'+ s2 +'"');
fRelaChofModi.qryRelaCh.SQL.Add('and tipo = "'+ 'C' +'"');
fRelaChofModi.qryRelaCh.Open;
end;

if rbValorA.Checked = true then
begin
fRelaChofModi.qryRelaCh.SQL.Clear;
fRelaChofModi.qryRelaCh.SQL.Add('select * from relacionchofer where fechaD = "'+ s1 +'" and fechaH = "'+ s2 +'"');
fRelaChofModi.qryRelaCh.SQL.Add('and tipo = "'+ 'A' +'"');
fRelaChofModi.qryRelaCh.Open;
end;


if fRelaChofModi.qryRelaCh.IsEmpty then
  begin
  showmessage ('La Relación con esa Fecha no Existe.');
  Exit;
  end;

fRelaChofModi.Show;
end;

procedure TfRelacionChofer.bmoddescClick(Sender: TObject);
var
ab: Single;
PDusuario: string;
begin
   PDusuario:= fPrincipal.dbtUsuarioA.Caption;

   if TryStrToFloat(dbeDieta.Text, ab) = false then
      begin
      ShowMessage('La Dieta Debe ser Número');
      dbeDieta.Clear;
      dbeDieta.SetFocus;
      Exit;
      end;

    if TryStrToFloat(dbeSeguro.Text, ab) = false then
      begin
      ShowMessage('El Seguro Debe ser Número');
      dbeSeguro.Clear;
      dbeSeguro.SetFocus;
      Exit;
      end;

qryDescModi.ParamByName('vuser').AsString:= PDusuario ;
qryDescModi.ParamByName('vdieta').AsString:= dbeDieta.Text ;
qryDescModi.ParamByName('vseguro').AsString:= dbeSeguro.Text ;
qryDescModi.ParamByName('v1id').AsString:= '1' ;
qryDescModi.Execute;

qryDesc.Close;
qryDesc.Open;

end;

procedure TfRelacionChofer.bBorrarRelacionClick(Sender: TObject);
var
s11: string;
s22: string;
ss: string;
dd: TDateTime;
d11: TDateTime;
d22: TDateTime;
Bboton : Integer;

begin
  d11:= dpDesde.Date;
  d22:= dpHasta.Date;
  s11:= FormatDateTime('yyyy/mm/dd',d11);
  s22:= FormatDateTime('yyyy/mm/dd',d22);
  dd:= Date;
  ss:= FormatDateTime('yyyy/mm/dd',dd);

if rbValorC.Checked = true then
begin
qryModiRL.SQL.Clear;
qryModiRL.SQL.Add('select * from relacionchofer where fechaD = "'+ s11 +'" and fechaH = "'+ s22 +'"');
qryModiRL.SQL.Add('and tipo = "'+ 'C' +'"');
qryModiRL.Open;
end;

if rbValorA.Checked = true then
begin
qryModiRL.SQL.Clear;
qryModiRL.SQL.Add('select * from relacionchofer where fechaD = "'+ s11 +'" and fechaH = "'+ s22 +'"');
qryModiRL.SQL.Add('and tipo = "'+ 'A' +'"');
qryModiRL.Open;
end;

if qryModiRL.IsEmpty = True then
  begin
  showmessage ('La Relacion con esa fecha NO esta Creada.');
  Exit;
  end;

Bboton := Application.MessageBox ('¿Está seguro que desea Borrar?',
                              'Borrar Relacion',MB_YESNO+MB_ICONINFORMATION);
   If Bboton = ID_YES Then
      begin
      qryBorrarR.ParamByName('bDesde').AsString:= s11;     //     .AsString:= Cnum;
      qryBorrarR.ParamByName('bHasta').AsString:= s22;
      qryBorrarR.Execute;
      end
   Else
    Exit;

end;

end.
