object fRelacionS: TfRelacionS
  Left = 252
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Relaci'#243'n General de Suplidores'
  ClientHeight = 260
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    00000000AA0000AA000000000000000000000000AA0000AA0000000000000000
    00000000AA0000AA0000000000000000000000AAAAAAAAAAAA00000000000000
    0000AAAAAAAAAAAAAAAA00000000000000AAAAAAAAAAAAAAAAAAA00000000000
    00AAAAAAAAAAAAAAAAAAAA000000000000AAAAA0AA0000AAAAAAAA0000000000
    00AAA000AA0000AA0AAAAAA00000000000AA0000AA0000AA00AAAAA000000000
    00000000AA0000AA00AAAAA00000000000000000AA0000AA00AAAAA000000000
    00000000AA0000AA0AAAAAA00000000000000000AA0000AAAAAAAA0000000000
    000000AAAAAAAAAAAAAAAA00000000000000AAAAAAAAAAAAAAAAA00000000000
    000AAAAAAAAAAAAAAAAA00000000000000AAAAAAAAAAAAAAAA00000000000000
    00AAAAAAAA0000AA00000000000000000AAAAAA0AA0000AA0000000000000000
    0AAAAA00AA0000AA00000000000000000AAAAA00AA0000AA0000000000000000
    0AAAAA00AA0000AA0000AA00000000000AAAAAA0AA0000AA000AAA0000000000
    00AAAAAAAA0000AA0AAAAA000000000000AAAAAAAAAAAAAAAAAAAA0000000000
    000AAAAAAAAAAAAAAAAAAA00000000000000AAAAAAAAAAAAAAAA000000000000
    000000AAAAAAAAAAAA0000000000000000000000AA0000AA0000000000000000
    00000000AA0000AA000000000000000000000000AA0000AA000000000000FFF3
    CFFFFFF3CFFFFFF3CFFFFFC003FFFF0000FFFC00007FFC00003FFC13C03FFC73
    C81FFCF3CC1FFFF3CC1FFFF3CC1FFFF3C81FFFF3C03FFFC0003FFF00007FFE00
    00FFFC0003FFFC03CFFFF813CFFFF833CFFFF833CFFFF833CF3FF813CE3FFC03
    C83FFC00003FFE00003FFF0000FFFFC003FFFFF3CFFFFFF3CFFFFFF3CFFF}
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pRelacionS: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 260
    Align = alClient
    TabOrder = 0
    object ltituloS: TLabel
      Left = 120
      Top = 16
      Width = 301
      Height = 16
      Caption = 'RELACION DE SUPLIDORES PARTICULARES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ldesdeS: TLabel
      Left = 72
      Top = 120
      Width = 105
      Height = 14
      Caption = 'Desde la Fecha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lhastaS: TLabel
      Left = 72
      Top = 152
      Width = 102
      Height = 14
      Caption = 'Hasta la Fecha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lsupli: TLabel
      Left = 72
      Top = 72
      Width = 56
      Height = 14
      Caption = 'Suplidor:'
    end
    object dpDesdeS: TDateTimePicker
      Left = 184
      Top = 112
      Width = 105
      Height = 22
      Date = 38421.605042615740000000
      Time = 38421.605042615740000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dpHastaS: TDateTimePicker
      Left = 184
      Top = 152
      Width = 105
      Height = 22
      Date = 38421.605066724540000000
      Time = 38421.605066724540000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GbSelectS: TGroupBox
      Left = 352
      Top = 104
      Width = 121
      Height = 73
      TabOrder = 2
      object rbPantallaS: TRadioButton
        Left = 16
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Pantalla'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object rbImpresoraS: TRadioButton
        Left = 16
        Top = 40
        Width = 97
        Height = 17
        Caption = 'Impresora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object bbOkS: TBitBtn
      Left = 272
      Top = 200
      Width = 113
      Height = 41
      Caption = 'OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bbOkSClick
      Glyph.Data = {
        5A0B0000424D5A0B00000000000036000000280000001E0000001F0000000100
        180000000000240B000000000000000000000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080
        8080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C08080808080808080
        80808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0008000008000008000808080808080
        808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C000800000800000800000800000800080808080808080
        8080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C000FF000080000080000080000080000080000080008080808080808080
        80808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C000FF0000
        8000008000008000008000008000008000008000008000808080808080808080
        808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C000FF000080000080
        0000800000800000800000800000800000800000800080808080808080808080
        8080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C000FF00008000008000008000
        0080000080000080000080000080000080000080008080808080808080808080
        80C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C000FF0000800000800000800000800000
        8000008000008000008000008000008000008000808080808080808080C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C000FF000080000080000080000080000080000080
        00008000008000008000008000008000008000808080808080808080C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C000FF0000800000800000800000800000800000FF0000FF00
        008000008000008000008000008000808080808080808080808080C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C000FF0000800000800000800000800000800080808000FF0000FF0000
        8000008000008000008000008000808080808080808080C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C000FF0000800000800000800000800080808080808000FF0000FF000080
        00008000008000008000008000808080808080808080C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
        C0C000FF0000FF00008000008000808080808080C0C0C000FF0000FF00008000
        008000008000008000008000808080808080808080C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C000FF0000FF00008000808080808080C0C0C0C0C0C000FF0000FF0000800000
        8000008000008000808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        00FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF000080000080
        00008000008000808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00008000008000
        008000008000808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF0000800000800000
        8000008000808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF000080000080000080
        00808080808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00008000008000008000
        808080808080808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF0000800000800000800080
        8080808080808080C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF000080000080000080008080
        80808080C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00008000008000808080808080
        C0C0C0C0C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00008000008000808080C0C0C0C0
        C0C0C0C0C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C000FF0000FF00008000C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C00000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000}
    end
    object bbCancelarS: TBitBtn
      Left = 392
      Top = 200
      Width = 113
      Height = 41
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbCancelarSClick
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
    object dbGClienteS: TDBGrid
      Left = 136
      Top = 64
      Width = 65
      Height = 25
      BiDiMode = bdLeftToRight
      Ctl3D = True
      DataSource = dsClienteS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      Options = [dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Verdana'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'cod_chofer'
          Width = 40
          Visible = True
        end>
    end
    object dbeClienteS: TDBEdit
      Left = 208
      Top = 64
      Width = 193
      Height = 22
      DataField = 'suplidor'
      DataSource = dsClienteS
      ReadOnly = True
      TabOrder = 6
    end
  end
  object dsClienteS: TDataSource
    DataSet = qryClienteS
    Left = 40
    Top = 224
  end
  object qryClienteS: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select cod_chofer, suplidor from Suplidores'
      'order by cod_chofer')
    Active = True
    FetchAll = True
    Left = 8
    Top = 224
  end
end