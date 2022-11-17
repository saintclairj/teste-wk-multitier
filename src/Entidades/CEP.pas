unit CEP;

interface
type
  TCEP = class
    Private
    Fcep : String;
    Flogradouro : String;
    Fcomplemento : String;
    Fbairro : String;
    Flocalidade : String;
    Fuf : String;

  Published
    property cep : String read Fcep write Fcep;
    property logradouro : String read Flogradouro write Flogradouro;
    property complemento : String read Fcomplemento write Fcomplemento;
    property bairro : String read Fbairro write Fbairro;
    property localidade : String read Flocalidade write Flocalidade;
    property uf : String read Fuf write Fuf;
  end;

implementation

end.
