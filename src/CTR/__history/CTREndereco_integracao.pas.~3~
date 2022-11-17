Unit CTREndereco_Integracao;

interface

  uses Endereco_integracao, Data.DB, DAOEndereco_Integracao;
  Type

  TCTREndereco_Integracao = Class
  private
    constructor Create; overload;
  public
    objDAOEndereco_Integracao : TDAOEndereco_integracao;
    destructor Destroy; override;

    function inserir(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function atualizar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function salvar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function excluir(id: String) : Boolean;
    function preencherEntidade(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    procedure preencherDTO(Query: TDataSet; Endereco_Integracao : TEndereco_Integracao);
  end;


implementation

constructor TCTREndereco_Integracao.Create;
begin
  objDAOEndereco_Integracao := TDAOEndereco_Integracao.Create;
end;

destructor TCTREndereco_Integracao.Destroy;
begin
  objDAOEndereco_Integracao.Free;
  inherited;
end;

function TCTREndereco_Integracao.inserir(Endereco_Integracao : TEndereco_Integracao) : Boolean;
begin
  Result := objDAOEndereco_Integracao.inserir(Endereco_Integracao);
end;

function TCTREndereco_Integracao.atualizar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
begin
  Result := objDAOEndereco_Integracao.atualizar(Endereco_Integracao);
end;

function TCTREndereco_Integracao.salvar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
begin
  if Endereco_Integracao.idendereco = '' then
    begin
      Result := objDAOEndereco_Integracao.inserir(Endereco_Integracao);
    end
  else
    begin
      Result := objDAOEndereco_Integracao.atualizar(Endereco_Integracao);
    end;
end;

function TCTREndereco_Integracao.excluir(id: String) : Boolean;
begin
  Result := objDAOEndereco_Integracao.excluir(id);
end;

function TCTREndereco_Integracao.preencherEntidade(Endereco_Integracao : TEndereco_Integracao) : Boolean;
begin
  Result := objDAOEndereco_Integracao.preencherEntidade(Endereco_Integracao);
end;

procedure TCTREndereco_Integracao.preencherDTO(Query:TDataSet; Endereco_Integracao : TEndereco_Integracao);
begin
  objDAOEndereco_Integracao.preencherDTO(Query, Endereco_Integracao);
end;
end.