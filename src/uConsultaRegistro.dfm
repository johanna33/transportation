object dlgConsultaRegistro: TdlgConsultaRegistro
  Left = 344
  Top = 316
  BorderStyle = bsDialog
  Caption = 'Consulta de Registro de Mant.'
  ClientHeight = 141
  ClientWidth = 313
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
    Width = 297
    Height = 81
    Shape = bsFrame
  end
  object lconsultamant: TLabel
    Left = 32
    Top = 40
    Width = 122
    Height = 16
    Caption = 'C'#243'digo de Mant.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 79
    Top = 100
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 167
    Top = 100
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object eConsultaM: TEdit
    Left = 168
    Top = 32
    Width = 97
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 2
    Text = '1001'
  end
end
