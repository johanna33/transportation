object dlgConsultaEquipo: TdlgConsultaEquipo
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Consulta de Equipos'
  ClientHeight = 128
  ClientWidth = 282
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
    Width = 265
    Height = 73
    Shape = bsFrame
  end
  object lconsultachofer: TLabel
    Left = 72
    Top = 40
    Width = 44
    Height = 16
    Caption = 'Ficha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 71
    Top = 92
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 167
    Top = 92
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object eConsultaF: TEdit
    Left = 128
    Top = 32
    Width = 57
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    TabOrder = 2
    Text = 'F00'
  end
end
