unit ServerMethods;

interface

uses System.SysUtils, System.Classes, System.Json,
    Datasnap.DSServer, Datasnap.DSAuth, Rest.JSON,
    Data.DB;

type
{$METHODINFO ON}
  TSM = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    // exemplo de URL de chamada
    //http://localhost:8080/DataSnap/rest/TSM/Pessoa/salvar
    {
    post = update
    put = accept
    delete = cancel
    }

    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Teste(Value: string): string;

    function Pessoa(metodo: String): TJSONValue;
    function updatePessoa(objJ : TJSONObject):TJSONValue;
    function acceptPessoa(objJ : TJSONObject):TJSONValue;
    function cancelPessoa(id: String):TJSONValue;

    function updatePessoaEndereco(arr : TJSONArray):TJSONValue;
    function acceptPessoaEndereco(arr : TJSONArray):TJSONValue;

    function updateEndereco(objJ : TJSONObject):TJSONValue;
    function acceptEndereco(objJ : TJSONObject):TJSONValue;
    function cancelEndereco(id: String):TJSONValue;

    function updateEnderecoIntegracao(objJ : TJSONObject):TJSONValue;
    function acceptEnderecoIntegracao(objJ : TJSONObject):TJSONValue;
    function cancelEnderecoIntegracao(id: String):TJSONValue;



  end;
{$METHODINFO OFF}

implementation


{$R *.dfm}


uses System.StrUtils, CTRPessoa, Pessoa, CTREndereco, Endereco, CTREndereco_Integracao,
Endereco_Integracao, Func, CTRPessoaEndereco,PessoaEndereco;

function TSM.acceptEndereco(objJ: TJSONObject): TJSONValue;
var
  CTREndereco: TCTREndereco;
  Endereco: TEndereco;
begin
  CTREndereco:= TCTREndereco.Create;
  Endereco:= TEndereco.Create;
  Endereco:= TJson.JsonToObject<TEndereco>(objJ);
  if CTREndereco.atualizar(Endereco) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao salvar');
    end;
  CTREndereco.Free;
  Endereco.Free;
end;

function TSM.acceptEnderecoIntegracao(objJ: TJSONObject): TJSONValue;
var
  CTREndereco_Integracao: TCTREndereco_Integracao;
  Endereco_Integracao: TEndereco_Integracao;
begin
  CTREndereco_Integracao:= TCTREndereco_Integracao.Create;
  Endereco_Integracao:= TEndereco_Integracao.Create;
  Endereco_Integracao:= TJson.JsonToObject<TEndereco_Integracao>(objJ);
  if CTREndereco_Integracao.atualizar(Endereco_Integracao) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao salvar');
    end;
  CTREndereco_Integracao.Free;
  Endereco_Integracao.Free;
end;

function TSM.acceptPessoa(objJ: TJSONObject): TJSONValue;
var
  CTRPessoa: TCTRPessoa;
  Pessoa: TPessoa;
begin
  CTRPessoa:= TCTRPessoa.Create;
  Pessoa:= TPessoa.Create;
  Pessoa:= TJson.JsonToObject<TPessoa>(objJ);
  if CTRPessoa.atualizar(Pessoa) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao salvar');
    end;
  CTRPessoa.Free;
  Pessoa.Free;
end;

function TSM.acceptPessoaEndereco(arr : TJSONArray): TJSONValue;
var
  CTRPessoaEndereco: TCTRPessoaEndereco;
  PessoaEndereco: TPessoaEndereco;
  r: TRetornoApi;
  jPessoa, jEndereco, jEnderecoComplemento: TJSONObject;
begin
  CTRPessoaEndereco:= TCTRPessoaEndereco.Create;
  PessoaEndereco:= TPessoaEndereco.Create;

  jPessoa:= arr.Get(0) as TJsonObject;
  jEndereco:= arr.Get(1) as TJsonObject;
  jEnderecoComplemento:= arr.Get(2) as TJsonObject;

  PessoaEndereco.Pessoa:= TJson.JsonToObject<TPessoa>(jPessoa);
  PessoaEndereco.endereco:= TJson.JsonToObject<TEndereco>(jEndereco);
  PessoaEndereco.endereco_integracao := TJson.JsonToObject<TEndereco_Integracao>(jEnderecoComplemento);
  r := CTRPessoaEndereco.atualizar(PessoaEndereco);
  Result := TFunc.pegarMensagemAPI(r);

  CTRPessoaEndereco.Free;
  PessoaEndereco.Free;


