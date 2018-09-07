unit uProdEquipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfProdEquipo = class(TForm)
    RprodEquipo: TQuickRep;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
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
    qryProdu: TMyQuery;
    CHBandcolumna: TQRBand;
    qrlordenn: TQRLabel;
    qrlimporte: TQRLabel;
    QRBand1: TQRBand;
    shapeDiario: TQRShape;
    dbtordenn: TQRDBText;
    dbtrd: TQRDBText;
    raya2: TQRShape;
    raya5: TQRShape;
    SummaryBand1: TQRBand;
    qrlprod: TQRLabel;
    dbtpata: TQRDBText;
    ExpTotal: TQRExpr;
    groupGastos: TQRGroup;
    qrlficha: TQRLabel;
    qrlmarca: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProdEquipo: TfProdEquipo;

implementation

{$R *.dfm}

end.
