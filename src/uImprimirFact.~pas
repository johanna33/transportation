unit uImprimirFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls;

type
  TfImpFact = class(TForm)
    pImpFact: TPanel;
    GBimpFact: TGroupBox;
    lporno: TLabel;
    rbporDia: TRadioButton;
    rbPorNo: TRadioButton;
    rbNo: TRadioButton;
    dpFechaF: TDateTimePicker;
    eFactN: TEdit;
    eDesdeF: TEdit;
    eHastaF: TEdit;
    GBSelectFact: TGroupBox;
    rbPantallaF: TRadioButton;
    rbImprimirF: TRadioButton;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    cbF: TCheckBox;
    cbR: TCheckBox;
    procedure bbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbporDiaClick(Sender: TObject);
    procedure rbNoClick(Sender: TObject);
    procedure rbPorNoClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpFact: TfImpFact;

implementation

uses uMenuFacturacion, uRimpFact1, uRimpFact2;

{$R *.dfm}

procedure TfImpFact.bbCancelarClick(Sender: TObject);
begin
    fImpFact.Close;
end;

procedure TfImpFact.FormShow(Sender: TObject);
begin
    fMenuFacturacion.Hide;
    rbNo.Checked:=true;
    rbPantallaF.Checked:=true;
    dpFechaF.Date:= Date;
    eFactN.SetFocus;
    cbF.Checked:= true;
    cbR.Checked:= true;
end;

procedure TfImpFact.rbporDiaClick(Sender: TObject);
begin
   if rbporDia.Checked = true then    //aqui activa fecha del dia y desactiva lo demas.
      begin
      dpFechaF.Enabled:=true;
      eFactN.Enabled:=false;
      eDesdeF.Enabled:=false;
      eHastaF.Enabled:=false;
      end
end;

procedure TfImpFact.rbNoClick(Sender: TObject);
begin
   if rbNo.Checked = true then     //aqui activa la num tal y desactiva lo demas.
      begin
      eFactN.Enabled:=true;
      dpFechaF.Enabled:=false;
      eDesdeF.Enabled:=false;
      eHastaF.Enabled:=false;
      end
end;

procedure TfImpFact.rbPorNoClick(Sender: TObject);
begin
   if rbPorNo.Checked = true then   //aqui activa por num y desactiva lo demas.
      begin
      eDesdeF.Enabled:=true;
      eHastaF.Enabled:=true;
      dpFechaF.Enabled:=false;
      eFactN.Enabled:=false;
      end
end;

procedure TfImpFact.bbOkClick(Sender: TObject);
var
s: string;
d: TDateTime;
nn: Integer;
I: TDateTime;
H: TDateTime;
I1: string;
H1: string;
C: string;
begin
  d:= dpFechaF.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);

