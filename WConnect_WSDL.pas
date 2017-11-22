// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://hennings.workcrm.com.br/wconnect/wsdl/WConnect_WSDL.php?wsdl
//  >Import : http://hennings.workcrm.com.br/wconnect/wsdl/WConnect_WSDL.php?wsdl>0
// Encoding : ISO-8859-1
// Version  : 1.0
// (09/11/2017 09:24:39 - - $Rev: 56641 $)
// ************************************************************************ //

unit WConnect_WSDL;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_UNBD = $0002;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  produtosRegistros    = class;                 { "urn:WConnect"[GblCplx] }
  produtosRecebe       = class;                 { "urn:WConnect"[GblCplx] }
  Tautenticacao        = class;                 { "urn:WConnect"[GblCplx] }
  TipoOportunidadeDados = class;                { "urn:WConnect"[GblCplx] }
  TautenticacaoRetornoDados = class;            { "urn:WConnect"[GblCplx] }
  OrigemOportunidadeDados = class;              { "urn:WConnect"[GblCplx] }
  ModalidadesNegocioDados = class;              { "urn:WConnect"[GblCplx] }
  conta                = class;                 { "urn:WConnect"[GblCplx] }
  contasRetornoDados   = class;                 { "urn:WConnect"[GblCplx] }
  contaCaracteristica  = class;                 { "urn:WConnect"[GblCplx] }
  contaResponsavelRetornoDados = class;         { "urn:WConnect"[GblCplx] }
  contaResponsavel     = class;                 { "urn:WConnect"[GblCplx] }
  produto              = class;                 { "urn:WConnect"[GblCplx] }
  unidadeMedida        = class;                 { "urn:WConnect"[GblCplx] }
  transportadoraRetornoDados = class;           { "urn:WConnect"[GblCplx] }
  transportadora       = class;                 { "urn:WConnect"[GblCplx] }
  unidadeMedidaRetornoDados = class;            { "urn:WConnect"[GblCplx] }
  produtosRecebeArray  = class;                 { "urn:WConnect"[GblCplx] }
  categoriaProdutoRetornoDados = class;         { "urn:WConnect"[GblCplx] }
  categoriaProduto     = class;                 { "urn:WConnect"[GblCplx] }
  produtoRetornoDados  = class;                 { "urn:WConnect"[GblCplx] }
  condicaoPagamento    = class;                 { "urn:WConnect"[GblCplx] }
  tabelasPrecoRetornoDados = class;             { "urn:WConnect"[GblCplx] }
  tabelasPreco         = class;                 { "urn:WConnect"[GblCplx] }
  condicaoPagamentoRetornoDados = class;        { "urn:WConnect"[GblCplx] }
  DepartamentosDados   = class;                 { "urn:WConnect"[GblCplx] }
  DepartamentosParametros = class;              { "urn:WConnect"[GblCplx] }
  FuncoesParametros    = class;                 { "urn:WConnect"[GblCplx] }
  OrigemContatoParametros = class;              { "urn:WConnect"[GblCplx] }
  FuncoesDados         = class;                 { "urn:WConnect"[GblCplx] }
  ContatosDados        = class;                 { "urn:WConnect"[GblCplx] }
  ContatosParametros   = class;                 { "urn:WConnect"[GblCplx] }
  OrigemContatoDados   = class;                 { "urn:WConnect"[GblCplx] }
  OportunidadesDados   = class;                 { "urn:WConnect"[GblCplx] }
  OportunidadesParametros = class;              { "urn:WConnect"[GblCplx] }
  ItensOportunidadeParametros = class;          { "urn:WConnect"[GblCplx] }
  ItensOportunidade    = class;                 { "urn:WConnect"[GblCplx] }
  UsuariosDados        = class;                 { "urn:WConnect"[GblCplx] }
  UsuariosParametros   = class;                 { "urn:WConnect"[GblCplx] }
  UsuariosGrupoDados   = class;                 { "urn:WConnect"[GblCplx] }
  UsuariosGrupoParametros = class;              { "urn:WConnect"[GblCplx] }
  RegistrosTipo        = class;                 { "urn:WConnect"[GblCplx] }
  CondicaoPagamentoDados = class;               { "urn:WConnect"[GblCplx] }
  CondicaoPagamentoParametros = class;          { "urn:WConnect"[GblCplx] }
  ProdutosDados        = class;                 { "urn:WConnect"[GblCplx] }
  ProdutosParametros   = class;                 { "urn:WConnect"[GblCplx] }
  TiposNotaParametros  = class;                 { "urn:WConnect"[GblCplx] }
  CidadesDados         = class;                 { "urn:WConnect"[GblCplx] }
  TiposNotaDados       = class;                 { "urn:WConnect"[GblCplx] }
  CategoriaProdutoDados = class;                { "urn:WConnect"[GblCplx] }
  CategoriaProdutoParametros = class;           { "urn:WConnect"[GblCplx] }
  TransportadorasParametros = class;            { "urn:WConnect"[GblCplx] }
  ModalidadesNegocioParametros = class;         { "urn:WConnect"[GblCplx] }
  RegistrosModalidade  = class;                 { "urn:WConnect"[GblCplx] }
  TipoOportunidadeParametros = class;           { "urn:WConnect"[GblCplx] }
  UnidadesMedidaParametros = class;             { "urn:WConnect"[GblCplx] }
  TransportadorasDados = class;                 { "urn:WConnect"[GblCplx] }
  UnidadesMedidaDados  = class;                 { "urn:WConnect"[GblCplx] }
  RegistrosOrigem      = class;                 { "urn:WConnect"[GblCplx] }
  OrigemOportunidadeParametros = class;         { "urn:WConnect"[GblCplx] }
  contatosRetornoDados = class;                 { "urn:WConnect"[GblCplx] }
  tiposNota            = class;                 { "urn:WConnect"[GblCplx] }
  tiposNotaRetornoDados = class;                { "urn:WConnect"[GblCplx] }
  contato              = class;                 { "urn:WConnect"[GblCplx] }
  contaCaracteristicaRetornoDados = class;      { "urn:WConnect"[GblCplx] }
  compromisso          = class;                 { "urn:WConnect"[GblCplx] }
  compromissoRetornoDados = class;              { "urn:WConnect"[GblCplx] }
  RamosAtividadeParametros = class;             { "urn:WConnect"[GblCplx] }
  RamosAtividadeDados  = class;                 { "urn:WConnect"[GblCplx] }
  GruposParametros     = class;                 { "urn:WConnect"[GblCplx] }
  GruposDados          = class;                 { "urn:WConnect"[GblCplx] }
  PaisesDados          = class;                 { "urn:WConnect"[GblCplx] }
  Cidades              = class;                 { "urn:WConnect"[GblCplx] }
  PaisesParametros     = class;                 { "urn:WConnect"[GblCplx] }
  OrigemContaParametros = class;                { "urn:WConnect"[GblCplx] }
  OrigemContaDados     = class;                 { "urn:WConnect"[GblCplx] }
  CaracteristicasDetalheDados = class;          { "urn:WConnect"[GblCplx] }
  oportunidadeRetornoDados = class;             { "urn:WConnect"[GblCplx] }
  concluiCompromisso   = class;                 { "urn:WConnect"[GblCplx] }
  concluiCompromissoRetornoDados = class;       { "urn:WConnect"[GblCplx] }
  oportunidade         = class;                 { "urn:WConnect"[GblCplx] }
  produtosRetornoDados = class;                 { "urn:WConnect"[GblCplx] }
  ocorrencia           = class;                 { "urn:WConnect"[GblCplx] }
  ocorrenciaRetornoDados = class;               { "urn:WConnect"[GblCplx] }
  CaracteristicasDados = class;                 { "urn:WConnect"[GblCplx] }
  CaracteristicasDetalheParametros = class;     { "urn:WConnect"[GblCplx] }
  CaracteristicasParametros = class;            { "urn:WConnect"[GblCplx] }
  ContasParametros     = class;                 { "urn:WConnect"[GblCplx] }
  ContasDados          = class;                 { "urn:WConnect"[GblCplx] }

  UnidadesMedidaDadosArray = array of UnidadesMedidaDados;   { "urn:WConnect"[GblCplx] }
  TransportadorasDadosArray = array of TransportadorasDados;   { "urn:WConnect"[GblCplx] }
  RegistrosModalidadeRetorno = array of RegistrosModalidade;   { "urn:WConnect"[GblCplx] }
  RegistrosOrigemRetorno = array of RegistrosOrigem;   { "urn:WConnect"[GblCplx] }
  TiposNotaDadosArray = array of TiposNotaDados;   { "urn:WConnect"[GblCplx] }
  CidadesDadosArray = array of CidadesDados;    { "urn:WConnect"[GblCplx] }
  ProdutosDadosArray = array of ProdutosDados;   { "urn:WConnect"[GblCplx] }
  CondicaoPagamentoDadosArray = array of CondicaoPagamentoDados;   { "urn:WConnect"[GblCplx] }
  CategoriaProdutoDadosArray = array of CategoriaProdutoDados;   { "urn:WConnect"[GblCplx] }
  UsuariosGrupoDadosArray = array of UsuariosGrupoDados;   { "urn:WConnect"[GblCplx] }
  UsuariosDadosArray = array of UsuariosDados;   { "urn:WConnect"[GblCplx] }
  OrigemContatoDadosArray = array of OrigemContatoDados;   { "urn:WConnect"[GblCplx] }
  ItensOportunidadeArray = array of ItensOportunidade;   { "urn:WConnect"[GblCplx] }
  Array_Of_produtosRecebe = array of produtosRecebe;   { "urn:WConnect"[GblUbnd] }
  OportunidadesDadosArray = array of OportunidadesDados;   { "urn:WConnect"[GblCplx] }
  ContatosDadosArray = array of ContatosDados;   { "urn:WConnect"[GblCplx] }
  RegistrosTipoRetorno = array of RegistrosTipo;   { "urn:WConnect"[GblCplx] }
  FuncoesDadosArray = array of FuncoesDados;    { "urn:WConnect"[GblCplx] }
  DepartamentosDadosArray = array of DepartamentosDados;   { "urn:WConnect"[GblCplx] }


  // ************************************************************************ //
  // XML       : produtosRegistros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  produtosRegistros = class(TRemotable)
  private
    FreferenciaProduto: string;
    FsucessoProduto: string;
  published
    property referenciaProduto: string  read FreferenciaProduto write FreferenciaProduto;
    property sucessoProduto:    string  read FsucessoProduto write FsucessoProduto;
  end;



  // ************************************************************************ //
  // XML       : produtosRecebe, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  produtosRecebe = class(TRemotable)
  private
    FoportunidadeProdutoId: string;
    FoportunidadeProdutoDerivacao: string;
    FoportunidadeProdutoKits: string;
    FoportunidadeProdutoQuantidadePedida: string;
    FoportunidadeProdutoQuantidadeFaturada: string;
    FoportunidadeProdutoQuantidadeAberta: string;
    FoportunidadeProdutoQuantidadeCancelada: string;
    FoportunidadeProdutoPrecoUnitario: string;
    FoportunidadeProdutoSituacaoItem: string;
  published
    property oportunidadeProdutoId:                  string  read FoportunidadeProdutoId write FoportunidadeProdutoId;
    property oportunidadeProdutoDerivacao:           string  read FoportunidadeProdutoDerivacao write FoportunidadeProdutoDerivacao;
    property oportunidadeProdutoKits:                string  read FoportunidadeProdutoKits write FoportunidadeProdutoKits;
    property oportunidadeProdutoQuantidadePedida:    string  read FoportunidadeProdutoQuantidadePedida write FoportunidadeProdutoQuantidadePedida;
    property oportunidadeProdutoQuantidadeFaturada:  string  read FoportunidadeProdutoQuantidadeFaturada write FoportunidadeProdutoQuantidadeFaturada;
    property oportunidadeProdutoQuantidadeAberta:    string  read FoportunidadeProdutoQuantidadeAberta write FoportunidadeProdutoQuantidadeAberta;
    property oportunidadeProdutoQuantidadeCancelada: string  read FoportunidadeProdutoQuantidadeCancelada write FoportunidadeProdutoQuantidadeCancelada;
    property oportunidadeProdutoPrecoUnitario:       string  read FoportunidadeProdutoPrecoUnitario write FoportunidadeProdutoPrecoUnitario;
    property oportunidadeProdutoSituacaoItem:        string  read FoportunidadeProdutoSituacaoItem write FoportunidadeProdutoSituacaoItem;
  end;



  // ************************************************************************ //
  // XML       : Tautenticacao, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  Tautenticacao = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
  published
    property UsuarioLogin: string  read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha: string  read FUsuarioSenha write FUsuarioSenha;
  end;



  // ************************************************************************ //
  // XML       : TipoOportunidadeDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TipoOportunidadeDados = class(TRemotable)
  private
    Fstatus: string;
    Fencontrado: string;
    Fmensagem: string;
    Fregistros: RegistrosTipoRetorno;
  public
    destructor Destroy; override;
  published
    property status:     string                read Fstatus write Fstatus;
    property encontrado: string                read Fencontrado write Fencontrado;
    property mensagem:   string                read Fmensagem write Fmensagem;
    property registros:  RegistrosTipoRetorno  read Fregistros write Fregistros;
  end;



  // ************************************************************************ //
  // XML       : TautenticacaoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TautenticacaoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
  published
    property status:   string  read Fstatus write Fstatus;
    property mensagem: string  read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : OrigemOportunidadeDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OrigemOportunidadeDados = class(TRemotable)
  private
    Fstatus: string;
    Fencontrado: string;
    Fmensagem: string;
    Fregistros: RegistrosOrigemRetorno;
  public
    destructor Destroy; override;
  published
    property status:     string                  read Fstatus write Fstatus;
    property encontrado: string                  read Fencontrado write Fencontrado;
    property mensagem:   string                  read Fmensagem write Fmensagem;
    property registros:  RegistrosOrigemRetorno  read Fregistros write Fregistros;
  end;



  // ************************************************************************ //
  // XML       : ModalidadesNegocioDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ModalidadesNegocioDados = class(TRemotable)
  private
    Fstatus: string;
    Fencontrado: string;
    Fmensagem: string;
    Fregistros: RegistrosModalidadeRetorno;
  public
    destructor Destroy; override;
  published
    property status:     string                      read Fstatus write Fstatus;
    property encontrado: string                      read Fencontrado write Fencontrado;
    property mensagem:   string                      read Fmensagem write Fmensagem;
    property registros:  RegistrosModalidadeRetorno  read Fregistros write Fregistros;
  end;



  // ************************************************************************ //
  // XML       : conta, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  conta = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcontaIdERP: Integer;
    FcontaStatus: Integer;
    FcontaRazaoSocial: string;
    FcontaFantasia: string;
    FcontaFilial: string;
    FcontaGrupoEmpresa: Integer;
    FcontaTipoConta: Integer;
    FcontaTipoPessoa: Integer;
    FcontaRating: Integer;
    FcontaPorte: Integer;
    FcontaEndereco: string;
    FcontaNumero: string;
    FcontaComplemento: string;
    FcontaBairro: string;
    FcontaCidade: string;
    FcontaCidadeUf: string;
    FcontaPais: string;
    FcontaCep: string;
    FcontaInscricaoEstadual: string;
    FcontaInscricaoMunicipal: string;
    FcontaCnpj: string;
    FcontaCpf: string;
    FcontaRg: string;
    FcontaAniversario: string;
    FcontaTelefone: string;
    FcontaTelefone2: string;
    FcontaTelefone3: string;
    FcontaFax: string;
    FcontaCelular: string;
    FcontaOperadora: string;
    FcontaUrl: string;
    FcontaEmailGeral: string;
    FcontaEmailFinanceiro: string;
    FcontaRecebeCampanha: Integer;
    FcontaRecebePesquisa: Integer;
    FcontaRamoAtividadeId: Integer;
    FcontaOrigemId: Integer;
    FcontaFuncionarios: Integer;
    FcontaReceitaAnual: string;
    FcontaMetaAnualPrevista: string;
    FcontaPercentualIss: string;
    FcontaObservacoes: string;
  published
    property UsuarioLogin:            string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:            string   read FUsuarioSenha write FUsuarioSenha;
    property contaIdERP:              Integer  read FcontaIdERP write FcontaIdERP;
    property contaStatus:             Integer  read FcontaStatus write FcontaStatus;
    property contaRazaoSocial:        string   read FcontaRazaoSocial write FcontaRazaoSocial;
    property contaFantasia:           string   read FcontaFantasia write FcontaFantasia;
    property contaFilial:             string   read FcontaFilial write FcontaFilial;
    property contaGrupoEmpresa:       Integer  read FcontaGrupoEmpresa write FcontaGrupoEmpresa;
    property contaTipoConta:          Integer  read FcontaTipoConta write FcontaTipoConta;
    property contaTipoPessoa:         Integer  read FcontaTipoPessoa write FcontaTipoPessoa;
    property contaRating:             Integer  read FcontaRating write FcontaRating;
    property contaPorte:              Integer  read FcontaPorte write FcontaPorte;
    property contaEndereco:           string   read FcontaEndereco write FcontaEndereco;
    property contaNumero:             string   read FcontaNumero write FcontaNumero;
    property contaComplemento:        string   read FcontaComplemento write FcontaComplemento;
    property contaBairro:             string   read FcontaBairro write FcontaBairro;
    property contaCidade:             string   read FcontaCidade write FcontaCidade;
    property contaCidadeUf:           string   read FcontaCidadeUf write FcontaCidadeUf;
    property contaPais:               string   read FcontaPais write FcontaPais;
    property contaCep:                string   read FcontaCep write FcontaCep;
    property contaInscricaoEstadual:  string   read FcontaInscricaoEstadual write FcontaInscricaoEstadual;
    property contaInscricaoMunicipal: string   read FcontaInscricaoMunicipal write FcontaInscricaoMunicipal;
    property contaCnpj:               string   read FcontaCnpj write FcontaCnpj;
    property contaCpf:                string   read FcontaCpf write FcontaCpf;
    property contaRg:                 string   read FcontaRg write FcontaRg;
    property contaAniversario:        string   read FcontaAniversario write FcontaAniversario;
    property contaTelefone:           string   read FcontaTelefone write FcontaTelefone;
    property contaTelefone2:          string   read FcontaTelefone2 write FcontaTelefone2;
    property contaTelefone3:          string   read FcontaTelefone3 write FcontaTelefone3;
    property contaFax:                string   read FcontaFax write FcontaFax;
    property contaCelular:            string   read FcontaCelular write FcontaCelular;
    property contaOperadora:          string   read FcontaOperadora write FcontaOperadora;
    property contaUrl:                string   read FcontaUrl write FcontaUrl;
    property contaEmailGeral:         string   read FcontaEmailGeral write FcontaEmailGeral;
    property contaEmailFinanceiro:    string   read FcontaEmailFinanceiro write FcontaEmailFinanceiro;
    property contaRecebeCampanha:     Integer  read FcontaRecebeCampanha write FcontaRecebeCampanha;
    property contaRecebePesquisa:     Integer  read FcontaRecebePesquisa write FcontaRecebePesquisa;
    property contaRamoAtividadeId:    Integer  read FcontaRamoAtividadeId write FcontaRamoAtividadeId;
    property contaOrigemId:           Integer  read FcontaOrigemId write FcontaOrigemId;
    property contaFuncionarios:       Integer  read FcontaFuncionarios write FcontaFuncionarios;
    property contaReceitaAnual:       string   read FcontaReceitaAnual write FcontaReceitaAnual;
    property contaMetaAnualPrevista:  string   read FcontaMetaAnualPrevista write FcontaMetaAnualPrevista;
    property contaPercentualIss:      string   read FcontaPercentualIss write FcontaPercentualIss;
    property contaObservacoes:        string   read FcontaObservacoes write FcontaObservacoes;
  end;



  // ************************************************************************ //
  // XML       : contasRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contasRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : contaCaracteristica, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contaCaracteristica = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcontaCaracteristicaContaIdErp: Integer;
    FcontaCaracteristicaContaId: Integer;
    FcontaCaracteristicaContaCnpjCpf: string;
    FcontaCaracteristicaContaTipo: Integer;
    FcontaCaracteristicaId: Integer;
    FcontaCaracteristicaDetalheId: Integer;
    FcontaCaracteristicaObservacoes: string;
  published
    property UsuarioLogin:                    string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:                    string   read FUsuarioSenha write FUsuarioSenha;
    property contaCaracteristicaContaIdErp:   Integer  read FcontaCaracteristicaContaIdErp write FcontaCaracteristicaContaIdErp;
    property contaCaracteristicaContaId:      Integer  read FcontaCaracteristicaContaId write FcontaCaracteristicaContaId;
    property contaCaracteristicaContaCnpjCpf: string   read FcontaCaracteristicaContaCnpjCpf write FcontaCaracteristicaContaCnpjCpf;
    property contaCaracteristicaContaTipo:    Integer  read FcontaCaracteristicaContaTipo write FcontaCaracteristicaContaTipo;
    property contaCaracteristicaId:           Integer  read FcontaCaracteristicaId write FcontaCaracteristicaId;
    property contaCaracteristicaDetalheId:    Integer  read FcontaCaracteristicaDetalheId write FcontaCaracteristicaDetalheId;
    property contaCaracteristicaObservacoes:  string   read FcontaCaracteristicaObservacoes write FcontaCaracteristicaObservacoes;
  end;



  // ************************************************************************ //
  // XML       : contaResponsavelRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contaResponsavelRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : contaResponsavel, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contaResponsavel = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcontaResponsavelIdErp: Integer;
    FcontaResponsavelId: Integer;
    FcontaResponsavelCnpjCpf: string;
    FcontaResponsavelTipoPessoa: Integer;
    FcontaResponsavelTipoResp: Integer;
    FcontaResponsavelRespId: Integer;
  published
    property UsuarioLogin:               string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:               string   read FUsuarioSenha write FUsuarioSenha;
    property contaResponsavelIdErp:      Integer  read FcontaResponsavelIdErp write FcontaResponsavelIdErp;
    property contaResponsavelId:         Integer  read FcontaResponsavelId write FcontaResponsavelId;
    property contaResponsavelCnpjCpf:    string   read FcontaResponsavelCnpjCpf write FcontaResponsavelCnpjCpf;
    property contaResponsavelTipoPessoa: Integer  read FcontaResponsavelTipoPessoa write FcontaResponsavelTipoPessoa;
    property contaResponsavelTipoResp:   Integer  read FcontaResponsavelTipoResp write FcontaResponsavelTipoResp;
    property contaResponsavelRespId:     Integer  read FcontaResponsavelRespId write FcontaResponsavelRespId;
  end;



  // ************************************************************************ //
  // XML       : produto, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  produto = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FprodutoNome: string;
    FprodutoNomeDervicao: string;
    FprodutoPartNumber: string;
    FprodutoPartNumberDerivacao: string;
    FprodutoCategoriaId: Integer;
    FprodutoUnidadeMedidaId: Integer;
    FprodutoPrecoVenda: string;
    FprodutoQuantidadePadrao: string;
    FprodutoFatorCorrecao: string;
    FprodutoIpi: string;
    FprodutoPeso: string;
    FprodutoObservacoes: string;
    FprodutoAtivo: Integer;
  published
    property UsuarioLogin:               string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:               string   read FUsuarioSenha write FUsuarioSenha;
    property produtoNome:                string   read FprodutoNome write FprodutoNome;
    property produtoNomeDervicao:        string   read FprodutoNomeDervicao write FprodutoNomeDervicao;
    property produtoPartNumber:          string   read FprodutoPartNumber write FprodutoPartNumber;
    property produtoPartNumberDerivacao: string   read FprodutoPartNumberDerivacao write FprodutoPartNumberDerivacao;
    property produtoCategoriaId:         Integer  read FprodutoCategoriaId write FprodutoCategoriaId;
    property produtoUnidadeMedidaId:     Integer  read FprodutoUnidadeMedidaId write FprodutoUnidadeMedidaId;
    property produtoPrecoVenda:          string   read FprodutoPrecoVenda write FprodutoPrecoVenda;
    property produtoQuantidadePadrao:    string   read FprodutoQuantidadePadrao write FprodutoQuantidadePadrao;
    property produtoFatorCorrecao:       string   read FprodutoFatorCorrecao write FprodutoFatorCorrecao;
    property produtoIpi:                 string   read FprodutoIpi write FprodutoIpi;
    property produtoPeso:                string   read FprodutoPeso write FprodutoPeso;
    property produtoObservacoes:         string   read FprodutoObservacoes write FprodutoObservacoes;
    property produtoAtivo:               Integer  read FprodutoAtivo write FprodutoAtivo;
  end;



  // ************************************************************************ //
  // XML       : unidadeMedida, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  unidadeMedida = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FunidadeMedidaIdErp: string;
    FunidadeMedidaNome: string;
    FunidadeMedidaSigla: string;
    FunidadeMedidaAtivo: Integer;
  published
    property UsuarioLogin:       string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:       string   read FUsuarioSenha write FUsuarioSenha;
    property unidadeMedidaIdErp: string   read FunidadeMedidaIdErp write FunidadeMedidaIdErp;
    property unidadeMedidaNome:  string   read FunidadeMedidaNome write FunidadeMedidaNome;
    property unidadeMedidaSigla: string   read FunidadeMedidaSigla write FunidadeMedidaSigla;
    property unidadeMedidaAtivo: Integer  read FunidadeMedidaAtivo write FunidadeMedidaAtivo;
  end;



  // ************************************************************************ //
  // XML       : transportadoraRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  transportadoraRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : transportadora, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  transportadora = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FtransportadoraIdErp: string;
    FtransportadoraNome: string;
    FtransportadoraAtivo: Integer;
  published
    property UsuarioLogin:        string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:        string   read FUsuarioSenha write FUsuarioSenha;
    property transportadoraIdErp: string   read FtransportadoraIdErp write FtransportadoraIdErp;
    property transportadoraNome:  string   read FtransportadoraNome write FtransportadoraNome;
    property transportadoraAtivo: Integer  read FtransportadoraAtivo write FtransportadoraAtivo;
  end;



  // ************************************************************************ //
  // XML       : unidadeMedidaRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  unidadeMedidaRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : produtosRecebeArray, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  produtosRecebeArray = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FprodutosOportunidadeId: Integer;
    FprodutosRecebe: Array_Of_produtosRecebe;
  public
    destructor Destroy; override;
  published
    property UsuarioLogin:           string                   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:           string                   read FUsuarioSenha write FUsuarioSenha;
    property produtosOportunidadeId: Integer                  read FprodutosOportunidadeId write FprodutosOportunidadeId;
    property produtosRecebe:         Array_Of_produtosRecebe  Index (IS_UNBD) read FprodutosRecebe write FprodutosRecebe;
  end;



  // ************************************************************************ //
  // XML       : categoriaProdutoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  categoriaProdutoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : categoriaProduto, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  categoriaProduto = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcategoriaProdutoIdErp: string;
    FcategoriaProdutoNome: string;
    FcategoriaProdutoAtivo: Integer;
  published
    property UsuarioLogin:          string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:          string   read FUsuarioSenha write FUsuarioSenha;
    property categoriaProdutoIdErp: string   read FcategoriaProdutoIdErp write FcategoriaProdutoIdErp;
    property categoriaProdutoNome:  string   read FcategoriaProdutoNome write FcategoriaProdutoNome;
    property categoriaProdutoAtivo: Integer  read FcategoriaProdutoAtivo write FcategoriaProdutoAtivo;
  end;



  // ************************************************************************ //
  // XML       : produtoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  produtoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : condicaoPagamento, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  condicaoPagamento = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcondicaoPagamentoIdErp: string;
    FcondicaoPagamentoNome: string;
    FcondicaoPagamentoAtivo: Integer;
  published
    property UsuarioLogin:           string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:           string   read FUsuarioSenha write FUsuarioSenha;
    property condicaoPagamentoIdErp: string   read FcondicaoPagamentoIdErp write FcondicaoPagamentoIdErp;
    property condicaoPagamentoNome:  string   read FcondicaoPagamentoNome write FcondicaoPagamentoNome;
    property condicaoPagamentoAtivo: Integer  read FcondicaoPagamentoAtivo write FcondicaoPagamentoAtivo;
  end;



  // ************************************************************************ //
  // XML       : tabelasPrecoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  tabelasPrecoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : tabelasPreco, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  tabelasPreco = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FtabelasPrecoIdErp: string;
    FtabelasPrecoNome: string;
    FtabelasPrecoAtivo: Integer;
  published
    property UsuarioLogin:      string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:      string   read FUsuarioSenha write FUsuarioSenha;
    property tabelasPrecoIdErp: string   read FtabelasPrecoIdErp write FtabelasPrecoIdErp;
    property tabelasPrecoNome:  string   read FtabelasPrecoNome write FtabelasPrecoNome;
    property tabelasPrecoAtivo: Integer  read FtabelasPrecoAtivo write FtabelasPrecoAtivo;
  end;



  // ************************************************************************ //
  // XML       : condicaoPagamentoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  condicaoPagamentoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : DepartamentosDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  DepartamentosDados = class(TRemotable)
  private
    FDepartamentosId: Integer;
    FDepartamentosNome: string;
    FDepartamentosAtivo: Integer;
  published
    property DepartamentosId:    Integer  read FDepartamentosId write FDepartamentosId;
    property DepartamentosNome:  string   read FDepartamentosNome write FDepartamentosNome;
    property DepartamentosAtivo: Integer  read FDepartamentosAtivo write FDepartamentosAtivo;
  end;



  // ************************************************************************ //
  // XML       : DepartamentosParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  DepartamentosParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FDepartamentosId: Integer;
    FDepartamentosNome: string;
    FDepartamentosAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:       string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:       string   read FUsuarioSenha write FUsuarioSenha;
    property DepartamentosId:    Integer  read FDepartamentosId write FDepartamentosId;
    property DepartamentosNome:  string   read FDepartamentosNome write FDepartamentosNome;
    property DepartamentosAtivo: Integer  read FDepartamentosAtivo write FDepartamentosAtivo;
    property erro:               string   read Ferro write Ferro;
    property mensagem:           string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : FuncoesParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  FuncoesParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FFuncoesId: Integer;
    FFuncoesNome: string;
    FFuncoesAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin: string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha: string   read FUsuarioSenha write FUsuarioSenha;
    property FuncoesId:    Integer  read FFuncoesId write FFuncoesId;
    property FuncoesNome:  string   read FFuncoesNome write FFuncoesNome;
    property FuncoesAtivo: Integer  read FFuncoesAtivo write FFuncoesAtivo;
    property erro:         string   read Ferro write Ferro;
    property mensagem:     string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : OrigemContatoParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OrigemContatoParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FOrigemContatoId: Integer;
    FOrigemContatoNome: string;
    FOrigemContatoAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:       string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:       string   read FUsuarioSenha write FUsuarioSenha;
    property OrigemContatoId:    Integer  read FOrigemContatoId write FOrigemContatoId;
    property OrigemContatoNome:  string   read FOrigemContatoNome write FOrigemContatoNome;
    property OrigemContatoAtivo: Integer  read FOrigemContatoAtivo write FOrigemContatoAtivo;
    property erro:               string   read Ferro write Ferro;
    property mensagem:           string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : FuncoesDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  FuncoesDados = class(TRemotable)
  private
    FFuncoesId: Integer;
    FFuncoesNome: string;
    FFuncoesAtivo: Integer;
  published
    property FuncoesId:    Integer  read FFuncoesId write FFuncoesId;
    property FuncoesNome:  string   read FFuncoesNome write FFuncoesNome;
    property FuncoesAtivo: Integer  read FFuncoesAtivo write FFuncoesAtivo;
  end;



  // ************************************************************************ //
  // XML       : ContatosDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ContatosDados = class(TRemotable)
  private
    FcontatoId: Integer;
    FcontatoEmpresaId: Integer;
    FcontatoContaId: Integer;
    FcontatoContaDescricao: string;
    FcontatoAtivo: Integer;
    FcontatoVisibilidade: string;
    FcontatoUsuarioPrivadoId: Integer;
    FcontatoUsuarioPrivadoDescricao: string;
    FcontatoNome: string;
    FcontatoTratamento: string;
    FcontatoDepartamentoId: Integer;
    FcontatoDepartamentoDescricao: string;
    FcontatoFuncaoId: Integer;
    FcontatoFuncaoDescricao: string;
    FcontatoOrigemContatoId: Integer;
    FcontatoOrigemContatoDescricao: string;
    FcontatoContatoSuperiorId: Integer;
    FcontatoContatoSuperiorDescricao: string;
    FcontatoCep: string;
    FcontatoEndereco: string;
    FcontatoNumero: string;
    FcontatoComplemento: string;
    FcontatoBairro: string;
    FcontatoCidadeId: Integer;
    FcontatoCidadeDescricao: string;
    FcontatoUFDescricao: string;
    FcontatoPaisId: Integer;
    FcontatoPaisDescricao: string;
    FcontatoCpf: string;
    FcontatoRG: string;
    FcontatoTelefone: string;
    FcontatoRamal: string;
    FcontatoFax: string;
    FcontatoCelular: string;
    FcontatoOperadora: string;
    FcontatoEmail: string;
    FcontatoRecebeCampanhaId: Integer;
    FcontatoRecebeCampanhaDescricao: string;
    FcontatoRecebePesquisaId: Integer;
    FcontatoRecebePesquisaDescricao: string;
    FcontatoSkype: string;
    FcontatoTwitter: string;
    FcontatoFacebook: string;
    FcontatoAniversario: string;
    FcontatoDataNascimento: string;
    FcontatoNivelDecisaoId: Integer;
    FcontatoNivelDecisaoDescricao: string;
    FcontatoParecerEmpresaId: Integer;
    FcontatoParecerEmpresaDescricao: string;
    FcontatoMotivoParecerEmpresa: string;
    FcontatoObservacao: string;
  published
    property contatoId:                       Integer  read FcontatoId write FcontatoId;
    property contatoEmpresaId:                Integer  read FcontatoEmpresaId write FcontatoEmpresaId;
    property contatoContaId:                  Integer  read FcontatoContaId write FcontatoContaId;
    property contatoContaDescricao:           string   read FcontatoContaDescricao write FcontatoContaDescricao;
    property contatoAtivo:                    Integer  read FcontatoAtivo write FcontatoAtivo;
    property contatoVisibilidade:             string   read FcontatoVisibilidade write FcontatoVisibilidade;
    property contatoUsuarioPrivadoId:         Integer  read FcontatoUsuarioPrivadoId write FcontatoUsuarioPrivadoId;
    property contatoUsuarioPrivadoDescricao:  string   read FcontatoUsuarioPrivadoDescricao write FcontatoUsuarioPrivadoDescricao;
    property contatoNome:                     string   read FcontatoNome write FcontatoNome;
    property contatoTratamento:               string   read FcontatoTratamento write FcontatoTratamento;
    property contatoDepartamentoId:           Integer  read FcontatoDepartamentoId write FcontatoDepartamentoId;
    property contatoDepartamentoDescricao:    string   read FcontatoDepartamentoDescricao write FcontatoDepartamentoDescricao;
    property contatoFuncaoId:                 Integer  read FcontatoFuncaoId write FcontatoFuncaoId;
    property contatoFuncaoDescricao:          string   read FcontatoFuncaoDescricao write FcontatoFuncaoDescricao;
    property contatoOrigemContatoId:          Integer  read FcontatoOrigemContatoId write FcontatoOrigemContatoId;
    property contatoOrigemContatoDescricao:   string   read FcontatoOrigemContatoDescricao write FcontatoOrigemContatoDescricao;
    property contatoContatoSuperiorId:        Integer  read FcontatoContatoSuperiorId write FcontatoContatoSuperiorId;
    property contatoContatoSuperiorDescricao: string   read FcontatoContatoSuperiorDescricao write FcontatoContatoSuperiorDescricao;
    property contatoCep:                      string   read FcontatoCep write FcontatoCep;
    property contatoEndereco:                 string   read FcontatoEndereco write FcontatoEndereco;
    property contatoNumero:                   string   read FcontatoNumero write FcontatoNumero;
    property contatoComplemento:              string   read FcontatoComplemento write FcontatoComplemento;
    property contatoBairro:                   string   read FcontatoBairro write FcontatoBairro;
    property contatoCidadeId:                 Integer  read FcontatoCidadeId write FcontatoCidadeId;
    property contatoCidadeDescricao:          string   read FcontatoCidadeDescricao write FcontatoCidadeDescricao;
    property contatoUFDescricao:              string   read FcontatoUFDescricao write FcontatoUFDescricao;
    property contatoPaisId:                   Integer  read FcontatoPaisId write FcontatoPaisId;
    property contatoPaisDescricao:            string   read FcontatoPaisDescricao write FcontatoPaisDescricao;
    property contatoCpf:                      string   read FcontatoCpf write FcontatoCpf;
    property contatoRG:                       string   read FcontatoRG write FcontatoRG;
    property contatoTelefone:                 string   read FcontatoTelefone write FcontatoTelefone;
    property contatoRamal:                    string   read FcontatoRamal write FcontatoRamal;
    property contatoFax:                      string   read FcontatoFax write FcontatoFax;
    property contatoCelular:                  string   read FcontatoCelular write FcontatoCelular;
    property contatoOperadora:                string   read FcontatoOperadora write FcontatoOperadora;
    property contatoEmail:                    string   read FcontatoEmail write FcontatoEmail;
    property contatoRecebeCampanhaId:         Integer  read FcontatoRecebeCampanhaId write FcontatoRecebeCampanhaId;
    property contatoRecebeCampanhaDescricao:  string   read FcontatoRecebeCampanhaDescricao write FcontatoRecebeCampanhaDescricao;
    property contatoRecebePesquisaId:         Integer  read FcontatoRecebePesquisaId write FcontatoRecebePesquisaId;
    property contatoRecebePesquisaDescricao:  string   read FcontatoRecebePesquisaDescricao write FcontatoRecebePesquisaDescricao;
    property contatoSkype:                    string   read FcontatoSkype write FcontatoSkype;
    property contatoTwitter:                  string   read FcontatoTwitter write FcontatoTwitter;
    property contatoFacebook:                 string   read FcontatoFacebook write FcontatoFacebook;
    property contatoAniversario:              string   read FcontatoAniversario write FcontatoAniversario;
    property contatoDataNascimento:           string   read FcontatoDataNascimento write FcontatoDataNascimento;
    property contatoNivelDecisaoId:           Integer  read FcontatoNivelDecisaoId write FcontatoNivelDecisaoId;
    property contatoNivelDecisaoDescricao:    string   read FcontatoNivelDecisaoDescricao write FcontatoNivelDecisaoDescricao;
    property contatoParecerEmpresaId:         Integer  read FcontatoParecerEmpresaId write FcontatoParecerEmpresaId;
    property contatoParecerEmpresaDescricao:  string   read FcontatoParecerEmpresaDescricao write FcontatoParecerEmpresaDescricao;
    property contatoMotivoParecerEmpresa:     string   read FcontatoMotivoParecerEmpresa write FcontatoMotivoParecerEmpresa;
    property contatoObservacao:               string   read FcontatoObservacao write FcontatoObservacao;
  end;



  // ************************************************************************ //
  // XML       : ContatosParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ContatosParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FContatosId: Integer;
    FContatosContaId: Integer;
    FContatosAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:    string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:    string   read FUsuarioSenha write FUsuarioSenha;
    property ContatosId:      Integer  read FContatosId write FContatosId;
    property ContatosContaId: Integer  read FContatosContaId write FContatosContaId;
    property ContatosAtivo:   Integer  read FContatosAtivo write FContatosAtivo;
    property erro:            string   read Ferro write Ferro;
    property mensagem:        string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : OrigemContatoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OrigemContatoDados = class(TRemotable)
  private
    FOrigemContatoId: Integer;
    FOrigemContatoNome: string;
    FOrigemContatoAtivo: Integer;
  published
    property OrigemContatoId:    Integer  read FOrigemContatoId write FOrigemContatoId;
    property OrigemContatoNome:  string   read FOrigemContatoNome write FOrigemContatoNome;
    property OrigemContatoAtivo: Integer  read FOrigemContatoAtivo write FOrigemContatoAtivo;
  end;



  // ************************************************************************ //
  // XML       : OportunidadesDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OportunidadesDados = class(TRemotable)
  private
    FoportunidadeId: Integer;
    FoportunidadeDescricao: string;
    FoportunidadeContaId: Integer;
    FoportunidadeContaIdErp: Integer;
    FoportunidadeContaNome: string;
    FoportunidadeContaTipo: string;
    FoportunidadeTipo: string;
    FoportunidadeModalidade: string;
    FoportunidadeRoteiro: string;
    FoportunidadeDataAbertura: string;
    FoportunidadeHoraAbertura: string;
    FoportunidadeUsuarioResponsavelId: Integer;
    FoportunidadeUsuarioResponsavelNome: string;
    FoportunidadeEtapa: string;
    FoportunidadeMotivoPerda: string;
    FoportunidadeMotivoFechamento: string;
    FoportunidadeProbabilidade: string;
    FoportunidadeNumeroProposta: string;
    FoportunidadeNumeroPedido: string;
    FoportunidadeValorPrevisto: string;
    FoportunidadeValorFechado: string;
    FoportunidadeValorPrevistoMoeda: string;
    FoportunidadeValorFechadoMoeda: string;
    FoportunidadeValorPrevistoQuantitativo: string;
    FoportunidadeValorFechadoQuantitativo: string;
    FoportunidadeDataPrevistaFechamento: string;
    FoportunidadeDataEfetivaFechamento: string;
    FoportunidadeDataPrevistaEntrega: string;
    FoportunidadeDataEfetivaEntrega: string;
  published
    property oportunidadeId:                        Integer  read FoportunidadeId write FoportunidadeId;
    property oportunidadeDescricao:                 string   read FoportunidadeDescricao write FoportunidadeDescricao;
    property oportunidadeContaId:                   Integer  read FoportunidadeContaId write FoportunidadeContaId;
    property oportunidadeContaIdErp:                Integer  read FoportunidadeContaIdErp write FoportunidadeContaIdErp;
    property oportunidadeContaNome:                 string   read FoportunidadeContaNome write FoportunidadeContaNome;
    property oportunidadeContaTipo:                 string   read FoportunidadeContaTipo write FoportunidadeContaTipo;
    property oportunidadeTipo:                      string   read FoportunidadeTipo write FoportunidadeTipo;
    property oportunidadeModalidade:                string   read FoportunidadeModalidade write FoportunidadeModalidade;
    property oportunidadeRoteiro:                   string   read FoportunidadeRoteiro write FoportunidadeRoteiro;
    property oportunidadeDataAbertura:              string   read FoportunidadeDataAbertura write FoportunidadeDataAbertura;
    property oportunidadeHoraAbertura:              string   read FoportunidadeHoraAbertura write FoportunidadeHoraAbertura;
    property oportunidadeUsuarioResponsavelId:      Integer  read FoportunidadeUsuarioResponsavelId write FoportunidadeUsuarioResponsavelId;
    property oportunidadeUsuarioResponsavelNome:    string   read FoportunidadeUsuarioResponsavelNome write FoportunidadeUsuarioResponsavelNome;
    property oportunidadeEtapa:                     string   read FoportunidadeEtapa write FoportunidadeEtapa;
    property oportunidadeMotivoPerda:               string   read FoportunidadeMotivoPerda write FoportunidadeMotivoPerda;
    property oportunidadeMotivoFechamento:          string   read FoportunidadeMotivoFechamento write FoportunidadeMotivoFechamento;
    property oportunidadeProbabilidade:             string   read FoportunidadeProbabilidade write FoportunidadeProbabilidade;
    property oportunidadeNumeroProposta:            string   read FoportunidadeNumeroProposta write FoportunidadeNumeroProposta;
    property oportunidadeNumeroPedido:              string   read FoportunidadeNumeroPedido write FoportunidadeNumeroPedido;
    property oportunidadeValorPrevisto:             string   read FoportunidadeValorPrevisto write FoportunidadeValorPrevisto;
    property oportunidadeValorFechado:              string   read FoportunidadeValorFechado write FoportunidadeValorFechado;
    property oportunidadeValorPrevistoMoeda:        string   read FoportunidadeValorPrevistoMoeda write FoportunidadeValorPrevistoMoeda;
    property oportunidadeValorFechadoMoeda:         string   read FoportunidadeValorFechadoMoeda write FoportunidadeValorFechadoMoeda;
    property oportunidadeValorPrevistoQuantitativo: string   read FoportunidadeValorPrevistoQuantitativo write FoportunidadeValorPrevistoQuantitativo;
    property oportunidadeValorFechadoQuantitativo:  string   read FoportunidadeValorFechadoQuantitativo write FoportunidadeValorFechadoQuantitativo;
    property oportunidadeDataPrevistaFechamento:    string   read FoportunidadeDataPrevistaFechamento write FoportunidadeDataPrevistaFechamento;
    property oportunidadeDataEfetivaFechamento:     string   read FoportunidadeDataEfetivaFechamento write FoportunidadeDataEfetivaFechamento;
    property oportunidadeDataPrevistaEntrega:       string   read FoportunidadeDataPrevistaEntrega write FoportunidadeDataPrevistaEntrega;
    property oportunidadeDataEfetivaEntrega:        string   read FoportunidadeDataEfetivaEntrega write FoportunidadeDataEfetivaEntrega;
  end;



  // ************************************************************************ //
  // XML       : OportunidadesParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OportunidadesParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FOportunidadeId: Integer;
    FContaId: Integer;
    FUsuarioId: Integer;
  published
    property UsuarioLogin:   string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:   string   read FUsuarioSenha write FUsuarioSenha;
    property OportunidadeId: Integer  read FOportunidadeId write FOportunidadeId;
    property ContaId:        Integer  read FContaId write FContaId;
    property UsuarioId:      Integer  read FUsuarioId write FUsuarioId;
  end;



  // ************************************************************************ //
  // XML       : ItensOportunidadeParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ItensOportunidadeParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FOportunidadeId: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:   string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:   string   read FUsuarioSenha write FUsuarioSenha;
    property OportunidadeId: Integer  read FOportunidadeId write FOportunidadeId;
    property erro:           string   read Ferro write Ferro;
    property mensagem:       string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : ItensOportunidade, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ItensOportunidade = class(TRemotable)
  private
    FProdutoId: Integer;
    FProdutoNome: string;
    FProdutoNomeDerivacao: string;
    FProdutoPartNumber: string;
    FProdutoPartNumberDerivacao: string;
    FOportunidadeProdutoQuantidade: string;
    FOportunidadeProdutoValorVenda: string;
  published
    property ProdutoId:                     Integer  read FProdutoId write FProdutoId;
    property ProdutoNome:                   string   read FProdutoNome write FProdutoNome;
    property ProdutoNomeDerivacao:          string   read FProdutoNomeDerivacao write FProdutoNomeDerivacao;
    property ProdutoPartNumber:             string   read FProdutoPartNumber write FProdutoPartNumber;
    property ProdutoPartNumberDerivacao:    string   read FProdutoPartNumberDerivacao write FProdutoPartNumberDerivacao;
    property OportunidadeProdutoQuantidade: string   read FOportunidadeProdutoQuantidade write FOportunidadeProdutoQuantidade;
    property OportunidadeProdutoValorVenda: string   read FOportunidadeProdutoValorVenda write FOportunidadeProdutoValorVenda;
  end;



  // ************************************************************************ //
  // XML       : UsuariosDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  UsuariosDados = class(TRemotable)
  private
    FUsuariosId: Integer;
    FUsuariosIdErp: Integer;
    FUsuariosNome: string;
    FUsuarioAtivoDescricao: string;
    FUsuariosAtivo: Integer;
  published
    property UsuariosId:            Integer  read FUsuariosId write FUsuariosId;
    property UsuariosIdErp:         Integer  read FUsuariosIdErp write FUsuariosIdErp;
    property UsuariosNome:          string   read FUsuariosNome write FUsuariosNome;
    property UsuarioAtivoDescricao: string   read FUsuarioAtivoDescricao write FUsuarioAtivoDescricao;
    property UsuariosAtivo:         Integer  read FUsuariosAtivo write FUsuariosAtivo;
  end;



  // ************************************************************************ //
  // XML       : UsuariosParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  UsuariosParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FUsuariosId: Integer;
    FUsuariosIdErp: Integer;
    FUsuariosNome: string;
    FUsuariosAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:  string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:  string   read FUsuarioSenha write FUsuarioSenha;
    property UsuariosId:    Integer  read FUsuariosId write FUsuariosId;
    property UsuariosIdErp: Integer  read FUsuariosIdErp write FUsuariosIdErp;
    property UsuariosNome:  string   read FUsuariosNome write FUsuariosNome;
    property UsuariosAtivo: Integer  read FUsuariosAtivo write FUsuariosAtivo;
    property erro:          string   read Ferro write Ferro;
    property mensagem:      string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : UsuariosGrupoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  UsuariosGrupoDados = class(TRemotable)
  private
    FUsuarioId: Integer;
    FUsuarioNome: string;
    FGrupoId: Integer;
    FGrupoNome: string;
  published
    property UsuarioId:   Integer  read FUsuarioId write FUsuarioId;
    property UsuarioNome: string   read FUsuarioNome write FUsuarioNome;
    property GrupoId:     Integer  read FGrupoId write FGrupoId;
    property GrupoNome:   string   read FGrupoNome write FGrupoNome;
  end;



  // ************************************************************************ //
  // XML       : UsuariosGrupoParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  UsuariosGrupoParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FUsuariosGrupoId: Integer;
    FUsuariosGrupoNome: string;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:      string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:      string   read FUsuarioSenha write FUsuarioSenha;
    property UsuariosGrupoId:   Integer  read FUsuariosGrupoId write FUsuariosGrupoId;
    property UsuariosGrupoNome: string   read FUsuariosGrupoNome write FUsuariosGrupoNome;
    property erro:              string   read Ferro write Ferro;
    property mensagem:          string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : RegistrosTipo, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  RegistrosTipo = class(TRemotable)
  private
    FTipoOportunidadeId: Integer;
    FTipoOportunidadeNome: string;
    FTipoOportunidadeAtivo: Integer;
  published
    property TipoOportunidadeId:    Integer  read FTipoOportunidadeId write FTipoOportunidadeId;
    property TipoOportunidadeNome:  string   read FTipoOportunidadeNome write FTipoOportunidadeNome;
    property TipoOportunidadeAtivo: Integer  read FTipoOportunidadeAtivo write FTipoOportunidadeAtivo;
  end;



  // ************************************************************************ //
  // XML       : CondicaoPagamentoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CondicaoPagamentoDados = class(TRemotable)
  private
    FCondicaoPagamentoId: Integer;
    FCondicaoPagamentoNome: string;
    FCondicaoPagamentoAtivo: Integer;
  published
    property CondicaoPagamentoId:    Integer  read FCondicaoPagamentoId write FCondicaoPagamentoId;
    property CondicaoPagamentoNome:  string   read FCondicaoPagamentoNome write FCondicaoPagamentoNome;
    property CondicaoPagamentoAtivo: Integer  read FCondicaoPagamentoAtivo write FCondicaoPagamentoAtivo;
  end;



  // ************************************************************************ //
  // XML       : CondicaoPagamentoParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CondicaoPagamentoParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FCondicaoPagamentoId: Integer;
    FCondicaoPagamentoIdErp: string;
    FCondicaoPagamentoNome: string;
    FCondicaoPagamentoAtivo: Integer;
  published
    property UsuarioLogin:           string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:           string   read FUsuarioSenha write FUsuarioSenha;
    property CondicaoPagamentoId:    Integer  read FCondicaoPagamentoId write FCondicaoPagamentoId;
    property CondicaoPagamentoIdErp: string   read FCondicaoPagamentoIdErp write FCondicaoPagamentoIdErp;
    property CondicaoPagamentoNome:  string   read FCondicaoPagamentoNome write FCondicaoPagamentoNome;
    property CondicaoPagamentoAtivo: Integer  read FCondicaoPagamentoAtivo write FCondicaoPagamentoAtivo;
  end;



  // ************************************************************************ //
  // XML       : ProdutosDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ProdutosDados = class(TRemotable)
  private
    FProdutoId: Integer;
    FProdutoNome: string;
    FProdutoNomeDerivacao: string;
    FProdutoPartNumber: string;
    FProdutoPartNumberDerivacao: string;
    FProdutoCategoria: string;
    FProdutoUnidadeMedida: string;
    FProdutoAtivo: Integer;
  published
    property ProdutoId:                  Integer  read FProdutoId write FProdutoId;
    property ProdutoNome:                string   read FProdutoNome write FProdutoNome;
    property ProdutoNomeDerivacao:       string   read FProdutoNomeDerivacao write FProdutoNomeDerivacao;
    property ProdutoPartNumber:          string   read FProdutoPartNumber write FProdutoPartNumber;
    property ProdutoPartNumberDerivacao: string   read FProdutoPartNumberDerivacao write FProdutoPartNumberDerivacao;
    property ProdutoCategoria:           string   read FProdutoCategoria write FProdutoCategoria;
    property ProdutoUnidadeMedida:       string   read FProdutoUnidadeMedida write FProdutoUnidadeMedida;
    property ProdutoAtivo:               Integer  read FProdutoAtivo write FProdutoAtivo;
  end;



  // ************************************************************************ //
  // XML       : ProdutosParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ProdutosParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FProdutosId: Integer;
    FProdutosPartNumber: string;
    FProdutosPartNumberDerivacao: string;
    FProdutosNome: string;
    FProdutosNomeDerivacao: string;
    FProdutosAtivo: Integer;
  published
    property UsuarioLogin:                string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:                string   read FUsuarioSenha write FUsuarioSenha;
    property ProdutosId:                  Integer  read FProdutosId write FProdutosId;
    property ProdutosPartNumber:          string   read FProdutosPartNumber write FProdutosPartNumber;
    property ProdutosPartNumberDerivacao: string   read FProdutosPartNumberDerivacao write FProdutosPartNumberDerivacao;
    property ProdutosNome:                string   read FProdutosNome write FProdutosNome;
    property ProdutosNomeDerivacao:       string   read FProdutosNomeDerivacao write FProdutosNomeDerivacao;
    property ProdutosAtivo:               Integer  read FProdutosAtivo write FProdutosAtivo;
  end;



  // ************************************************************************ //
  // XML       : TiposNotaParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TiposNotaParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FTiposNotaId: Integer;
    FTiposNotaNome: string;
    FTiposNotaAtivo: Integer;
  published
    property UsuarioLogin:   string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:   string   read FUsuarioSenha write FUsuarioSenha;
    property TiposNotaId:    Integer  read FTiposNotaId write FTiposNotaId;
    property TiposNotaNome:  string   read FTiposNotaNome write FTiposNotaNome;
    property TiposNotaAtivo: Integer  read FTiposNotaAtivo write FTiposNotaAtivo;
  end;



  // ************************************************************************ //
  // XML       : CidadesDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CidadesDados = class(TRemotable)
  private
    FCidadesId: Integer;
    FCidadesNome: string;
    FCidadesUF: string;
    FCidadesEstadoId: Integer;
    FCidadesPaisId: Integer;
    FCidadesPais: string;
    FCidadesAtivoId: Integer;
    FCidadesAtivoDescricao: string;
  published
    property CidadesId:             Integer  read FCidadesId write FCidadesId;
    property CidadesNome:           string   read FCidadesNome write FCidadesNome;
    property CidadesUF:             string   read FCidadesUF write FCidadesUF;
    property CidadesEstadoId:       Integer  read FCidadesEstadoId write FCidadesEstadoId;
    property CidadesPaisId:         Integer  read FCidadesPaisId write FCidadesPaisId;
    property CidadesPais:           string   read FCidadesPais write FCidadesPais;
    property CidadesAtivoId:        Integer  read FCidadesAtivoId write FCidadesAtivoId;
    property CidadesAtivoDescricao: string   read FCidadesAtivoDescricao write FCidadesAtivoDescricao;
  end;



  // ************************************************************************ //
  // XML       : TiposNotaDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TiposNotaDados = class(TRemotable)
  private
    FTiposNotaId: Integer;
    FTiposNotaNome: string;
    FTiposNotaAtivo: Integer;
  published
    property TiposNotaId:    Integer  read FTiposNotaId write FTiposNotaId;
    property TiposNotaNome:  string   read FTiposNotaNome write FTiposNotaNome;
    property TiposNotaAtivo: Integer  read FTiposNotaAtivo write FTiposNotaAtivo;
  end;



  // ************************************************************************ //
  // XML       : CategoriaProdutoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CategoriaProdutoDados = class(TRemotable)
  private
    FCategoriaProdutoId: Integer;
    FCategoriaProdutoNome: string;
    FCategoriaProdutoAtivo: Integer;
  published
    property CategoriaProdutoId:    Integer  read FCategoriaProdutoId write FCategoriaProdutoId;
    property CategoriaProdutoNome:  string   read FCategoriaProdutoNome write FCategoriaProdutoNome;
    property CategoriaProdutoAtivo: Integer  read FCategoriaProdutoAtivo write FCategoriaProdutoAtivo;
  end;



  // ************************************************************************ //
  // XML       : CategoriaProdutoParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CategoriaProdutoParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FCategoriaProdutoId: Integer;
    FCategoriaProdutoNome: string;
    FCategoriaProdutoAtivo: Integer;
  published
    property UsuarioLogin:          string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:          string   read FUsuarioSenha write FUsuarioSenha;
    property CategoriaProdutoId:    Integer  read FCategoriaProdutoId write FCategoriaProdutoId;
    property CategoriaProdutoNome:  string   read FCategoriaProdutoNome write FCategoriaProdutoNome;
    property CategoriaProdutoAtivo: Integer  read FCategoriaProdutoAtivo write FCategoriaProdutoAtivo;
  end;



  // ************************************************************************ //
  // XML       : TransportadorasParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TransportadorasParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FTransportadorasId: Integer;
    FTransportadorasNome: string;
    FTransportadorasAtivo: Integer;
  published
    property UsuarioLogin:         string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:         string   read FUsuarioSenha write FUsuarioSenha;
    property TransportadorasId:    Integer  read FTransportadorasId write FTransportadorasId;
    property TransportadorasNome:  string   read FTransportadorasNome write FTransportadorasNome;
    property TransportadorasAtivo: Integer  read FTransportadorasAtivo write FTransportadorasAtivo;
  end;



  // ************************************************************************ //
  // XML       : ModalidadesNegocioParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ModalidadesNegocioParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FModalidadesNegocioId: Integer;
    FModalidadesNegocioNome: string;
    FModalidadesNegocioAtivo: Integer;
  published
    property UsuarioLogin:            string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:            string   read FUsuarioSenha write FUsuarioSenha;
    property ModalidadesNegocioId:    Integer  read FModalidadesNegocioId write FModalidadesNegocioId;
    property ModalidadesNegocioNome:  string   read FModalidadesNegocioNome write FModalidadesNegocioNome;
    property ModalidadesNegocioAtivo: Integer  read FModalidadesNegocioAtivo write FModalidadesNegocioAtivo;
  end;



  // ************************************************************************ //
  // XML       : RegistrosModalidade, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  RegistrosModalidade = class(TRemotable)
  private
    FModalidadesNegocioId: Integer;
    FModalidadesNegocioNome: string;
    FModalidadesNegocioAtivo: Integer;
  published
    property ModalidadesNegocioId:    Integer  read FModalidadesNegocioId write FModalidadesNegocioId;
    property ModalidadesNegocioNome:  string   read FModalidadesNegocioNome write FModalidadesNegocioNome;
    property ModalidadesNegocioAtivo: Integer  read FModalidadesNegocioAtivo write FModalidadesNegocioAtivo;
  end;



  // ************************************************************************ //
  // XML       : TipoOportunidadeParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TipoOportunidadeParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FTipoOportunidadeId: Integer;
    FTipoOportunidadeNome: string;
    FTipoOportunidadeAtivo: Integer;
  published
    property UsuarioLogin:          string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:          string   read FUsuarioSenha write FUsuarioSenha;
    property TipoOportunidadeId:    Integer  read FTipoOportunidadeId write FTipoOportunidadeId;
    property TipoOportunidadeNome:  string   read FTipoOportunidadeNome write FTipoOportunidadeNome;
    property TipoOportunidadeAtivo: Integer  read FTipoOportunidadeAtivo write FTipoOportunidadeAtivo;
  end;



  // ************************************************************************ //
  // XML       : UnidadesMedidaParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  UnidadesMedidaParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FUnidadesMedidaId: Integer;
    FUnidadesMedidaNome: string;
    FUnidadesMedidaSigla: string;
    FUnidadesMedidaAtivo: Integer;
  published
    property UsuarioLogin:        string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:        string   read FUsuarioSenha write FUsuarioSenha;
    property UnidadesMedidaId:    Integer  read FUnidadesMedidaId write FUnidadesMedidaId;
    property UnidadesMedidaNome:  string   read FUnidadesMedidaNome write FUnidadesMedidaNome;
    property UnidadesMedidaSigla: string   read FUnidadesMedidaSigla write FUnidadesMedidaSigla;
    property UnidadesMedidaAtivo: Integer  read FUnidadesMedidaAtivo write FUnidadesMedidaAtivo;
  end;



  // ************************************************************************ //
  // XML       : TransportadorasDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  TransportadorasDados = class(TRemotable)
  private
    FTransportadorasId: Integer;
    FTransportadorasNome: string;
    FTransportadorasAtivo: Integer;
  published
    property TransportadorasId:    Integer  read FTransportadorasId write FTransportadorasId;
    property TransportadorasNome:  string   read FTransportadorasNome write FTransportadorasNome;
    property TransportadorasAtivo: Integer  read FTransportadorasAtivo write FTransportadorasAtivo;
  end;



  // ************************************************************************ //
  // XML       : UnidadesMedidaDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  UnidadesMedidaDados = class(TRemotable)
  private
    FUnidadesMedidaId: Integer;
    FUnidadesMedidaNome: string;
    FUnidadesMedidaSigla: string;
    FUnidadesMedidaAtivo: Integer;
  published
    property UnidadesMedidaId:    Integer  read FUnidadesMedidaId write FUnidadesMedidaId;
    property UnidadesMedidaNome:  string   read FUnidadesMedidaNome write FUnidadesMedidaNome;
    property UnidadesMedidaSigla: string   read FUnidadesMedidaSigla write FUnidadesMedidaSigla;
    property UnidadesMedidaAtivo: Integer  read FUnidadesMedidaAtivo write FUnidadesMedidaAtivo;
  end;



  // ************************************************************************ //
  // XML       : RegistrosOrigem, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  RegistrosOrigem = class(TRemotable)
  private
    FOrigemOportunidadeId: Integer;
    FOrigemOportunidadeNome: string;
    FOrigemOportunidadeAtivo: Integer;
  published
    property OrigemOportunidadeId:    Integer  read FOrigemOportunidadeId write FOrigemOportunidadeId;
    property OrigemOportunidadeNome:  string   read FOrigemOportunidadeNome write FOrigemOportunidadeNome;
    property OrigemOportunidadeAtivo: Integer  read FOrigemOportunidadeAtivo write FOrigemOportunidadeAtivo;
  end;



  // ************************************************************************ //
  // XML       : OrigemOportunidadeParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OrigemOportunidadeParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FOrigemOportunidadeId: Integer;
    FOrigemOportunidadeNome: string;
    FOrigemOportunidadeAtivo: Integer;
  published
    property UsuarioLogin:            string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:            string   read FUsuarioSenha write FUsuarioSenha;
    property OrigemOportunidadeId:    Integer  read FOrigemOportunidadeId write FOrigemOportunidadeId;
    property OrigemOportunidadeNome:  string   read FOrigemOportunidadeNome write FOrigemOportunidadeNome;
    property OrigemOportunidadeAtivo: Integer  read FOrigemOportunidadeAtivo write FOrigemOportunidadeAtivo;
  end;



  // ************************************************************************ //
  // XML       : contatosRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contatosRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : tiposNota, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  tiposNota = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FtiposNotaIdErp: string;
    FtiposNotaNome: string;
    FtiposNotaAtivo: Integer;
  published
    property UsuarioLogin:   string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:   string   read FUsuarioSenha write FUsuarioSenha;
    property tiposNotaIdErp: string   read FtiposNotaIdErp write FtiposNotaIdErp;
    property tiposNotaNome:  string   read FtiposNotaNome write FtiposNotaNome;
    property tiposNotaAtivo: Integer  read FtiposNotaAtivo write FtiposNotaAtivo;
  end;



  // ************************************************************************ //
  // XML       : tiposNotaRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  tiposNotaRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : contato, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contato = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcontatoContaIdERP: Integer;
    FcontatoContaId: Integer;
    FcontatoContaCnpjCpf: string;
    FcontatoContaTipo: Integer;
    FcontatoNome: string;
    FcontatoTratamento: string;
    FcontatoDepartamentoId: Integer;
    FcontatoFuncaoId: Integer;
    FcontatoOrigemContatoId: Integer;
    FcontatoCep: string;
    FcontatoEndereco: string;
    FcontatoNumero: string;
    FcontatoComplemento: string;
    FcontatoBairro: string;
    FcontatoCidade: Integer;
    FcontatoCidadeUf: string;
    FcontatoPais: string;
    FcontatoCpf: string;
    FcontatoRg: string;
    FcontatoTelefone: string;
    FcontatoRamal: string;
    FcontatoFax: string;
    FcontatoCelular: string;
    FcontatoEmail: string;
    FcontatoRecebeCampanha: Integer;
    FcontatoRecebePesquisa: Integer;
    FcontatoSkype: string;
    FcontatoTwitter: string;
    FcontatoFacebook: string;
    FcontatoAniversario: string;
    FcontatoDataNascimento: string;
    FcontatoNivelDecisao: string;
    FcontatoParecerEmpresa: Integer;
    FcontatoMotivoParecerEmpresa: Integer;
    FcontatoObservacao: Integer;
  published
    property UsuarioLogin:                string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:                string   read FUsuarioSenha write FUsuarioSenha;
    property contatoContaIdERP:           Integer  read FcontatoContaIdERP write FcontatoContaIdERP;
    property contatoContaId:              Integer  read FcontatoContaId write FcontatoContaId;
    property contatoContaCnpjCpf:         string   read FcontatoContaCnpjCpf write FcontatoContaCnpjCpf;
    property contatoContaTipo:            Integer  read FcontatoContaTipo write FcontatoContaTipo;
    property contatoNome:                 string   read FcontatoNome write FcontatoNome;
    property contatoTratamento:           string   read FcontatoTratamento write FcontatoTratamento;
    property contatoDepartamentoId:       Integer  read FcontatoDepartamentoId write FcontatoDepartamentoId;
    property contatoFuncaoId:             Integer  read FcontatoFuncaoId write FcontatoFuncaoId;
    property contatoOrigemContatoId:      Integer  read FcontatoOrigemContatoId write FcontatoOrigemContatoId;
    property contatoCep:                  string   read FcontatoCep write FcontatoCep;
    property contatoEndereco:             string   read FcontatoEndereco write FcontatoEndereco;
    property contatoNumero:               string   read FcontatoNumero write FcontatoNumero;
    property contatoComplemento:          string   read FcontatoComplemento write FcontatoComplemento;
    property contatoBairro:               string   read FcontatoBairro write FcontatoBairro;
    property contatoCidade:               Integer  read FcontatoCidade write FcontatoCidade;
    property contatoCidadeUf:             string   read FcontatoCidadeUf write FcontatoCidadeUf;
    property contatoPais:                 string   read FcontatoPais write FcontatoPais;
    property contatoCpf:                  string   read FcontatoCpf write FcontatoCpf;
    property contatoRg:                   string   read FcontatoRg write FcontatoRg;
    property contatoTelefone:             string   read FcontatoTelefone write FcontatoTelefone;
    property contatoRamal:                string   read FcontatoRamal write FcontatoRamal;
    property contatoFax:                  string   read FcontatoFax write FcontatoFax;
    property contatoCelular:              string   read FcontatoCelular write FcontatoCelular;
    property contatoEmail:                string   read FcontatoEmail write FcontatoEmail;
    property contatoRecebeCampanha:       Integer  read FcontatoRecebeCampanha write FcontatoRecebeCampanha;
    property contatoRecebePesquisa:       Integer  read FcontatoRecebePesquisa write FcontatoRecebePesquisa;
    property contatoSkype:                string   read FcontatoSkype write FcontatoSkype;
    property contatoTwitter:              string   read FcontatoTwitter write FcontatoTwitter;
    property contatoFacebook:             string   read FcontatoFacebook write FcontatoFacebook;
    property contatoAniversario:          string   read FcontatoAniversario write FcontatoAniversario;
    property contatoDataNascimento:       string   read FcontatoDataNascimento write FcontatoDataNascimento;
    property contatoNivelDecisao:         string   read FcontatoNivelDecisao write FcontatoNivelDecisao;
    property contatoParecerEmpresa:       Integer  read FcontatoParecerEmpresa write FcontatoParecerEmpresa;
    property contatoMotivoParecerEmpresa: Integer  read FcontatoMotivoParecerEmpresa write FcontatoMotivoParecerEmpresa;
    property contatoObservacao:           Integer  read FcontatoObservacao write FcontatoObservacao;
  end;



  // ************************************************************************ //
  // XML       : contaCaracteristicaRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  contaCaracteristicaRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : compromisso, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  compromisso = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcompromissoUsuarioId: Integer;
    FcompromissoTipoRecorrencia: Integer;
    FcompromissoUsuarioAgendador: Integer;
    FcompromissoSolicitaAceite: Integer;
    FcompromissoDia: string;
    FcompromissoMes: string;
    FcompromissoAno: Integer;
    FcompromissoData: string;
    FcompromissoHora: string;
    FcompromissoAtividade: Integer;
    FcompromissoAssunto: string;
    FcompromissoPrioridade: Integer;
    FcompromissoCategoriaId: Integer;
    FcompromissoLocal: string;
    FcompromissoDescricao: string;
    FcompromissoNotificarEmail: Integer;
    FcompromissoContaId: string;
    FcompromissoContaTipo: Integer;
    FcompromissoContatoId: Integer;
    FcompromissoStatus: Integer;
    FcompromissoAvaliacao: Integer;
    FcompromissoObsAvaliacao: string;
  published
    property UsuarioLogin:                string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:                string   read FUsuarioSenha write FUsuarioSenha;
    property compromissoUsuarioId:        Integer  read FcompromissoUsuarioId write FcompromissoUsuarioId;
    property compromissoTipoRecorrencia:  Integer  read FcompromissoTipoRecorrencia write FcompromissoTipoRecorrencia;
    property compromissoUsuarioAgendador: Integer  read FcompromissoUsuarioAgendador write FcompromissoUsuarioAgendador;
    property compromissoSolicitaAceite:   Integer  read FcompromissoSolicitaAceite write FcompromissoSolicitaAceite;
    property compromissoDia:              string   read FcompromissoDia write FcompromissoDia;
    property compromissoMes:              string   read FcompromissoMes write FcompromissoMes;
    property compromissoAno:              Integer  read FcompromissoAno write FcompromissoAno;
    property compromissoData:             string   read FcompromissoData write FcompromissoData;
    property compromissoHora:             string   read FcompromissoHora write FcompromissoHora;
    property compromissoAtividade:        Integer  read FcompromissoAtividade write FcompromissoAtividade;
    property compromissoAssunto:          string   read FcompromissoAssunto write FcompromissoAssunto;
    property compromissoPrioridade:       Integer  read FcompromissoPrioridade write FcompromissoPrioridade;
    property compromissoCategoriaId:      Integer  read FcompromissoCategoriaId write FcompromissoCategoriaId;
    property compromissoLocal:            string   read FcompromissoLocal write FcompromissoLocal;
    property compromissoDescricao:        string   read FcompromissoDescricao write FcompromissoDescricao;
    property compromissoNotificarEmail:   Integer  read FcompromissoNotificarEmail write FcompromissoNotificarEmail;
    property compromissoContaId:          string   read FcompromissoContaId write FcompromissoContaId;
    property compromissoContaTipo:        Integer  read FcompromissoContaTipo write FcompromissoContaTipo;
    property compromissoContatoId:        Integer  read FcompromissoContatoId write FcompromissoContatoId;
    property compromissoStatus:           Integer  read FcompromissoStatus write FcompromissoStatus;
    property compromissoAvaliacao:        Integer  read FcompromissoAvaliacao write FcompromissoAvaliacao;
    property compromissoObsAvaliacao:     string   read FcompromissoObsAvaliacao write FcompromissoObsAvaliacao;
  end;



  // ************************************************************************ //
  // XML       : compromissoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  compromissoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;

  produtosRetorno = array of produtosRegistros;   { "urn:WConnect"[GblCplx] }


  // ************************************************************************ //
  // XML       : RamosAtividadeParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  RamosAtividadeParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FRamoAtividadeId: Integer;
    FRamoAtividadeNome: string;
    FRamoAtividadeAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:       string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:       string   read FUsuarioSenha write FUsuarioSenha;
    property RamoAtividadeId:    Integer  read FRamoAtividadeId write FRamoAtividadeId;
    property RamoAtividadeNome:  string   read FRamoAtividadeNome write FRamoAtividadeNome;
    property RamoAtividadeAtivo: Integer  read FRamoAtividadeAtivo write FRamoAtividadeAtivo;
    property erro:               string   read Ferro write Ferro;
    property mensagem:           string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : RamosAtividadeDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  RamosAtividadeDados = class(TRemotable)
  private
    FRamoAtividadeId: Integer;
    FRamoAtividadeNome: string;
    FRamoAtividadeAtivo: Integer;
  published
    property RamoAtividadeId:    Integer  read FRamoAtividadeId write FRamoAtividadeId;
    property RamoAtividadeNome:  string   read FRamoAtividadeNome write FRamoAtividadeNome;
    property RamoAtividadeAtivo: Integer  read FRamoAtividadeAtivo write FRamoAtividadeAtivo;
  end;

  RamosAtividadeDadosArray = array of RamosAtividadeDados;   { "urn:WConnect"[GblCplx] }
  GruposDadosArray = array of GruposDados;      { "urn:WConnect"[GblCplx] }
  CaracteristicasDetalheDadosArray = array of CaracteristicasDetalheDados;   { "urn:WConnect"[GblCplx] }


  // ************************************************************************ //
  // XML       : GruposParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  GruposParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FGruposId: Integer;
    FGruposNome: string;
    FGruposAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin: string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha: string   read FUsuarioSenha write FUsuarioSenha;
    property GruposId:     Integer  read FGruposId write FGruposId;
    property GruposNome:   string   read FGruposNome write FGruposNome;
    property GruposAtivo:  Integer  read FGruposAtivo write FGruposAtivo;
    property erro:         string   read Ferro write Ferro;
    property mensagem:     string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : GruposDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  GruposDados = class(TRemotable)
  private
    FGruposId: Integer;
    FGruposNome: string;
    FGruposAtivoDescricao: string;
    FGruposAtivoId: Integer;
  published
    property GruposId:             Integer  read FGruposId write FGruposId;
    property GruposNome:           string   read FGruposNome write FGruposNome;
    property GruposAtivoDescricao: string   read FGruposAtivoDescricao write FGruposAtivoDescricao;
    property GruposAtivoId:        Integer  read FGruposAtivoId write FGruposAtivoId;
  end;



  // ************************************************************************ //
  // XML       : PaisesDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  PaisesDados = class(TRemotable)
  private
    FPaisesId: string;
    FPaisesNome: string;
    FPaisesAtivo: string;
  published
    property PaisesId:    string  read FPaisesId write FPaisesId;
    property PaisesNome:  string  read FPaisesNome write FPaisesNome;
    property PaisesAtivo: string  read FPaisesAtivo write FPaisesAtivo;
  end;

  PaisesDadosArray = array of PaisesDados;      { "urn:WConnect"[GblCplx] }


  // ************************************************************************ //
  // XML       : Cidades, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  Cidades = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FCidadesId: Integer;
    FCidadesNome: string;
    FCidadesIdIbge: string;
    FCidadesUF: string;
    FCidadesAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:  string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:  string   read FUsuarioSenha write FUsuarioSenha;
    property CidadesId:     Integer  read FCidadesId write FCidadesId;
    property CidadesNome:   string   read FCidadesNome write FCidadesNome;
    property CidadesIdIbge: string   read FCidadesIdIbge write FCidadesIdIbge;
    property CidadesUF:     string   read FCidadesUF write FCidadesUF;
    property CidadesAtivo:  Integer  read FCidadesAtivo write FCidadesAtivo;
    property erro:          string   read Ferro write Ferro;
    property mensagem:      string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : PaisesParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  PaisesParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FPaisesId: Integer;
    FPaisesNome: string;
    FPaisesAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin: string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha: string   read FUsuarioSenha write FUsuarioSenha;
    property PaisesId:     Integer  read FPaisesId write FPaisesId;
    property PaisesNome:   string   read FPaisesNome write FPaisesNome;
    property PaisesAtivo:  Integer  read FPaisesAtivo write FPaisesAtivo;
    property erro:         string   read Ferro write Ferro;
    property mensagem:     string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : OrigemContaParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OrigemContaParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FOrigemContaId: Integer;
    FOrigemContaNome: string;
    FOrigemContaAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:     string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:     string   read FUsuarioSenha write FUsuarioSenha;
    property OrigemContaId:    Integer  read FOrigemContaId write FOrigemContaId;
    property OrigemContaNome:  string   read FOrigemContaNome write FOrigemContaNome;
    property OrigemContaAtivo: Integer  read FOrigemContaAtivo write FOrigemContaAtivo;
    property erro:             string   read Ferro write Ferro;
    property mensagem:         string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : OrigemContaDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  OrigemContaDados = class(TRemotable)
  private
    FOrigemContaId: Integer;
    FOrigemContaNome: string;
    FOrigemContaAtivo: Integer;
  published
    property OrigemContaId:    Integer  read FOrigemContaId write FOrigemContaId;
    property OrigemContaNome:  string   read FOrigemContaNome write FOrigemContaNome;
    property OrigemContaAtivo: Integer  read FOrigemContaAtivo write FOrigemContaAtivo;
  end;

  OrigemContaDadosArray = array of OrigemContaDados;   { "urn:WConnect"[GblCplx] }


  // ************************************************************************ //
  // XML       : CaracteristicasDetalheDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CaracteristicasDetalheDados = class(TRemotable)
  private
    FCaracteristicasDetalheId: Integer;
    FCaracteristicasDetalheNome: string;
    FCaracteristicaId: Integer;
    FCaracteristicasDetalheAtivoId: Integer;
    FCaracteristicasDetalheAtivoDescricao: string;
  published
    property CaracteristicasDetalheId:             Integer  read FCaracteristicasDetalheId write FCaracteristicasDetalheId;
    property CaracteristicasDetalheNome:           string   read FCaracteristicasDetalheNome write FCaracteristicasDetalheNome;
    property CaracteristicaId:                     Integer  read FCaracteristicaId write FCaracteristicaId;
    property CaracteristicasDetalheAtivoId:        Integer  read FCaracteristicasDetalheAtivoId write FCaracteristicasDetalheAtivoId;
    property CaracteristicasDetalheAtivoDescricao: string   read FCaracteristicasDetalheAtivoDescricao write FCaracteristicasDetalheAtivoDescricao;
  end;



  // ************************************************************************ //
  // XML       : oportunidadeRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  oportunidadeRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_oportunidade: Integer;
    Ftipo: string;
  published
    property status:          string   read Fstatus write Fstatus;
    property mensagem:        string   read Fmensagem write Fmensagem;
    property id_oportunidade: Integer  read Fid_oportunidade write Fid_oportunidade;
    property tipo:            string   read Ftipo write Ftipo;
  end;



  // ************************************************************************ //
  // XML       : concluiCompromisso, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  concluiCompromisso = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FcompromissoId: Integer;
  published
    property UsuarioLogin:  string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:  string   read FUsuarioSenha write FUsuarioSenha;
    property compromissoId: Integer  read FcompromissoId write FcompromissoId;
  end;



  // ************************************************************************ //
  // XML       : concluiCompromissoRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  concluiCompromissoRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
  published
    property status:   string  read Fstatus write Fstatus;
    property mensagem: string  read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : oportunidade, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  oportunidade = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FoportunidadeContaId: Integer;
    FoportunidadeContatoId: Integer;
    FoportunidadeNome: string;
    FoportunidadeTipoId: Integer;
    FoportunidadeSubtipoId: Integer;
    FoportunidadeOrigemId: Integer;
    FoportunidadeModalidadeNegocioId: Integer;
    FoportunidadeUsuarioIdERP: Integer;
    FoportunidadeEstagioId: Integer;
    FoportunidadeMotivoPerdaId: Integer;
    FoportunidadeMotivoFechamentoId: Integer;
    FoportunidadeProbabilidade: Integer;
    FoportunidadeNumeroPedido: string;
    FoportunidadeDataPrevistaFechamento: string;
    FoportunidadeDataEfetivaFechamento: string;
    FoportunidadeDataPrevistaEntrega: string;
    FoportunidadeDataEfetivaEntrega: string;
    FoportunidadeValorPrevisto: string;
    FoportunidadeValorFechado: string;
    FoportunidadeHistorico: string;
    FoportunidadeDescricao: string;
  published
    property UsuarioLogin:                       string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:                       string   read FUsuarioSenha write FUsuarioSenha;
    property oportunidadeContaId:                Integer  read FoportunidadeContaId write FoportunidadeContaId;
    property oportunidadeContatoId:              Integer  read FoportunidadeContatoId write FoportunidadeContatoId;
    property oportunidadeNome:                   string   read FoportunidadeNome write FoportunidadeNome;
    property oportunidadeTipoId:                 Integer  read FoportunidadeTipoId write FoportunidadeTipoId;
    property oportunidadeSubtipoId:              Integer  read FoportunidadeSubtipoId write FoportunidadeSubtipoId;
    property oportunidadeOrigemId:               Integer  read FoportunidadeOrigemId write FoportunidadeOrigemId;
    property oportunidadeModalidadeNegocioId:    Integer  read FoportunidadeModalidadeNegocioId write FoportunidadeModalidadeNegocioId;
    property oportunidadeUsuarioIdERP:           Integer  read FoportunidadeUsuarioIdERP write FoportunidadeUsuarioIdERP;
    property oportunidadeEstagioId:              Integer  read FoportunidadeEstagioId write FoportunidadeEstagioId;
    property oportunidadeMotivoPerdaId:          Integer  read FoportunidadeMotivoPerdaId write FoportunidadeMotivoPerdaId;
    property oportunidadeMotivoFechamentoId:     Integer  read FoportunidadeMotivoFechamentoId write FoportunidadeMotivoFechamentoId;
    property oportunidadeProbabilidade:          Integer  read FoportunidadeProbabilidade write FoportunidadeProbabilidade;
    property oportunidadeNumeroPedido:           string   read FoportunidadeNumeroPedido write FoportunidadeNumeroPedido;
    property oportunidadeDataPrevistaFechamento: string   read FoportunidadeDataPrevistaFechamento write FoportunidadeDataPrevistaFechamento;
    property oportunidadeDataEfetivaFechamento:  string   read FoportunidadeDataEfetivaFechamento write FoportunidadeDataEfetivaFechamento;
    property oportunidadeDataPrevistaEntrega:    string   read FoportunidadeDataPrevistaEntrega write FoportunidadeDataPrevistaEntrega;
    property oportunidadeDataEfetivaEntrega:     string   read FoportunidadeDataEfetivaEntrega write FoportunidadeDataEfetivaEntrega;
    property oportunidadeValorPrevisto:          string   read FoportunidadeValorPrevisto write FoportunidadeValorPrevisto;
    property oportunidadeValorFechado:           string   read FoportunidadeValorFechado write FoportunidadeValorFechado;
    property oportunidadeHistorico:              string   read FoportunidadeHistorico write FoportunidadeHistorico;
    property oportunidadeDescricao:              string   read FoportunidadeDescricao write FoportunidadeDescricao;
  end;



  // ************************************************************************ //
  // XML       : produtosRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  produtosRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fregistros: produtosRetorno;
  public
    destructor Destroy; override;
  published
    property status:    string           read Fstatus write Fstatus;
    property mensagem:  string           read Fmensagem write Fmensagem;
    property registros: produtosRetorno  read Fregistros write Fregistros;
  end;



  // ************************************************************************ //
  // XML       : ocorrencia, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ocorrencia = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FocorrenciaUsuarioId: string;
    FocorrenciaContaId: Integer;
    FocorrenciaNome: string;
    FocorrenciaTipoId: string;
    FocorrenciaOrigemId: Integer;
    FocorrenciaDepartamentoId: Integer;
    FocorrenciaPrioridade: Integer;
    FocorrenciaDescricao: string;
  published
    property UsuarioLogin:             string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:             string   read FUsuarioSenha write FUsuarioSenha;
    property ocorrenciaUsuarioId:      string   read FocorrenciaUsuarioId write FocorrenciaUsuarioId;
    property ocorrenciaContaId:        Integer  read FocorrenciaContaId write FocorrenciaContaId;
    property ocorrenciaNome:           string   read FocorrenciaNome write FocorrenciaNome;
    property ocorrenciaTipoId:         string   read FocorrenciaTipoId write FocorrenciaTipoId;
    property ocorrenciaOrigemId:       Integer  read FocorrenciaOrigemId write FocorrenciaOrigemId;
    property ocorrenciaDepartamentoId: Integer  read FocorrenciaDepartamentoId write FocorrenciaDepartamentoId;
    property ocorrenciaPrioridade:     Integer  read FocorrenciaPrioridade write FocorrenciaPrioridade;
    property ocorrenciaDescricao:      string   read FocorrenciaDescricao write FocorrenciaDescricao;
  end;



  // ************************************************************************ //
  // XML       : ocorrenciaRetornoDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ocorrenciaRetornoDados = class(TRemotable)
  private
    Fstatus: string;
    Fmensagem: string;
    Fid_registro: Integer;
  published
    property status:      string   read Fstatus write Fstatus;
    property mensagem:    string   read Fmensagem write Fmensagem;
    property id_registro: Integer  read Fid_registro write Fid_registro;
  end;



  // ************************************************************************ //
  // XML       : CaracteristicasDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CaracteristicasDados = class(TRemotable)
  private
    FCaracteristicaId: string;
    FCaracteristicaNome: string;
    FCaracteristicaAtivoId: string;
    FCaracteristicaAtivoDescricao: string;
  published
    property CaracteristicaId:             string  read FCaracteristicaId write FCaracteristicaId;
    property CaracteristicaNome:           string  read FCaracteristicaNome write FCaracteristicaNome;
    property CaracteristicaAtivoId:        string  read FCaracteristicaAtivoId write FCaracteristicaAtivoId;
    property CaracteristicaAtivoDescricao: string  read FCaracteristicaAtivoDescricao write FCaracteristicaAtivoDescricao;
  end;

  CaracteristicasDadosArray = array of CaracteristicasDados;   { "urn:WConnect"[GblCplx] }


  // ************************************************************************ //
  // XML       : CaracteristicasDetalheParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CaracteristicasDetalheParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FCaracteristicasDetalheId: Integer;
    FCaracteristicasDetalheNome: string;
    FCaracteristicaId: Integer;
    FCaracteristicasDetalheAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:                string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:                string   read FUsuarioSenha write FUsuarioSenha;
    property CaracteristicasDetalheId:    Integer  read FCaracteristicasDetalheId write FCaracteristicasDetalheId;
    property CaracteristicasDetalheNome:  string   read FCaracteristicasDetalheNome write FCaracteristicasDetalheNome;
    property CaracteristicaId:            Integer  read FCaracteristicaId write FCaracteristicaId;
    property CaracteristicasDetalheAtivo: Integer  read FCaracteristicasDetalheAtivo write FCaracteristicasDetalheAtivo;
    property erro:                        string   read Ferro write Ferro;
    property mensagem:                    string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : CaracteristicasParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  CaracteristicasParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FCaracteristicasId: Integer;
    FCaracteristicasNome: string;
    FCaracteristicasAtivo: Integer;
    Ferro: string;
    Fmensagem: string;
  published
    property UsuarioLogin:         string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha:         string   read FUsuarioSenha write FUsuarioSenha;
    property CaracteristicasId:    Integer  read FCaracteristicasId write FCaracteristicasId;
    property CaracteristicasNome:  string   read FCaracteristicasNome write FCaracteristicasNome;
    property CaracteristicasAtivo: Integer  read FCaracteristicasAtivo write FCaracteristicasAtivo;
    property erro:                 string   read Ferro write Ferro;
    property mensagem:             string   read Fmensagem write Fmensagem;
  end;



  // ************************************************************************ //
  // XML       : ContasParametros, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ContasParametros = class(TRemotable)
  private
    FUsuarioLogin: string;
    FUsuarioSenha: string;
    FContasId: Integer;
    FContasIdERP: Integer;
    FContasCNPJ: string;
    FContasCPF: string;
    FContasEmail: string;
  published
    property UsuarioLogin: string   read FUsuarioLogin write FUsuarioLogin;
    property UsuarioSenha: string   read FUsuarioSenha write FUsuarioSenha;
    property ContasId:     Integer  read FContasId write FContasId;
    property ContasIdERP:  Integer  read FContasIdERP write FContasIdERP;
    property ContasCNPJ:   string   read FContasCNPJ write FContasCNPJ;
    property ContasCPF:    string   read FContasCPF write FContasCPF;
    property ContasEmail:  string   read FContasEmail write FContasEmail;
  end;



  // ************************************************************************ //
  // XML       : ContasDados, global, <complexType>
  // Namespace : urn:WConnect
  // ************************************************************************ //
  ContasDados = class(TRemotable)
  private
    FcontaId: Integer;
    FcontaIdERP: Integer;
    FcontaStatusId: Integer;
    FcontaStatusDescricao: string;
    FcontaMotivoInativacaoId: Integer;
    FcontaMotivoInativacaoDescricao: string;
    FcontaEmpresaId: Integer;
    FcontaNome: string;
    FcontaFantasia: string;
    FcontaFilial: string;
    FcontaGrupoEconomico: string;
    FcontaTipoContaId: Integer;
    FcontaTipoContaDescricao: string;
    FcontaTipoPessoaId: Integer;
    FcontaTipoPessoaDescricao: string;
    FcontaRatingId: Integer;
    FcontaRatingDescricao: string;
    FcontaPorteId: Integer;
    FcontaPorteDescricao: string;
    FcontaEndereco: string;
    FcontaNumero: string;
    FcontaComplemento: string;
    FcontaBairro: string;
    FcontaCidadeId: Integer;
    FcontaCidadeDescricao: string;
    FcontaCidadeUf: string;
    FcontaPaisId: Integer;
    FcontaPaisDescricao: string;
    FcontaCep: string;
    FcontaLatitude: string;
    FcontaLongitude: string;
    FcontaInscricaoEstadual: string;
    FcontaInscricaoMunicipal: string;
    FcontaCnpj: string;
    FcontaCpf: string;
    FcontaRg: string;
    FcontaAniversario: string;
    FcontaTelefone: string;
    FcontaFax: string;
    FcontaCelular: string;
    FcontaUrl: string;
    FcontaEmailGeral: string;
    FcontaRecebeCampanha: string;
    FcontaRecebePesquisa: string;
    FcontaRamoAtividadeId: Integer;
    FcontaRamoAtividadeDescricao: string;
    FcontaOrigemId: Integer;
    FcontaOrigemDescricao: string;
    FcontaFuncionarios: string;
    FcontaReceitaAnual: string;
    FcontaMetaAnualPrevista: string;
    FcontaPercentualIss: string;
    FcontaObservacoes: string;
  published
    property contaId:                        Integer  read FcontaId write FcontaId;
    property contaIdERP:                     Integer  read FcontaIdERP write FcontaIdERP;
    property contaStatusId:                  Integer  read FcontaStatusId write FcontaStatusId;
    property contaStatusDescricao:           string   read FcontaStatusDescricao write FcontaStatusDescricao;
    property contaMotivoInativacaoId:        Integer  read FcontaMotivoInativacaoId write FcontaMotivoInativacaoId;
    property contaMotivoInativacaoDescricao: string   read FcontaMotivoInativacaoDescricao write FcontaMotivoInativacaoDescricao;
    property contaEmpresaId:                 Integer  read FcontaEmpresaId write FcontaEmpresaId;
    property contaNome:                      string   read FcontaNome write FcontaNome;
    property contaFantasia:                  string   read FcontaFantasia write FcontaFantasia;
    property contaFilial:                    string   read FcontaFilial write FcontaFilial;
    property contaGrupoEconomico:            string   read FcontaGrupoEconomico write FcontaGrupoEconomico;
    property contaTipoContaId:               Integer  read FcontaTipoContaId write FcontaTipoContaId;
    property contaTipoContaDescricao:        string   read FcontaTipoContaDescricao write FcontaTipoContaDescricao;
    property contaTipoPessoaId:              Integer  read FcontaTipoPessoaId write FcontaTipoPessoaId;
    property contaTipoPessoaDescricao:       string   read FcontaTipoPessoaDescricao write FcontaTipoPessoaDescricao;
    property contaRatingId:                  Integer  read FcontaRatingId write FcontaRatingId;
    property contaRatingDescricao:           string   read FcontaRatingDescricao write FcontaRatingDescricao;
    property contaPorteId:                   Integer  read FcontaPorteId write FcontaPorteId;
    property contaPorteDescricao:            string   read FcontaPorteDescricao write FcontaPorteDescricao;
    property contaEndereco:                  string   read FcontaEndereco write FcontaEndereco;
    property contaNumero:                    string   read FcontaNumero write FcontaNumero;
    property contaComplemento:               string   read FcontaComplemento write FcontaComplemento;
    property contaBairro:                    string   read FcontaBairro write FcontaBairro;
    property contaCidadeId:                  Integer  read FcontaCidadeId write FcontaCidadeId;
    property contaCidadeDescricao:           string   read FcontaCidadeDescricao write FcontaCidadeDescricao;
    property contaCidadeUf:                  string   read FcontaCidadeUf write FcontaCidadeUf;
    property contaPaisId:                    Integer  read FcontaPaisId write FcontaPaisId;
    property contaPaisDescricao:             string   read FcontaPaisDescricao write FcontaPaisDescricao;
    property contaCep:                       string   read FcontaCep write FcontaCep;
    property contaLatitude:                  string   read FcontaLatitude write FcontaLatitude;
    property contaLongitude:                 string   read FcontaLongitude write FcontaLongitude;
    property contaInscricaoEstadual:         string   read FcontaInscricaoEstadual write FcontaInscricaoEstadual;
    property contaInscricaoMunicipal:        string   read FcontaInscricaoMunicipal write FcontaInscricaoMunicipal;
    property contaCnpj:                      string   read FcontaCnpj write FcontaCnpj;
    property contaCpf:                       string   read FcontaCpf write FcontaCpf;
    property contaRg:                        string   read FcontaRg write FcontaRg;
    property contaAniversario:               string   read FcontaAniversario write FcontaAniversario;
    property contaTelefone:                  string   read FcontaTelefone write FcontaTelefone;
    property contaFax:                       string   read FcontaFax write FcontaFax;
    property contaCelular:                   string   read FcontaCelular write FcontaCelular;
    property contaUrl:                       string   read FcontaUrl write FcontaUrl;
    property contaEmailGeral:                string   read FcontaEmailGeral write FcontaEmailGeral;
    property contaRecebeCampanha:            string   read FcontaRecebeCampanha write FcontaRecebeCampanha;
    property contaRecebePesquisa:            string   read FcontaRecebePesquisa write FcontaRecebePesquisa;
    property contaRamoAtividadeId:           Integer  read FcontaRamoAtividadeId write FcontaRamoAtividadeId;
    property contaRamoAtividadeDescricao:    string   read FcontaRamoAtividadeDescricao write FcontaRamoAtividadeDescricao;
    property contaOrigemId:                  Integer  read FcontaOrigemId write FcontaOrigemId;
    property contaOrigemDescricao:           string   read FcontaOrigemDescricao write FcontaOrigemDescricao;
    property contaFuncionarios:              string   read FcontaFuncionarios write FcontaFuncionarios;
    property contaReceitaAnual:              string   read FcontaReceitaAnual write FcontaReceitaAnual;
    property contaMetaAnualPrevista:         string   read FcontaMetaAnualPrevista write FcontaMetaAnualPrevista;
    property contaPercentualIss:             string   read FcontaPercentualIss write FcontaPercentualIss;
    property contaObservacoes:               string   read FcontaObservacoes write FcontaObservacoes;
  end;

  ContasDadosArray = array of ContasDados;      { "urn:WConnect"[GblCplx] }

  // ************************************************************************ //
  // Name      : WConnect CRM SeniorPortType
  // Namespace : urn:WConnect
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : encoded
  // binding   : WConnect CRM SeniorBinding
  // service   : WConnect CRM Senior
  // port      : WConnect CRM SeniorPort
  // URL       : http://hennings.workcrm.com.br/wconnect/wsdl/WConnect_WSDL.php
  // ************************************************************************ //
  WConnect_CRM_SeniorPortType = interface(IInvokable)
  ['{99E01DF3-8144-2A79-01AF-E6B3C3E7693A}']
    function  setConta(const conta: conta): contasRetornoDados; stdcall;
    function  setContasResponsavel(const contaResponsavel: contaResponsavel): contaResponsavelRetornoDados; stdcall;
    function  setContasCaracteristica(const contaCaracteristica: contaCaracteristica): contaCaracteristicaRetornoDados; stdcall;
    function  setCompromissos(const compromisso: compromisso): compromissoRetornoDados; stdcall;
    function  setContatos(const contato: contato): contatosRetornoDados; stdcall;
    function  setTiposNota(const tiposNota: tiposNota): tiposNotaRetornoDados; stdcall;
    function  setProduto(const produto: produto): produtoRetornoDados; stdcall;
    function  setCategoriaProduto(const categoriaProduto: categoriaProduto): categoriaProdutoRetornoDados; stdcall;
    function  setcondicaoPagamento(const condicaoPagamento: condicaoPagamento): condicaoPagamentoRetornoDados; stdcall;
    function  setTabelasPreco(const tabelasPreco: tabelasPreco): tabelasPrecoRetornoDados; stdcall;
    function  setTransportadora(const transportadora: transportadora): transportadoraRetornoDados; stdcall;
    function  setUnidadesMedida(const unidadeMedida: unidadeMedida): unidadeMedidaRetornoDados; stdcall;
    function  setProdutosOportunidade(const produtosRecebe: produtosRecebeArray): produtosRetornoDados; stdcall;
    function  setOcorrencias(const ocorrencia: ocorrencia): ocorrenciaRetornoDados; stdcall;
    function  setOportunidade(const oportunidade: oportunidade): oportunidadeRetornoDados; stdcall;
    function  setConcluiCompromissos(const concluiCompromisso: concluiCompromisso): concluiCompromissoRetornoDados; stdcall;
    function  getContas(const ContasParametros: ContasParametros): ContasDadosArray; stdcall;
    function  getCaracteristicas(const CaracteristicasParametros: CaracteristicasParametros): CaracteristicasDadosArray; stdcall;
    function  getCaracteristicasDetalhe(const CaracteristicasDetalheParametros: CaracteristicasDetalheParametros): CaracteristicasDetalheDadosArray; stdcall;
    function  getGrupos(const GruposParametros: GruposParametros): GruposDadosArray; stdcall;
    function  getRamosAtividade(const RamosAtividadeParametros: RamosAtividadeParametros): RamosAtividadeDadosArray; stdcall;
    function  getOrigemConta(const OrigemContaParametros: OrigemContaParametros): OrigemContaDadosArray; stdcall;
    function  getPaises(const PaisesParametros: PaisesParametros): PaisesDadosArray; stdcall;
    function  getCidades(const Cidades: Cidades): CidadesDadosArray; stdcall;
    function  getTiposNota(const TiposNotaParametros: TiposNotaParametros): TiposNotaDadosArray; stdcall;
    function  getCategoriaProduto(const CategoriaProdutoParametros: CategoriaProdutoParametros): CategoriaProdutoDadosArray; stdcall;
    function  getCondicaoPagamento(const CondicaoPagamentoParametros: CondicaoPagamentoParametros): CondicaoPagamentoDadosArray; stdcall;
    function  getProdutos(const ProdutosParametros: ProdutosParametros): ProdutosDadosArray; stdcall;
    function  getTransportadoras(const TransportadorasParametros: TransportadorasParametros): TransportadorasDadosArray; stdcall;
    function  getUnidadesMedida(const UnidadesMedidaParametros: UnidadesMedidaParametros): UnidadesMedidaDadosArray; stdcall;
    function  getOrigemOportunidade(const OrigemOportunidadeParametros: OrigemOportunidadeParametros): OrigemOportunidadeDados; stdcall;
    function  getModalidadesNegocio(const ModalidadesNegocioParametros: ModalidadesNegocioParametros): ModalidadesNegocioDados; stdcall;
    function  getTipoOportunidade(const TipoOportunidadeParametros: TipoOportunidadeParametros): TipoOportunidadeDados; stdcall;
    function  setTeste(const Auth: Tautenticacao): TautenticacaoRetornoDados; stdcall;
    function  getContatos(const ContatosParametros: ContatosParametros): ContatosDadosArray; stdcall;
    function  getDepartamentos(const DepartamentosParametros: DepartamentosParametros): DepartamentosDadosArray; stdcall;
    function  getFuncoes(const FuncoesParametros: FuncoesParametros): FuncoesDadosArray; stdcall;
    function  getOrigemContato(const OrigemContatoParametros: OrigemContatoParametros): OrigemContatoDadosArray; stdcall;
    function  getUsuarios(const UsuariosParametros: UsuariosParametros): UsuariosDadosArray; stdcall;
    function  getUsuariosGrupo(const UsuariosGrupoParametros: UsuariosGrupoParametros): UsuariosGrupoDadosArray; stdcall;
    function  getOportunidades(const OportunidadesParametros: OportunidadesParametros): OportunidadesDadosArray; stdcall;
    function  getItensOportunidade(const ItensOportunidadeParametros: ItensOportunidadeParametros): ItensOportunidadeArray; stdcall;
  end;

