Unit Endereco;

interface

  uses db, Dialogs, SysUtils, StdCtrls, Contnrs, Controls;

  Type

  TEndereco = Class
  Private
    Fidendereco : String;
    Fidpessoa : String;
    Fdscep : String;

  Published
    property idendereco : String read Fidendereco write Fidendereco;
    property idpessoa : String read Fidpessoa write Fidpessoa;
    property dscep : String read Fdscep write Fdscep;

  end;


implementation

end.