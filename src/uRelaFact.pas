unit uRelaFact;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfRelaFact = class(TForm)
    RrelaFact: TQuickRep;
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
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    qrltot: TQRLabel;
    qrlcliente: TQRLabel;
    qrlfactN: TQRLabel;
    qrldes: TQRLabel;
    qrlhas: TQRLabel;
    qrlhasta: TQRLabel;
    qrldesde: TQRLabel;
    qrlimporte: TQRLabel;
    dbtcliente: TQRDBText;
    dbtfactn: TQRDBText;
    dbtdesde: TQRDBText;
    dbthasta: TQRDBText;
    dbtimporte: TQRDBText;
    ExpNeto: TQRExpr;
    dbtstatus: TQRDBText;
    qryRelaFact: TMyQuery;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    dbtNcf: TQRDBText;
    QRLabel2: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelaFact: TfRelaFact;

implementation

{$R *.dfm}

end.
