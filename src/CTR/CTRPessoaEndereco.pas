unit CTRPessoaEndereco;

interface

uses PessoaEndereco, Func, DAOPessoaEndereco, System.JSON;

type

  TCTRPessoaEndereco = class
  public
    DAO: TDAOPessoaEndereco;

    constructor Create;

    function inserir(PessoaEndereco : TPessoaEndereco) : TRetornoApi;
    function atualizar(PessoaEndereco : TPessoaEndereco) : TRetornoApi;
    function salvar(PessoaEndereco : TPessoaEndereco) : TRetornoApi;
    function validar(PessoaEndereco : TPessoaEndereco): TRetornoApi;
    function inserirCSV(arr: TJSONArray): TRetornoApi;

  end;

implementation

{ TCTRPessoaEndereco }

function TCTRPessoaEndereco.atualizar(PessoaEndereco: TPessoaEndereco): TRetornoApi;
begin
  Result := validar(PessoaEndereco);
  if Result.status = 'ok' then
    begin
      Result := DAO.atualizar(PessoaEndereco);
    end;
end;

constructor TCTRPessoaEndereco.Create;
begin

  DAO:= TDAOPessoaEndereco.Create;
end;

function TCTRPessoaEndereco.inserir(PessoaEndereco: TPessoaEndereco): TRetornoApi;
begin
  Result := validar(PessoaEndereco);
  if Result.status = 'ok' then
    begin
      Result := DAO.inserir(PessoaEndereco);
    end;
end;

function TCTRPessoaEndereco.inserirCSV(arr: TJSONArray): TRetornoApi;
begin
  Result := DAO.inserirCSV(arr);
end;

function TCTRPessoaEndereco.salvar(
  PessoaEndereco: TPessoaEndereco): TRetornoApi;
begin
  if PessoaEndereco.pessoa.idpessoa = '' then
    begin
      inserir(PessoaEndereco);
    end
  else
    begin
      atualizar(PessoaEndereco);
    end;


end;

function TCTRPessoaEndereco.validar(PessoaEndereco: TPessoaEndereco): TRetornoApi;
var
  msg: String;
begin
  msg := '';
  Result.status:= 'ok';
  Result.msg:= 'Salvo com Sucesso';
  if PessoaEndereco.pessoa.nmprimeiro = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o nome'+ #13;
    end;
  if PessoaEndereco.pessoa.nmsegundo = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o sobrenome'+ #13;
    end;
  if PessoaEndereco.pessoa.dtregistro = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha a data de registro'+ #13;
    end;
  if PessoaEndereco.pessoa.dsdocumento = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o documento'+ #13;
    end;
  if PessoaEndereco.endereco.dscep = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o cep'+ #13;
    end;
  if PessoaEndereco.endereco_integracao.nmlogradouro = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o endere�o'+ #13;
    end;
  if PessoaEndereco.endereco_integracao.dsuf = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha a UF'+ #13;
    end;
  if PessoaEndereco.endereco_integracao.nmcidade = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o cidade'+ #13;
    end;
  if PessoaEndereco.endereco_integracao.nmbairro = '' then
    begin
      Result.status:= 'valida��o';
      msg := msg + 'preencha o bairro'+ #13;
    end;



  if msg <> '' then
    begin
      Result.msg:= msg;
    end;




end;

end.
