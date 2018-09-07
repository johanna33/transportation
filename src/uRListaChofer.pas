unit uRListaChofer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfRListaChofer = class(TForm)
    RListaChofer: TQuickRep;
    BandDetalle: TQRBand;
    PHBandlogo: TQRBand;
    Bandtitulo: TQRBand;
    CHBandcolumna: TQRBand;
    qrlLogo1: TQRLabel;
    qrlTitulo1: TQRLabel;
    qrlcod: TQRLabel;
    qrlnombrea: TQRLabel;
    qrlcedula: TQRLabel;
    qrlficha: TQRLabel;
    qrltelefono: TQRLabel;
    dbtCod: TQRDBText;
    dbtNombrea: TQRDBText;
    dbtCedula: TQRDBText;
    dbtFicha: TQRDBText;
    dbtTel1: TQRDBText;
    dbtTel2: TQRDBText;
    qrlpag: TQRLabel;
    syspagina: TQRSysData;
    qrlfecha: TQRLabel;
    qrlhora: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    qryChoferL: TMyQuery;
    dbtSta: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRListaChofer: TfRListaChofer;

implementation

{$R *.dfm}

end.
