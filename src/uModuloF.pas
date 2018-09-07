unit uModuloF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons,
  MemDS, DBAccess, MyAccess, ComCtrls;

type
  TfModuloF = class(TForm)
    pModuloF: TPanel;
    dsOrdenF: TDataSource;
    dbGFactura: TDBGrid;
    lfactN: TLabel;
    ldesdeF: TLabel;
    lhastaF: TLabel;
    lcliente: TLabel;
    lforma: TLabel;
    GboxRD: TGroupBox;
    GboxUS: TGroupBox;
    bbAceptarF: TBitBtn;
    bbSalirF: TBitBtn;
    eFactN: TEdit;
    eDesdeF1: TEdit;
    eHastaF1: TEdit;
    eClienteF: TEdit;
    eFormaF: TEdit;
    limporterd: TLabel;
    ltotal: TLabel;
    limporteus: TLabel;
    ltaza: TLabel;
    ltotalus: TLabel;
    eRD: TEdit;
    eTotalRD: TEdit;
    eUS: TEdit;
    eTaza: TEdit;
    eTotalUS: TEdit;
    bbOKRD: TBitBtn;
    bbOKUS: TBitBtn;
    lraya1: TLabel;
    lraya2: TLabel;
    eFechaDia: TEdit;
    lfechadia: TLabel;
    eCodF: TEdit;
    eTipoF: TEdit;
    qryModiO: TMyQuery;
    qrySumaRD: TMyQuery;
    qrySumaUS: TMyQuery;
    qryTotal: TMyQuery;
    qryFact: TMyQuery;
    qryFactorden_n: TIntegerField;
    qryFactfecha: TDateField;
    qryFactcapacidad: TIntegerField;
    qryFactservicio: TStringField;
    qryFactpax: TIntegerField;
    qryFactsolicitado: TStringField;
    qryFactorden_c: TStringField;
    qryFactlugar: TStringField;
    qryFactvalor_rd: TFloatField;
    qryFactvalor_us: TFloatField;
    qryFactcapa1: TIntegerField;
    qrySumaUSsumvalor_us: TFloatField;
    qrySumaRDsumvalor_rd: TFloatField;
    qryFactpax1: TIntegerField;
    qryFacttipo_servicio: TStringField;
    lpor: TLabel;
    eDes: TEdit;
    lporcie: TLabel;
    lraya: TLabel;
    laumento: TLabel;
    lraau: TLabel;
    eAum: TEdit;
    lpau: TLabel;
    Label1: TLabel;
    eNCF: TEdit;
    bCamF: TButton;
    qryCamF: TMyQuery;
    qryCamFfact_n: TIntegerField;
    qryCamFncf: TStringField;
    qryCamFfechaR: TDateField;
    qryCamFfdesde: TDateField;
    qryCamFfhasta: TDateField;
    qryCamFtaza: TFloatField;
    qryCamFtotalRD: TFloatField;
    qryCamFtotalUS: TFloatField;
    qryCamFcodigo_c: TIntegerField;
    qryCamFnombre: TStringField;
    qryCamFstatus: TStringField;
    qryCamFforma: TStringField;
    qryCamFtipo: TStringField;
    qryCamFde: TFloatField;
    qryCamFau: TFloatField;
    qryCamFvalor: TFloatField;
    qryCamFuser_f: TStringField;
    eDesdeF: TDateTimePicker;
    eHastaF: TDateTimePicker;
    procedure dbGFacturaCellClick(Column: TColumn);
    procedure bbSalirFClick(Sender: TObject);
    procedure bbOKRDClick(Sender: TObject);
    procedure bbOKUSClick(Sender: TObject);
    procedure bbAceptarFClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eDesChange(Sender: TObject);
    procedure eAumChange(Sender: TObject);
    procedure eUSChange(Sender: TObject);
    procedure eRDChange(Sender: TObject);
    procedure eTazaChange(Sender: TObject);
    procedure bCamFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Procedure desplegarF;
  end;

