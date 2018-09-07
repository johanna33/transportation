unit uRListaSupli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfRListaSupli = class(TForm)
    RListaSupli: TQuickRep;
    CHBandcolumna: TQRBand;
    BandDetalle: TQRBand;
    PHBandlogo: TQRBand;
    BandTitulo: TQRBand;
    qrlLogo1: TQRLabel;
    qrltitulo4: TQRLabel;
    qrlCodi: TQRLabel;
    qrlsuplidor: TQRLabel;
    dbtcodi: TQRDBText;
    dbtsuplidor: TQRDBText;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    SummaryBand1: TQRBand;
    qrlfecha: TQRLabel;
    qrlhora: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    qrySupliL: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRListaSupli: TfRListaSupli;

implementation

{$R *.dfm}

end.
