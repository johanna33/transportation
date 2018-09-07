inherited dlgConsultaFact: TdlgConsultaFact
  Left = 376
  Top = 364
  ClientHeight = 122
  ClientWidth = 352
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 337
    Height = 73
  end
  object lbConsultaFact: TLabel [1]
    Left = 40
    Top = 32
    Width = 124
    Height = 16
    Caption = 'N'#250'mero de Fact :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited OKBtn: TButton
    Left = 102
    Top = 84
  end
  inherited CancelBtn: TButton
    Left = 190
    Top = 84
  end
  object eConsultaFact: TEdit
    Left = 168
    Top = 24
    Width = 121
    Height = 26
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 2
  end
end
