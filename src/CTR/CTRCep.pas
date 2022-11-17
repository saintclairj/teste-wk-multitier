unit CTRCep;

interface
uses CEP, Rest.JSON;
type
  TCTRCep = class
    public
      function pegarEndereco(cep: String): TCEP;


  end;

implementation
uses Principal;



{ TCTRCep }

function TCTRCep.pegarEndereco(cep: String): TCEP;
begin
  Result := TCEP.Create;
  if cep <> '' then
    begin
      frmPrincipal.RCCep.BaseURL:= 'https://viacep.com.br/ws/'+cep+'/json/';
      frmPrincipal.RReqCep.Execute;
      Result:= TJson.JsonToObject<TCEP>(frmPrincipal.RResCep.Content);
    end;


end;

end.
