unit u000clp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, Vcl.ComCtrls, Vcl.DBCtrls, wconnect_wsdl,
  Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, oDateTimePicker, oTabelas, oMensagem,
  oMemo, oPanel;

type
  TF000CLP = class(TF000CAD)
    USU_T090IND: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    T090IND_USU_DatFin: THDateTimePicker;
    T090IND_USU_UsuRes: THButtonedEdit;
    T090IND_USU_DatIni: THDateTimePicker;
    T090IND_USU_VlrInd: THButtonedEdit;
    T090IND_USU_UsuGer: THButtonedEdit;
    T090IND_USU_UsuAlt: THButtonedEdit;
    T090IND_USU_DatGer: THDateTimePicker;
    T090IND_USU_DatAlt: THDateTimePicker;
    MovBCB: TButton;
    USU_T160CLP: TTabSheet;
    Label3: TLabel;
    T090IND_USU_CodDbc: THButtonedEdit;
    Label14: TLabel;
    T160CLP_USU_CodEmp: THButtonedEdit;
    Label13: TLabel;
    T160CLP_USU_CodFil: THButtonedEdit;
    T160CLP_USU_NumCtr: THButtonedEdit;
    Label1: TLabel;
    T090IND_USU_ObsInd: THMemo;
    Label15: TLabel;
    Label16: TLabel;
    T160CLP_USU_VigFim: THDateTimePicker;
    T160CLP_USU_IniVig: THDateTimePicker;
    T160CLP_USU_CodCli: THButtonedEdit;
    T160CLP_USU_VlrCtr: THButtonedEdit;
    T160CLP_USU_CodBem: THButtonedEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    T160CLP_USU_UsuGer: THButtonedEdit;
    T160CLP_USU_UsuAlt: THButtonedEdit;
    T160CLP_USU_DatGer: THDateTimePicker;
    T160CLP_USU_DatAlt: THDateTimePicker;
    Cabecalho_T090IND: THPanel;
    Label2: TLabel;
    T090IND_USU_IndFin: THButtonedEdit;

    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F000CLP: TF000CLP;

implementation

uses
  oBase;

{$R *.dfm}

procedure TF000CLP.FormCreate(Sender: TObject);
var
  xServico: WConnect_CRM_SeniorPortType;
  xEntrada: wconnect_wsdl.OportunidadesParametros;
  xSaida: wconnect_wsdl.OportunidadesDadosArray;
begin
  inherited;

  xServico := GetWConnect_CRM_SeniorPortType();
  xEntrada := OportunidadesParametros.Create;
  xEntrada.UsuarioLogin := 'integracao';
  xEntrada.UsuarioSenha := 'integracao';
  xEntrada.ContaId := 1;
  //xSaida := xServico.getOportunidades(xEntrada);

  Registrar('T160CLP' , 'USU_T160CLP', ['T090IND'], ['USU_T090IND']);

  T160CLP_USU_CodCli.Filter := 'SITCLI = ''A''';
  T160CLP_USU_CodBem.Filter := 'USU_BEMCLP = ''S''';
  T160CLP_USU_CodCli.Filter := 'USU_LocClp = ''S''';

  T090IND_USU_UsuRes.Filter := 'SITUSU = ''A''';
  T090IND_USU_UsuRes.AddFilterLookup(T160CLP_USU_CodEmp);

  T160CLP_USU_CodFil.AddFilterLookup(T160CLP_USU_CodEmp);
  T160CLP_USU_NumCtr.AddFilterLookup(T160CLP_USU_CodEmp);
  T160CLP_USU_NumCtr.AddFilterLookup(T160CLP_USU_CodFil);
end;

initialization
  RegisterClasses([T160CLP, T090IND]);

finalization
  UnRegisterClasses([T160CLP, T090IND]);

end.
