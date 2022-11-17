Unit CTREndereco;

interface

  uses Endereco, Func, DAOEndereco, Data.DB;
  Type

  TCTREndereco = Class
  private
    constructor Create; overload;
  public
    objDAOEndereco : TDAOendereco;
    destructor Destroy; override;

    function inserir(Endereco : TEndereco) : Boolean;
    function atualizar(Endereco : TEndereco) : Boolean;
    function salvar(Endereco : TEndereco) : Boolean;
    function excluir(id: String) : Boolean;
    function preencherEntidade(Endereco : TEndereco) : Boolean;
    procedure preencherDTO(Query: TDataSet; Endereco : TEndereco);
  end;


implementation

constructor TCTREndereco.Create;
begin
  objDAOEndereco := TDAOEndereco.Create;
end;

destructor TCTREndereco.Destroy;
begin
  objDAOEndereco.Free;
  inherited;
end;

function TCTREndereco.inserir(Endereco : TEndereco) : Boolean;
begin
  Result := objDAOEndereco.inserir(Endereco);
end;

function TCTREndereco.atualizar(Endereco : TEndereco) : Boolean;
begin
  Result := objDAOEndereco.atualizar(Endereco);
end;

function TCTREndereco.salvar(Endereco : TEndereco) : Boolean;
begin
  if Endereco.idpessoa = '' then
    begin
      Result := objDAOEndereco.inserir(Endereco);
    end
  else
    begin
      Result := objDAOEndereco.atualizar(Endereco);
    end;
end;

function TCTREndereco.excluir(id: String) : Boolean;
begin
  Result := objDAOEndereco.excluir(id);
end;

function TCTREndereco.preencherEntidade(Endereco : TEndereco) : Boolean;
begin
  Result := objDAOEndereco.preencherEntidade(Endereco);
end;

procedure TCTREndereco.preencherDTO(Query:TDataSet; Endereco : TEndereco);
begin
  objDAOEndereco.preencherDTO(Query, Endereco);
end;
end.