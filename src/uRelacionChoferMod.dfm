object fRelaChofModi: TfRelaChofModi
  Left = 234
  Top = 67
  Width = 808
  Height = 659
  Caption = 'Modificar Relaci'#243'n de Chofer'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 336
    Top = 120
    Width = 53
    Height = 16
    Caption = '+ Dieta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 625
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object ltitulo11: TLabel
      Left = 168
      Top = 32
      Width = 436
      Height = 18
      Caption = 'RELACION DE SERVICIOS DE CHOFERES AGRUPADA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ldieta: TLabel
      Left = 320
      Top = 120
      Width = 53
      Height = 16
      Caption = '+ Dieta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lseguro: TLabel
      Left = 504
      Top = 120
      Width = 62
      Height = 16
      Caption = '- Seguro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lavanse: TLabel
      Left = 584
      Top = 120
      Width = 65
      Height = 16
      Caption = '- Avanse'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lnombre: TLabel
      Left = 32
      Top = 120
      Width = 135
      Height = 16
      Caption = 'Nombre del Chofer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 392
      Top = 120
      Width = 84
      Height = 16
      Caption = '+ Incentivo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbGRelaCho: TDBGrid
      Left = 16
      Top = 200
      Width = 761
      Height = 409
      DataSource = dsRelaCh
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_ch'
          Title.Caption = 'Cod.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nombre_a'
          Title.Caption = 'Nombre'
          Width = 244
          Visible = True
        end
        item
          Color = clInactiveCaptionText
          Expanded = False
          FieldName = 'valorT'
          Title.Caption = 'ValorSevicios'
          Width = 73
          Visible = True
        end
        item
          Color = clInactiveCaptionText
          Expanded = False
          FieldName = 'Dieta'
          Visible = True
        end
        item
          Color = clInactiveCaptionText
          DropDownRows = 4
          Expanded = False
          FieldName = 'HExtra'
          Title.Caption = 'HoraExtra'
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'Seguro'
          Visible = True
        end
        item
          Color = clMoneyGreen
          Expanded = False
          FieldName = 'Avanse'
          Visible = True
        end
        item
          Color = clScrollBar
          Expanded = False
          FieldName = 'ValorFinal'
          Title.Caption = 'Total Ganado'
          Visible = True
        end>
    end
    object bModificar: TButton
      Left = 680
      Top = 136
      Width = 99
      Height = 33
      Caption = 'Modificar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bModificarClick
    end
    object dbeDieta: TDBEdit
      Left = 312
      Top = 144
      Width = 73
      Height = 21
      DataField = 'Dieta'
      DataSource = dsRelaCh
      TabOrder = 2
    end
    object dbeSeguro: TDBEdit
      Left = 496
      Top = 144
      Width = 73
      Height = 21
      DataField = 'Seguro'
      DataSource = dsRelaCh
      TabOrder = 3
    end
    object dbeAvanse: TDBEdit
      Left = 584
      Top = 144
      Width = 73
      Height = 21
      DataField = 'Avanse'
      DataSource = dsRelaCh
      TabOrder = 4
    end
    object dbeNombre: TDBEdit
      Left = 24
      Top = 144
      Width = 273
      Height = 24
      CharCase = ecUpperCase
      DataField = 'nombre_a'
      DataSource = dsRelaCh
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object dbeId: TDBEdit
      Left = 80
      Top = 8
      Width = 33
      Height = 21
      DataField = 'id'
      DataSource = dsRelaCh
      Enabled = False
      TabOrder = 6
      Visible = False
    end
    object bbSaliR: TBitBtn
      Left = 672
      Top = 8
      Width = 113
      Height = 41
      Caption = 'Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = bbSaliRClick
      Glyph.Data = {
        8A0B0000424D8A0B0000000000003600000028000000210000001D0000000100
        180000000000540B000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080
        80808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0808080808080808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        8080808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C08080808080808080800000800000FF808080808080808080C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000FF0000800000FF808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C08080808080808080800000800000FF0000800000FF808080808080C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF0000800000FF0000800000FF808080808080808080808080C0C0C0C0
        C0C0C0C0C08080808080808080800000800000FF0000800000FF0000800000FF
        808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
        C0C00000FF0000800000FF0000800000FF0000800000FF808080808080808080
        808080C0C0C08080808080808080800000800000FF0000800000FF0000800000
        FF000080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C00000FF0000FF0000800000FF0000800000FF0000800000FF8080
        808080808080808080808080808080800000800000FF0000800000FF00008000
        00FF000080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000800000FF0000800000FF00
        00800000FF8080808080808080808080800000800000FF0000800000FF000080
        0000FF000080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000800000FF
        0000800000FF0000800000FF8080808080800000800000FF0000800000FF0000
        800000FF000080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000
        FF0000800000FF0000800000FF0000800000FF0000800000FF0000800000FF00
        00800000FF0000800000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C00000FF0000FF0000800000FF0000800000FF0000800000FF0000800000FF
        0000800000FF0000800000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C00000FF0000FF0000800000FF0000800000FF0000800000
        FF0000800000FF0000800000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000800000FF00008000
        00FF0000800000FF0000800000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000800000FF000080
        0000FF0000800000FF0000800000FF808080808080C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000800000FF0000
        800000FF0000800000FF0000800000FF000080808080808080808080C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000800000FF00
        00800000FF0000FF0000FF0000800000FF0000800000FF808080808080808080
        808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000800000FF
        0000800000FF0000FF0000FF0000FF0000FF0000800000FF0000800000FF8080
        80808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000800000
        FF0000800000FF0000FF0000FFC0C0C0C0C0C00000FF0000FF0000800000FF00
        00800000FF808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000008000
        00FF0000800000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF
        0000800000FF0000800000FF808080808080808080C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000080
        0000FF0000800000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF0000FF0000800000FF000080808080808080808080808080C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C00000
        800000FF0000800000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000FF0000FF0000800000FF000080808080808080808080
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C000
        00800000FF0000800000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF0000FF0000800000FF0000808080
        80808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0
        C0C0C00000FF0000800000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF00008000
        00FF000080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000C0C0
        C0C0C0C0C0C0C00000800000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000FF
        0000FF0000800000FF808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000C0C0C0C0C0C0C0C0C00000FF0000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000FF0000FF0000800000FF808080C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C00000FF0000FF000080C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000}
    end
    object bReCalc: TButton
      Left = 680
      Top = 72
      Width = 105
      Height = 49
      Caption = 'Re-Calcular Valores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      WordWrap = True
      OnClick = bReCalcClick
    end
  end
  object dbeHextra: TDBEdit
    Left = 408
    Top = 144
    Width = 73
    Height = 21
    DataField = 'HExtra'
    DataSource = dsRelaCh
    TabOrder = 1
  end
  object qryRelaCh: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select * from relacionchofer')
    Active = True
    FetchAll = True
    Left = 40
    object qryRelaChcodigo_ch: TIntegerField
      FieldName = 'codigo_ch'
      Origin = 'relacionchofer.codigo_ch'
    end
    object qryRelaChnombre_a: TStringField
      FieldName = 'nombre_a'
      Origin = 'relacionchofer.nombre_a'
      Size = 50
    end
    object qryRelaChvalorT: TFloatField
      FieldName = 'valorT'
      Origin = 'relacionchofer.valorT'
    end
    object qryRelaChValorFinal: TFloatField
      FieldName = 'ValorFinal'
      Origin = 'relacionchofer.ValorFinal'
    end
    object qryRelaChfechaD: TDateField
      FieldName = 'fechaD'
      Origin = 'relacionchofer.fechaD'
    end
    object qryRelaChfechaH: TDateField
      FieldName = 'fechaH'
      Origin = 'relacionchofer.fechaH'
    end
    object qryRelaChid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'relacionchofer.id'
    end
    object qryRelaChtipo: TStringField
      FieldName = 'tipo'
      Origin = 'relacionchofer.tipo'
      FixedChar = True
      Size = 1
    end
    object qryRelaChDieta: TFloatField
      FieldName = 'Dieta'
      Origin = 'relacionchofer.Dieta'
    end
    object qryRelaChSeguro: TFloatField
      FieldName = 'Seguro'
      Origin = 'relacionchofer.Seguro'
    end
    object qryRelaChHExtra: TFloatField
      FieldName = 'HExtra'
      Origin = 'relacionchofer.HExtra'
    end
    object qryRelaChAvanse: TFloatField
      FieldName = 'Avanse'
      Origin = 'relacionchofer.Avanse'
    end
    object qryRelaChfechaR: TDateField
      FieldName = 'fechaR'
      Origin = 'relacionchofer.fechaR'
    end
  end
  object dsRelaCh: TDataSource
    DataSet = qryRelaCh
    Left = 8
  end
  object qryModRela: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'update relacionchofer'
      'set dieta=:vdieta, seguro=:vseguro, avanse=:vavanse, '
      'valorfinal=:vfinal, hextra=:vextra'
      'where id =:v1id')
    FetchAll = True
    Left = 32
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'vdieta'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'vseguro'
      end
      item
        DataType = ftUnknown
        Name = 'vavanse'
      end
      item
        DataType = ftUnknown
        Name = 'vfinal'
      end
      item
        DataType = ftUnknown
        Name = 'vextra'
      end
      item
        DataType = ftUnknown
        Name = 'v1id'
      end>
  end
  object qryCheck: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select * from relacionchofer')
    Active = True
    FetchAll = True
    Left = 128
    object qryCheckcodigo_ch: TIntegerField
      FieldName = 'codigo_ch'
      Origin = 'relacionchofer.codigo_ch'
    end
    object qryChecknombre_a: TStringField
      FieldName = 'nombre_a'
      Origin = 'relacionchofer.nombre_a'
      Size = 50
    end
    object qryCheckvalorT: TFloatField
      FieldName = 'valorT'
      Origin = 'relacionchofer.valorT'
    end
    object qryCheckValorFinal: TFloatField
      FieldName = 'ValorFinal'
      Origin = 'relacionchofer.ValorFinal'
    end
    object qryCheckfechaD: TDateField
      FieldName = 'fechaD'
      Origin = 'relacionchofer.fechaD'
    end
    object qryCheckfechaH: TDateField
      FieldName = 'fechaH'
      Origin = 'relacionchofer.fechaH'
    end
    object qryCheckid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'relacionchofer.id'
    end
    object qryChecktipo: TStringField
      FieldName = 'tipo'
      Origin = 'relacionchofer.tipo'
      FixedChar = True
      Size = 1
    end
    object qryCheckDieta: TFloatField
      FieldName = 'Dieta'
      Origin = 'relacionchofer.Dieta'
    end
    object qryCheckSeguro: TFloatField
      FieldName = 'Seguro'
      Origin = 'relacionchofer.Seguro'
    end
    object qryCheckHExtra: TFloatField
      FieldName = 'HExtra'
      Origin = 'relacionchofer.HExtra'
    end
    object qryCheckAvanse: TFloatField
      FieldName = 'Avanse'
      Origin = 'relacionchofer.Avanse'
    end
    object qryCheckfechaR: TDateField
      FieldName = 'fechaR'
      Origin = 'relacionchofer.fechaR'
    end
  end
  object qryModOrden: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'update ordenservicio'
      'set valor_t=:vvalors'
      'where orden_n =:vorden')
    FetchAll = True
    Left = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'vvalors'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'vorden'
      end>
  end
  object qryCheckOrden: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select * from ordenservicio')
    Active = True
    FetchAll = True
    Left = 264
    object qryCheckOrdenorden_n: TIntegerField
      FieldName = 'orden_n'
      Origin = 'ordenservicio.orden_n'
    end
    object qryCheckOrdenfecha: TDateField
      FieldName = 'fecha'
      Origin = 'ordenservicio.fecha'
    end
    object qryCheckOrdenfecha_r: TDateField
      FieldName = 'fecha_r'
      Origin = 'ordenservicio.fecha_r'
    end
    object qryCheckOrdenhora: TStringField
      FieldName = 'hora'
      Origin = 'ordenservicio.hora'
      Size = 5
    end
    object qryCheckOrdencapacidad: TIntegerField
      FieldName = 'capacidad'
      Origin = 'ordenservicio.capacidad'
    end
    object qryCheckOrdenservicio: TStringField
      FieldName = 'servicio'
      Origin = 'ordenservicio.servicio'
      Size = 35
    end
    object qryCheckOrdenpax: TIntegerField
      FieldName = 'pax'
      Origin = 'ordenservicio.pax'
    end
    object qryCheckOrdenpax1: TIntegerField
      FieldName = 'pax1'
      Origin = 'ordenservicio.pax1'
    end
    object qryCheckOrdensolicitado: TStringField
      FieldName = 'solicitado'
      Origin = 'ordenservicio.solicitado'
    end
    object qryCheckOrdenorden_c: TStringField
      FieldName = 'orden_c'
      Origin = 'ordenservicio.orden_c'
    end
    object qryCheckOrdenbonos: TStringField
      FieldName = 'bonos'
      Origin = 'ordenservicio.bonos'
      FixedChar = True
      Size = 3
    end
    object qryCheckOrdenlinea_a: TStringField
      FieldName = 'linea_a'
      Origin = 'ordenservicio.linea_a'
      Size = 10
    end
    object qryCheckOrdenvuelo: TStringField
      FieldName = 'vuelo'
      Origin = 'ordenservicio.vuelo'
      Size = 10
    end
    object qryCheckOrdenhora_v: TStringField
      FieldName = 'hora_v'
      Origin = 'ordenservicio.hora_v'
      Size = 5
    end
    object qryCheckOrdenlugar: TStringField
      FieldName = 'lugar'
      Origin = 'ordenservicio.lugar'
      Size = 40
    end
    object qryCheckOrdennombre: TStringField
      FieldName = 'nombre'
      Origin = 'ordenservicio.nombre'
      Size = 50
    end
    object qryCheckOrdenficha1: TStringField
      FieldName = 'ficha1'
      Origin = 'ordenservicio.ficha1'
      Size = 4
    end
    object qryCheckOrdenficha_o: TStringField
      FieldName = 'ficha_o'
      Origin = 'ordenservicio.ficha_o'
      Size = 4
    end
    object qryCheckOrdentipo_servicio: TStringField
      FieldName = 'tipo_servicio'
      Origin = 'ordenservicio.tipo_servicio'
      Size = 9
    end
    object qryCheckOrdenvalor_rd: TFloatField
      FieldName = 'valor_rd'
      Origin = 'ordenservicio.valor_rd'
    end
    object qryCheckOrdenvalor_us: TFloatField
      FieldName = 'valor_us'
      Origin = 'ordenservicio.valor_us'
    end
    object qryCheckOrdennombre_a: TStringField
      FieldName = 'nombre_a'
      Origin = 'ordenservicio.nombre_a'
      Size = 50
    end
    object qryCheckOrdencomision: TFloatField
      FieldName = 'comision'
      Origin = 'ordenservicio.comision'
    end
    object qryCheckOrdenchofer1: TStringField
      FieldName = 'chofer1'
      Origin = 'ordenservicio.chofer1'
      Size = 50
    end
    object qryCheckOrdencom1: TFloatField
      FieldName = 'com1'
      Origin = 'ordenservicio.com1'
    end
    object qryCheckOrdenuser_o: TStringField
      FieldName = 'user_o'
      Origin = 'ordenservicio.user_o'
      Size = 10
    end
    object qryCheckOrdenstatus: TStringField
      FieldName = 'status'
      Origin = 'ordenservicio.status'
      Size = 9
    end
    object qryCheckOrdencodigo_c: TIntegerField
      FieldName = 'codigo_c'
      Origin = 'ordenservicio.codigo_c'
    end
    object qryCheckOrdenmarca: TStringField
      FieldName = 'marca'
      Origin = 'ordenservicio.marca'
    end
    object qryCheckOrdencodigo_t: TIntegerField
      FieldName = 'codigo_t'
      Origin = 'ordenservicio.codigo_t'
    end
    object qryCheckOrdencodigo_ch: TIntegerField
      FieldName = 'codigo_ch'
      Origin = 'ordenservicio.codigo_ch'
    end
    object qryCheckOrdencodigo_ch1: TIntegerField
      FieldName = 'codigo_ch1'
      Origin = 'ordenservicio.codigo_ch1'
    end
    object qryCheckOrdencapa1: TIntegerField
      FieldName = 'capa1'
      Origin = 'ordenservicio.capa1'
    end
    object qryCheckOrdenmarca1: TStringField
      FieldName = 'marca1'
      Origin = 'ordenservicio.marca1'
    end
    object qryCheckOrdenpata: TStringField
      FieldName = 'pata'
      Origin = 'ordenservicio.pata'
      FixedChar = True
      Size = 1
    end
    object qryCheckOrdenvalor_t: TFloatField
      FieldName = 'valor_t'
      Origin = 'ordenservicio.valor_t'
    end
    object qryCheckOrdenvalor_c: TFloatField
      FieldName = 'valor_c'
      Origin = 'ordenservicio.valor_c'
    end
    object qryCheckOrdenvalor_real: TFloatField
      FieldName = 'valor_real'
      Origin = 'ordenservicio.valor_real'
    end
    object qryCheckOrdenobser: TStringField
      FieldName = 'obser'
      Origin = 'ordenservicio.obser'
      Size = 200
    end
  end
  object qryChoferC: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select * from choferes')
    FetchAll = True
    Left = 304
    object qryChoferCcod_chofer: TIntegerField
      FieldName = 'cod_chofer'
    end
    object qryChoferCnombre_a: TStringField
      FieldName = 'nombre_a'
      Size = 50
    end
    object qryChoferCcedula: TStringField
      FieldName = 'cedula'
      Size = 13
    end
    object qryChoferClicencia: TStringField
      FieldName = 'licencia'
    end
    object qryChoferCcomision: TIntegerField
      FieldName = 'comision'
    end
    object qryChoferCcategoria: TStringField
      FieldName = 'categoria'
      Size = 5
    end
    object qryChoferCtel1: TStringField
      FieldName = 'tel1'
      Size = 12
    end
    object qryChoferCuser_ch: TStringField
      FieldName = 'user_ch'
      Size = 10
    end
    object qryChoferCcel: TStringField
      FieldName = 'cel'
      Size = 12
    end
    object qryChoferCdireccion: TStringField
      FieldName = 'direccion'
      Size = 50
    end
    object qryChoferCficha: TStringField
      FieldName = 'ficha'
      Size = 4
    end
    object qryChoferCsta: TStringField
      FieldName = 'sta'
      FixedChar = True
      Size = 1
    end
    object qryChoferCtel2: TStringField
      FieldName = 'tel2'
      Size = 12
    end
  end
  object qrySave: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select sum(valor_T) from OrdenServicio')
    FetchAll = True
    Left = 344
    object qrySavesumvalor_T: TFloatField
      FieldName = 'sum(valor_T)'
    end
  end
  object qryModR: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'update relacionchofer'
      'set valorT=:vvalort'
      'where codigo_ch =:vcod '
      'and fechaD =:vfdesde '
      'and fechaH =:vfhasta')
    FetchAll = True
    Left = 392
    ParamData = <
      item
        DataType = ftString
        Name = 'vvalort'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'vcod'
      end
      item
        DataType = ftUnknown
        Name = 'vfdesde'
      end
      item
        DataType = ftUnknown
        Name = 'vfhasta'
      end>
  end
  object qryCheck1: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select * from relacionchofer')
    FetchAll = True
    Left = 448
    object qryCheck1codigo_ch: TIntegerField
      FieldName = 'codigo_ch'
    end
    object qryCheck1nombre_a: TStringField
      FieldName = 'nombre_a'
      Size = 50
    end
    object qryCheck1valorT: TFloatField
      FieldName = 'valorT'
    end
    object qryCheck1ValorFinal: TFloatField
      FieldName = 'ValorFinal'
    end
    object qryCheck1fechaD: TDateField
      FieldName = 'fechaD'
    end
    object qryCheck1fechaH: TDateField
      FieldName = 'fechaH'
    end
    object qryCheck1id: TIntegerField
      FieldName = 'id'
    end
    object qryCheck1tipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object qryCheck1Dieta: TFloatField
      FieldName = 'Dieta'
    end
    object qryCheck1Seguro: TFloatField
      FieldName = 'Seguro'
    end
    object qryCheck1HExtra: TFloatField
      FieldName = 'HExtra'
    end
    object qryCheck1Avanse: TFloatField
      FieldName = 'Avanse'
    end
    object qryCheck1fechaR: TDateField
      FieldName = 'fechaR'
    end
  end
  object qryModRela1: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'update relacionchofer'
      'set valorfinal=:vfinal'
      'where id =:v1id')
    FetchAll = True
    Left = 480
    ParamData = <
      item
        DataType = ftString
        Name = 'vfinal'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'v1id'
      end>
  end
end
