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
    ExplicitWidth = 481
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 630
    Height = 91
    Align = alTop
    TabOrder = 0
    DesignSize = (
      630
      91)
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
    object Label4: TLabel
      Left = 16
      Top = 65
      Width = 65
      Height = 13
      Caption = 'Identificador:'
    end
    object edSaida: TEdit
      Left = 84
      Top = 8
      Width = 230
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TextHint = 'Pasta de sa'#237'da'
    end
    object cbSite: TComboBox
      Left = 320
      Top = 8
      Width = 114
      Height = 21
      Anchors = [akTop, akRight]
      ItemIndex = 0
      TabOrder = 1
      Text = 'Instagram'
      Items.Strings = (
        'Instagram'
        'xvideos'
        'Tumblr'
        'Facebook')
    end
    object btBuscar: TBitBtn
      Left = 320
      Top = 61
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = btBuscarClick
    end
    object Edit1: TEdit
      Left = 84
      Top = 62
      Width = 230
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      TextHint = 'Identificador'
    end
    object chJPG: TCheckBox
      Left = 88
      Top = 39
      Width = 41
      Height = 17
      Caption = '.jpg'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object chBMP: TCheckBox
      Left = 135
      Top = 39
      Width = 41
      Height = 17
      Caption = '.bmp'
      TabOrder = 5
    end
    object chGIF: TCheckBox
      Left = 182
      Top = 39
      Width = 41
      Height = 17
      Caption = '.gif'
      TabOrder = 6
    end
    object chMP4: TCheckBox
      Left = 229
      Top = 39
      Width = 41
      Height = 17
      Caption = '.mp4'
      TabOrder = 7
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 91
    Width = 630
    Height = 344
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Lista P'#225'ginas'
      object mmLista: TMemo
        Left = 0
        Top = 0
        Width = 622
        Height = 316
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Resultados'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmResultados: TMemo
        Left = 0
        Top = 0
        Width = 622
        Height = 316
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object Requisicao: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 505
    Top = 40
  end
end
