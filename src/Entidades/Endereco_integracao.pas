Unit Endereco_integracao;

interface

  uses db, Dialogs, SysUtils, StdCtrls, Contnrs, Controls;

  Type

  TEndereco_integracao = Class
  Private
    Fidendereco : String;
    Fdsuf : String;
    Fnmcidade : String;
    Fnmbairro : String;
    Fnmlogradouro : String;
    Fdscomplemento : String;

  Published
    property idendereco : String read Fidendereco write Fidendereco;
    property dsuf : String read Fdsuf write Fdsuf;
    property nmcidade : String read Fnmcidade write Fnmcidade;
    property nmbairro : String read Fnmbairro write Fnmbairro;
    property nmlogradouro : String read Fnmlogradouro write Fnmlogradouro;
    property dscomplemento : String read Fdscomplemento write Fdscomplemento;

  end;


implementation

end.