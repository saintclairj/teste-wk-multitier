unit CTRPessoaEndereco;

interface

uses PessoaEndereco, Func, System.JSON, Rest.JSON, UDM;

type
  TCTRPessoaEndereco = class

  public
    function inserir(PessoaEndereco: TPessoaEndereco): TRetornoApi;
    function atualizar(PessoaEndereco: TPessoaEndereco): TRetornoApi;
    function salvar(PessoaEndereco: TPessoaEndereco): TRetornoApi;


  end;

implementation

{ TCTRPessoaEndereco }

function TCTRPessoaEndereco.atualizar(
  PessoaEndereco: TPessoaEndereco): TRetornoApi;
var
  p, e, ei, s: String;
begin
  p := TJSON.ObjectToJsonString(PessoaEndereco.pessoa);
  s:= p;
  e := TJSON.ObjectToJsonString(PessoaEndereco.endereco);
  s:= s + ','+ e;
  ei := TJSON.ObjectToJsonString(PessoaEndereco.endereco_integracao);
  s:= s + ','+ ei;
  s:= '['+s+']';
  s:= DM.chamarMetodoPut('PessoaEndereco',s);
  Result:= Tfunc.pegarRetornoApi(s);

end;



function TCTRPessoaEndereco.inserir(PessoaEndereco: TPessoaEndereco): TRetornoApi;
var
  p, e, ei, s: String;
begin
  p := TJSON.ObjectToJsonString(PessoaEndereco.pessoa);
  s:= p;
  e := TJSON.ObjectToJsonString(PessoaEndereco.endereco);
  s:= s + ','+ e;
  ei := TJSON.ObjectToJsonString(PessoaEndereco.endereco_integracao);
  s:= s + ','+ ei;
  s:= '['+s+']';
  s:= DM.chamarMetodoPost('PessoaEndereco',s);
  Result:= Tfunc.pegarRetornoApi(s);

end;

function TCTRPessoaEndereco.salvar(
  PessoaEndereco: TPessoaEndereco): TRetornoApi;
begin
  if PessoaEndereco.pessoa.idpessoa = '' then
    begin
      Result := inserir(PessoaEndereco);
    end
  else
    begin
      Result := atualizar(PessoaEndereco);
    end;

end;

end.
