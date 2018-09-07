unit uFacturacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons,
  ComCtrls, ExtCtrls, MemDS, DBAccess, MyAccess;

type
  TfFacturacion = class(TForm)
    pFacturacion: TPanel;
    ltituloF: TLabel;
    ldesde: TLabel;
    lhasta: TLabel;
    dpDesdeF: TDateTimePicker;
    dpHastaF: TDateTimePicker;
    bbOkF: TBitBtn;
    bbCancelarF: TBitBtn;
    dbGClienteF: TDBGrid;
    dbeClienteF: TDBEdit;
    lclientef: TLabel;
    dsClienteF: TDataSource;
    dbeForma: TDBEdit;
    lnumfact: TLabel;
    eFactN: TEdit;
    lfechadia: TLabel;
    eFecha: TEdit;
    ltaza1: TLabel;
    eTaza: TEdit;
    bbNueva: TBitBtn;
    qryModi: TMyQuery;
    qryNumFact: TMyQuery;
    qryCalRD: TMyQuery;
    qryCalUS: TMyQuery;
    qryClienteF: TMyQuery;
    qryOrdenF: TMyQuery;
    qryFactF: TMyQuery;
    qryCalRDsumvalor_rd: TFloatField;
    qryCalUSsumvalor_us: TFloatField;
    qryOrdenForden_n: TIntegerField;
    qryOrdenFfecha: TDateField;
    qryOrdenFfecha_r: TDateField;
    qryOrdenFhora: TStringField;
    qryOrdenFcapacidad: TIntegerField;
    qryOrdenFservicio: TStringField;
    qryOrdenFpax: TIntegerField;
    qryOrdenFpax1: TIntegerField;
    qryOrdenFsolicitado: TStringField;
    qryOrdenForden_c: TStringField;
    qryOrdenFbonos: TStringField;
    qryOrdenFlinea_a: TStringField;
    qryOrdenFvuelo: TStringField;
    qryOrdenFhora_v: TStringField;
    qryOrdenFlugar: TStringField;
    qryOrdenFnombre: TStringField;
    qryOrdenFficha1: TStringField;
    qryOrdenFficha_o: TStringField;
    qryOrdenFtipo_servicio: TStringField;
    qryOrdenFvalor_rd: TFloatField;
    qryOrdenFvalor_us: TFloatField;
    qryOrdenFnombre_a: TStringField;
    qryOrdenFcomision: TFloatField;
    qryOrdenFchofer1: TStringField;
    qryOrdenFcom1: TFloatField;
    qryOrdenFuser_o: TStringField;
    qryOrdenFstatus: TStringField;
    qryOrdenFcodigo_c: TIntegerField;
    qryOrdenFmarca: TStringField;
    qryOrdenFcodigo_t: TIntegerField;
    qryOrdenFcodigo_ch: TIntegerField;
    qryOrdenFcodigo_ch1: TIntegerField;
    qryOrdenFcapa1: TIntegerField;
    qryOrdenFmarca1: TStringField;
    qryOrdenFpata: TStringField;
    qryOrdenFvalor_real: TFloatField;
    qryOrdenFvalor_t: TFloatField;
    qryOrdenFvalor_c: TFloatField;
    qryOrdenFobser: TStringField;
    Label1: TLabel;
    eN: TEdit;
    qryFactFfact_n: TIntegerField;
    qryFactFncf: TStringField;
    qryFactFfechaR: TDateField;
    qryFactFfdesde: TDateField;
    qryFactFfhasta: TDateField;
    qryFactFtaza: TFloatField;
    qryFactFtotalRD: TFloatField;
    qryFactFtotalUS: TFloatField;
    qryFactFcodigo_c: TIntegerField;
    qryFactFnombre: TStringField;
    qryFactFstatus: TStringField;
    qryFactFforma: TStringField;
    qryFactFtipo: TStringField;
    qryFactFde: TFloatField;
    qryFactFau: TFloatField;
    qryFactFvalor: TFloatField;
    qryFactFuser_f: TStringField;
    qryNumNCF: TMyQuery;
    eNCF: TEdit;
    cbNCF: TCheckBox;
    procedure bbCancelarFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbOkFClick(Sender: TObject);
    procedure bbNuevaClick(Sender: TObject);
    procedure dbGClienteFDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NuevoF;
  end;

