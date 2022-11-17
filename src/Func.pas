unit Func;

interface
uses System.SysUtils, System.UITypes, Dialogs, Forms, StdCtrls, System.JSON, Data.DB,
Classes, Rest.JSON, REST.Response.Adapter;

type
  TRetornoApi = record
    status : String;
    msg : String;
  end;

  TFunc = class
    public
      class function QuotedStr2(s: String): String;
      class function VazioNullString(s :String): String;
      class function FormatarNumero(numero : Real; Decimais : Integer = 2; UsaMilhar : Boolean = False) : String; overload;
      class function FormatarNumero(numero : String; Decimais : Integer = 2; UsaMilhar : Boolean = False) : String; overload;
      class function MostrarMensagem(Caption, Texto: String; Tipo: Integer): TModalResult;
      class function MostrarMensagemConfirmacao(Caption, Texto: String): TModalResult;
      class function ConfirmarExclusao: Boolean;
      class function DataInvertida(data : String) : String;
      class function DoubleParaBD(dbl : String) : String;

      class function MensagemConfirmacao(msg: String = 'ok'; id: String = ''): TJSONObject;
      class function MensagemErro(msg: String = 'erro'): TJSONObject;

      class function DataSetToJson(DataSet : TDataSet) : TJSONValue;
      class function MensagemRetornoObjeto(o: TObject; msg: String = 'ok'): TJSONObject;
      class procedure JsonToDataSet(aDataset : TDataSet; aJSON : string);

      class function pegarRetornoApi(sJson: String): TRetornoApi;
      class function interpretarRetorno(r: TRetornoApi; msgOk: boolean = true): Boolean;
      class function pegarMensagemAPI(r: TRetornoApi): TJSONObject;



  end;

implementation

{ TFunc }

class function TFunc.ConfirmarExclusao: Boolean;
begin
  Result:= TFunc.MostrarMensagemConfirmacao('Confirmar Exclus�o','Deseja excluir?') = mrYes;
end;

class function TFunc.DataInvertida(data: String): String;
var
  d: TDateTime;
begin
  if TryStrToDate(data, d) then
    begin
      Result := FormatDateTime('yyyy-mm-dd',d);
    end
  else
    begin
      Result := 'NULL';
    end;

end;

class function TFunc.DataSetToJson(DataSet: TDataSet): TJSONValue;
var
  field_name,nomeDaColuna,valorDaColuna : String;
  I: Integer;
  sJson: String;

begin


  if not DataSet.IsEmpty then
    begin
      DataSet.First;

      sJson := '';
      while not DataSet.EOF do
        begin
          sJson := sJson+'{';
          for I := 0 to DataSet.Fields.Count-1 do
          begin
            nomeDaColuna  := AnsiLowerCase(DataSet.FieldDefs[I].Name);
            valorDaColuna := DataSet.FieldByName(nomeDaColuna).AsString;
            valorDaColuna := valorDaColuna.Replace('"','');
            sJson := sJson+'"'+nomeDaColuna+'":"'+valorDaColuna+'",';

          end;
          Delete(sJson, Length(sJson), 1);
          sJson := sJson+'},';

          DataSet.Next;
        end;
      Delete(sJson, Length(sJson), 1);
    end
  else
    begin
      sJson := '';
    end;
  Result:= TJSONObject.ParseJSONValue('['+sJson+']');
end;

class function TFunc.DoubleParaBD(dbl: String): String;
var
  i : Integer;
  sout : String;
begin
  sout := '';
  for i := 1 to Length(dbl) do
    begin
      //if (dbl[i] in ['0'..'9',',','.']) then
      if CharInSet(dbl[i],['0'..'9',',','.']) then
        sout := sout + dbl[i];
    end;

  sout := StringReplace(sout,'.','',[rfReplaceAll]);
  sout := StringReplace(sout,',','.', [rfReplaceAll]);


  if sout = '' then
    Result := 'NULL'
  else
    Result := sout;

end;

class function TFunc.FormatarNumero(numero: String; Decimais: Integer;
  UsaMilhar: Boolean): String;
var
  i : Integer;
  fmt, dec : String;
  num : Extended;
begin
  Result := '';
  dec := '';

  numero := StringReplace(numero, '.', '',[rfReplaceAll]);

  if Decimais > 0 then dec := '.';
  if numero = '' then numero := '0';

  for i := 1 to Decimais do
    begin
      dec := dec + '0';
    end;

  if UsaMilhar then
    fmt := '#,##0'+dec
  else
    fmt := '#0'+dec;

  if TryStrToFloat(numero,num) then
    begin
      Result := FormatFloat(fmt,num);
    end;
end;

