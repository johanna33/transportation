unit uRimpFact1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfFactImprimir = class(TForm)
    RimpFact1: TQuickRep;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    qrlLogo2: TQRLabel;
    qrlLogo3: TQRLabel;
    PfooterB: TQRBand;
    qrldespachado: TQRLabel;
    qrlraya1: TQRLabel;
    qrlrecibido: TQRLabel;
    qrlraya2: TQRLabel;
    DetailBand1: TQRBand;
    qrlFactn: TQRLabel;
    dbtFactN: TQRDBText;
    qrldesde: TQRLabel;
    dbtFdesde: TQRDBText;
    qrlhasta: TQRLabel;
    dbtFhasta: TQRDBText;
    qrlnota2: TQRLabel;
    qrlnota3: TQRLabel;
    qrshapeFact: TQRShape;
    qrlnota1: TQRLabel;
    dbtCliente: TQRDBText;
    QRShape1: TQRShape;
    qrlrd: TQRLabel;
    dbtTotalNeto: TQRDBText;
    qryImpFact: TMyQuery;
    QRLabel1: TQRLabel;
    dbtNCF: TQRDBText;
    qrlncf: TQRLabel;
    qrlNota4: TQRLabel;
    qrnca: TQRLabel;
    qryImpFactfact_n: TIntegerField;
    qryImpFactncf: TStringField;
    qryImpFactfechaR: TDateField;
    qryImpFactfdesde: TDateField;
    qryImpFactfhasta: TDateField;
    qryImpFacttaza: TFloatField;
    qryImpFacttotalRD: TFloatField;
    qryImpFacttotalUS: TFloatField;
    qryImpFactcodigo_c: TIntegerField;
    qryImpFactnombre: TStringField;
    qryImpFactstatus: TStringField;
    qryImpFactforma: TStringField;
    qryImpFacttipo: TStringField;
    qryImpFactde: TFloatField;
    qryImpFactau: TFloatField;
    qryImpFactvalor: TFloatField;
    qryImpFactuser_f: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFactImprimir: TfFactImprimir;

implementation

{$R *.dfm}

procedure TfFactImprimir.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if qryImpFactncf.AsString = '' then
 begin
 qrnca.enabled:=false;
 qrlncf.enabled:=false;
 end
 else
 begin
 qrnca.enabled:=true;
 qrlncf.enabled:=true;
 end;
end;

end.
