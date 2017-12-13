unit oMensagem;

interface

uses
  Vcl.Forms, Vcl.Controls, System.TypInfo, Vcl.Dialogs,
  System.SysUtils;

type
  tMessageType = (mtWarning, mtErrorInform, mtExceptError, mtInformation, mtConfirmationAll, mtConfirmationYesNo, mtConfirmationCancel);

  THMessage = class(Exception)
    function CMessage(const pMessage: string; const pMessageType: tMessageType;
      const pDetalhe: Boolean = False; const pMsgDetalhe: string = ''): Boolean;

    constructor Create(const pMessage: string; const pMessageType: tMessageType; out pResult: Boolean;
      const pDetalhe: Boolean = False; const pMsgDetalhe: string = ''); overload;
  end;

  function CMessage(const pMessage: string; const pMessageType: tMessageType;
      const pDetalhe: Boolean = False; const pMsgDetalhe: string = ''): Boolean;

implementation

uses
  Vcl.StdCtrls, oBase, oHButton;

{ THMessage }

function THMessage.CMessage(const pMessage: string;
  const pMessageType: tMessageType; const pDetalhe: Boolean;
  const pMsgDetalhe: string): Boolean;
var
  i: Integer;
  xForm: TForm;
  xMensagem: string;
  xMessageType: TMsgDlgType;

  procedure FixMessage();
  var
    i: Integer;
    xEnter: Integer;
    xCont: Integer;
  begin
    xEnter := 0;
    xCont := 0;

    for i := 0 to High(pMessage) do
    begin
       Inc(xEnter);

      if ((xEnter >= 40) and (IsNull(pMessage[i]))) then
      begin
        xCont := xCont + xEnter;
        xMensagem := Copy(pMessage, (i - xCont), xCont -1) + #13 + Copy(pMessage, i, (Length(pMessage) - (i - 1)));
        xEnter := 0;
      end;
    end;
  end;

  procedure TryMessageType();
  begin
    case (pMessageType) of
      mtConfirmationAll, mtConfirmationYesNo, mtConfirmationCancel:
        xMessageType := mtConfirmation;

      mtInformation, mtErrorInform, mtExceptError, mtWarning:
      begin
        if (pMessageType = mtWarning) then
          xMessageType := TMsgDlgType(0)
        else
        if (pMessageType = mtErrorInform) or (pMessageType = mtExceptError) then
          xMessageType := TMsgDlgType(1)
        else
          xMessageType := TMsgDlgType(2);
      end;
    end;
  end;

  procedure CreateButtons();
  var
    xButton: TCButton;
  begin
    case (pMessageType) of
      mtInformation, mtErrorInform, mtExceptError, mtWarning:
      begin
        xButton := TCButton.CreatePersonalizado(xForm, btn_OK);
        xButton.Left := 120;
        xButton.Top := 80;
        xButton.Parent := xForm;
        xButton.Caption := '&Ok';
      end;

      mtConfirmationYesNo:
      begin
        xButton := TCButton.CreatePersonalizado(xForm, btn_Yes);
        xButton.Left := 80;
        xButton.Top := 80;
        xButton.Parent := xForm;
        xButton.Caption := '&Sim';

        xButton := TCButton.CreatePersonalizado(xForm, btn_No);
        xButton.Left := 165;
        xButton.Top := 80;
        xButton.Parent := xForm;
        xButton.Caption := '&Não';
      end;
    end;

    if ((pMessageType = mtErrorInform) or (pMessageType = mtExceptError)) and (pDetalhe = True) then
    begin
      xButton := TCButton.CreatePersonalizado(xForm, btn_Detail);
      xButton.Left := 220;
      xButton.Top := 80;
      xButton.Parent := xForm;
      xButton.Caption := '&Detalhe(s)';
    end;
  end;

  procedure CreateMemo();
  var
    xMemo: TMemo;
  begin
    xMemo := TMemo.Create(xForm);
    xMemo.ReadOnly := True;
    xMemo.Parent := xForm;
    xMemo.Text := pMsgDetalhe;
    xMemo.ScrollBars := ssVertical;
    xMemo.Left := 1;
    xMemo.Width := 302;
    xMemo.Height := 145;
    xMemo.Top := 125;
    xMemo.Visible := False;
  end;

begin
  Result := False;
  xMensagem := pMessage;

  FixMessage();
  TryMessageType;

  xForm := CreateMessageDialog(xMensagem, xMessageType, []);
  try
    xForm.Height := 150;
    xForm.Width := 330;
    xForm.BorderStyle := bsSingle;

    CreateButtons();
    CreateMemo();

    case (xMessageType) of
      TMsgDlgType(0): xForm.Caption := 'Aviso';
      TMsgDlgType(1): xForm.Caption := 'Erro';
      TMsgDlgType(2): xForm.Caption := 'Informação';
      TMsgDlgType(3): xForm.Caption := 'Confirmação';
    end;

    xForm.ShowModal;

    for i := 0 to pred(xForm.ComponentCount) do
    begin
      if (xForm.Components[i] is TCButton) then
      begin
        if (TCButton(xForm.Components[i]).CheckClick in [btn_OK, btn_Yes]) then
        begin
          Result := True;
          Break;
        end;
      end;
    end;
  finally
    FreeAndNil(xForm);
  end;
end;

function CMessage(const pMessage: string; const pMessageType: tMessageType;
      const pDetalhe: Boolean = False; const pMsgDetalhe: string = ''): Boolean;
begin
  try
    raise THMessage.Create(pMessage, pMessageType, Result,pDetalhe, pMsgDetalhe);
  except
    if (pMessageType = mtExceptError) then
      raise;
  end;
end;

constructor THMessage.Create(const pMessage: string;
  const pMessageType: tMessageType; out pResult: Boolean;
  const pDetalhe: Boolean; const pMsgDetalhe: string);
begin
  pResult := Self.CMessage(pMessage, pMessageType, pDetalhe, pMsgDetalhe);
end;

end.