function GetWConnect_CRM_SeniorPortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): WConnect_CRM_SeniorPortType;


implementation
  uses SysUtils;

function GetWConnect_CRM_SeniorPortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): WConnect_CRM_SeniorPortType;
const
  defWSDL = 'http://hennings.workcrm.com.br/wconnect/wsdl/WConnect_WSDL.php?wsdl';
  defURL  = 'http://hennings.workcrm.com.br/wconnect/wsdl/WConnect_WSDL.php';
  defSvc  = 'WConnect CRM Senior';
  defPrt  = 'WConnect CRM SeniorPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as WConnect_CRM_SeniorPortType);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor TipoOportunidadeDados.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fregistros)-1 do
    SysUtils.FreeAndNil(Fregistros[I]);
  System.SetLength(Fregistros, 0);
  inherited Destroy;
end;

destructor OrigemOportunidadeDados.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fregistros)-1 do
    SysUtils.FreeAndNil(Fregistros[I]);
  System.SetLength(Fregistros, 0);
  inherited Destroy;
end;

destructor ModalidadesNegocioDados.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fregistros)-1 do
    SysUtils.FreeAndNil(Fregistros[I]);
  System.SetLength(Fregistros, 0);
  inherited Destroy;
end;

destructor produtosRecebeArray.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FprodutosRecebe)-1 do
    SysUtils.FreeAndNil(FprodutosRecebe[I]);
  System.SetLength(FprodutosRecebe, 0);
  inherited Destroy;
