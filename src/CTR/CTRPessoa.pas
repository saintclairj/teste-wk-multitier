Unit CTRPessoa;

interface

  uses FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Param, FireDAC.Stan.Error,FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,FireDAC.Comp.DataSet, FireDAC.Comp.Client, Pessoa, Func, DAOPessoa;

  Type

  TCTRPessoa = Class
  private
    constructor Create; overload;
  public
    objDAOPessoa : TDAOPessoa;
    destructor Destroy; override;

    function inserir(Pessoa : TPessoa) : Boolean;
    function atualizar(Pessoa : TPessoa) : Boolean;
    function salvar(Pessoa : TPessoa) : Boolean;
    function excluir(id: String) : Boolean;
    function preencherEntidade(Pessoa : TPessoa) : Boolean;
    procedure preencherDTO(Query: TDataSet; Pessoa : TPessoa);
    function listar: TDataSet;
  end;


implementation

constructor TCTRPessoa.Create;
begin
  objDAOPessoa := TDAOPessoa.Create;
end;

destructor TCTRPessoa.Destroy;
begin
  objDAOPessoa.Free;
  inherited;
end;

function TCTRPessoa.inserir(Pessoa : TPessoa) : Boolean;
begin
  Result := objDAOPessoa.inserir(Pessoa);
end;

function TCTRPessoa.listar: TDataSet;
begin
  Result := objDAOPessoa.listar;
end;

function TCTRPessoa.atualizar(Pessoa : TPessoa) : Boolean;
begin
  Result := objDAOPessoa.atualizar(Pessoa);
end;

function TCTRPessoa.salvar(Pessoa : TPessoa) : Boolean;
begin
  if Pessoa.idpessoa = '' then
    begin
      Result := objDAOPessoa.inserir(Pessoa);
    end
  else
    begin
      Result := objDAOPessoa.atualizar(Pessoa);
    end;
end;

function TCTRPessoa.excluir(id: String) : Boolean;
begin
  Result := objDAOPessoa.excluir(id);
end;

function TCTRPessoa.preencherEntidade(Pessoa : TPessoa) : Boolean;
begin
  Result := objDAOPessoa.preencherEntidade(Pessoa);
end;

procedure TCTRPessoa.preencherDTO(Query:TDataSet; Pessoa : TPessoa);
begin
  objDAOPessoa.preencherDTO(Query, Pessoa);
end;
end.