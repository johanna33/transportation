unit uImprimirOrden;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons;

type
  TfImprimirOrden = class(TForm)
    pImprimirOrden: TPanel;
    GBimprimirOrden: TGroupBox;
    rbDia: TRadioButton;
    rbPorNo: TRadioButton;
    rbNo: TRadioButton;
    lporno: TLabel;
    dpFechaDia: TDateTimePicker;
    eOrdenN: TEdit;
    eDesdeO: TEdit;
    eHastaO: TEdit;
    GBSelectOrden: TGroupBox;
    rbPantallaO: TRadioButton;
    rbImprimirO: TRadioButton;
    bbOk: TBitBtn;
    bbCancelar: TBitBtn;
    cbPatas: TCheckBox;
    procedure bbCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbDiaClick(Sender: TObject);
    procedure rbNoClick(Sender: TObject);
    procedure rbPorNoClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImprimirOrden: TfImprimirOrden;

implementation

uses uMenuReportes, uRprintOrden, uRprintPata;

{$R *.dfm}

procedure TfImprimirOrden.bbCancelarClick(Sender: TObject);
begin
    fImprimirOrden.Close;
end;

procedure TfImprimirOrden.FormShow(Sender: TObject);
begin
    fMenuReportes.Hide;
    rbDia.Checked:=true;
    rbPantallaO.Checked:=true;
    dpFechaDia.Date:= Date;
    eOrdenN.Text:= '1000000000';
    eDesdeO.Text:= '1000000000';
    eHastaO.Text:= '1000000000';
    cbPatas.Checked:=false;
end;

procedure TfImprimirOrden.rbDiaClick(Sender: TObject);
begin
    if rbDia.Checked = true then    //aqui activa fecha del dia y desactiva lo demas.
      begin
      dpFechaDia.Enabled:=true;
      eOrdenN.Enabled:=false;
      eDesdeO.Enabled:=false;
      eHastaO.Enabled:=false;
      end
end;

procedure TfImprimirOrden.rbNoClick(Sender: TObject);
begin
    if rbNo.Checked = true then     //aqui activa la num tal y desactiva lo demas.
      begin
      eOrdenN.Enabled:=true;
      dpFechaDia.Enabled:=false;
      eDesdeO.Enabled:=false;
      eHastaO.Enabled:=false;
      end
end;

procedure TfImprimirOrden.rbPorNoClick(Sender: TObject);
begin
    if rbPorNo.Checked = true then   //aqui activa por num y desactiva lo demas.
      begin
      eDesdeO.Enabled:=true;
      eHastaO.Enabled:=true;
      dpFechaDia.Enabled:=false;
      eOrdenN.Enabled:=false;
      end
end;

procedure TfImprimirOrden.bbOkClick(Sender: TObject);
var
s: string;
d: TDateTime;
nn: Integer; //para comparar si es numero valido.
begin

  d:= dpFechaDia.Date;
  s:= FormatDateTime('yyyy/mm/dd',d);

              //// Aqui es para imprimir las Patas./////

if cbPatas.Checked = true then
   begin

   //esto para imprimir la del dia.
   if rbDia.Checked = true then
      begin
      fRprintPata.qryPrintPata.SQL.Clear;
      fRprintPata.qryPrintPata.SQL.Add('select * from OrdenServicio where fecha = "'+ s +'"');
      fRprintPata.qryPrintPata.SQL.Add('and codigo_ch1 <> "'+ '' +'"');
      fRprintPata.qryPrintPata.SQL.Add('and status = "'+ '' +'" ');
      fRprintPata.qryPrintPata.Open;

      if fRprintPata.qryPrintPata.IsEmpty then  //si esta vacio da un error.
         begin
         showmessage ('No Existen Ordenes en esta Fecha');
         Exit;
         end;

      if rbPantallaO.Checked = true then
         begin
         fRprintPata.RprintPata.Preview;   //muestra en pantalla la orden(s).
         Exit;
         end
       else if rbPantallaO.Checked = false then
         begin
         fRprintPata.RprintPata.Print;   //imprime la orden(s).
         Exit;
         end
      end;
     //aqui termina la del dia.

   //esto para imprimir el numero seleccionado.
   if rbNo.Checked = true then
      begin

      if TryStrToInt(eOrdenN.Text, nn) = false then
         begin
         ShowMessage('Porfavor digite un Número');
         eOrdenN.Text:='1000000000';
         eOrdenN.SetFocus;
         Exit;
      end;

      fRprintPata.qryPrintPata.SQL.Clear;
      fRprintPata.qryPrintPata.SQL.Add('select * from OrdenServicio where orden_n = "'+ eOrdenN.Text +'"');
      fRprintPata.qryPrintPata.SQL.Add('and codigo_ch1 <> "'+ '' +'"');
      fRprintPata.qryPrintPata.SQL.Add('and status = "'+ '' +'" ');
      fRprintPata.qryPrintPata.Open;

      if fRprintPata.qryPrintPata.IsEmpty then
         begin
         showmessage ('Esta Orden no Existe');
         Exit;
         end;

      if rbPantallaO.Checked = true then
         begin
         fRprintPata.RprintPata.Preview;
         Exit;
         end
       else if rbPantallaO.Checked = false then
         begin
         fRprintPata.RprintPata.Print;
         Exit;
         end
      end;
     //aqui termina por numero seleccionado.

   //esto para imprimir por rango de numeros.
   if rbPorNo.Checked = true then
      begin

      if TryStrToInt(eDesdeO.Text, nn) = false then
         begin
         ShowMessage('Porfavor digite un Número');
         eDesdeO.Text:='1000000000';
         eDesdeO.SetFocus;
         Exit;
      end;

      if TryStrToInt(eHastaO.Text, nn) = false then
         begin
         ShowMessage('Porfavor digite un Número');
         eHastaO.Text:='1000000000';
         eHastaO.SetFocus;
         Exit;
      end;

      fRprintPata.qryPrintPata.SQL.Clear;
      fRprintPata.qryPrintPata.SQL.Add('select * from OrdenServicio where orden_n between "'+ eDesdeO.Text +'" and "'+ eHastaO.Text +'"');
      fRprintPata.qryPrintPata.SQL.Add('and codigo_ch1 <> "'+ '' +'"');
      fRprintPata.qryPrintPata.SQL.Add('and status = "'+ '' +'" ');
      fRprintPata.qryPrintPata.Open;

      if fRprintPata.qryPrintPata.IsEmpty then
         begin
         showmessage ('Esas Ordenes No Existen');
         Exit;
         end;

      if rbPantallaO.Checked = true then
         begin
         fRprintPata.RprintPata.Preview;
         Exit;
         end
       else if rbPantallaO.Checked = false then
         begin
         fRprintPata.RprintPata.Print;
         Exit;
         end
      end;
     //aqui termina rango por numero.
   
    end;
