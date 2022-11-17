Unit DAOEndereco_Integracao;

interface

  uses FireDAC.Stan.Intf, FireDAC.Stan.Option,FireDAC.Stan.Param, FireDAC.Stan.Error,FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,FireDAC.Comp.DataSet, FireDAC.Comp.Client, Endereco_Integracao, Func, SuperDAO,
System.SysUtils, System.Classes;

  Type

  TDAOEndereco_Integracao = Class(TSuperDAO)
  public
    function inserir(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function atualizar(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    function excluir(id: String) : Boolean;
    function preencherEntidade(Endereco_Integracao : TEndereco_Integracao) : Boolean;
    procedure preencherDTO(Query: TDataSet; Endereco_Integracao : TEndereco_Integracao);
    function atualizarCEP(cep: String): Boolean;
    procedure atualizarTodosCeps;

  end;


implementation
uses CTRCep, Cep, Principal;

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
      'nmcidade = ' + TFunc.QuotedStr2(Endereco_Integracao.nmcidade)+','+
      'nmbairro = ' + TFunc.QuotedStr2(Endereco_Integracao.nmbairro)+','+
      'nmlogradouro = ' + TFunc.QuotedStr2(Endereco_Integracao.nmlogradouro)+','+
      'dscomplemento = ' + TFunc.QuotedStr2(Endereco_Integracao.dscomplemento)+
      ' WHERE idendereco = ' + Endereco_Integracao.idendereco);

  Result := (r = '');
end;


function TDAOEndereco_Integracao.atualizarCEP(cep: String): Boolean;
var
  r: String;
  CTRCep: TCTRCep;
  objCep: TCep;
begin
  Result := false;
  CTRCep:= TCTRCep.Create;
  objCep:= TCep.Create;
  objCep:= CTRCep.pegarEndereco(cep);
  if objCep.cep <> '' then
    begin
      r:= executarSQL('UPDATE Endereco_Integracao SET '+
          'nmcidade = ' + QuotedStr(objCep.localidade)+','+
          'nmbairro = ' + QuotedStr(objCep.bairro)+','+
          'nmlogradouro = ' + QuotedStr(objCep.logradouro)+
          ' WHERE idendereco in (SELECT idendereco FROM endereco WHERE dscep = '+ QuotedStr(cep) +')');
      Result := (r = '');
    end;


  CTRCep.Free;
  objCep.Free;
end;

procedure TDAOEndereco_Integracao.atualizarTodosCeps;
begin

if (frmPrincipal.statusAtualizacaoCEP = '') or
    (frmPrincipal.statusAtualizacaoCEP = 'conclu�da') or
    (frmPrincipal.statusAtualizacaoCEP = 'com falha') then
  begin

    TThread.CreateAnonymousThread(procedure
    var
      Query: TDataSet;
      ok: Boolean;
    begin

        ok:= true;
        try
          frmPrincipal.statusAtualizacaoCEP := 'em andamento';
          Query:= executarConsulta('SELECT DISTINCT dscep FROM endereco WHERE dscep IS NOT NULL AND dscep <> ''''');
          with Query do
            begin
              while not Eof do
                begin
                  if not atualizarCEP(FieldByName('dscep').AsString) then
                    begin
                      ok:= false;
                    end;
                  Next;
                end;
            end;
          Query.Free;
        except
          ok:= false;
        end;

        if ok then
          begin
            frmPrincipal.statusAtualizacaoCEP := 'conclu�da';
          end
        else
          begin
            frmPrincipal.statusAtualizacaoCEP := 'com falha';
          end;



    end).start();
  end;
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
