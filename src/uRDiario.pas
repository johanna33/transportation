unit uRDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TfRDiario = class(TForm)
    qryDiario: TMyQuery;
    RopeGeneral: TQuickRep;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    syscantidad: TQRSysData;
    PHBandlogo: TQRBand;
    qrlLogo1: TQRLabel;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    CHBandcolumna: TQRBand;
    qrlordenn: TQRLabel;
    qrlficha2: TQRLabel;
    qrlcapa: TQRLabel;
    qrlpax: TQRLabel;
    qrlservicio: TQRLabel;
    qrlcliente: TQRLabel;
    qrlhoras: TQRLabel;
    qrlvuelo: TQRLabel;
    qrlhoravuelo: TQRLabel;
    qrlBono: TQRLabel;
    BandTitulo: TQRBand;
    qrlfecha11: TQRLabel;
    qrlTitulo5: TQRLabel;
    qrlfecha1: TQRLabel;
    BandDetalle: TQRBand;
    shapeDiario: TQRShape;
    dbtordenn: TQRDBText;
    dbthoras: TQRDBText;
    dbtFicha2: TQRDBText;
    dbtficha0: TQRDBText;
    dbtcapa: TQRDBText;
    dbtpax: TQRDBText;
    dbtvuelo: TQRDBText;
    dbthoravuelo: TQRDBText;
    dbtpax1: TQRDBText;
    raya1: TQRShape;
    raya2: TQRShape;
    qrlrayita: TQRLabel;
    raya3: TQRShape;
    raya4: TQRShape;
    raya5: TQRShape;
    raya6: TQRShape;
    raya7: TQRShape;
    raya8: TQRShape;
    raya9: TQRShape;
    raya10: TQRShape;
    ExpCliente: TQRExpr;
    rayita2: TQRLabel;
    ExpStatus: TQRExpr;
    ExpBono: TQRExpr;
    ExpServicio: TQRExpr;
    qryDiarioorden_n: TIntegerField;
    qryDiariofecha: TDateField;
    qryDiariofecha_r: TDateField;
    qryDiariohora: TStringField;
    qryDiariocapacidad: TIntegerField;
    qryDiarioservicio: TStringField;
    qryDiariopax: TIntegerField;
    qryDiariopax1: TIntegerField;
    qryDiariosolicitado: TStringField;
    qryDiarioorden_c: TStringField;
    qryDiariobonos: TStringField;
    qryDiariolinea_a: TStringField;
    qryDiariovuelo: TStringField;
    qryDiariohora_v: TStringField;
    qryDiariolugar: TStringField;
    qryDiarionombre: TStringField;
    qryDiarioficha1: TStringField;
    qryDiarioficha_o: TStringField;
    qryDiariotipo_servicio: TStringField;
    qryDiariovalor_rd: TFloatField;
    qryDiariovalor_us: TFloatField;
    qryDiarionombre_a: TStringField;
    qryDiariocomision: TFloatField;
    qryDiariochofer1: TStringField;
    qryDiariocom1: TFloatField;
    qryDiariouser_o: TStringField;
    qryDiariostatus: TStringField;
    qryDiariocodigo_c: TIntegerField;
    qryDiariomarca: TStringField;
    qryDiariocodigo_t: TIntegerField;
    qryDiariocodigo_ch: TIntegerField;
    qryDiariocodigo_ch1: TIntegerField;
    qryDiariocapa1: TIntegerField;
    qryDiariomarca1: TStringField;
    qryDiariopata: TStringField;
    qryDiariovalor_real: TFloatField;
    qryDiariovalor_t: TFloatField;
    qryDiariovalor_c: TFloatField;
    qryDiarioobser: TStringField;
    qrlChofer: TQRLabel;
    qrlNota: TQRLabel;
    raya0: TQRShape;
    ExpChofer: TQRExpr;
    ExpObserva: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRDiario: TfRDiario;

implementation

{$R *.dfm}

end.
