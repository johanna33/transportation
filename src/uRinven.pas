unit uRinven;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TfRinven = class(TForm)
    RInven: TQuickRep;
    BandTitulo: TQRBand;
    qrlTitulo5: TQRLabel;
    qrlfech: TQRLabel;
    sysfecha: TQRSysData;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    BandDetalle: TQRBand;
    dbtcanti: TQRDBText;
    dbtprecioi: TQRDBText;
    dbtarti: TQRDBText;
    dbtfechai: TQRDBText;
    dbtcodi: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    qrlhorai: TQRLabel;
    qrlprecioi: TQRLabel;
    qrlfechai: TQRLabel;
    qrlcodi: TQRLabel;
    qrlcanti: TQRLabel;
    qryInven: TMyQuery;
    dbtnota: TQRDBText;
    qrldesde1: TQRLabel;
    qrldesde: TQRLabel;
    qrlhasta1: TQRLabel;
    qrlhasta: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRinven: TfRinven;

implementation

{$R *.dfm}

end.
