object dlgConsultaCliente: TdlgConsultaCliente
  Left = 592
  Top = 121
  BorderStyle = bsDialog
  Caption = 'Consulta de Cliente'
  ClientHeight = 140
  ClientWidth = 289
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 8
    Width = 273
    Height = 81
    Shape = bsFrame
  end
  object lconsultacliente: TLabel
    Left = 32
    Top = 40
    Width = 136
    Height = 16
    Caption = 'C'#243'digo del Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 71
    Top = 100
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 159
    Top = 100
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object eConsultaCliente: TEdit
    Left = 184
    Top = 32
    Width = 57
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 3
    ParentFont = False
    TabOrder = 2
    Text = '100'
  end
end