var
  fModuloF: TfModuloF;
  orden : string; //para almacenar el num de orden.
  usuarioM : string;
  Tcambio: boolean;

implementation

uses uFacturacion, uPrincipal;

{$R *.dfm}

Procedure TfModuloF.desplegarF;
begin
eRD.Text:= qryFactvalor_rd.AsString;
eUS.Text:= qryFactvalor_us.AsString;
end;

procedure TfModuloF.dbGFacturaCellClick(Column: TColumn);
begin
   DesplegarF;  //cuando hace en un num orden despliega el valor.
   orden:= qryFactorden_n.AsString;   //pasa el num de orden a esta variable para comparar.
end;

procedure TfModuloF.bbSalirFClick(Sender: TObject);
begin
    qryFact.Close;
    fModuloF.Close;
end;

procedure TfModuloF.bbOKRDClick(Sender: TObject);
begin
//aqui se modifica el precio RD de la orden en OrdenServicio.
   if eFormaF.Text = 'RD' then
      begin
      qryModiO.SQL.Clear;
      qryModiO.SQL.Add('update Ordenservicio set valor_rd = "'+ eRD.Text +'"');
      qryModiO.SQL.Add('where orden_n = "'+ orden +'"');
      qryModiO.Execute;
      qryFact.RefreshRecord;  //refresca los querys.
      eRD.Clear;
      end
   else
      Exit;
end;

procedure TfModuloF.bbOKUSClick(Sender: TObject);
var
Cta: real;
Cus: real;
Crd: real;
begin
//aqui se modifica el precio US de la orden en OrdenServicio.
   if eFormaF.Text = 'US' then
          begin
      Cta:= StrToFloat(eTaza.Text);
      Cus:= StrToFloat(eUS.Text);
      Crd:=  Cus * Cta;

      qryModiO.SQL.Clear;
      qryModiO.SQL.Add('update Ordenservicio set valor_us = "'+ eUS.Text +'", valor_rd = "'+ FloatToStr(Crd) +'"');
      qryModiO.SQL.Add('where orden_n = "'+ orden +'"');
      qryModiO.Execute;
      qryFact.RefreshRecord;
      eUS.Clear;
      eRD.Clear;
      end
   else
      Exit;
end;

procedure TfModuloF.bbAceptarFClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;
sf: string;
df: TDateTime;
aa: Single;
RD: real;
US: real;
TA: real;
ordenN: String;
Cus: real;
Crd: real;
iRD: string;
iUS: string;
C: string;
A: string;
P: real;
M: real;
V: real;
begin
  usuarioM:= fPrincipal.dbtUsuarioA.Caption;
  df:= Date;
  d1:= eDesdeF.date;
  d2:= eHastaF.date;
  s1:= FormatDateTime('yyyy/mm/dd',d1);
  s2:= FormatDateTime('yyyy/mm/dd',d2);
  sf:= FormatDateTime('yyyy/mm/dd',df);


   if trim(eDes.Text) <> '0' then
      eAum.Text:= '0';
   if trim(eAum.Text) <> '0' then
      eDes.Text:= '0';


//aqui hace los calculos nuevamente, con los cambios y modi la tabla Fact.