var
  fFacturacion: TfFacturacion;
  usuarioF : string;

implementation

uses uMenuFacturacion, uModuloF, uPrincipal;

{$R *.dfm}

procedure TfFacturacion.NuevoF;
begin
  eFactN.Text:= qryNumFact.FieldValues['max(fact_n)'] + 1 ;    //el num de fact automatico.
  eNCF.Text:= qryNumNCF.FieldValues['max(ncf)'] + 1 ;  //el NCF automatico.
  eN.Text:= 'A010010010' + eNCF.Text;    //despliega completo
  eFecha.Text:= DateToStr(date); //despliega la fecha del dia.
  dpDesdeF.Date:= date;
  dpHastaF.Date:= date;
  qryClienteF.Close;
  qryClienteF.Open;
  eTaza.Clear;
end;

procedure TfFacturacion.bbNuevaClick(Sender: TObject);
begin
     qryNumFact.Close;
     qryNumFact.Open;
     qryNumNCF.Close;
     qryNumNCF.Open;
     cbNCF.checked:=true;
     NuevoF;

end;

procedure TfFacturacion.bbCancelarFClick(Sender: TObject);
begin
    qryClienteF.Close;
    qryNumFact.Close;
    qryNumNCF.Close;
    qryOrdenF.Close;
    qryFactF.Close;
    fFacturacion.Close;
end;

procedure TfFacturacion.FormShow(Sender: TObject);
begin
    fMenuFacturacion.Hide;
    qryClienteF.Open;
    bbNueva.Click;
end;

procedure TfFacturacion.bbOkFClick(Sender: TObject);
var
s1: string;
s2: string;
sf: string;
d1: TDateTime;
d2: TDateTime;
df: TDateTime;
aa: Single;   //para comparar si es un float valido.
RD: string;
US: real;  //para hacer los calculos matematicos.
TA: real;
MU: real;
ordenN: string;
Cus: real;
Crd: real;
begin
  usuarioF:= fPrincipal.dbtUsuarioA.Caption;
  df:= Date;
  d1:= dpDesdeF.Date;
  d2:= dpHastaF.Date;
  sf:= FormatDateTime('yyyy/mm/dd',df);
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);

 if cbNCF.checked = false then
    eNCF.text:='';

     if dbeForma.Text = 'US' then   //si es dolar debe ingresar la taza.
        begin
        if trim(eTaza.Text) = '' then
           begin
           showmessage ('Debe ingresar la taza del dólar.');
           eTaza.SetFocus;
           Exit;
           end;
        if TryStrToFloat(eTaza.Text, aa) = false then
              begin
              ShowMessage('Porfavor la taza debe ser Número');
              eTaza.Clear;
              eTaza.SetFocus;
              Exit;
             end;
        end
      else if dbeForma.Text = 'RD' then
           eTaza.Clear;


 ////////esto para hacer la factura de todos los servicios por cia.

  if ltituloF.Caption = 'FACTURACION DE SERVICIOS' then
     begin
//1ro: se lee la tabla fact para saber si existe esa informacion.
     qryFactF.SQL.Clear;
     qryFactF.SQL.Add('select * from Fact where fdesde = "'+ s1 +'" and fhasta = "'+ s2 +'"');
     qryFactF.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
     qryFactF.SQL.Add('and tipo = "'+ 'O' +'"');
     qryFactF.Open;

       if qryFactF.IsEmpty = false then   //si el query esta lleno, da un error.
       begin
       showmessage ('Las Operaciones con esa fecha ya estan Facturadas!');
       Exit;
       end;

//2do: lee la tabla ordenservicio para saber si hay alguna inf. con esa fecha.
     qryOrdenF.SQL.Clear;
     qryOrdenF.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
     qryOrdenF.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
     qryOrdenF.SQL.Add('and status = "'+ '' +'" ');
     qryOrdenF.Open;

       if qryOrdenF.IsEmpty then   //si el query esta vacio, da un error.
       begin
       showmessage ('No existen Operaciones con esa Fecha para Facturar');
       Exit;
       end;

