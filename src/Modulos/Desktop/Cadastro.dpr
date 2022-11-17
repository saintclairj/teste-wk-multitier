program Cadastro;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  Func in '..\..\Func.pas',
  CTRPessoa in 'CTR\CTRPessoa.pas',
  Pessoa in '..\..\Entidades\Pessoa.pas',
  Endereco in '..\..\Entidades\Endereco.pas',
  Endereco_integracao in '..\..\Entidades\Endereco_integracao.pas',
  PessoaEndereco in '..\..\Entidades\PessoaEndereco.pas',
  CTRPessoaEndereco in 'CTR\CTRPessoaEndereco.pas',
  CTREndereco in 'CTR\CTREndereco.pas',
  CTREndereco_Integracao in 'CTR\CTREndereco_Integracao.pas',
  CEP in '..\..\Entidades\CEP.pas',
  CTRCep in '..\..\CTR\CTRCep.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