//esto imprime por numero.

  if rbNo.Checked = true then
     begin
     if TryStrToInt(eFactN.Text, nn) = false then
        begin
        ShowMessage('Debe digitar el Número');
        eFactN.Clear;
        eFactN.SetFocus;
        Exit;
        end;

     fFactImprimir.qryImpFact.SQL.Clear;
     fFactImprimir.qryImpFact.SQL.Add('select * from Fact where fact_n = "'+ eFactN.Text +'"');
     fFactImprimir.qryImpFact.SQL.Add('and status = "'+ '' +'"');
     fFactImprimir.qryImpFact.Open;

     if fFactImprimir.qryImpFact.IsEmpty then
        begin
        showmessage ('No existe esa Factura');
        Exit;
        end;

     fFactImprimir2.qryRelaFact.SQL.Clear;
     fFactImprimir2.qryRelaFact.SQL.Add('select * from Fact where fact_n = "'+ eFactN.Text +'"');
     fFactImprimir2.qryRelaFact.SQL.Add('and status = "'+ '' +'"');
     fFactImprimir2.qryRelaFact.Open;

     I:= fFactImprimir2.qryRelaFactfdesde.AsDateTime;
     H:= fFactImprimir2.qryRelaFactfhasta.AsDateTime;
     C:= fFactImprimir2.qryRelaFactcodigo_c.AsString;
     I1:= FormatDateTime('yyyy/mm/dd',I);
     H1:= FormatDateTime('yyyy/mm/dd',H);

     if fFactImprimir2.qryRelaFacttipo.AsString = 'O' then
        begin
        fFactImprimir2.qryRelaOrden.SQL.Clear;
        fFactImprimir2.qryRelaOrden.SQL.Add('select * from Ordenservicio where fecha between "'+ I1 +'" and "'+ H1 +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and codigo_c = "'+ C +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and status = "'+ '' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('order by fecha');
        fFactImprimir2.qryRelaOrden.Open;
        end;

     if fFactImprimir2.qryRelaFacttipo.AsString = 'T' then
        begin
        fFactImprimir2.qryRelaOrden.SQL.Clear;
        fFactImprimir2.qryRelaOrden.SQL.Add('select * from Ordenservicio where fecha between "'+ I1 +'" and "'+ H1 +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and codigo_c = "'+ C +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and status = "'+ '' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('order by fecha');
        fFactImprimir2.qryRelaOrden.Open;
        end;

     if fFactImprimir2.qryRelaFacttipo.AsString = 'E' then
        begin
        fFactImprimir2.qryRelaOrden.SQL.Clear;
        fFactImprimir2.qryRelaOrden.SQL.Add('select * from Ordenservicio where fecha between "'+ I1 +'" and "'+ H1 +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and codigo_c = "'+ C +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and status = "'+ '' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('order by fecha');
        fFactImprimir2.qryRelaOrden.Open;
        end;

      if fFactImprimir2.qryRelaFactforma.AsString = 'RD' then
         begin
         fFactImprimir2.qrltaza.Enabled:=false;
         fFactImprimir2.dbttaza.Enabled:=false;
         fFactImprimir2.qrlvalorus.Enabled:=false;
         fFactImprimir2.dbtus.Enabled:=false;
         fFactImprimir2.dbttotalus.Enabled:=false;
         fFactImprimir2.qrlNeto.Left:= 578;
         fFactImprimir2.raya13.Enabled:=false;
         fFactImprimir2.raya14.Enabled:=false;
         end;

      if fFactImprimir2.qryRelaFactforma.AsString = 'US' then
         begin
         fFactImprimir2.qrltaza.Enabled:=true;
         fFactImprimir2.dbttaza.Enabled:=true;
         fFactImprimir2.qrlvalorus.Enabled:=true;
         fFactImprimir2.dbtus.Enabled:=true;
         fFactImprimir2.dbttotalus.Enabled:=true;
         fFactImprimir2.qrlNeto.Left:= 514;
         fFactImprimir2.raya13.Enabled:=true;
         fFactImprimir2.raya14.Enabled:=true;
         end;


      fFactImprimir2.dbtTotal.Top:= 13;
      fFactImprimir2.dbttotalrd.Enabled:=false;
      fFactImprimir2.dbtdesc.Enabled:=false;
      fFactImprimir2.qrlra.Enabled:=false;
      fFactImprimir2.qrlpo.Enabled:=false;
      fFactImprimir2.dbtaum.Enabled:=false;
      fFactImprimir2.qrlram.Enabled:=false;
    

      if fFactImprimir2.qryRelaFactde.AsString <> '0' then
         begin
         fFactImprimir2.dbtTotal.Top:= 53;
         fFactImprimir2.dbttotalrd.Enabled:=true;
         fFactImprimir2.dbtdesc.Enabled:=true;
         fFactImprimir2.qrlra.Enabled:=true;
         fFactImprimir2.qrlpo.Enabled:=true;
         fFactImprimir2.dbtaum.Enabled:=false;
         fFactImprimir2.qrlram.Enabled:=false;
         end;

      if fFactImprimir2.qryRelaFactau.AsString <> '0' then
         begin
         fFactImprimir2.dbtTotal.Top:= 53;
         fFactImprimir2.dbttotalrd.Enabled:=true;
         fFactImprimir2.dbtdesc.Enabled:=false;
         fFactImprimir2.qrlra.Enabled:=false;
         fFactImprimir2.qrlpo.Enabled:=true;
         fFactImprimir2.dbtaum.Enabled:=true;
         fFactImprimir2.qrlram.Enabled:=true;
         end;


      if rbPantallaF.Checked = true then
        begin
            if cbF.Checked = true then
               fFactImprimir.RimpFact1.Preview;
            if cbR.Checked = true then
               fFactImprimir2.RimpFact2.Preview;
        end;
     if rbPantallaF.Checked = false then
        begin
            if cbF.Checked = true then
               fFactImprimir.RimpFact1.Print;
            if cbR.Checked = true then
               fFactImprimir2.RimpFact2.Print;
        end;

     end; //end si es num de fact.

     

//esto imprime todas las realizadas en dicha fecha.

    if rbporDia.Checked = true then
     begin
     
     fFactImprimir.qryImpFact.SQL.Clear;
     fFactImprimir.qryImpFact.SQL.Add('select * from Fact where fechaR = "'+ s +'"');
     fFactImprimir.qryImpFact.SQL.Add('and status = "'+ '' +'"');
     fFactImprimir.qryImpFact.Open;

     if fFactImprimir.qryImpFact.IsEmpty then
        begin
        showmessage ('No existen Facturas con esa fecha');
        Exit;
        end;

     fFactImprimir2.qryRelaFact.SQL.Clear;
     fFactImprimir2.qryRelaFact.SQL.Add('select * from Fact where fechaR = "'+ s +'"');
     fFactImprimir2.qryRelaFact.SQL.Add('and status = "'+ '' +'"');
     fFactImprimir2.qryRelaFact.Open;

     I:= fFactImprimir2.qryRelaFactfdesde.AsDateTime;
     H:= fFactImprimir2.qryRelaFactfhasta.AsDateTime;
     C:= fFactImprimir2.qryRelaFactcodigo_c.AsString;
     I1:= FormatDateTime('yyyy/mm/dd',I);
     H1:= FormatDateTime('yyyy/mm/dd',H);

     if fFactImprimir2.qryRelaFacttipo.AsString = 'O' then
        begin
        fFactImprimir2.qryRelaOrden.SQL.Clear;
        fFactImprimir2.qryRelaOrden.SQL.Add('select * from Ordenservicio where fecha between "'+ I1 +'" and "'+ H1 +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and codigo_c = "'+ C +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and status = "'+ '' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('order by fecha');
        fFactImprimir2.qryRelaOrden.Open;
        end;

     if fFactImprimir2.qryRelaFacttipo.AsString = 'T' then
        begin
        fFactImprimir2.qryRelaOrden.SQL.Clear;
        fFactImprimir2.qryRelaOrden.SQL.Add('select * from Ordenservicio where fecha between "'+ I1 +'" and "'+ H1 +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and codigo_c = "'+ C +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and tipo_servicio = "'+ 'TRASLADO' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and status = "'+ '' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('order by fecha');
        fFactImprimir2.qryRelaOrden.Open;
        end;

     if fFactImprimir2.qryRelaFacttipo.AsString = 'E' then
        begin
        fFactImprimir2.qryRelaOrden.SQL.Clear;
        fFactImprimir2.qryRelaOrden.SQL.Add('select * from Ordenservicio where fecha between "'+ I1 +'" and "'+ H1 +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and codigo_c = "'+ C +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and tipo_servicio = "'+ 'EXCURSION' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('and status = "'+ '' +'"');
        fFactImprimir2.qryRelaOrden.SQL.Add('order by fecha');
        fFactImprimir2.qryRelaOrden.Open;
        end;

     if rbPantallaF.Checked = true then
        begin
        fFactImprimir.RimpFact1.Preview;
        fFactImprimir2.RimpFact2.Preview;       
        end;
     if rbPantallaF.Checked = false then
        begin
        fFactImprimir.RimpFact1.Print;
        fFactImprimir2.RimpFact2.Print;
        end;
        
     end; //end si es por fecha de realizacion de la fact.






end;

end.
