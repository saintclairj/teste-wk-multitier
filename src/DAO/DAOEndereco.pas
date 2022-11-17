Unit DAOEndereco;

interface

  uses FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Param, FireDAC.Stan.Error,FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,FireDAC.Comp.DataSet, FireDAC.Comp.Client, Endereco, Func, SuperDAO;

  Type

  TDAOEndereco = Class(TSuperDAO)
  public
    function inserir(Endereco : TEndereco) : Boolean;
    function atualizar(Endereco : TEndereco) : Boolean;
    function excluir(id: String) : Boolean;
    function preencherEntidade(Endereco : TEndereco) : Boolean;
    procedure preencherDTO(Query: TDataSet; Endereco : TEndereco);
  end;


implementation

function TDAOEndereco.inserir(Endereco : TEndereco) : Boolean;
var
  r: String;
  Query: TDataSet;
begin
  Query:= executarConsulta('INSERT INTO endereco(idpessoa,dscep) VALUES ('+
      TFunc.VazioNullString(Endereco.idpessoa)+','+TFunc.QuotedStr2(Endereco.dscep)+') '+
      'RETURNING idendereco');
  if not Query.IsEmpty then
    begin
      Endereco.idendereco := Query.FieldByName('idendereco').AsString;
    end;

  Result := not Query.isEmpty;
  Query.Free;
end;


function TDAOEndereco.atualizar(Endereco : TEndereco) : Boolean;
var
  r: String;
begin
  r:= executarSQL('UPDATE Endereco SET '+
      'idendereco = ' + TFunc.VazioNullString(Endereco.idendereco)+','+
      'dscep = ' + TFunc.QuotedStr2(Endereco.dscep)+
      ' WHERE idEndereco = ' + Endereco.idEndereco);

  Result := (r = '');
end;


function TDAOEndereco.excluir(id: String) : Boolean;
var
  r: String;
begin
  r:= executarSQL('DELETE FROM Endereco WHERE idendereco = '+id);
  Result := (r = '');
end;


function TDAOEndereco.preencherEntidade(Endereco : TEndereco) : Boolean;
var
  Query: TDataSet;
begin
  Query:= executarConsulta('SELECT * FROM Endereco WHERE idendereco = '+Endereco.idEndereco);
  preencherDTO(Query, Endereco);
end;


procedure TDAOEndereco.preencherDTO(Query:TDataSet; Endereco : TEndereco);
begin

  with Query do
    begin
      Endereco.idendereco := FieldByName('idendereco').AsString;
      Endereco.idpessoa := FieldByName('idpessoa').AsString;
      Endereco.dscep := FieldByName('dscep').AsString;
    end;

end;
end.
