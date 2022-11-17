object frmPrincipal: TfrmPrincipal
  Left = 271
  Top = 114
  Caption = 'Api de teste'
  ClientHeight = 235
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object ButtonStart: TButton
    Left = 24
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = ButtonStartClick
  end
  object ButtonStop: TButton
    Left = 105
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = ButtonStopClick
  end
  object EditPort: TEdit
    Left = 24
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '8080'
  end
  object ButtonOpenBrowser: TButton
    Left = 24
    Top = 112
    Width = 107
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 3
    OnClick = ButtonOpenBrowserClick
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 248
    Top = 16
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = '.\'
    Left = 264
    Top = 80
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=teste'
      'User_Name=postgres'
      'Password=584584'
      'DriverID=PG')
    LoginPrompt = False
    Left = 344
    Top = 64
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 344
    Top = 8
  end
  object RCCep: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br/ws/01001000/json/'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 200
    Top = 160
  end
  object RReqCEP: TRESTRequest
    Client = RCCep
    Params = <>
    Response = RResCep
    SynchronizedEvents = False
    Left = 272
    Top = 160
  end
  object RResCep: TRESTResponse
    ContentType = 'application/json'
    Left = 352
    Top = 160
  end
end
