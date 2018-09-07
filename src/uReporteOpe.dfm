object fReporteOpe: TfReporteOpe
  Left = 259
  Top = 178
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Reportes Generales de Operaciones'
  ClientHeight = 265
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    8888888888000000000000000000000088888888880000000000000000000000
    8888888888070000000000000000000088888888880770888000000000000000
    8880777888077700807000000000000088800008880077708077000000000000
    88888888880F0770807770000000000088888888880FF0708077770000000000
    00000000000FF800807777000000000000008888888888708077770000000000
    0000807777777770807777000000000000008000000000008077770000000000
    0000800000000000807777000000000000008888888888888077770000000000
    0000800000000000807777000000000000008088888888808077770000000000
    0000808888888880807777000000000000008088888888808077770000000000
    0000808888888880807777000000000000008088807788808077770000000000
    0000808880008880807777000000000000008088888888808077770000000000
    0000800000000000807777000000000000008888888888888077770000000000
    0000888888888888807777000000000000000000000000000077770000000000
    00000FFFFFFFFFFFFF07770000000000000000FFFFFFFFFFFFF0770000000000
    0000000FFFFFFFFFFFFF07000000000000000000FFFFFFFFFFFFF00000000000
    0000000000000000000000000000E001FFFFE001FFFFE000FFFFE00003FFE000
    01FFE00000FFE000007FE000003FE000001FE000001FFE00001FFE00001FFE00
    001FFE00001FFE00001FFE00001FFE00001FFE00001FFE00001FFE00001FFE00
    001FFE00001FFE00001FFE00001FFE00001FFE00001FFE00001FFF00001FFF80
    001FFFC0001FFFE0001FFFF0001F280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000888
    888080000000088008800880000008888880F080000000000000808070000008
    8888708077000008077770807700000800000080770000080888808077000008
    0800808077000008088880807700000800000080770000088888888077000000
    000000007700000000FFFFF007000000000000000000007F0000001F0000000F
    00000007000000030000C0010000C0010000C0010000C0010000C0010000C001
    0000C0010000C0010000C0010000F0010000F8010000}
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pReporteOpe: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 265
    Align = alClient
    TabOrder = 0
    object ltituloR: TLabel
      Left = 152
      Top = 16
      Width = 263
      Height = 16
      Caption = 'REPORTE GENERAL DE OPERACIONES'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ldesde: TLabel
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
    object lhasta: TLabel
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
    object dpDesdeR: TDateTimePicker
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
    object dpHastaR: TDateTimePicker
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
    object GbSelectR: TGroupBox
      Left = 352
      Top = 104
      Width = 121
      Height = 73
      TabOrder = 2
      object rbPantallaR: TRadioButton
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
      object rbImpresoraR: TRadioButton
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
    object bbOkR: TBitBtn
      Left = 280
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
      OnClick = bbOkRClick
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
    object bbCancelarR: TBitBtn
      Left = 400
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
      OnClick = bbCancelarRClick
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
    object dbGClienteR: TDBGrid
      Left = 128
      Top = 64
      Width = 65
      Height = 25
      BiDiMode = bdLeftToRight
      Ctl3D = True
      DataSource = dsClienteR
      Enabled = False
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
          FieldName = 'cod_cliente'
          Width = 30
          Visible = True
        end>
    end
    object dbeCliente: TDBEdit
      Left = 200
      Top = 64
      Width = 193
      Height = 21
      DataField = 'nombre'
      DataSource = dsClienteR
      Enabled = False
      ReadOnly = True
      TabOrder = 6
    end
    object cBoxCliente: TCheckBox
      Left = 56
      Top = 72
      Width = 73
      Height = 17
      Caption = 'Cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = cBoxClienteClick
    end
  end
  object dsClienteR: TDataSource
    DataSet = qryClienteR
    Left = 40
    Top = 224
  end
  object qryClienteR: TMyQuery
    Connection = fPrincipal.MyConnectT
    SQL.Strings = (
      'select cod_cliente, nombre from clientes'
      'order by cod_cliente')
    Active = True
    FetchAll = True
    Left = 8
    Top = 224
  end
end
