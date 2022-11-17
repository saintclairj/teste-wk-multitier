unit CTREndereco;

interface
uses Endereco, Data.DB;

type
  TCTREndereco = class

  public
    procedure preencherEntidade(Query: TDataSet; Endereco : TEndereco);


  end;

implementation

{ TCTREndereco }

procedure TCTREndereco.preencherEntidade(Query: TDataSet; Endereco: TEndereco);
begin
 with Query do
    begin
      Endereco.idendereco := FieldByName('idendereco').AsString;
      Endereco.idpessoa := FieldByName('idpessoa').AsString;
      Endereco.dscep := FieldByName('dscep').AsString;
    end;
end;

end.
