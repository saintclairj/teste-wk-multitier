Unit DAOEndereco_Integracao;

interface

  uses FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Param, FireDAC.Stan.Error,FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,FireDAC.Comp.DataSet, FireDAC.Comp.Client, Endereco_Integracao, Func, SuperDAO;

  Type

  TDAOEndereco_Integracao = Class(TSuperDAO)
  public
    function inserir(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function atualizar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function excluir(id: String) : Boolean;
    function preencherEntidade(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    procedure preencherDTO(Query: TDataSet; Endereco_Integracao : TEndereco_Integracao);
  end;


implementation

function TDAOEndereco_Integracao.inserir(Endereco_Integracao : TEndereco_Integracao) : Boolean;
var
  r: String;
begin
  r:= executarSQL('INSERT INTO endereco_integracao(idendereco,'+
      'dsuf,nmcidade,nmbairro,nmlogradouro,dscomplemento)'+
      'VALUES ('+ Endereco_Integracao.idendereco+','+
      TFunc.QuotedStr2(Endereco_Integracao.dsuf)+','+TFunc.QuotedStr2(Endereco_Integracao.nmcidade)+','+
      TFunc.QuotedStr2(Endereco_Integracao.nmbairro)+','+TFunc.QuotedStr2(Endereco_Integracao.nmlogradouro)+','+
      TFunc.QuotedStr2(Endereco_Integracao.dscomplemento)+')');

  Result := (r = '');
end;


function TDAOEndereco_Integracao.atualizar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
var
  r: String;
begin
  r:= executarSQL('UPDATE Endereco_Integracao SET '+
      'idendereco = ' + TFunc.QuotedStr2(Endereco_Integracao.idendereco)+','+
      'nmcidade = ' + TFunc.QuotedStr2(Endereco_Integracao.nmcidade)+','+
      'nmbairro = ' + TFunc.QuotedStr2(Endereco_Integracao.nmbairro)+','+
      'nmlogradouro = ' + TFunc.QuotedStr2(Endereco_Integracao.nmlogradouro)+','+
      'dscomplemento = ' + TFunc.QuotedStr2(Endereco_Integracao.dscomplemento)+
      ' WHERE idendereco = ' + Endereco_Integracao.idendereco);

  Result := (r = '');
end;


function TDAOEndereco_Integracao.excluir(id: String) : Boolean;
var
  r: String;
begin
  r:= executarSQL('DELETE FROM Endereco_Integracao WHERE idendereco = '+id);
  Result := (r = '');
end;


function TDAOEndereco_Integracao.preencherEntidade(Endereco_Integracao : TEndereco_Integracao) : Boolean;
var
  Query: TDataSet;
begin
  Query:= executarConsulta('SELECT * FROM Endereco_Integracao WHERE idendereco = '+Endereco_Integracao.idendereco);
  preencherDTO(Query, Endereco_Integracao);
end;


procedure TDAOEndereco_Integracao.preencherDTO(Query:TDataSet; Endereco_Integracao : TEndereco_Integracao);
begin

  with Query do
    begin
      Endereco_Integracao.idendereco := FieldByName('idendereco').AsString;
      Endereco_Integracao.dsuf := FieldByName('dsuf').AsString;
      Endereco_Integracao.nmcidade := FieldByName('nmcidade').AsString;
      Endereco_Integracao.nmbairro := FieldByName('nmbairro').AsString;
      Endereco_Integracao.nmlogradouro := FieldByName('nmlogradouro').AsString;
      Endereco_Integracao.dscomplemento := FieldByName('dscomplemento').AsString;
    end;

end;
end.
