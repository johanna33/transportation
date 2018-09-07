unit uRrelacionB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, MemDS, DBAccess,
  MyAccess;

type
  TfRrelacionB = class(TForm)
    qryRelacionB: TMyQuery;
    RrelacionB: TQuickRep;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    qrlrevisado: TQRLabel;
    qrlrayas: TQRLabel;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    CHBandcolumna: TQRBand;
    qrlordenn: TQRLabel;
    qrlfecha: TQRLabel;
    qrlcapa: TQRLabel;
    qrlpax: TQRLabel;
    qrltipo: TQRLabel;
    qrlservicio: TQRLabel;
    qrlcliente: TQRLabel;
    qrlsolicitado: TQRLabel;
    qrlbono: TQRLabel;
    BandTitulo: TQRBand;
    qrlTitulo8: TQRLabel;
    qrlfecha1: TQRLabel;
    qrlhora: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    qrldesde1: TQRLabel;
    qrlhasta1: TQRLabel;
    qrldesde: TQRLabel;
    qrlhasta: TQRLabel;
    BandDetalle: TQRBand;
    cuadro2: TQRShape;
    dbtordenn: TQRDBText;
    dbtfecha: TQRDBText;
    dbtcapa: TQRDBText;
    dbtpax: TQRDBText;
    qrlray: TQRLabel;
    dbtpax1: TQRDBText;
    Exptipo: TQRExpr;
    ExpCliente: TQRExpr;
    raya1: TQRShape;
    raya2: TQRShape;
    raya3: TQRShape;
    raya4: TQRShape;
    raya6: TQRShape;
    raya7: TQRShape;
    raya8: TQRShape;
    raya5: TQRShape;
    Expservicio: TQRExpr;
    Expsolici: TQRExpr;
    Expbono: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRrelacionB: TfRrelacionB;

implementation

{$R *.dfm}

end.
