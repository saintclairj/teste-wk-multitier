unit SuperDAO;

interface
uses Firedac.Comp.Client, Data.DB;

  type

  TSuperDAO = class
    public
      function executarSQL(SQL: String; usarTransacao: Boolean = true): String;
      function executarConsulta(SQL: String): TDataSet;

      procedure iniciarTransacao;
      procedure finalizarTransacao;
      procedure cancelarTransacao;



  end;

implementation
uses Principal;

{ TSuperDAO }

procedure TSuperDAO.cancelarTransacao;
begin
  frmPrincipal.Conexao.Rollback;
end;

function TSuperDAO.executarConsulta(SQL: String): TDataSet;
var
  Query: TFDQuery;
begin

  Query:= TFDQuery.Create(frmPrincipal);
  Query.Connection := frmPrincipal.Conexao;
  Query.SQL.Text:= SQL;
  try
    Query.OpenOrExecute;
  except
    Query.SQL.SaveToFile('ultimo erro.txt');

  end;

  Result:= Query;


end;

function TSuperDAO.executarSQL(SQL: String; usarTransacao: Boolean): String;
var
  Query: TFDQuery;
begin
  Result := '';
  Query:= TFDQuery.Create(frmPrincipal);
  Query.Connection := frmPrincipal.Conexao;
  Query.SQL.Text:= SQL;
  try
    if usarTransacao then
      begin
        iniciarTransacao;
      end;

    Query.ExecSQL;

    if usarTransacao then
      begin
        finalizarTransacao;
      end;
  except
    Query.SQL.SaveToFile('ultimo erro.txt');
    Result:= 'erro ao executar SQL';
    if usarTransacao then
      begin
        cancelarTransacao;
      end;
  end;

  Query.Free;
end;

procedure TSuperDAO.finalizarTransacao;
begin
  frmPrincipal.Conexao.Commit;
end;

procedure TSuperDAO.iniciarTransacao;
begin
  frmPrincipal.Conexao.StartTransaction;
end;

end.