//3r0: graba la inf. de esa fact el la tabla de archivo de facturas.
     qryFactF.Close;
     qryFactF.SQL.Clear;
     qryFactF.SQL.Add('insert into Fact (fact_n, ncf, fechaR, fdesde, fhasta, user_f, codigo_c, nombre, tipo, forma)');
     qryFactF.SQL.Add('values ("'+ eFactN.Text +'", "'+ eNCF.Text +'", "'+ sf +'", "'+ s1 +'", "'+ s2 +'", "'+ usuarioF +'", "'+ dbGClienteF.SelectedField.AsString +'", "'+ dbeClienteF.Text +'", "'+ 'O' +'", "'+ dbeForma.Text +'")');
     qryFactF.Execute;

//4to: se hacen los calculos.
     if dbeForma.Text = 'RD' then
        begin
        qryCalRD.SQL.Clear;
        qryCalRD.SQL.Add('select sum(valor_rd) from OrdenServicio');
        qryCalRD.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qryCalRD.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
        qryCalRD.SQL.Add('and status = "'+ '' +'" ');
        qryCalRD.Execute;
        RD:= qryCalRDsumvalor_rd.AsString;

        qryCalRD.SQL.Clear;
        qryCalRD.SQL.Add('Update Fact SET totalRD = "'+ RD +'"');
        qryCalRD.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryCalRD.Execute;
        end;

     if dbeForma.Text = 'US' then
        begin
        //aqui calcula el valor en pesos de cada orden.
        TA:= StrToFloat(eTaza.Text);
        qryOrdenF.Close;
        repeat
        qryOrdenF.Open;
        ordenN:= qryOrdenForden_n.AsString;
        Cus:= qryOrdenFvalor_us.AsFloat;
        Crd:=  Cus * TA;

        qryModi.SQL.Clear;
        qryModi.SQL.Add('Update OrdenServicio SET valor_rd = "'+ FloatToStr(Crd) +'"');
        qryModi.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModi.Execute;
        qryOrdenF.Next;
        until qryOrdenF.Eof;

        //aqui suma los totales.
        qryCalUS.SQL.Clear;
        qryCalUS.SQL.Add('select sum(valor_us) from OrdenServicio');
        qryCalUS.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qryCalUS.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
        qryCalUS.SQL.Add('and status = "'+ '' +'" ');
        qryCalUS.Execute;
        US:= qryCalUSsumvalor_us.AsFloat;
        MU:= US * TA;

        qryCalUS.SQL.Clear;
        qryCalUS.SQL.Add('Update Fact SET taza = "'+ FloatToStr(TA) +'", totalUS = "'+ FloatToStr(US) +'", totalRD = "'+ FloatToStr(MU) +'"');
        qryCalUS.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryCalUS.Execute;
        end;

//y 5to: cuando termine de grabar todo, indica que esta listo.
     showmessage('Factura Creada Satisfactoriamente!!!');
     bbNueva.Click;
     Exit;
     end;


  /////////esto para hacer la factura de todos los traslados por cia.

  if ltituloF.Caption = 'FACTURACION DE TRASLADOS' then
     begin
//1ro: se lee la tabla fact para saber si existe esa informacion.
     qryFactF.SQL.Clear;
     qryFactF.SQL.Add('select * from Fact where fdesde = "'+ s1 +'" and fhasta = "'+ s2 +'"');
     qryFactF.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
     qryFactF.SQL.Add('and tipo = "'+ 'T' +'"');
     qryFactF.Open;

       if qryFactF.IsEmpty = false then   //si el query esta lleno, da un error.
       begin
       showmessage ('Los Traslados con esa fecha ya estan Facturadas!');
       Exit;
       end;