end;

destructor produtosRetornoDados.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fregistros)-1 do
    SysUtils.FreeAndNil(Fregistros[I]);
  System.SetLength(Fregistros, 0);
  inherited Destroy;
end;

initialization
  { WConnect CRM SeniorPortType }
  InvRegistry.RegisterInterface(TypeInfo(WConnect_CRM_SeniorPortType), 'urn:WConnect', 'ISO-8859-1', '', 'WConnect CRM SeniorPortType');
  InvRegistry.RegisterAllSOAPActions(TypeInfo(WConnect_CRM_SeniorPortType), '|urn:WConnect#setConta'
                                                                           +'|urn:WConnect#setContasResponsavel'
                                                                           +'|urn:WConnect#setContasCaracteristica'
                                                                           +'|urn:WConnect#setCompromissos'
                                                                           +'|urn:WConnect#setContatos'
                                                                           +'|urn:WConnect#settiposNota'
                                                                           +'|urn:WConnect#setProduto'
                                                                           +'|urn:WConnect#setCategoriaProduto'
                                                                           +'|urn:WConnect#setcondicaoPagamento'
                                                                           +'|urn:WConnect#setTabelasPreco'
                                                                           +'|urn:WConnect#setTransportadora'
                                                                           +'|urn:WConnect#setUnidadesMedida'
                                                                           +'|urn:WConnect#setProdutosOportunidade'
                                                                           +'|urn:WConnect#setOcorrencias'
                                                                           +'|urn:WConnect#setOportunidade'
                                                                           +'|urn:WConnect#setConcluiCompromissos'
                                                                           +'|urn:WConnect#getContas'
                                                                           +'|urn:WConnect#getCaracteristicas'
                                                                           +'|urn:WConnect#getCaracteristicasDetalhe'
                                                                           +'|urn:WConnect#getGrupos'
                                                                           +'|urn:WConnect#getRamosAtividade'
                                                                           +'|urn:WConnect#getOrigemConta'
                                                                           +'|urn:WConnect#getPaises'
                                                                           +'|urn:WConnect#getCidades'
                                                                           +'|urn:WConnect#getTiposNota'
                                                                           +'|urn:WConnect#getCategoriaProduto'
                                                                           +'|urn:WConnect#getCondicaoPagamento'
                                                                           +'|urn:WConnect#getProdutos'
                                                                           +'|urn:WConnect#getTransportadoras'
                                                                           +'|urn:WConnect#getUnidadesMedida'
                                                                           +'|urn:WConnect#getOrigemOportunidade'
                                                                           +'|urn:WConnect#getModalidadesNegocio'
                                                                           +'|urn:WConnect#getTipoOportunidade'
                                                                           +'|urn:WConnect#setTeste'
                                                                           +'|urn:WConnect#getContatos'
                                                                           +'|urn:WConnect#getDepartamentos'
                                                                           +'|urn:WConnect#getFuncoes'
                                                                           +'|urn:WConnect#getOrigemContato'
                                                                           +'|urn:WConnect#getUsuarios'
                                                                           +'|urn:WConnect#getUsuariosGrupo'
                                                                           +'|urn:WConnect#getOportunidades'
                                                                           );
  RemClassRegistry.RegisterXSInfo(TypeInfo(UnidadesMedidaDadosArray), 'urn:WConnect', 'UnidadesMedidaDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TransportadorasDadosArray), 'urn:WConnect', 'TransportadorasDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RegistrosModalidadeRetorno), 'urn:WConnect', 'RegistrosModalidadeRetorno');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RegistrosOrigemRetorno), 'urn:WConnect', 'RegistrosOrigemRetorno');
  RemClassRegistry.RegisterXSInfo(TypeInfo(TiposNotaDadosArray), 'urn:WConnect', 'TiposNotaDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CidadesDadosArray), 'urn:WConnect', 'CidadesDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ProdutosDadosArray), 'urn:WConnect', 'ProdutosDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CondicaoPagamentoDadosArray), 'urn:WConnect', 'CondicaoPagamentoDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CategoriaProdutoDadosArray), 'urn:WConnect', 'CategoriaProdutoDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UsuariosGrupoDadosArray), 'urn:WConnect', 'UsuariosGrupoDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(UsuariosDadosArray), 'urn:WConnect', 'UsuariosDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrigemContatoDadosArray), 'urn:WConnect', 'OrigemContatoDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ItensOportunidadeArray), 'urn:WConnect', 'ItensOportunidadeArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_produtosRecebe), 'urn:WConnect', 'Array_Of_produtosRecebe');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OportunidadesDadosArray), 'urn:WConnect', 'OportunidadesDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ContatosDadosArray), 'urn:WConnect', 'ContatosDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RegistrosTipoRetorno), 'urn:WConnect', 'RegistrosTipoRetorno');
  RemClassRegistry.RegisterXSInfo(TypeInfo(FuncoesDadosArray), 'urn:WConnect', 'FuncoesDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(DepartamentosDadosArray), 'urn:WConnect', 'DepartamentosDadosArray');
  RemClassRegistry.RegisterXSClass(produtosRegistros, 'urn:WConnect', 'produtosRegistros');
  RemClassRegistry.RegisterXSClass(produtosRecebe, 'urn:WConnect', 'produtosRecebe');
  RemClassRegistry.RegisterXSClass(Tautenticacao, 'urn:WConnect', 'Tautenticacao');
  RemClassRegistry.RegisterXSClass(TipoOportunidadeDados, 'urn:WConnect', 'TipoOportunidadeDados');
  RemClassRegistry.RegisterXSClass(TautenticacaoRetornoDados, 'urn:WConnect', 'TautenticacaoRetornoDados');
  RemClassRegistry.RegisterXSClass(OrigemOportunidadeDados, 'urn:WConnect', 'OrigemOportunidadeDados');
  RemClassRegistry.RegisterXSClass(ModalidadesNegocioDados, 'urn:WConnect', 'ModalidadesNegocioDados');
  RemClassRegistry.RegisterXSClass(conta, 'urn:WConnect', 'conta');
  RemClassRegistry.RegisterXSClass(contasRetornoDados, 'urn:WConnect', 'contasRetornoDados');
  RemClassRegistry.RegisterXSClass(contaCaracteristica, 'urn:WConnect', 'contaCaracteristica');
  RemClassRegistry.RegisterXSClass(contaResponsavelRetornoDados, 'urn:WConnect', 'contaResponsavelRetornoDados');
  RemClassRegistry.RegisterXSClass(contaResponsavel, 'urn:WConnect', 'contaResponsavel');
  RemClassRegistry.RegisterXSClass(produto, 'urn:WConnect', 'produto');
  RemClassRegistry.RegisterXSClass(unidadeMedida, 'urn:WConnect', 'unidadeMedida');
  RemClassRegistry.RegisterXSClass(transportadoraRetornoDados, 'urn:WConnect', 'transportadoraRetornoDados');
  RemClassRegistry.RegisterXSClass(transportadora, 'urn:WConnect', 'transportadora');
  RemClassRegistry.RegisterXSClass(unidadeMedidaRetornoDados, 'urn:WConnect', 'unidadeMedidaRetornoDados');
  RemClassRegistry.RegisterXSClass(produtosRecebeArray, 'urn:WConnect', 'produtosRecebeArray');
  RemClassRegistry.RegisterXSClass(categoriaProdutoRetornoDados, 'urn:WConnect', 'categoriaProdutoRetornoDados');
  RemClassRegistry.RegisterXSClass(categoriaProduto, 'urn:WConnect', 'categoriaProduto');
  RemClassRegistry.RegisterXSClass(produtoRetornoDados, 'urn:WConnect', 'produtoRetornoDados');
  RemClassRegistry.RegisterXSClass(condicaoPagamento, 'urn:WConnect', 'condicaoPagamento');
  RemClassRegistry.RegisterXSClass(tabelasPrecoRetornoDados, 'urn:WConnect', 'tabelasPrecoRetornoDados');
  RemClassRegistry.RegisterXSClass(tabelasPreco, 'urn:WConnect', 'tabelasPreco');
  RemClassRegistry.RegisterXSClass(condicaoPagamentoRetornoDados, 'urn:WConnect', 'condicaoPagamentoRetornoDados');
  RemClassRegistry.RegisterXSClass(DepartamentosDados, 'urn:WConnect', 'DepartamentosDados');
  RemClassRegistry.RegisterXSClass(DepartamentosParametros, 'urn:WConnect', 'DepartamentosParametros');
  RemClassRegistry.RegisterXSClass(FuncoesParametros, 'urn:WConnect', 'FuncoesParametros');
  RemClassRegistry.RegisterXSClass(OrigemContatoParametros, 'urn:WConnect', 'OrigemContatoParametros');
  RemClassRegistry.RegisterXSClass(FuncoesDados, 'urn:WConnect', 'FuncoesDados');
  RemClassRegistry.RegisterXSClass(ContatosDados, 'urn:WConnect', 'ContatosDados');
  RemClassRegistry.RegisterXSClass(ContatosParametros, 'urn:WConnect', 'ContatosParametros');
  RemClassRegistry.RegisterXSClass(OrigemContatoDados, 'urn:WConnect', 'OrigemContatoDados');
  RemClassRegistry.RegisterXSClass(OportunidadesDados, 'urn:WConnect', 'OportunidadesDados');
  RemClassRegistry.RegisterXSClass(OportunidadesParametros, 'urn:WConnect', 'OportunidadesParametros');
  RemClassRegistry.RegisterXSClass(ItensOportunidadeParametros, 'urn:WConnect', 'ItensOportunidadeParametros');
  RemClassRegistry.RegisterXSClass(ItensOportunidade, 'urn:WConnect', 'ItensOportunidade');
  RemClassRegistry.RegisterXSClass(UsuariosDados, 'urn:WConnect', 'UsuariosDados');
  RemClassRegistry.RegisterXSClass(UsuariosParametros, 'urn:WConnect', 'UsuariosParametros');
  RemClassRegistry.RegisterXSClass(UsuariosGrupoDados, 'urn:WConnect', 'UsuariosGrupoDados');
  RemClassRegistry.RegisterXSClass(UsuariosGrupoParametros, 'urn:WConnect', 'UsuariosGrupoParametros');
  RemClassRegistry.RegisterXSClass(RegistrosTipo, 'urn:WConnect', 'RegistrosTipo');
  RemClassRegistry.RegisterXSClass(CondicaoPagamentoDados, 'urn:WConnect', 'CondicaoPagamentoDados');
  RemClassRegistry.RegisterXSClass(CondicaoPagamentoParametros, 'urn:WConnect', 'CondicaoPagamentoParametros');
  RemClassRegistry.RegisterXSClass(ProdutosDados, 'urn:WConnect', 'ProdutosDados');
  RemClassRegistry.RegisterXSClass(ProdutosParametros, 'urn:WConnect', 'ProdutosParametros');
  RemClassRegistry.RegisterXSClass(TiposNotaParametros, 'urn:WConnect', 'TiposNotaParametros');
  RemClassRegistry.RegisterXSClass(CidadesDados, 'urn:WConnect', 'CidadesDados');
  RemClassRegistry.RegisterXSClass(TiposNotaDados, 'urn:WConnect', 'TiposNotaDados');
  RemClassRegistry.RegisterXSClass(CategoriaProdutoDados, 'urn:WConnect', 'CategoriaProdutoDados');
  RemClassRegistry.RegisterXSClass(CategoriaProdutoParametros, 'urn:WConnect', 'CategoriaProdutoParametros');
  RemClassRegistry.RegisterXSClass(TransportadorasParametros, 'urn:WConnect', 'TransportadorasParametros');
  RemClassRegistry.RegisterXSClass(ModalidadesNegocioParametros, 'urn:WConnect', 'ModalidadesNegocioParametros');
  RemClassRegistry.RegisterXSClass(RegistrosModalidade, 'urn:WConnect', 'RegistrosModalidade');
  RemClassRegistry.RegisterXSClass(TipoOportunidadeParametros, 'urn:WConnect', 'TipoOportunidadeParametros');
  RemClassRegistry.RegisterXSClass(UnidadesMedidaParametros, 'urn:WConnect', 'UnidadesMedidaParametros');
  RemClassRegistry.RegisterXSClass(TransportadorasDados, 'urn:WConnect', 'TransportadorasDados');
  RemClassRegistry.RegisterXSClass(UnidadesMedidaDados, 'urn:WConnect', 'UnidadesMedidaDados');
  RemClassRegistry.RegisterXSClass(RegistrosOrigem, 'urn:WConnect', 'RegistrosOrigem');
  RemClassRegistry.RegisterXSClass(OrigemOportunidadeParametros, 'urn:WConnect', 'OrigemOportunidadeParametros');
  RemClassRegistry.RegisterXSClass(contatosRetornoDados, 'urn:WConnect', 'contatosRetornoDados');
  RemClassRegistry.RegisterXSClass(tiposNota, 'urn:WConnect', 'tiposNota');
  RemClassRegistry.RegisterXSClass(tiposNotaRetornoDados, 'urn:WConnect', 'tiposNotaRetornoDados');
  RemClassRegistry.RegisterXSClass(contato, 'urn:WConnect', 'contato');
  RemClassRegistry.RegisterXSClass(contaCaracteristicaRetornoDados, 'urn:WConnect', 'contaCaracteristicaRetornoDados');
  RemClassRegistry.RegisterXSClass(compromisso, 'urn:WConnect', 'compromisso');
  RemClassRegistry.RegisterXSClass(compromissoRetornoDados, 'urn:WConnect', 'compromissoRetornoDados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(produtosRetorno), 'urn:WConnect', 'produtosRetorno');
  RemClassRegistry.RegisterXSClass(RamosAtividadeParametros, 'urn:WConnect', 'RamosAtividadeParametros');
  RemClassRegistry.RegisterXSClass(RamosAtividadeDados, 'urn:WConnect', 'RamosAtividadeDados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(RamosAtividadeDadosArray), 'urn:WConnect', 'RamosAtividadeDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(GruposDadosArray), 'urn:WConnect', 'GruposDadosArray');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CaracteristicasDetalheDadosArray), 'urn:WConnect', 'CaracteristicasDetalheDadosArray');
  RemClassRegistry.RegisterXSClass(GruposParametros, 'urn:WConnect', 'GruposParametros');
  RemClassRegistry.RegisterXSClass(GruposDados, 'urn:WConnect', 'GruposDados');
  RemClassRegistry.RegisterXSClass(PaisesDados, 'urn:WConnect', 'PaisesDados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(PaisesDadosArray), 'urn:WConnect', 'PaisesDadosArray');
  RemClassRegistry.RegisterXSClass(Cidades, 'urn:WConnect', 'Cidades');
  RemClassRegistry.RegisterXSClass(PaisesParametros, 'urn:WConnect', 'PaisesParametros');
  RemClassRegistry.RegisterXSClass(OrigemContaParametros, 'urn:WConnect', 'OrigemContaParametros');
  RemClassRegistry.RegisterXSClass(OrigemContaDados, 'urn:WConnect', 'OrigemContaDados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(OrigemContaDadosArray), 'urn:WConnect', 'OrigemContaDadosArray');
  RemClassRegistry.RegisterXSClass(CaracteristicasDetalheDados, 'urn:WConnect', 'CaracteristicasDetalheDados');
  RemClassRegistry.RegisterXSClass(oportunidadeRetornoDados, 'urn:WConnect', 'oportunidadeRetornoDados');
  RemClassRegistry.RegisterXSClass(concluiCompromisso, 'urn:WConnect', 'concluiCompromisso');
  RemClassRegistry.RegisterXSClass(concluiCompromissoRetornoDados, 'urn:WConnect', 'concluiCompromissoRetornoDados');
  RemClassRegistry.RegisterXSClass(oportunidade, 'urn:WConnect', 'oportunidade');
  RemClassRegistry.RegisterXSClass(produtosRetornoDados, 'urn:WConnect', 'produtosRetornoDados');
  RemClassRegistry.RegisterXSClass(ocorrencia, 'urn:WConnect', 'ocorrencia');
  RemClassRegistry.RegisterXSClass(ocorrenciaRetornoDados, 'urn:WConnect', 'ocorrenciaRetornoDados');
  RemClassRegistry.RegisterXSClass(CaracteristicasDados, 'urn:WConnect', 'CaracteristicasDados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(CaracteristicasDadosArray), 'urn:WConnect', 'CaracteristicasDadosArray');
  RemClassRegistry.RegisterXSClass(CaracteristicasDetalheParametros, 'urn:WConnect', 'CaracteristicasDetalheParametros');
  RemClassRegistry.RegisterXSClass(CaracteristicasParametros, 'urn:WConnect', 'CaracteristicasParametros');
  RemClassRegistry.RegisterXSClass(ContasParametros, 'urn:WConnect', 'ContasParametros');
  RemClassRegistry.RegisterXSClass(ContasDados, 'urn:WConnect', 'ContasDados');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ContasDadosArray), 'urn:WConnect', 'ContasDadosArray');

end.
