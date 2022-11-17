object DM: TDM
  OldCreateOrder = False
  Height = 417
  Width = 528
  object RESTClient1: TRESTClient
    Authenticator = HTTPBasicAuthenticator1
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    BaseURL = 'http://localhost:8080/DataSnap/rest/TSM/Pessoa/listar'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 24
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 120
    Top = 24
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'text/html'
    Left = 88
    Top = 96
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Username = 'sihlapi'
    Password = 'sihl#wm'
    Left = 72
    Top = 160
  end
end
