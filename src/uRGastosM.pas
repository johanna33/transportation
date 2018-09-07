unit uRGastosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfRGastosM = class(TForm)
    RgastosM: TQuickRep;
    BandTitulo: TQRBand;
    qrlTitulo5: TQRLabel;
    qrlfech: TQRLabel;
    qrlhora: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    qrldesde1: TQRLabel;
    qrlhasta1: TQRLabel;
    qrlhasta: TQRLabel;
    qrldesde: TQRLabel;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    BandDetalle: TQRBand;
    ColumnHeaderBand1: TQRBand;
    SummaryB: TQRBand;
    qrltotal: TQRLabel;
    exptotalg: TQRExpr;
    groupGastos: TQRGroup;
    footerGastos: TQRBand;
    qrltot: TQRLabel;
    Exptotal: TQRExpr;
    dbtficha: TQRDBText;
    dbtmarca: TQRDBText;
    qrlrayas: TQRLabel;
    qryGastosM: TMyQuery;
    qrlcodm: TQRLabel;
    qrlfecham: TQRLabel;
    qrlnomm: TQRLabel;
    qrlrecibom: TQRLabel;
    qrlkmts: TQRLabel;
    qrldesm: TQRLabel;
    qrlgastos: TQRLabel;
    cuadro1: TQRShape;
    Exprecibo: TQRExpr;
    Expdescrip: TQRExpr;
    dbtkmts: TQRDBText;
    dbtimporte: TQRDBText;
    dbtcodm: TQRDBText;
    dbtfecham: TQRDBText;
    Expnombre: TQRExpr;
    raya1: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRGastosM: TfRGastosM;

implementation

{$R *.dfm}

end.