//si es operaciones generales.

  if eTipoF.Text = 'O' then
     begin
     if eFormaF.Text = 'RD' then
        begin
        if TryStrToFloat(eDes.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de descuento debe ser Número');
              eDes.Clear;
              eDes.SetFocus;
              Exit;
             end;
         if TryStrToFloat(eAum.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de aumento debe ser Número');
              eAum.Clear;
              eAum.SetFocus;
              Exit;
             end;

        //aqui hace la suma y graba.
        qrysumaRD.SQL.Clear;
        qrysumaRD.SQL.Add('select sum(valor_rd) from OrdenServicio');
        qrysumaRD.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qrysumaRD.SQL.Add('and codigo_c = "'+ eCodF.Text +'"');
        qrysumaRD.SQL.Add('and status = "'+ '' +'" ');
        qrysumaRD.Execute;
        RD:= qrysumaRDsumvalor_rd.AsFloat;
        V:= RD;
        
     if trim(eDes.Text) <> '0' then
      begin
      C:= '0.' + eDes.Text;
      P:= StrToFloat(C);  //aqui esta el porciento.
      M:=  RD * P;   //esto es lo que se va a restar.
      V:= RD - M;   //este es el total.
      end
     else if trim(eAum.Text) <> '0' then
      begin
      A:= '0.' + eAum.Text;
      P:= StrToFloat(A);
      M:=  RD * P;
      V:= RD + M;   
      end;

        qryTotal.SQL.Clear;
        qryTotal.SQL.Add('Update Fact SET au = "'+ eAum.Text +'", de = "'+ eDes.Text +'", totalRD = "'+ FloatToStr(V) +'", valor = "'+ FloatToStr(RD) +'", user_f = "'+ usuarioM +'", fechaR = "'+ sf +'"');
        qryTotal.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryTotal.Execute;

        iRD:= FormatFloat(',.00',V);
        eTotalRD.Text:= iRD;
        end;

     if eFormaF.Text = 'US' then
        begin
        if trim(eTaza.Text) = '' then  //si deja la taza vacia da error.
           begin
           showmessage ('Debe ingresar la taza del dólar.');
           eTaza.SetFocus;
           Exit;
           end;
        if TryStrToFloat(eTaza.Text, aa) = false then //si no es numero da error.
              begin
              ShowMessage('Porfavor la taza debe ser Número');
              eTaza.Clear;
              eTaza.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eDes.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de descuento debe ser Número');
              eDes.Clear;
              eDes.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eAum.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de aumento debe ser Número');
              eAum.Clear;
              eAum.SetFocus;
              Exit;
             end;

        //aqui hace la suma y graba.
        qrysumaUS.SQL.Clear;
        qrysumaUS.SQL.Add('select sum(valor_us) from OrdenServicio');
        qrysumaUS.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qrysumaUS.SQL.Add('and codigo_c = "'+ eCodF.Text +'"');
        qrysumaUS.SQL.Add('and status = "'+ '' +'" ');
        qrysumaUS.Execute;
        US:= qrysumaUSsumvalor_us.AsFloat;
        TA:= StrToFloat(eTaza.Text);
        RD:= US * TA;  //multiplica el total por la taza.
         V:= RD;

     if trim(eDes.Text) <> '0' then
      begin
      C:= '0.' + eDes.Text;
      P:= StrToFloat(C);
      M:=  RD * P;
      V:= RD - M;
      end
     else if trim(eAum.Text) <> '0' then
      begin
      A:= '0.' + eAum.Text;
      P:= StrToFloat(A);
      M:=  RD * P;
      V:= RD + M;
      end;

        qryTotal.SQL.Clear;
        qryTotal.SQL.Add('Update Fact SET au = "'+ eAum.Text +'", de = "'+ eDes.Text +'", taza = "'+ FloatToStr(TA) +'", totalUS = "'+ FloatToStr(US) +'", totalRD = "'+ FloatToStr(V) +'", valor = "'+ FloatToStr(RD) +'", user_f = "'+ usuarioM +'", fechaR = "'+ sf +'"');
        qryTotal.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryTotal.Execute;

        iUS:= FormatFloat(',.00',US);
        iRD:= FormatFloat(',.00',V);

        eTotalRD.Text:= iRD;
        eTaza.Text:= FloatToStr(TA);
        eTotalUS.Text:= iUS;

        //aqui calcula el valor en pesos de cada registro de la orden.
      	qryFact.Close;
        repeat
        qryFact.Open;
        ordenN:= qryFactorden_n.AsString;
        Cus:= qryFactvalor_us.AsFloat;
        Crd:=  Cus * TA;

        qryModiO.SQL.Clear;
        qryModiO.SQL.Add('Update OrdenServicio SET valor_rd = "'+ FloatToStr(Crd) +'"');
        qryModiO.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModiO.Execute;
        qryFact.Next;
        until qryFact.Eof;

        qryFact.Close;
        qryFact.Open;
        end;
     end; //end del if eTipoF.

//si es Traslados.

    if eTipoF.Text = 'T' then
     begin
     if eFormaF.Text = 'RD' then
        begin
        if TryStrToFloat(eDes.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de descuento debe ser Número');
              eDes.Clear;
              eDes.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eAum.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de aumento debe ser Número');
              eAum.Clear;
              eAum.SetFocus;
              Exit;
             end;

        //aqui hace la suma y graba.
        qrysumaRD.SQL.Clear;
        qrysumaRD.SQL.Add('select sum(valor_rd) from OrdenServicio');
        qrysumaRD.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qrysumaRD.SQL.Add('and codigo_c = "'+ eCodF.Text +'"');
        qrysumaRD.SQL.Add('and status = "'+ '' +'" ');
        qrysumaRD.SQL.Add('and codigo_t = "'+ '1' +'" ');
        qrysumaRD.Execute;
        RD:= qrysumaRDsumvalor_rd.AsFloat;
         V:= RD;

     if trim(eDes.Text) <> '0' then
      begin
      C:= '0.' + eDes.Text;
      P:= StrToFloat(C);
      M:=  RD * P;
      V:= RD - M;
      end
     else if trim(eAum.Text) <> '0' then
      begin
      A:= '0.' + eAum.Text;
      P:= StrToFloat(A);
      M:=  RD * P;
      V:= RD + M;
      end;

        qryTotal.SQL.Clear;
        qryTotal.SQL.Add('Update Fact SET au = "'+ eAum.Text +'", de = "'+ eDes.Text +'", totalRD = "'+ FloatToStr(V) +'", valor = "'+ FloatToStr(RD) +'", user_f = "'+ usuarioM +'", fechaR = "'+ sf +'"');
        qryTotal.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryTotal.Execute;

        iRD:= FormatFloat(',.00',V);
        eTotalRD.Text:= iRD;
        end;

     if eFormaF.Text = 'US' then
        begin
        if trim(eTaza.Text) = '' then  //si deja la taza vacia da error.
           begin
           showmessage ('Debe ingresar la taza del dólar.');
           eTaza.SetFocus;
           Exit;
           end;
        if TryStrToFloat(eTaza.Text, aa) = false then //si no es numero da error.
              begin
              ShowMessage('Porfavor la taza debe ser Número');
              eTaza.Clear;
              eTaza.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eDes.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de descuento debe ser Número');
              eDes.Clear;
              eDes.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eAum.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de aumento debe ser Número');
              eAum.Clear;
              eAum.SetFocus;
              Exit;
             end;

        //aqui hace la suma y graba.
        qrysumaUS.SQL.Clear;
        qrysumaUS.SQL.Add('select sum(valor_us) from OrdenServicio');
        qrysumaUS.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qrysumaUS.SQL.Add('and codigo_c = "'+ eCodF.Text +'"');
        qrysumaUS.SQL.Add('and status = "'+ '' +'" ');
        qrysumaUS.SQL.Add('and codigo_t = "'+ '1' +'" ');
        qrysumaUS.Execute;
        US:= qrysumaUSsumvalor_us.AsFloat;
        TA:= StrToFloat(eTaza.Text);
        RD:= US * TA;
         V:= RD;

     if trim(eDes.Text) <> '0' then
      begin
      C:= '0.' + eDes.Text;
      P:= StrToFloat(C);
      M:=  RD * P;
      V:= RD - M;
      end
     else if trim(eAum.Text) <> '0' then
      begin
      A:= '0.' + eAum.Text;
      P:= StrToFloat(A);
      M:=  RD * P;
      V:= RD + M;
      end;

        qryTotal.SQL.Clear;
        qryTotal.SQL.Add('Update Fact SET au = "'+ eAum.Text +'", de = "'+ eDes.Text +'", taza = "'+ FloatToStr(TA) +'", totalUS = "'+ FloatToStr(US) +'", totalRD = "'+ FloatToStr(V) +'", valor = "'+ FloatToStr(RD) +'", user_f = "'+ usuarioM +'", fechaR = "'+ sf +'"');
        qryTotal.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryTotal.Execute;

        iUS:= FormatFloat(',.00',US);
        iRD:= FormatFloat(',.00',V);

        eTotalRD.Text:= iRD;
        eTaza.Text:= FloatToStr(TA);
        eTotalUS.Text:= iUS;

        //aqui calcula el valor en pesos de cada registro de la orden.
      	qryFact.Close;
        repeat
        qryFact.Open;
        ordenN:= qryFactorden_n.AsString;
        Cus:= qryFactvalor_us.AsFloat;
        Crd:=  Cus * TA;

        qryModiO.SQL.Clear;
        qryModiO.SQL.Add('Update OrdenServicio SET valor_rd = "'+ FloatToStr(Crd) +'"');
        qryModiO.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModiO.Execute;
        qryFact.Next;
        until qryFact.Eof;

        qryFact.Close;
        qryFact.Open;
        end;
     end; //end del if eTipoF.

//si es Excursiones.

     if eTipoF.Text = 'E' then
     begin
     if eFormaF.Text = 'RD' then
        begin
        if TryStrToFloat(eDes.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de descuento debe ser Número');
              eDes.Clear;
              eDes.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eAum.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de aumento debe ser Número');
              eAum.Clear;
              eAum.SetFocus;
              Exit;
             end;

        //aqui hace la suma y graba.
        qrysumaRD.SQL.Clear;
        qrysumaRD.SQL.Add('select sum(valor_rd) from OrdenServicio');
        qrysumaRD.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qrysumaRD.SQL.Add('and codigo_c = "'+ eCodF.Text +'"');
        qrysumaRD.SQL.Add('and status = "'+ '' +'" ');
        qrysumaRD.SQL.Add('and codigo_t = "'+ '2' +'" ');
        qrysumaRD.Execute;
        RD:= qrysumaRDsumvalor_rd.AsFloat;
         V:= RD;

     if trim(eDes.Text) <> '0' then
      begin
      C:= '0.' + eDes.Text;
      P:= StrToFloat(C);
      M:=  RD * P;
      V:= RD - M;
      end
     else if trim(eAum.Text) <> '0' then
      begin
      A:= '0.' + eAum.Text;
      P:= StrToFloat(A);
      M:=  RD * P;
      V:= RD + M;
      end;

        qryTotal.SQL.Clear;
        qryTotal.SQL.Add('Update Fact SET au = "'+ eAum.Text +'", de = "'+ eDes.Text +'", totalRD = "'+ FloatToStr(V) +'", valor = "'+ FloatToStr(RD) +'", user_f = "'+ usuarioM +'", fechaR = "'+ sf +'"');
        qryTotal.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryTotal.Execute;

        iRD:= FormatFloat(',.00',V);
        eTotalRD.Text:= iRD;
        end;

     if eFormaF.Text = 'US' then
        begin
        if trim(eTaza.Text) = '' then  //si deja la taza vacia da error.
           begin
           showmessage ('Debe ingresar la taza del dólar.');
           eTaza.SetFocus;
           Exit;
           end;
        if TryStrToFloat(eTaza.Text, aa) = false then //si no es numero da error.
              begin
              ShowMessage('Porfavor la taza debe ser Número');
              eTaza.Clear;
              eTaza.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eDes.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de descuento debe ser Número');
              eDes.Clear;
              eDes.SetFocus;
              Exit;
             end;
        if TryStrToFloat(eAum.Text, aa) = false then
              begin
              ShowMessage('Porfavor el porciento de aumento debe ser Número');
              eAum.Clear;
              eAum.SetFocus;
              Exit;
             end;
             
        //aqui hace la suma y graba.
        qrysumaUS.SQL.Clear;
        qrysumaUS.SQL.Add('select sum(valor_us) from OrdenServicio');
        qrysumaUS.SQL.Add('where fecha between "'+ s1 +'" and "'+ s2 +'"');
        qrysumaUS.SQL.Add('and codigo_c = "'+ eCodF.Text +'"');
        qrysumaUS.SQL.Add('and codigo_t = "'+ '2' +'" ');
        qrysumaUS.SQL.Add('and status = "'+ '' +'" ');
        qrysumaUS.Execute;
        US:= qrysumaUSsumvalor_us.AsFloat;
        TA:= StrToFloat(eTaza.Text);
        RD:= US * TA;
         V:= RD;

     if trim(eDes.Text) <> '0' then
      begin
      C:= '0.' + eDes.Text;
      P:= StrToFloat(C);
      M:=  RD * P;
      V:= RD - M;
      end
     else if trim(eAum.Text) <> '0' then
      begin
      A:= '0.' + eAum.Text;
      P:= StrToFloat(A);
      M:=  RD * P;
      V:= RD + M;
      end;


        qryTotal.SQL.Clear;
        qryTotal.SQL.Add('Update Fact SET au = "'+ eAum.Text +'", de = "'+ eDes.Text +'", taza = "'+ FloatToStr(TA) +'", totalUS = "'+ FloatToStr(US) +'", totalRD = "'+ FloatToStr(V) +'", valor = "'+ FloatToStr(RD) +'", user_f = "'+ usuarioM +'", fechaR = "'+ sf +'"');
        qryTotal.SQL.Add('where fact_n = "'+ eFactN.Text +'"');
        qryTotal.Execute;

        iUS:= FormatFloat(',.00',US);
        iRD:= FormatFloat(',.00',V);

        eTotalRD.Text:= iRD;
        eTaza.Text:= FloatToStr(TA);
        eTotalUS.Text:= iUS;

        //aqui calcula el valor en pesos de cada registro de la orden.
      	qryFact.Close;
        repeat
        qryFact.Open;
        ordenN:= qryFactorden_n.AsString;
        Cus:= qryFactvalor_us.AsFloat;
        Crd:=  Cus * TA;

        qryModiO.SQL.Clear;
        qryModiO.SQL.Add('Update OrdenServicio SET valor_rd = "'+ FloatToStr(Crd) +'"');
        qryModiO.SQL.Add('where  orden_n = "'+ ordenN +'"');
        qryModiO.Execute;
        qryFact.Next;
        until qryFact.Eof;

        qryFact.Close;
        qryFact.Open;
        end;
     end; //end del if eTipoF.

bbAceptarF.Enabled:=False;

end;

procedure TfModuloF.FormShow(Sender: TObject);
begin
    fModuloF.Top:=29;
    fModuloF.Left:=0;
end;

procedure TfModuloF.eDesChange(Sender: TObject);
begin
bbAceptarF.Enabled:=True;
end;

procedure TfModuloF.eAumChange(Sender: TObject);
begin
bbAceptarF.Enabled:=True;
end;

procedure TfModuloF.eUSChange(Sender: TObject);
begin
bbAceptarF.Enabled:=True;
end;

procedure TfModuloF.eRDChange(Sender: TObject);
begin
bbAceptarF.Enabled:=True;
end;

procedure TfModuloF.eTazaChange(Sender: TObject);
begin
bbAceptarF.Enabled:=True;
end;

procedure TfModuloF.bCamFClick(Sender: TObject);
var
s1: string;
s2: string;
d1: TDateTime;
d2: TDateTime;


begin
   d1:= eDesdeF.date;
   d2:= eHastaF.date;
   s1:= FormatDateTime('yyyy/mm/dd',d1);
   s2:= FormatDateTime('yyyy/mm/dd',d2);

     qryCamf.ParamByName('vfdesde').AsString:= s1 ;
     qryCamf.ParamByName('vfhasta').AsString:= s2 ;
     qryCamf.ParamByName('v1fact').AsString:= eFactN.Text ;
     qryCamf.Execute;
     showmessage('Fecha Actualizada !!!');
end;

end.
