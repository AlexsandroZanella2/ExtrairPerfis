object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Extra'#231#227'o'
  ClientHeight = 509
  ClientWidth = 820
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
    Top = 496
    Width = 820
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
    Width = 820
    Height = 91
    Align = alTop
    TabOrder = 0
    DesignSize = (
      820
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
      Visible = False
    end
    object edSaida: TEdit
      Left = 84
      Top = 8
      Width = 420
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      TextHint = 'Pasta de sa'#237'da'
    end
    object cbSite: TComboBox
      Left = 510
      Top = 8
      Width = 117
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = 'Instagram'
      OnChange = cbSiteChange
      Items.Strings = (
        'Instagram'
        'xvideos'
        'Tumblr'
        'Facebook'
        'Blog.DrPeeper')
    end
    object btBuscar: TBitBtn
      Left = 510
      Top = 61
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Buscar Imagens'
      TabOrder = 2
      OnClick = btBuscarClick
    end
    object edIDD: TEdit
      Left = 84
      Top = 62
      Width = 395
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      Text = 'keywords=&sex=Woman&country=BR&verified=1&p='
      TextHint = 'Identificador'
      Visible = False
    end
    object chJPG: TCheckBox
      Left = 88
      Top = 39
      Width = 41
      Height = 17
      Caption = '.jpg'
      Enabled = False
      TabOrder = 4
    end
    object chBMP: TCheckBox
      Left = 135
      Top = 39
      Width = 41
      Height = 17
      Caption = '.bmp'
      Enabled = False
      TabOrder = 5
    end
    object chGIF: TCheckBox
      Left = 182
      Top = 39
      Width = 41
      Height = 17
      Caption = '.gif'
      Enabled = False
      TabOrder = 6
    end
    object chMP4: TCheckBox
      Left = 229
      Top = 39
      Width = 41
      Height = 17
      Caption = '.mp4'
      Enabled = False
      TabOrder = 7
    end
    object BitBtn1: TBitBtn
      Left = 510
      Top = 30
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Buscar Perfis'
      TabOrder = 8
      Visible = False
      OnClick = BitBtn1Click
    end
    object btSalvar: TButton
      Left = 633
      Top = 62
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Salvar'
      TabOrder = 9
      OnClick = btSalvarClick
    end
    object Edit1: TEdit
      Left = 480
      Top = 62
      Width = 26
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 10
      Text = '1'
      Visible = False
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 108
    Width = 820
    Height = 388
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Lista P'#225'ginas'
      object mmLista: TMemo
        Left = 0
        Top = 0
        Width = 812
        Height = 360
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Resultados'
      ImageIndex = 1
      object mmResultados: TMemo
        Left = 0
        Top = 0
        Width = 812
        Height = 360
        Align = alClient
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pagina'
      ImageIndex = 2
      object mmPagina: TMemo
        Left = 0
        Top = 0
        Width = 812
        Height = 360
        Align = alClient
        TabOrder = 0
      end
    end
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 91
    Width = 820
    Height = 17
    Align = alTop
    TabOrder = 2
    Visible = False
  end
end
