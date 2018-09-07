unit uRrelaChofer1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, MemDS, DBAccess, MyAccess, QRCtrls;

type
  TfRelaChofer1 = class(TForm)
    qryRelaChofer1: TMyQuery;
    RrelaChofer1: TQuickRep;
    SummaryBand1: TQRBand;
    qrltotal: TQRLabel;
    SysDatacantidad: TQRSysData;
    qrlcantidad: TQRLabel;
    qrlrevisado: TQRLabel;
    qrlraya1: TQRLabel;
    qrlrayon: TQRLabel;
    PHBandlogo: TQRBand;
    syspagina: TQRSysData;
    qrlpag: TQRLabel;
    DetailBand1: TQRBand;
    QRShape2: TQRShape;
    qrlrayita: TQRLabel;
    ExpCliente: TQRExpr;
    dbtpax1: TQRDBText;
    dbtpax: TQRDBText;
    dbtorden: TQRDBText;
    dbtfecha: TQRDBText;
    dbtcap: TQRDBText;
    ExpServicio: TQRExpr;
    dbtpata: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    qrlfech: TQRLabel;
    qrlorden: TQRLabel;
    qrlcliente: TQRLabel;
    qrldetalle: TQRLabel;
    qrlcap: TQRLabel;
    qrlpax: TQRLabel;
    qrlganado: TQRLabel;
    qrlnota1: TQRLabel;
    qrlNchofer: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape20: TQRShape;
    BandTitulo: TQRBand;
    qrlhora: TQRLabel;
    qrlfecha: TQRLabel;
    sysfecha: TQRSysData;
    syshora: TQRSysData;
    qrldesde1: TQRLabel;
    qrlhasta1: TQRLabel;
    qrldesde: TQRLabel;
    qrlhasta: TQRLabel;
    ExpGanado: TQRExpr;
    Exp1: TQRExpr;
    qryRelaChofer1orden_n: TIntegerField;
    qryRelaChofer1fecha: TDateField;
    qryRelaChofer1fecha_r: TDateField;
    qryRelaChofer1hora: TStringField;
    qryRelaChofer1capacidad: TIntegerField;
    qryRelaChofer1servicio: TStringField;
    qryRelaChofer1pax: TIntegerField;
    qryRelaChofer1pax1: TIntegerField;
    qryRelaChofer1solicitado: TStringField;
    qryRelaChofer1orden_c: TStringField;
    qryRelaChofer1bonos: TStringField;
    qryRelaChofer1linea_a: TStringField;
    qryRelaChofer1vuelo: TStringField;
    qryRelaChofer1hora_v: TStringField;
    qryRelaChofer1lugar: TStringField;
    qryRelaChofer1nombre: TStringField;
    qryRelaChofer1ficha1: TStringField;
    qryRelaChofer1ficha_o: TStringField;
    qryRelaChofer1tipo_servicio: TStringField;
    qryRelaChofer1valor_rd: TFloatField;
    qryRelaChofer1valor_us: TFloatField;
    qryRelaChofer1nombre_a: TStringField;
    qryRelaChofer1comision: TFloatField;
    qryRelaChofer1chofer1: TStringField;
    qryRelaChofer1com1: TFloatField;
    qryRelaChofer1user_o: TStringField;
    qryRelaChofer1status: TStringField;
    qryRelaChofer1codigo_c: TIntegerField;
    qryRelaChofer1marca: TStringField;
    qryRelaChofer1codigo_t: TIntegerField;
    qryRelaChofer1codigo_ch: TIntegerField;
    qryRelaChofer1codigo_ch1: TIntegerField;
    qryRelaChofer1capa1: TIntegerField;
    qryRelaChofer1marca1: TStringField;
    qryRelaChofer1pata: TStringField;
    qryRelaChofer1valor_real: TFloatField;
    qryRelaChofer1valor_t: TFloatField;
    qryRelaChofer1valor_c: TFloatField;
    qryRelaChofer1obser: TStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qryReCho: TMyQuery;
    dbtDieta: TQRDBText;
    dbtSeguro: TQRDBText;
    dbtAvanse: TQRDBText;
    dbtVfinal: TQRDBText;
    QRLabel5: TQRLabel;
    dbtHExtra: TQRDBText;
    qryReChocodigo_ch: TIntegerField;
    qryReChonombre_a: TStringField;
    qryReChovalorT: TFloatField;
    qryReChoValorFinal: TFloatField;
    qryReChofechaD: TDateField;
    qryReChofechaH: TDateField;
    qryReChoid: TIntegerField;
    qryReChotipo: TStringField;
    qryReChoDieta: TFloatField;
    qryReChoSeguro: TFloatField;
    qryReChoHExtra: TFloatField;
    qryReChoAvanse: TFloatField;
    qryReChofechaR: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelaChofer1: TfRelaChofer1;

implementation

{$R *.dfm}

end.
