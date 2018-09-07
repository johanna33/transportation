object dlgConsultaCombustible: TdlgConsultaCombustible
  Left = 699
  Top = 303
  BorderStyle = bsDialog
  Caption = 'Consulta de Combustible'
  ClientHeight = 130
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
    Height = 73
    Shape = bsFrame
  end
  object lconsultacom: TLabel
    Left = 64
    Top = 40
    Width = 55
    Height = 16
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object OKBtn: TButton
    Left = 63
    Top = 92
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 159
    Top = 92
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
  end
  object eConsultaCom: TEdit
    Left = 128
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
    Text = '10001'
  end
end
