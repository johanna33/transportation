unit uRrelaChofer2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TfRelaChofer2 = class(TForm)
    RrelaChofer2: TQuickRep;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    SysDatacantidad: TQRSysData;
    qrlcantidad: TQRLabel;
    qrlrevisado: TQRLabel;
    qrlraya1: TQRLabel;
    qrlrayon: TQRLabel;
    Exp1: TQRExpr;
    PHBandlogo: TQRBand;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    DetailBand1: TQRBand;
    QRShape2: TQRShape;
    dbtcod: TQRDBText;
    QRShape3: TQRShape;
    QRShape8: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    qrlnombre: TQRLabel;
    qrlcod: TQRLabel;
    qrlganado: TQRLabel;
    QRShape12: TQRShape;
    QRShape16: TQRShape;
    BandTitulo: TQRBand;
    qrlfecha: TQRLabel;
    sysfecha: TQRSysData;
    qrldesde1: TQRLabel;
    qrlhasta1: TQRLabel;
    qrldesde: TQRLabel;
    qrlhasta: TQRLabel;
    qrlTitu: TQRLabel;
    qryRChofer2: TMyQuery;
    dbtnombre: TQRDBText;
    dbtganado: TQRDBText;
    qrlLogo1: TQRLabel;
    qrlhora: TQRLabel;
    syshora: TQRSysData;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    qryRChofer2codigo_ch: TIntegerField;
    qryRChofer2nombre_a: TStringField;
    qryRChofer2valorT: TFloatField;
    qryRChofer2ValorFinal: TFloatField;
    qryRChofer2fechaD: TDateField;
    qryRChofer2fechaH: TDateField;
    qryRChofer2id: TIntegerField;
    qryRChofer2tipo: TStringField;
    qryRChofer2Dieta: TFloatField;
    qryRChofer2Seguro: TFloatField;
    qryRChofer2HExtra: TFloatField;
    qryRChofer2Avanse: TFloatField;
    qryRChofer2fechaR: TDateField;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelaChofer2: TfRelaChofer2;

implementation

{$R *.dfm}

end.
