unit urdc_ConsultarViagens_v1_00;

Interface
uses
  Classes,InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
  tEventosViagem = class(TRemotable)
  private
    FCombustivelEvento: integer;
    FIDEvento: integer;
  published
    property IDEvento: integer read FIDEvento write FIDEvento;
    property CombustivelEvento: integer read FCombustivelEvento write FCombustivelEvento;
  end;

type
  tPeriodoEmbarque = class(TRemotable)
  private
    FDataFinalEmbarque: tDateTime;
    FDataInicialEmbarque: tDateTime;
  published
    property DataInicialEmbarque: tDateTime read FDataInicialEmbarque write FDataInicialEmbarque;
    property DataFinalEmbarque : tDateTime read FDataFinalEmbarque  write FDataFinalEmbarque ;
  end;

type
  tPeriodoEntrega = class(TRemotable)
  private
    FDataInicialEntrega: tDateTime;
    FDataFinalEntrega: tDateTime;
  published
    property DataInicialEntrega: tDateTime read FDataInicialEntrega write FDataInicialEntrega;
    property DataFinalEntrega: tDateTime read FDataFinalEntrega write FDataFinalEntrega;
  end;

type
  tSituacaoViagem = class(TRemotable)
  private
    FCancelada: boolean;
    FAgendada: boolean;
    FEncerrada: boolean;
    FProgramada: boolean;
    FEmAberto: boolean;
    FEmAndamento: boolean;
  published
    property EmAberto: boolean read FEmAberto write FEmAberto;
    property Agendada: boolean read FAgendada write FAgendada;
    property Programada: boolean read FProgramada write FProgramada;
    property EmAndamento: boolean read FEmAndamento write FEmAndamento;
    property Cancelada: boolean read FCancelada write FCancelada;
    property Encerrada: boolean read FEncerrada write FEncerrada;
  end;

type
  tListaViagens = class(TRemotable)
  private
    FCIOT: tCIOT;
    FDataSituacaoViagem: tDateTime;
    FDestinoRota: tDestinoRota;
    FMotoristaViagem: tMotoristaViagem;
    FNumeroViagem: tNumeroViagem;
    FOrigemRota: tOrigemRota;
    FPesoCarga: tPesoCarga;
    FProgramacaoViagem: tProgramacaoViagem;
    FSituacaoViagem: tSituacaoViagem;
    FTipoViagem: tTipoViagem;
    FTransportadorViagem: tTransportadorViagem;
    FValorCombustivel: tValorCombustivel;
    FValorDespesas: tValorDespesas;
    FValorFrete: tValorFrete;
    FValorPedagio: tValorPedagio;
    FValorTotalImpostos: tValorTotalImpostos;
    FVeiculosViagem: tVeiculosViagem;
  published
    property NumeroViagem: tNumeroViagem read FNumeroViagem write FNumeroViagem;
    property CIOT: tCIOT read FCIOT write FCIOT;
    property TipoViagem: tTipoViagem read FTipoViagem write FTipoViagem;
    property VeiculosViagem: tVeiculosViagem read FVeiculosViagem write FVeiculosViagem; // of tVeiculosViagem
    property TransportadorViagem: tTransportadorViagem read FTransportadorViagem write FTransportadorViagem;
    property MotoristaViagem: tMotoristaViagem read FMotoristaViagem write FMotoristaViagem; // of tMotoristaViagem
    property OrigemRota: tOrigemRota read FOrigemRota write FOrigemRota;
    property DestinoRota: tDestinoRota read FDestinoRota write FDestinoRota;
    property SituacaoViagem: tSituacaoViagem read FSituacaoViagem write FSituacaoViagem;
    property DataSituacaoViagem: tDateTime read FDataSituacaoViagem write FDataSituacaoViagem;
    property PesoCarga: tPesoCarga read FPesoCarga write FPesoCarga;
    property ValorDespesas: tValorDespesas read FValorDespesas write FValorDespesas;
    property ValorFrete: tValorFrete read FValorFrete write FValorFrete;
    property ValorCombustivel: tValorCombustivel read FValorCombustivel write FValorCombustivel;
    property ValorTotalImpostos: tValorTotalImpostos read FValorTotalImpostos write FValorTotalImpostos;
    property ValorPedagio: tValorPedagio read FValorPedagio write FValorPedagio;
    property ProgramacaoViagem: tProgramacaoViagem read FProgramacaoViagem write FProgramacaoViagem; // of tProgramacaoViagem
  end;

type
  tConsultarViagensResponse = class(TRemotable)
  private
    FListaViagens: tListaViagens;
    FRetornoMensagem: tRetornoMensagem;
  published
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property ListaViagens: tListaViagens read FListaViagens write FListaViagens;
  end;

type
  tConsultarViagensRequest = class(TRemotable)
  private
    FCPFMotorista: tCPFMotorista;
    FDestinoRota: tDestinoRota;
    FIdClienteResponsavel: tIdClienteResponsavel;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
    FNumeroViagem: tNumeroViagem;
    FOrigemRota: tOrigemRota;
    FPeriodoEmbarque: tPeriodoEmbarque;
    FPeriodoEntrega: tPeriodoEntrega;
    FPlacaVeiculo: tPlacaVeiculo;
    FRNTRC: tRNTRC;
    FSituacaoViagem: tSituacaoViagem;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property PeriodoEmbarque: tPeriodoEmbarque read FPeriodoEmbarque write FPeriodoEmbarque;
    property PeriodoEntrega: tPeriodoEntrega read FPeriodoEntrega write FPeriodoEntrega;
    property RNTRC: tRNTRC read FRNTRC write FRNTRC;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write FNumeroViagem;
    property CPFMotorista: tCPFMotorista read FCPFMotorista write FCPFMotorista;
    property PlacaVeiculo: tPlacaVeiculo read FPlacaVeiculo write FPlacaVeiculo;
    property OrigemRota: tOrigemRota read FOrigemRota write FOrigemRota;
    property DestinoRota: tDestinoRota read FDestinoRota write FDestinoRota;
    property SituacaoViagem: tSituacaoViagem read FSituacaoViagem write FSituacaoViagem;
  end;

type
  tConsultarViagens = class(TRemotable)
  private
    FConsultarViagensRequest: tConsultarViagensRequest;
    FConsultarViagensResponse: tConsultarViagensResponse;
  published
    property ConsultarViagensRequest: tConsultarViagensRequest read FConsultarViagensRequest write FConsultarViagensRequest;
    property ConsultarViagensResponse: tConsultarViagensResponse read FConsultarViagensResponse write FConsultarViagensResponse;
  end;

implementation


end.

