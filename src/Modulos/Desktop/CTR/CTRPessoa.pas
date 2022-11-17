unit CTRPessoa;

interface
uses UDM, Func, Data.DB, Pessoa, Rest.JSON, System.JSON;
  type
  TCTRPessoa = class
    procedure listar(ds: TDataSet);
    procedure preencherEntidade(Query: TDataSet; Pessoa : TPessoa);
    function inserir(Pessoa: TPessoa): TRetornoApi;
    function atualizar(Pessoa: TPessoa): TRetornoApi;
    function salvar(Pessoa: TPessoa): TRetornoApi;
    function excluir(id: String):TRetornoApi;
    function enviarArquivo(nomeArquivo: String): TRetornoApi;

  end;

implementation

{ TCTRPessoa }

function TCTRPessoa.atualizar(Pessoa: TPessoa): TRetornoApi;
var
  s: String;
begin
  s := TJSON.ObjectToJsonString(Pessoa);
  s:= DM.chamarMetodoPut('Pessoa',s);
  Result:= Tfunc.pegarRetornoApi(s);


end;

function TCTRPessoa.enviarArquivo(nomeArquivo: String): TRetornoApi;
var
  jArr: TJSONArray;
  s: String;
begin
  jArr:= TFunc.ArquivoParaJSON(nomeArquivo);
  s:= DM.chamarMetodoPost('PessoaImportar',jArr.ToString);
  Result:= Tfunc.pegarRetornoApi(s);
  jArr.Free;

end;

function TCTRPessoa.excluir(id: String): TRetornoApi;
var
  s: String;
begin
  s:= DM.chamarMetodoDELETE('Pessoa/'+id);
  Result:= Tfunc.pegarRetornoApi(s);

end;

function TCTRPessoa.inserir(Pessoa: TPessoa): TRetornoApi;
var
  s: String;
begin
  s := TJSON.ObjectToJsonString(Pessoa);
  s:= DM.chamarMetodoPost('Pessoa',s);
  Result:= Tfunc.pegarRetornoApi(s);

end;

procedure TCTRPessoa.listar(ds: TDataSet);
begin
  TFunc.JsonToDataSet(ds, DM.chamarMetodoGET('Pessoa/listar'));
end;



procedure TCTRPessoa.preencherEntidade(Query: TDataSet; Pessoa: TPessoa);
begin
  with Query do
  begin
    pessoa.idpessoa := FieldByName('idpessoa').AsString;
    pessoa.flnatureza := FieldByName('flnatureza').AsString;
    pessoa.dsdocumento := FieldByName('dsdocumento').AsString;
    pessoa.nmprimeiro := FieldByName('nmprimeiro').AsString;
    pessoa.dtregistro := FieldByName('dtregistro').AsString;
    pessoa.nmsegundo := FieldByName('nmsegundo').AsString;
  end;
end;

function TCTRPessoa.salvar(Pessoa: TPessoa): TRetornoApi;
begin
  Pessoa.dtregistro := TFunc.DataInvertida(Pessoa.dtregistro);
  if Pessoa.idpessoa = '' then
    begin
      Result := inserir(Pessoa);
    end
  else
    begin
      Result := atualizar(Pessoa);
    end;
end;

end.
