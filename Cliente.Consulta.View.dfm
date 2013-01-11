object ViewConsulta: TViewConsulta
  Left = 0
  Top = 0
  Caption = 'ViewConsulta'
  ClientHeight = 336
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 295
    Align = alClient
    DataSource = ClienteConsultaViewModel.DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Action = ClienteConsultaViewModel.ActionAbrirFechar
      TabOrder = 0
    end
    object Button2: TButton
      Left = 89
      Top = 10
      Width = 75
      Height = 25
      Action = ClienteConsultaViewModel.ActionNovo
      TabOrder = 1
    end
    object Button3: TButton
      Left = 175
      Top = 10
      Width = 75
      Height = 25
      Action = ClienteConsultaViewModel.ActionEditar
      TabOrder = 2
    end
    object Button4: TButton
      Left = 256
      Top = 10
      Width = 75
      Height = 25
      Action = ClienteConsultaViewModel.ActionExcluir
      TabOrder = 3
    end
    object Button5: TButton
      Left = 337
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 4
      OnClick = Button5Click
    end
  end
end
