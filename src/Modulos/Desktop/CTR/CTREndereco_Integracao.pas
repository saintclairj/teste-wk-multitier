unit CTREndereco_Integracao;

interface
uses Endereco_Integracao, Data.DB, Func, UDM;

type
  TCTREndereco_Integracao = class

  public
    procedure preencherEntidade(Query: TDataSet; Endereco_Integracao : TEndereco_Integracao);
    function atualizarTodosEnderecos: TRetornoApi;

  end;

implementation

{ TCTREndereco }

function TCTREndereco_Integracao.atualizarTodosEnderecos: TRetornoApi;
var
  s: String;
begin
  s:= DM.chamarMetodoGET('EnderecoIntegracao/atualizarTodos');
  Result:= Tfunc.pegarRetornoApi(s);
end;

procedure TCTREndereco_Integracao.preencherEntidade(Query: TDataSet; Endereco_Integracao: TEndereco_Integracao);
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

