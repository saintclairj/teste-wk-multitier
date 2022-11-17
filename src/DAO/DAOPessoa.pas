Unit DAOPessoa;

interface

uses FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, pessoa, Func, SuperDAO;

Type

  TDAOPessoa = Class(TSuperDAO)
  public
    function inserir(pessoa: TPessoa): Boolean;
    function atualizar(pessoa: TPessoa): Boolean;
    function excluir(id: String): Boolean;
    function preencherEntidade(pessoa: TPessoa): Boolean;
    procedure preencherDTO(Query: TDataSet; pessoa: TPessoa);
    function listar: TDataSet;

  end;

implementation

function TDAOPessoa.inserir(pessoa: TPessoa): Boolean;
var
  r: String;
  Query: TDataSet;
begin
  Query := executarConsulta('INSERT INTO pessoa(' +
    'flnatureza,dsdocumento,nmprimeiro,dtregistro,nmsegundo)' + 'VALUES (' +
    TFunc.VazioNullString(pessoa.flnatureza) + ',' +
    TFunc.QuotedStr2(pessoa.dsdocumento) + ',' +
    TFunc.QuotedStr2(pessoa.nmprimeiro) + ',' +
    TFunc.QuotedStr2(pessoa.dtregistro) + ',' +
    TFunc.QuotedStr2(pessoa.nmsegundo) + ') RETURNING idpessoa');
    pessoa.idpessoa := Query.FieldByName('idpessoa').AsString;
  Result := not Query.IsEmpty;
  Query.Free;

end;

function TDAOPessoa.listar: TDataSet;
var
  Query: TDataSet;
begin
  Query := executarConsulta('SELECT * FROM pessoa '+
  'INNER JOIN endereco ON endereco.idpessoa = pessoa.idpessoa '+
  'INNER JOIN endereco_integracao ON endereco_integracao.idendereco = endereco.idendereco '+
  'ORDER BY pessoa.nmprimeiro');
  Result := Query;
end;

function TDAOPessoa.atualizar(pessoa: TPessoa): Boolean;
var
  r: String;
begin
  r := executarSQL('UPDATE pessoa SET ' + 'dsdocumento = ' +
    TFunc.QuotedStr2(pessoa.dsdocumento) + ',' + 'nmprimeiro = ' +
    TFunc.QuotedStr2(pessoa.nmprimeiro) + ',' + 'dtregistro = ' +
    TFunc.QuotedStr2(pessoa.dtregistro) + ',' + 'nmsegundo = ' +
    TFunc.QuotedStr2(pessoa.nmsegundo) + ' WHERE idpessoa = ' +
    pessoa.idpessoa);

  Result := (r = '');
end;

function TDAOPessoa.excluir(id: String): Boolean;
var
  r: String;
begin
  Result := true;
  r := executarSQL('DELETE FROM endereco_integracao '+
  'WHERE idendereco = (SELECT idendereco FROM endereco WHERE idpessoa = '+id+')');
  if r <> '' then Result:= false;
  r := executarSQL('DELETE FROM endereco WHERE idpessoa = '+id);
  if r <> '' then Result:= false;
  r := executarSQL('DELETE FROM pessoa WHERE pessoa.idpessoa = ' + id);
  if r <> '' then Result:= false;
end;

function TDAOPessoa.preencherEntidade(pessoa: TPessoa): Boolean;
var
  Query: TDataSet;
begin
  Query := executarConsulta('SELECT * FROM pessoa WHERE idpessoa = ' +
    pessoa.idpessoa);
  preencherDTO(Query, pessoa);
end;

procedure TDAOPessoa.preencherDTO(Query: TDataSet; pessoa: TPessoa);
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

end.