class function TFunc.interpretarRetorno(r: TRetornoApi; msgOk: boolean): Boolean;
begin
  Result:= false;
  if r.status <> 'ok' then
    begin
      ShowMessage(r.msg);
    end
  else
    begin
      Result := true;
      if msgOk then
        begin
          ShowMessage(r.msg);
        end;
    end;
end;

class procedure TFunc.JsonToDataSet(aDataset: TDataSet; aJSON: string);
var
  JObj: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
    begin
      Exit;
    end;

  //se n�o for array, transforma em um
  if copy(aJSON, 1,1) <> '[' then
    begin
      aJSON:= '['+ aJSON + ']';
    end;


  JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  vConv := TCustomJSONDataSetAdapter.Create(Nil);


  try
    vConv.Dataset := aDataset;
    vConv.UpdateDataSet(JObj);
  except
  end;
  vConv.Free;
  JObj.Free;
end;

class function TFunc.MensagemConfirmacao(msg, id: String): TJSONObject;
begin
  Result:= TJSONObject.Create;
  Result.AddPair('status','ok');
  Result.AddPair('msg',msg);
  if id <> '' then
    begin
      Result.AddPair('id',id);
    end;

end;

class function TFunc.MensagemErro(msg: String): TJSONObject;
begin
  Result:= TJSONObject.Create;
  Result.AddPair('status','erro');
  Result.AddPair('msg',msg);

end;

class function TFunc.MensagemRetornoObjeto(o: TObject;
  msg: String): TJSONObject;
begin
  Result:= TJSONObject.Create;
  Result.AddPair('status','ok');
  Result.AddPair('msg',msg);
  Result.AddPair('dados', TJson.ObjectToJsonObject(o));

end;

class function TFunc.MostrarMensagem(Caption, Texto: String; Tipo: Integer): TModalResult;
var
  Msg: TForm;
  MsgType: TMsgDlgType;
  MsgBtns: TMsgDlgButtons;
begin
  try
    case Tipo of
      // Informa��o
      0:
        begin
          MsgType := mtInformation;
          MsgBtns := [TMsgDlgBtn.mbOK];
        end;
      // Aten��o
      1:
        begin
          MsgType := mtWarning;
          MsgBtns := [TMsgDlgBtn.mbOK];
        end;
      // Confirma��o Sim/N�o
      2:
        begin
          MsgType := mtConfirmation;
          MsgBtns := [TMsgDlgBtn.mbYes,TMsgDlgBtn.mbNo];
        end;
      // Erro
      3:
        begin
          MsgType := mtError;
          MsgBtns := [TMsgDlgBtn.mbOK];
        end;
    end;

    Msg := CreateMessageDialog(Texto, MsgType, MsgBtns);
    Msg.Caption := Caption;

    // Traduzindo Bot�es
    (Msg.FindComponent('Yes') As TButton).Caption := 'Sim';
    (Msg.FindComponent('No') As TButton).Caption := 'N�o';



    Msg.ShowModal;
    Result := Msg.ModalResult;
  finally
    FreeAndNil(Msg);
  end;
end;

class function TFunc.MostrarMensagemConfirmacao(Caption, Texto: String): TModalResult;
begin
  Result:= TFunc.MostrarMensagem(Caption, Texto,2);
end;

class function TFunc.pegarMensagemAPI(r: TRetornoApi): TJSONObject;
begin
  Result:= TJSONObject.Create;
  Result.AddPair('status',r.status);
  Result.AddPair('msg',r.msg);
end;

class function TFunc.pegarRetornoApi(sJson: String): TRetornoApi;
var
  JSonValue:TJSonValue;
begin
  JsonValue := TJSonObject.ParseJSONValue(sJson);
  Result.status := JsonValue.GetValue<string>('status');
  Result.msg := JsonValue.GetValue<string>('msg');

end;

class function TFunc.FormatarNumero(numero: Real; Decimais: Integer;
  UsaMilhar: Boolean): String;
var
  i : Integer;
  fmt, dec : String;
begin
  Result := '';
  dec := '';
  if Decimais > 0 then dec := '.';
  for i := 1 to Decimais do
    begin
      dec := dec + '0';
    end;

  if UsaMilhar then
    fmt := '#,##0'+dec
  else
    fmt := '#0'+dec;

  Result := FormatFloat(fmt,numero);
end;

class function TFunc.QuotedStr2(s: String): String;
begin
  if s = '' then
    begin
      Result:= 'null';
    end
  else if s <> 'NULL' then
    begin
      Result:= QuotedStr(s);
    end
  else
    begin
      Result := s;
    end;
end;

class function TFunc.VazioNullString(s: String): String;
begin
  if s = '' then
    Result := 'NULL'
  else
    Result := s;
end;

end.