end;

function TSM.cancelEndereco(id: String): TJSONValue;
var
  CTREndereco: TCTREndereco;
begin
  CTREndereco:= TCTREndereco.Create;
  if CTREndereco.excluir(id) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao excluir');
    end;
  CTREndereco.Free;
end;

function TSM.cancelEnderecoIntegracao(id: String): TJSONValue;
var
  CTREndereco_Integracao: TCTREndereco_Integracao;
begin
  CTREndereco_Integracao:= TCTREndereco_Integracao.Create;
  if CTREndereco_Integracao.excluir(id) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao excluir');
    end;
  CTREndereco_Integracao.Free;
end;

function TSM.cancelPessoa(id: String): TJSONValue;
var
  CTRPessoa: TCTRPessoa;
begin
  CTRPessoa:= TCTRPessoa.Create;
  if CTRPessoa.excluir(id) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao excluir');
    end;
  CTRPessoa.Free;
end;

function TSM.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSM.Pessoa(metodo: String): TJSONValue;
var
  CTRPessoa: TCTRPessoa;
  Query: TDataSet;
begin
  CTRPessoa:= TCTRPessoa.Create;
  if metodo = 'listar' then
    begin
      Query:= CTRPessoa.listar;
      Result := TFunc.DataSetToJson(Query);
      Query.Free;
    end;

  CTRPessoa.Free;
end;

function TSM.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

function TSM.Teste(Value: string): string;
begin

end;

function TSM.updateEndereco(objJ: TJSONObject): TJSONValue;
var
  CTREndereco: TCTREndereco;
  Endereco: TEndereco;
begin
  CTREndereco:= TCTREndereco.Create;
  Endereco:= TEndereco.Create;
  Endereco:= TJson.JsonToObject<TEndereco>(objJ);
  if CTREndereco.inserir(Endereco) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao salvar');
    end;
  CTREndereco.Free;
  Endereco.Free;
end;

function TSM.updateEnderecoIntegracao(objJ: TJSONObject): TJSONValue;
var
  CTREndereco_Integracao: TCTREndereco_Integracao;
  Endereco_Integracao: TEndereco_Integracao;
begin
  CTREndereco_Integracao:= TCTREndereco_Integracao.Create;
  Endereco_Integracao:= TEndereco_Integracao.Create;
  Endereco_Integracao:= TJson.JsonToObject<TEndereco_Integracao>(objJ);
  if CTREndereco_Integracao.inserir(Endereco_Integracao) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao salvar');
    end;
  CTREndereco_Integracao.Free;
  Endereco_Integracao.Free;
end;

function TSM.updatePessoa(objJ: TJSONObject): TJSONValue;
var
  CTRPessoa: TCTRPessoa;
  Pessoa: TPessoa;
begin
  CTRPessoa:= TCTRPessoa.Create;
  Pessoa:= TPessoa.Create;
  Pessoa:= TJson.JsonToObject<TPessoa>(objJ);
  if CTRPessoa.inserir(Pessoa) then
    begin
      Result := TFunc.MensagemConfirmacao;
    end
  else
    begin
      Result:= TFunc.MensagemErro('Erro ao salvar');
    end;
  CTRPessoa.Free;
  Pessoa.Free;
end;

function TSM.updatePessoaEndereco(arr : TJSONArray): TJSONValue;
var
  CTRPessoaEndereco: TCTRPessoaEndereco;
  PessoaEndereco: TPessoaEndereco;
  r: TRetornoApi;
  jPessoa, jEndereco, jEnderecoComplemento: TJSONObject;
begin
  CTRPessoaEndereco:= TCTRPessoaEndereco.Create;
  PessoaEndereco:= TPessoaEndereco.Create;

  jPessoa:= arr.Get(0) as TJsonObject;
  jEndereco:= arr.Get(1) as TJsonObject;
  jEnderecoComplemento:= arr.Get(2) as TJsonObject;

  PessoaEndereco.Pessoa:= TJson.JsonToObject<TPessoa>(jPessoa);
  PessoaEndereco.endereco:= TJson.JsonToObject<TEndereco>(jEndereco);
  PessoaEndereco.endereco_integracao := TJson.JsonToObject<TEndereco_Integracao>(jEnderecoComplemento);
  r := CTRPessoaEndereco.inserir(PessoaEndereco);
  Result := TFunc.pegarMensagemAPI(r);

  CTRPessoaEndereco.Free;
  PessoaEndereco.Free;


end;

end.