//2do: lee la tabla ordenservicio para saber si hay alguna inf. con esa fecha.
     qryOrdenF.SQL.Clear;
     qryOrdenF.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
     qryOrdenF.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
     qryOrdenF.SQL.Add('and status = "'+ '' +'" ');
     qryOrdenF.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'" ');
     qryOrdenF.Open;

       if qryOrdenF.IsEmpty then   //si el query esta vacio, da un error.
       begin
       showmessage ('No existen Traslados con esa Fecha para Facturar');
       Exit;
       end;

//3r0: graba la inf. de esa fact el la tabla de archivo de facturas.
     qryFactF.Close;
     qryFactF.SQL.Clear;
     qryFactF.SQL.Add('insert into Fact (fact_n, ncf, fechaR, fdesde, fhasta, user_f, codigo_c, nombre, tipo, forma)');
     qryFactF.SQL.Add('values ("'+ eFactN.Text +'", "'+ eNCF.Text +'", "'+ sf +'", "'+ s1 +'", "'+ s2 +'", "'+ usuarioF +'", "'+ dbGClienteF.SelectedField.AsString +'", "'+ dbeClienteF.Text +'", "'+ 'T' +'", "'+ dbeForma.Text +'")');
     qryFactF.Execute;

//4to: se hacen los calculos.
     if dbeForma.Text = 'RD' then
        begin
        qryCalRD.SQL.Clear;
        qryCalRD.SQL.Add('select sum(valor_rd) from OrdenServicio');
        qryCalRD.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qryCalRD.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
        qryCalRD.SQL.Add('and status = "'+ '' +'" ');
        qryCalRD.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'" ');
        qryCalRD.Execute;
        RD:= qryCalRDsumvalor_rd.AsString;

        qryCalRD.SQL.Clear;
        qryCalRD.SQL.Add('Update Fact SET totalRD = "'+ RD +'"');
        qryCalRD.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryCalRD.Execute;
        end;

     if dbeForma.Text = 'US' then
        begin
        //aqui calcula el valor en pesos de cada orden.
        TA:= StrToFloat(eTaza.Text);
        qryOrdenF.Close;
        repeat
        qryOrdenF.Open;
        ordenN:= qryOrdenForden_n.AsString;
        Cus:= qryOrdenFvalor_us.AsFloat;
        Crd:=  Cus * TA;

        qryModi.SQL.Clear;
        qryModi.SQL.Add('Update OrdenServicio SET valor_rd = "'+ FloatToStr(Crd) +'"');
        qryModi.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModi.Execute;
        qryOrdenF.Next;
        until qryOrdenF.Eof;

        qryCalUS.SQL.Clear;
        qryCalUS.SQL.Add('select sum(valor_us) from OrdenServicio');
        qryCalUS.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qryCalUS.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
        qryCalUS.SQL.Add('and status = "'+ '' +'" ');
        qryCalUS.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'" ');
        qryCalUS.Execute;
        US:= qryCalUSsumvalor_us.AsFloat;
        MU:= US * TA;

        qryCalUS.SQL.Clear;
        qryCalUS.SQL.Add('Update Fact SET taza = "'+ FloatToStr(TA) +'", totalUS = "'+ FloatToStr(US) +'", totalRD = "'+ FloatToStr(MU) +'"');
        qryCalUS.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryCalUS.Execute;
        end;

//y 5to: cuando termine de grabar todo, indica que esta listo.
     showmessage('Factura Creada Satisfactoriamente!!!');
     bbNueva.Click;
     Exit;
     end;

 /////////esto para hacer la factura de todos las excursiones por cia.

  if ltituloF.Caption = 'FACTURACION DE EXCURSIONES' then
     begin
//1ro: se lee la tabla fact para saber si existe esa informacion.
     qryFactF.SQL.Clear;
     qryFactF.SQL.Add('select * from Fact where fdesde = "'+ s1 +'" and fhasta = "'+ s2 +'"');
     qryFactF.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
     qryFactF.SQL.Add('and tipo = "'+ 'E' +'"');
     qryFactF.Open;

       if qryFactF.IsEmpty = false then   //si el query esta lleno, da un error.
       begin
       showmessage ('Las Excursiones con esa fecha ya estan Facturadas!');
       Exit;
       end;