//aqui termina el if de patas.


       //// Aqui es para imprimir ordenes normales con un solo chofer./////

//esto para imprimir la del dia.

   if rbDia.Checked = true then
      begin
      fRprintOrden.qryPrintOrden.SQL.Clear;
      fRprintOrden.qryPrintOrden.SQL.Add('select * from OrdenServicio where fecha = "'+ s +'"');
      fRprintOrden.qryPrintOrden.SQL.Add('and codigo_ch1 = "'+ '' +'"');
      fRprintOrden.qryPrintOrden.SQL.Add('and status = "'+ '' +'" ');
      fRprintOrden.qryPrintOrden.Open;

      if fRprintOrden.qryPrintOrden.IsEmpty then
         begin
         showmessage ('No Existen Ordenes en esta Fecha');
         Exit;
         end;

      if rbPantallaO.Checked = true then
         begin
         fRprintOrden.RprintOrden.Preview;
         Exit;
         end
       else if rbPantallaO.Checked = false then
         begin
         fRprintOrden.RprintOrden.Print;
         Exit;
         end
      end;
//aqui termina la del dia.

//esto para imprimir el numero seleccionado.

   if rbNo.Checked = true then
      begin

      if TryStrToInt(eOrdenN.Text, nn) = false then
         begin
         ShowMessage('Porfavor digite un Número');
         eOrdenN.Text:='1000000000';
         eOrdenN.SetFocus;
         Exit;
      end;

      fRprintOrden.qryPrintOrden.SQL.Clear;
      fRprintOrden.qryPrintOrden.SQL.Add('select * from OrdenServicio where orden_n = "'+ eOrdenN.Text +'"');
      fRprintOrden.qryPrintOrden.SQL.Add('and codigo_ch1 = "'+ '' +'"');
      fRprintOrden.qryPrintOrden.SQL.Add('and status = "'+ '' +'" ');
      fRprintOrden.qryPrintOrden.Open;

      if fRprintOrden.qryPrintOrden.IsEmpty then
         begin
         showmessage ('Esta Orden no Existe');
         Exit;
         end;

      if rbPantallaO.Checked = true then
         begin
         fRprintOrden.RprintOrden.Preview;
         Exit;
         end
       else if rbPantallaO.Checked = false then
         begin
         fRprintOrden.RprintOrden.Print;
         Exit;
         end
      end;
//aqui termina por numero seleccionado.

//esto para imprimir por rango de numeros.

   if rbPorNo.Checked = true then
      begin

      if TryStrToInt(eDesdeO.Text, nn) = false then
         begin
         ShowMessage('Porfavor digite un Número');
         eDesdeO.Text:='1000000000';
         eDesdeO.SetFocus;
         Exit;
      end;

      if TryStrToInt(eHastaO.Text, nn) = false then
         begin
         ShowMessage('Porfavor digite un Número');
         eHastaO.Text:='1000000000';
         eHastaO.SetFocus;
         Exit;
      end;

      fRprintOrden.qryPrintOrden.SQL.Clear;
      fRprintOrden.qryPrintOrden.SQL.Add('select * from OrdenServicio where orden_n between "'+ eDesdeO.Text +'" and "'+ eHastaO.Text +'"');
      fRprintOrden.qryPrintOrden.SQL.Add('and codigo_ch1 = "'+ '' +'"');
      fRprintOrden.qryPrintOrden.SQL.Add('and status = "'+ '' +'" ');
      fRprintOrden.qryPrintOrden.Open;

      if fRprintOrden.qryPrintOrden.IsEmpty then
         begin
         showmessage ('Esas Ordenes No Existen');
         Exit;
         end;

      if rbPantallaO.Checked = true then
         begin
         fRprintOrden.RprintOrden.Preview;
         Exit;
         end
       else if rbPantallaO.Checked = false then
         begin
         fRprintOrden.RprintOrden.Print;
         Exit;
         end
      end;
//aqui termina rango por numero.
end;

end.
