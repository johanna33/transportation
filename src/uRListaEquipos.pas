unit uRListaEquipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfRListaEquipos = class(TForm)
    RListaEquipos: TQuickRep;
    CHBandcolumna: TQRBand;
    BandDetalle: TQRBand;
    PHBandlogo: TQRBand;
    BandTitulo: TQRBand;
    qrlLogo1: TQRLabel;
    qrlTitulo3: TQRLabel;
    qrlficha1: TQRLabel;
    qrlmarca: TQRLabel;
    qrlano: TQRLabel;
    qrlcolor: TQRLabel;
    qrlplaca: TQRLabel;
    qrlcap: TQRLabel;
    qrlcom: TQRLabel;
    dbtficha1: TQRDBText;
    dbtmarca: TQRDBText;
    dbtano: TQRDBText;
    dbtcolor: TQRDBText;
    dbtplaca: TQRDBText;
    dbtcap: TQRDBText;
    dbtcom: TQRDBText;
    qrlpag: TQRLabel;
    syspagina: TQRSysData;
    qrlfecha: TQRLabel;
    qrlhora: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    qryEquiposL: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRListaEquipos: TfRListaEquipos;

implementation

{$R *.dfm}

end.
