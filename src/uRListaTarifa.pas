unit uRListaTarifa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, QRCtrls, QuickRpt, ExtCtrls;

type
  TfRListaTarifa = class(TForm)
    RListaTarifa: TQuickRep;
    CHBandcolumna: TQRBand;
    qrlCo: TQRLabel;
    qrlcliente: TQRLabel;
    BandDetalle: TQRBand;
    dbtco: TQRDBText;
    dbtcliente: TQRDBText;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    BandTitulo: TQRBand;
    qrltitulo4: TQRLabel;
    qrlfecha: TQRLabel;
    qrlhora: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    qrltipo: TQRLabel;
    qryTarifa: TMyQuery;
    dbttipo: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRListaTarifa: TfRListaTarifa;

implementation

{$R *.dfm}

end.
