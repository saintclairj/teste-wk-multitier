Unit PessoaEndereco;

interface

  uses db, Dialogs, SysUtils, StdCtrls, Contnrs, Controls,
  Pessoa, Endereco, Endereco_Integracao;

  Type

  TPessoaEndereco = Class
  Private

  public
    pessoa : TPessoa;
    endereco : TEndereco;
    endereco_integracao : TEndereco_Integracao;
    constructor Create;



  end;


implementation

{ TPessoaEndereco }

constructor TPessoaEndereco.Create;
begin
  pessoa := TPessoa.Create;
  endereco := TEndereco.Create;
  endereco_integracao := TEndereco_Integracao.Create;

end;

end.
