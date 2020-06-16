object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Extra'#231#227'o'
  ClientHeight = 448
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 0
    Top = 435
    Width = 630
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = 
      'Alexsandro Zanella | (54) 991245573 | alexsandro.zanella@wmcsist' +
      'emas.com | Em desenvolvimento'
    ExplicitTop = 410
    ExplicitWidth = 481
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 664
    DesignSize = (
      630
      73)
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 30
      Height = 13
      Caption = 'Sa'#237'da:'
    end
    object Label2: TLabel
      Left = 16
      Top = 38
      Width = 44
      Height = 13
      Caption = 'Formato:'
    end
    object edSaida: TEdit
      Left = 68
      Top = 8
      Width = 230
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TextHint = 'Pasta de sa'#237'da'
      ExplicitWidth = 237
    end
    object cbSite: TComboBox
      Left = 304
      Top = 8
      Width = 106
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = 'cbSite'
      Items.Strings = (
        'Instagram'
        'xvideos'
        'Tumblr'
        'Facebook')
      ExplicitLeft = 311
    end
    object edFormato: TEdit
      Left = 68
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '.jpg'
    end
    object btBuscar: TBitBtn
      Left = 304
      Top = 35
      Width = 106
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Buscar'
      TabOrder = 3
      ExplicitLeft = 311
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 630
    Height = 362
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 96
    ExplicitTop = 222
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet1: TTabSheet
      Caption = 'Lista P'#225'ginas'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object mmLista: TMemo
        Left = 0
        Top = 0
        Width = 622
        Height = 334
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 136
        ExplicitTop = 96
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Resultados'
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object mmResultados: TMemo
        Left = 0
        Top = 0
        Width = 622
        Height = 334
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 136
        ExplicitTop = 96
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
  end
end