//2do: lee la tabla ordenservicio para saber si hay alguna inf. con esa fecha.
     qryOrdenF.SQL.Clear;
     qryOrdenF.SQL.Add('select * from OrdenServicio where fecha between "'+ s1 +'" and "'+ s2 +'"');
     qryOrdenF.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
     qryOrdenF.SQL.Add('and status = "'+ '' +'" ');
     qryOrdenF.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'" ');
     qryOrdenF.Open;

       if qryOrdenF.IsEmpty then   //si el query esta vacio, da un error.
       begin
       showmessage ('No existen Excursiones con esa Fecha para Facturar');
       Exit;
       end;

//3r0: graba la inf. de esa fact el la tabla de archivo de facturas.
     qryFactF.Close;
     qryFactF.SQL.Clear;
     qryFactF.SQL.Add('insert into Fact (fact_n, ncf, fechaR, fdesde, fhasta, user_f, codigo_c, nombre, tipo, forma)');
     qryFactF.SQL.Add('values ("'+ eFactN.Text +'", "'+ eNCF.Text +'", "'+ sf +'", "'+ s1 +'", "'+ s2 +'", "'+ usuarioF +'", "'+ dbGClienteF.SelectedField.AsString +'", "'+ dbeClienteF.Text +'", "'+ 'E' +'", "'+ dbeForma.Text +'")');
     qryFactF.Execute;

//4to: se hacen los calculos.
     if dbeForma.Text = 'RD' then
        begin
        qryCalRD.SQL.Clear;
        qryCalRD.SQL.Add('select sum(valor_rd) from OrdenServicio');
        qryCalRD.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qryCalRD.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
        qryCalRD.SQL.Add('and status = "'+ '' +'" ');
        qryCalRD.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'" ');
        qryCalRD.Execute;
        RD:= qryCalRDsumvalor_rd.AsString;

        qryCalRD.SQL.Clear;
        qryCalRD.SQL.Add('Update Fact SET totalRD = "'+ RD +'"');
        qryCalRD.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryCalRD.Execute;
        end;

     if dbeForma.Text = 'US' then
        begin
        //aqui calcula el valor en pesos de cada orden.
        TA:= StrToFloat(eTaza.Text);
        qryOrdenF.Close;
        repeat
        qryOrdenF.Open;
        ordenN:= qryOrdenForden_n.AsString;
        Cus:= qryOrdenFvalor_us.AsFloat;
        Crd:=  Cus * TA;

        qryModi.SQL.Clear;
        qryModi.SQL.Add('Update OrdenServicio SET valor_rd = "'+ FloatToStr(Crd) +'"');
        qryModi.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModi.Execute;
        qryOrdenF.Next;
        until qryOrdenF.Eof;

        qryCalUS.SQL.Clear;
        qryCalUS.SQL.Add('select sum(valor_us) from OrdenServicio');
        qryCalUS.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qryCalUS.SQL.Add('and codigo_c = "'+ dbGClienteF.SelectedField.AsString +'"');
        qryCalUS.SQL.Add('and status = "'+ '' +'" ');
        qryCalUS.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'" ');
        qryCalUS.Execute;
        US:= qryCalUSsumvalor_us.AsFloat;
        MU:= US * TA;

        qryCalUS.SQL.Clear;
        qryCalUS.SQL.Add('Update Fact SET taza = "'+ FloatToStr(TA) +'", totalUS = "'+ FloatToStr(US) +'", totalRD = "'+ FloatToStr(MU) +'"');
        qryCalUS.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryCalUS.Execute;
        end;

//y 5to: cuando termine de grabar todo, indica que esta listo.
     showmessage('Factura Creada Satisfactoriamente!!!');
     bbNueva.Click;
     Exit;
     end;

end;

procedure TfFacturacion.dbGClienteFDblClick(Sender: TObject);
begin

dbGClienteF.DataSource:=dsClienteF;
dbGClienteF.Columns[0].FieldName:='cod_cliente';
qryClienteF.Close;
qryClienteF.Open;

end;

end.
