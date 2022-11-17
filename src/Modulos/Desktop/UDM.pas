unit UDM;

interface

uses
  System.SysUtils, System.Classes, IPPeerClient, REST.Client,
  REST.Authenticator.Basic, Data.Bind.Components, Data.Bind.ObjectScope,
  Rest.Types;

type
  TDM = class(TDataModule)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
  private
    { Private declarations }
  public
    { Public declarations }
    function pegarUrlApi: String;
    function chamarMetodoGET(metodo: String): String;
    function chamarMetodoDELETE(metodo: String): String;
    function chamarMetodoPost(metodo, json: String):String;
    function chamarMetodoPut(metodo, json: String):String;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDM }

function TDM.chamarMetodoDELETE(metodo: String): String;
begin
  RESTClient1.BaseURL:= pegarUrlApi+metodo;
  RESTRequest1.Method:= rmDELETE;
  RESTRequest1.Execute;
  Result := RESTResponse1.Content;
end;

function TDM.chamarMetodoGET(metodo: String): String;
begin
  RESTClient1.BaseURL:= pegarUrlApi+metodo;
  RESTRequest1.Method:= rmGET;
  RESTRequest1.Execute;
  Result := RESTResponse1.Content;

end;

function TDM.chamarMetodoPost(metodo, json: String): String;
begin
  try
    RESTClient1.BaseURL:= pegarUrlApi+metodo;
    RESTRequest1.Method:= TRESTRequestMethod.rmPOST;
    RESTRequest1.ClearBody;
    RESTRequest1.AddBody(json, ctAPPLICATION_JSON);
    RESTRequest1.Execute;
    Result:= RESTResponse1.Content;
  except

  end;
end;

function TDM.chamarMetodoPut(metodo, json: String): String;
begin
  try
    RESTClient1.BaseURL:= pegarUrlApi+metodo;
    RESTRequest1.Method:= TRESTRequestMethod.rmPUT;
    RESTRequest1.ClearBody;
    RESTRequest1.AddBody(json, ctAPPLICATION_JSON);
    RESTRequest1.Execute;
    Result:= RESTResponse1.Content;
  except

  end;
end;

function TDM.pegarUrlApi: String;
begin
  Result := 'http://localhost:8080/DataSnap/rest/TSM/';
end;

end.
