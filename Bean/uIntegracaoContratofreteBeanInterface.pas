unit uIntegracaoContratofreteBeanInterface;

interface

uses classes, contnrs;

type
   IBeanVeiculo = interface;
   IBeanMotorista = interface;
   IBeanContratado = interface;

   IBeanDesconto = interface ['{D72CB580-FA2C-4112-A991-EBC9532E7B5F}']
      function GetDescricao : string; procedure SetDescricao( const value : string);
      property Descricao : string read GetDescricao write SetDescricao;
      function Getvalor : extended; Procedure Setvalor( const value : extended);
      property valor : extended read Getvalor write Setvalor;
      function GetObservacao : string; Procedure SetObservacao( const value : string);
      property Observacao : string read GetObservacao write SetObservacao;
      function GetCodigo : string; Procedure SetCodigo( const value : string);
      property Codigo : string read GetCodigo write SetCodigo;
   end;

   IBeanListaDescontos = interface ['{80C3DFC9-7315-4B85-8CFA-8D1FF05E2AF6}']
      function Item : IBeanDesconto;
      function AddDesconto: IBeanDesconto;
      function first : IBeanDesconto;
      function Last : IBeanDesconto;
      function Next : IBeanDesconto;
   end;

   IBeanDocumentoEntrega = interface ['{A69F35E5-22AA-435D-8262-663AEA7DB886}']
      function GetCodigo : string; Procedure SetCodigo( const value : string);
      property Codigo : string read GetCodigo write SetCodigo;
      function GetDocumento : string; Procedure SetDocumento( const value : string);
      property Documento: string read GetDocumento write SetDocumento;
      function GetComplemento : string; Procedure SetComplemento( const value : string);
      property Complemento : string read GetComplemento write SetComplemento;
   end;

   IBeanListaDocumentosEntrega = interface ['{1A79AE98-D9D8-4308-AF5D-F53387E72182}']
      function Item : IBeanDocumentoEntrega;
      function AddDocumento: IBeanDocumentoEntrega;
      function first : IBeanDocumentoEntrega;
      function Last : IBeanDocumentoEntrega;
      function Next : IBeanDocumentoEntrega;
   end;

   IBeanNotaFiscal  = interface ['{D5D00827-7D6B-4E9F-8C7F-73516D90356F}']
      function GetNumeroNota : string; Procedure SetNumeroNota( const value : string);
      property NumeroNota : string read GetNumeroNota write SetNumeroNota;
      function GetSerieNota : string; Procedure SetSerieNota( const value : string);
      property SerieNota : string read GetSerieNota write SetSerieNota;
      function GetModelo : string; Procedure SetModelo( const value : string);
      property modelo : string read GetModelo write SetModelo;
      function GetCnpj_Remetente : string; Procedure SetCnpj_Remetente( const value : string);
      property Cnpj_Remetente : string read GetCnpj_Remetente write SetCnpj_Remetente;
      function GetRazaoSocial_Remetente : string; Procedure SetRazaoSocial_Remetente( const value : string);
      property RazaoSocial_Remetente : string read GetRazaoSocial_Remetente write SetRazaoSocial_Remetente;
      function GetCnpj_Destinatario : string; Procedure SetCnpj_Destinatario( const value : string);
      property Cnpj_Destinatario : string read GetCnpj_Destinatario write SetCnpj_Destinatario;
      function GetRazaoSocial_Destinatario : string; Procedure SetRazaoSocial_Destinatario( const value : string);
      property RazaoSocial_Destinatario : string read GetRazaoSocial_Destinatario write SetRazaoSocial_Destinatario;
   end;

   IBeanListaNotasFiscais = interface ['{684CCF22-7A9B-4BA7-A8E0-AD91882F77F4}']
      function Item : IBeanNotaFiscal;
      function AddNota: IBeanNotaFiscal;
      function first : IBeanNotaFiscal;
      function Last : IBeanNotaFiscal;
      function Next : IBeanNotaFiscal;
   end;

   IBeanEnvolvido = interface ['{F968BFC2-1821-4299-BB61-A1AB07B2C747}']
      function Getcnpj_cpf : string; Procedure Setcnpj_cpf( const value : string);
      property cnpj_cpf : string read Getcnpj_cpf write Setcnpj_cpf;
      function Getnome : string; Procedure Setnome( const value : string);
      property nome : string read Getnome write Setnome;
      function Getendereco : string; Procedure Setendereco( const value : string);
      property endereco : string read Getendereco write Setendereco;
      function Getcomplemento : string; Procedure Setcomplemento( const value : string);
      property complemento : string read Getcomplemento write Setcomplemento;
      function Getbairro : string; Procedure Setbairro( const value : string);
      property bairro : string read Getbairro write Setbairro;
      function Getcep : string; Procedure Setcep( const value : string);
      property cep : string read Getcep write Setcep;
      function Getcidade : string; Procedure Setcidade( const value : string);
      property cidade : string read Getcidade write Setcidade;
      function Getibge : string; Procedure Setibge( const value : string);
      property ibge : string read Getibge write Setibge;
      function Getuf : string; Procedure Setuf( const value : string);
      property uf : string read Getuf write Setuf;
   end;

   IBeanDadosDeposito = interface ['{0648AA24-5697-4045-BF92-7240946A2D3D}']
      function Getproper : string; Procedure Setproper( const value : string);
      property banco : string read Getproper write Setproper;
      function Getagencia : string; Procedure Setagencia( const value : string);
      property agencia : string read Getagencia write Setagencia;
      function GetdvAgendia : string; Procedure SetdvAgendia( const value : string);
      property dvAgendia : string read GetdvAgendia write SetdvAgendia;
      function Getconta : string; Procedure Setconta( const value : string);
      property conta : string read Getconta write Setconta;
      function GetdvConta : string; Procedure SetdvConta( const value : string);
      property dvConta : string read GetdvConta write SetdvConta;
   end;

   IBeanPontoRota = interface ['{B95A27AC-C560-4163-8600-07407145FCD5}']
      function Getibge_origem : string; Procedure Setibge_origem( const value : string);
      property ibge_origem : string read Getibge_origem write Setibge_origem;
      function Getuf_origem : string; Procedure Setuf_origem( const value : string);
      property uf_origem : string read Getuf_origem write Setuf_origem;
      function Getibge_destino : string; Procedure Setibge_destino( const value : string);
      property ibge_destino : string read Getibge_destino write Setibge_destino;
      function Getuf_destino : string; Procedure Setuf_destino( const value : string);
      property uf_destino : string read Getuf_destino write Setuf_destino;
      function Getdescricao : string; Procedure Setdescricao( const value : string);
      property descricao : string read Getdescricao write Setdescricao;
   end;

   IpontosRota = interface ['{EBA8C9FD-648D-43D5-AA4A-AD3BCC265712}']
      function Item : IBeanPontoRota;
      function AddPonto : IBeanPontoRota;
      function first : IBeanPontoRota;
      function Last : IBeanPontoRota;
      function Next : IBeanPontoRota;
   end;

   IBeanRota = interface ['{7BC4E8DB-0348-4109-8BB2-E3485F76359B}']
      function GetcodigoRota : string; Procedure SetcodigoRota( const value : string);
      property codigoRota : string read GetcodigoRota write SetcodigoRota;
      function GetpontosRota : IPontosRota; Procedure SetpontosRota( const value : IPontosRota);
      property pontosRota : IPontosRota read GetpontosRota write SetpontosRota;
   end;


   IBeanPedagio = interface ['{D629951B-F920-4447-8A9B-C2CF97166AB2}']
      function GetvalorPedagio : extended; Procedure SetvalorPedagio( const value : extended);
      property valorPedagio : extended read GetvalorPedagio write SetvalorPedagio;
      function GetformaPagamentoPedagio : string; Procedure SetformaPagamentoPedagio( const value : string);
      property formaPagamentoPedagio : string read GetformaPagamentoPedagio write SetformaPagamentoPedagio;
      function GetadministradorPedagio : string; Procedure SetadministradorPedagio( const value : string);
      property administradorPedagio : string read GetadministradorPedagio write SetadministradorPedagio;
      function GetresposavelPagamentoPedagio : string; Procedure SetresposavelPagamentoPedagio( const value : string);
      property resposavelPagamentoPedagio : string read GetresposavelPagamentoPedagio write SetresposavelPagamentoPedagio;
      function GetNumeroCartaoPedagio : string; Procedure SetNumeroCartaoPedagio( const value : string);
      property NumeroCartaoPedagio : string read GetNumeroCartaoPedagio write SetNumeroCartaoPedagio;
   end;


   IBeanParcela = interface ['{28F19796-6B88-421D-9CEC-597B6F3DE0C1}']
      function GetDias : integer; Procedure SetDias( const value : integer);
      property dias : Integer read GetDias write SetDias;
      function GetValor : extended; Procedure SetValor( const value : extended);
      property valor : extended read GetValor write SetValor;
   end;

   IParcelasAdiantamento = interface ['{2D4AB164-A17C-4C6C-966E-8C385205197D}']
      function Item : IBeanParcela;
      function AddParcela : IBeanParcela;
      function first : IBeanParcela;
      function Last : IBeanParcela;
      function Next : IBeanParcela;
   end;


   IDadosImpressaoDOT = interface ['{C4BAD7E8-1096-413C-87A7-D44B17ED7586}']
      function GetNomeFilial : string; Procedure SetNomeFilial( const value : string);
      property NomeFilial : string read GetNomeFilial write SetNomeFilial;
      function GetEnderecoFilial : string; Procedure SetEnderecoFilial( const value : string);
      property EnderecoFilial : string read GetEnderecoFilial write SetEnderecoFilial;
      function GetCidadeFilial : string; Procedure SetCidadeFilial( const value : string);
      property CidadeFilial : string read GetCidadeFilial write SetCidadeFilial;
      function GetBairro : string; Procedure SetBairro( const value : string);
      property Bairro : string read GetBairro write SetBairro;
      function GetCEP : string; Procedure SetCEP( const value : string);
      property CEP : string read GetCEP write SetCEP;
      function GetInscricaoEstadual : string; Procedure SetInscricaoEstadual( const value : string);
      property InscricaoEstadual : string read GetInscricaoEstadual write SetInscricaoEstadual;
      function GetTelefone : string; Procedure SetTelefone( const value : string);
      property Telefone : string read GetTelefone write SetTelefone;
      function GetFAX : string; Procedure SetFAX( const value : string);
      property FAX : string read GetFAX write SetFAX;
      function GetDestinoDOT : string; Procedure SetDestinoDOT( const value : string);
      property DestinoDOT : string read GetDestinoDOT write SetDestinoDOT;
      function GetLocalDestino : string; Procedure SetLocalDestino( const value : string);
      property LocalDestino : string read GetLocalDestino write SetLocalDestino;
   end;


   IBeanContrato = interface ['{427B549E-057B-49C5-8097-441DD64EAC17}']
      function GetDadosImpressaoDOT : IDadosImpressaoDOT; Procedure SetDadosImpressaoDOT( const value : IDadosImpressaoDOT);
      property DadosImpressaoDOT : IDadosImpressaoDOT read GetDadosImpressaoDOT write SetDadosImpressaoDOT;
      function Getcnpj_matriz : string; Procedure Setcnpj_matriz( const value : string);
      property cnpj_matriz : string read Getcnpj_matriz write Setcnpj_matriz;
      function Getuf_matriz : string; Procedure Setuf_matriz( const value : string);
      property uf_matriz : string read Getuf_matriz write Setuf_matriz;
      function GetcidadeMatriz : string; Procedure SetcidadeMatriz( const value : string);
      property cidadeMatriz : string read GetcidadeMatriz write SetcidadeMatriz;
      function Getcnpj_filial : string; Procedure Setcnpj_filial( const value : string);
      property cnpj_filial : string read Getcnpj_filial write Setcnpj_filial;
      function Getcodigo_filial : string; Procedure Setcodigo_filial( const value : string);
      property codigo_filial : string read Getcodigo_filial write Setcodigo_filial;
      function Getserie_documento : string; Procedure Setserie_documento( const value : string);
      property serie_documento : string read Getserie_documento write Setserie_documento;
      function Getdocumento : string; Procedure Setdocumento( const value : string);
      property documento : string read Getdocumento write Setdocumento;
      function Getdatasaida : TDateTime; Procedure Setdatasaida( const value : TDateTime);
      property datasaida : TDateTime read Getdatasaida write Setdatasaida;
      function Getquantidade : extended; Procedure Setquantidade( const value : extended);
      property quantidade : extended read Getquantidade write Setquantidade;
      function GetvalorNotaFiscal : extended; Procedure SetvalorNotaFiscal( const value : extended);
      property valorNotaFiscal : extended read GetvalorNotaFiscal write SetvalorNotaFiscal;
      function GetvalorSaldo : extended; Procedure SetvalorSaldo( const value : extended);
      property valorSaldo : extended read GetvalorSaldo write SetvalorSaldo;
      function GetvalorAdiantamento : extended; Procedure SetvalorAdiantamento( const value : extended);
      property valorAdiantamento : extended read GetvalorAdiantamento write SetvalorAdiantamento;
      function GetvalorTotalMotorista : extended; Procedure SetvalorTotalMotorista( const value : extended);
      property valorTotalMotorista : extended read GetvalorTotalMotorista write SetvalorTotalMotorista;

      function GetvalorFreteMotorista : extended; Procedure SetvalorFreteMotorista( const value : extended);
      property valorFreteMotorista : extended read GetvalorFreteMotorista write SetvalorFreteMotorista;

      function GetvalorDocumento : extended; Procedure SetvalorDocumento( const value : extended);
      property valorDocumento : extended read GetvalorDocumento write SetvalorDocumento;
      function GetpesoSaida : extended; Procedure SetpesoSaida( const value : extended);
      property pesoSaida : extended read GetpesoSaida write SetpesoSaida;
      function GetdescricaoCarga : string; Procedure SetdescricaoCarga( const value : string);
      property descricaoCarga : string read GetdescricaoCarga write SetdescricaoCarga;
      function Getcontratado : IBeanContratado; Procedure Setcontratado( const value : IBeanContratado);
      property contratado : IBeanContratado read Getcontratado write Setcontratado;

      function GetvalorINSS : extended; Procedure SetvalorINSS( const value : extended);
      property valorINSS : extended read GetvalorINSS write SetvalorINSS;
      function GetBaseINSS : extended; Procedure SetBaseINSS( const value : extended);
      property BaseINSS : extended read GetBaseINSS write SetBaseINSS;
      function GetaliquotaINSS : extended; Procedure SetaliquotaINSS( const value : extended);
      property AliquotaINSS : extended read GetaliquotaINSS write SetaliquotaINSS;

      function GetBaseSestSenat : extended; Procedure SetBaseSestSenat( const value : extended);
      property BaseSestSenat : extended read GetBaseSestSenat write SetBaseSestSenat;
      function GetvalorSest : extended; Procedure SetvalorSest( const value : extended);
      property valorSest : extended read GetvalorSest write SetvalorSest;
      function GetaliquotaSest : extended; Procedure SetaliquotaSest( const value : extended);
      property AliquotaSest : extended read GetaliquotaSest write SetaliquotaSest;
      function GetvalorSenat : extended; Procedure SetvalorSenat( const value : extended);
      property valorSenat : extended read GetvalorSenat write SetvalorSenat;
      function GetAliquotaSenat : extended; Procedure SetAliquotaSenat( const value : extended);
      property AliquotaSenat : extended read GetAliquotaSenat write SetAliquotaSenat;

      function GetvalorIRRF : extended; Procedure SetvalorIRRF( const value : extended);
      property valorIRRF : extended read GetvalorIRRF write SetvalorIRRF;
      function GetBaseIRRF : extended; Procedure SetBaseIRRF( const value : extended);
      property BaseIRRF : extended read GetBaseIRRF write SetBaseIRRF;
      function GetAliquotaIRRF : extended; Procedure SetAliquotaIRRF( const value : extended);
      property AliquotaIRRF : extended read GetAliquotaIRRF write SetAliquotaIRRF;

      function Getcliente_Origem : IBeanEnvolvido; Procedure Setcliente_Origem( const value : IBeanEnvolvido);
      property cliente_Origem : IBeanEnvolvido read Getcliente_Origem write Setcliente_Origem;
      function Getcliente_Destino : IBeanEnvolvido; Procedure Setcliente_Destino( const value : IBeanEnvolvido);
      property cliente_Destino : IBeanEnvolvido read Getcliente_Destino write Setcliente_Destino;
      function Getcliente_Consignatario : IBeanEnvolvido; Procedure Setcliente_Consignatario( const value : IBeanEnvolvido);
      property cliente_Consignatario : IBeanEnvolvido read Getcliente_Consignatario write Setcliente_Consignatario;
      function Getveiculo : IBeanveiculo; Procedure Setveiculo( const value : IBeanveiculo);
      property veiculo : IBeanveiculo read Getveiculo write Setveiculo;
      function GetDadosDeposito : IBeanDadosDeposito; Procedure SetDadosDeposito( const value : IBeanDadosDeposito);
      property DadosDeposito : IBeanDadosDeposito read GetDadosDeposito write SetDadosDeposito;
      function GetnumeroCartaoFrete : string; Procedure SetnumeroCartaoFrete( const value : string);
      property numeroCartaoFrete : string read GetnumeroCartaoFrete write SetnumeroCartaoFrete;
      function GetnumeroContratoFrete : string; Procedure SetnumeroContratoFrete( const value : string);
      property numeroContratoFrete : string read GetnumeroContratoFrete write SetnumeroContratoFrete;
      function Getrota : IBeanRota; Procedure Setrota( const value : IBeanRota);
      property rota : IBeanRota read Getrota write Setrota;
      function Getmotorista : IBeanMotorista; Procedure Setmotorista( const value : IBeanMotorista);
      property motorista : IBeanMotorista read Getmotorista write Setmotorista;
      function GettipoPagamentoContratoFrete : string; Procedure SettipoPagamentoContratoFrete( const value : string);
      property tipoPagamentoContratoFrete : string read GettipoPagamentoContratoFrete write SettipoPagamentoContratoFrete;
      function Getpedagio : IBeanPedagio; Procedure Setpedagio( const value : IBeanPedagio);
      property pedagio : IBeanPedagio read Getpedagio write Setpedagio;
      function GetformaPagamentoDocumento : string; Procedure SetformaPagamentoDocumento( const value : string);
      property formaPagamentoDocumento : string read GetformaPagamentoDocumento write SetformaPagamentoDocumento;
      function Getobservacoes : string; Procedure Setobservacoes( const value : string);
      property observacoes : string read Getobservacoes write Setobservacoes;
      function GetNcm : string; Procedure SetNcm( const value : string);
      property NCM : string read GetNcm write SetNcm;
      function GetUusario : string; Procedure SetUusario( const value : string);
      property Usuario : string read GetUusario write SetUusario;
      function GetParametrosOperadora : TStringList; Procedure SetParametrosOperadora( const value : TStringList);
      property ParametrosOperadora : TStringList read GetParametrosOperadora write SetParametrosOperadora;
      function GetParcelasAdiantamento : IParcelasAdiantamento; Procedure SetParcelasAdiantamento( const value : IParcelasAdiantamento);
      property ParcelasAdiantamento : IParcelasAdiantamento read GetParcelasAdiantamento write SetParcelasAdiantamento;
      function GetTelefone_empresa : string; Procedure SetTelefone_empresa( const value : string);
      property Telefone_empresa : string read GetTelefone_empresa write SetTelefone_empresa;
      function GetNotasFiscais : IBeanListaNotasFiscais; Procedure SetNotasFiscais( const value : IBeanListaNotasFiscais);
      property NotasFiscais : IBeanListaNotasFiscais read GetNotasFiscais write SetNotasFiscais;
      function GetTipoTolerancia : string; Procedure SetTipoTolerancia( const value : string);
      property TipoTolerancia : string read GetTipoTolerancia write SetTipoTolerancia;
      function GetPercentualTolerancia : Extended; Procedure SetPercentualTolerancia( const value : Extended);
      property PercentualTolerancia : Extended read GetPercentualTolerancia write SetPercentualTolerancia;
      function GetDocumentosEntrega : IBeanListaDocumentosEntrega; Procedure SetDocumentosEntrega( const value : IBeanListaDocumentosEntrega);
      property DocumentosEntrega : IBeanListaDocumentosEntrega read GetDocumentosEntrega write SetDocumentosEntrega;
      function GetDescontos : IBeanListaDescontos; Procedure SetDescontos( const value : IBeanListaDescontos);
      property Descontos : IBeanListaDescontos read GetDescontos write SetDescontos;

      function GetTipoOperacaoTransporte : string; Procedure SetTipoOperacaoTransporte( const value : string);
      property TipoOperacaoTransporte : string read GetTipoOperacaoTransporte write SetTipoOperacaoTransporte;
      function GetProprietarioCarga : string; Procedure SetProprietarioCarga( const value : string);
      property ProprietarioCarga : string read GetProprietarioCarga write SetProprietarioCarga;

      function GetNumeroProtocoloProcessamento : string; Procedure SetNumeroProtocoloProcessamento( const value : string);
      property NumeroProtocoloProcessamento : string read GetNumeroProtocoloProcessamento write SetNumeroProtocoloProcessamento;
      function GetDataProtocoloProcessamento : TdateTime; Procedure SetDataProtocoloProcessamento( const value : TdateTime);
      property DataProtocoloProcessamento : TdateTime read GetDataProtocoloProcessamento write SetDataProtocoloProcessamento;

      function GetNumeroViagem : string; Procedure SetNumeroViagem( const value : string);
      property NumeroViagem : string read GetNumeroViagem write SetNumeroViagem;
      function GetNumeroCIOT : string; Procedure SetNumeroCIOT( const value : string);
      property NumeroCIOT   : string read GetNumeroCIOT write SetNumeroCIOT;
   end;

   IBeanContratado = interface ['{FA96DE2B-3E1B-479B-84C5-724FFD31E86A}']
      function Getcontratado_cnpj_cpf : string; Procedure Setcontratado_cnpj_cpf( const value : string);
      property contratado_cnpj_cpf : string read Getcontratado_cnpj_cpf write Setcontratado_cnpj_cpf;
      function Getpessoa_tipo : string; Procedure Setpessoa_tipo( const value : string);
      property pessoa_tipo : string read Getpessoa_tipo write Setpessoa_tipo;
      function Getnome_contratado : string; Procedure Setnome_contratado( const value : string);
      property nome_contratado : string read Getnome_contratado write Setnome_contratado;
      function Getnome_fantasia : string; Procedure Setnome_fantasia( const value : string);
      property nome_fantasia : string read Getnome_fantasia write Setnome_fantasia;
      function Getcep  : string; Procedure Setcep ( const value : string);
      property cep  : string read Getcep  write Setcep ;
      function Gettelefone1 : string; Procedure Settelefone1( const value : string);
      property telefone1 : string read Gettelefone1 write Settelefone1;
      function Gettelefone2 : string; Procedure Settelefone2( const value : string);
      property telefone2 : string read Gettelefone2 write Settelefone2;
      function Getcelular : string; Procedure Setcelular( const value : string);
      property celular : string read Getcelular write Setcelular;
      function Getemail : string; Procedure Setemail( const value : string);
      property email : string read Getemail write Setemail;
      function Getcontato : string; Procedure Setcontato( const value : string);
      property contato : string read Getcontato write Setcontato;
      function Getdependentes : string; Procedure Setdependentes( const value : string);
      property dependentes : string read Getdependentes write Setdependentes;
      function Getinss_codigo : string; Procedure Setinss_codigo( const value : string);
      property inss_codigo : string read Getinss_codigo write Setinss_codigo;
      function Getrntrc_codigo : string; Procedure Setrntrc_codigo( const value : string);
      property rntrc_codigo : string read Getrntrc_codigo write Setrntrc_codigo;
      function Getendereco  : string; Procedure Setendereco ( const value : string);
      property endereco  : string read Getendereco  write Setendereco ;
      function Getendereco_complemento : string; Procedure Setendereco_complemento( const value : string);
      property endereco_complemento : string read Getendereco_complemento write Setendereco_complemento;
      function Getbairro : string; Procedure Setbairro( const value : string);
      property bairro : string read Getbairro write Setbairro;
      function Getcidade : string; Procedure Setcidade( const value : string);
      property cidade : string read Getcidade write Setcidade;
      function Getuf : string; Procedure Setuf( const value : string);
      property uf : string read Getuf write Setuf;
      function Getcidade_ibge : string; Procedure Setcidade_ibge( const value : string);
      property cidade_ibge : string read Getcidade_ibge write Setcidade_ibge;
      function GetIdentidade : string; Procedure SetIdentidade( const value : string);
      property Identidade : string read GetIdentidade write SetIdentidade;
      function GetOrgaoEmissorIdentidade : string; Procedure SetOrgaoEmissorIdentidade( const value : string);
      property OrgaoEmissorIdentidade : string read GetOrgaoEmissorIdentidade write SetOrgaoEmissorIdentidade;
   end;


   IBeanMotorista = interface ['{567FC887-1547-4CE9-9A28-F9AE0D02247E}']
      function Getcpf : string; Procedure Setcpf( const value : string);
      property cpf : string read Getcpf write Setcpf;
      function Getnome : string; Procedure Setnome( const value : string);
      property nome : string read Getnome write Setnome;
      function Getcep : string; Procedure Setcep( const value : string);
      property cep : string read Getcep write Setcep;
      function Gettelefone : string; Procedure Settelefone( const value : string);
      property telefone : string read Gettelefone write Settelefone;
      function Getcelular : string; Procedure Setcelular( const value : string);
      property celular : string read Getcelular write Setcelular;
      function Getemail : string; Procedure Setemail( const value : string);
      property email : string read Getemail write Setemail;
      function Getdata_nascimento : TDateTime; Procedure Setdata_nascimento( const value : TDateTime);
      property data_nascimento : TDateTime read Getdata_nascimento write Setdata_nascimento;
      function Getrg : string; Procedure Setrg( const value : string);
      property rg : string read Getrg write Setrg;
      function GetOrgao_Expedido : string; Procedure SetOrgao_Expedido( const value : string);
      property Orgao_Expedido : string read GetOrgao_Expedido write SetOrgao_Expedido;
      function Getcarteira_habilitacao : string; Procedure Setcarteira_habilitacao( const value : string);
      property carteira_habilitacao : string read Getcarteira_habilitacao write Setcarteira_habilitacao;
      function Getcarteira_habilitacao_dt_val : string; Procedure Setcarteira_habilitacao_dt_val( const value : string);
      property carteira_habilitacao_dt_val : string read Getcarteira_habilitacao_dt_val write Setcarteira_habilitacao_dt_val;
      function Getcarteira_habilitacao_categoria : string; Procedure Setcarteira_habilitacao_categoria( const value : string);
      property carteira_habilitacao_categoria : string read Getcarteira_habilitacao_categoria write Setcarteira_habilitacao_categoria;
      function Getendereco : string; Procedure Setendereco( const value : string);
      property endereco : string read Getendereco write Setendereco;
      function Getendereco_complemento : string; Procedure Setendereco_complemento( const value : string);
      property endereco_complemento : string read Getendereco_complemento write Setendereco_complemento;
      function Getbairro : string; Procedure Setbairro( const value : string);
      property bairro : string read Getbairro write Setbairro;
      function Getcidade : string; Procedure Setcidade( const value : string);
      property cidade : string read Getcidade write Setcidade;
      function Getuf : string; Procedure Setuf( const value : string);
      property uf : string read Getuf write Setuf;
   end;


   IPortadorCartao = Interface ['{0F20C604-3A56-417B-B445-3AF8559BD68A}'] {#T5193}
      function GetNome:string; procedure Setnome(const value : string );
      property nome : string read GetNome write Setnome;
      function GetCNPJ_CPF:string; procedure SetCNPJ_CPF(const value : string );
      property CNPJ_CPF : string read GetCNPJ_CPF write SetCNPJ_CPF;
      function Getrg:string; procedure Setrg(const value : string );
      property rg : string read Getrg write Setrg;
      function Getrg_uf:string; procedure Setrg_uf(const value : string );
      property rg_uf : string read Getrg_uf write Setrg_uf;
      function Getrg_emissor:string; procedure Setrg_emissor(const value : string );
      property rg_emissor : string read Getrg_emissor write Setrg_emissor;
      function Getrg_data_emissao:TDatetime; procedure Setrg_data_emissao(const value : TDatetime );
      property rg_data_emissao : TDatetime read Getrg_data_emissao write Setrg_data_emissao;
      function Getrntrc:string; procedure Setrntrc(const value : string );
      property rntrc : string read Getrntrc write Setrntrc;
      function Getdata_nascimento:TDatetime; procedure Setdata_nascimento(const value : TDatetime );
      property data_nascimento : TDatetime read Getdata_nascimento write Setdata_nascimento;
      function Getnacionalidade:string; procedure Setnacionalidade(const value : string );
      property nacionalidade : string read Getnacionalidade write Setnacionalidade;
      function Getnaturalidade_ibge:string; procedure Setnaturalidade_ibge(const value : string );
      property naturalidade_ibge  :string read Getnaturalidade_ibge write Setnaturalidade_ibge;
      function Getsexo:string; procedure Setsexo(const value : string );
      property sexo  : string read Getsexo write Setsexo; {M / F}
      function Getendereco_logradouro:string; procedure Setendereco_logradouro(const value : string );
      property endereco_logradouro : string read Getendereco_logradouro write Setendereco_logradouro;
      function Getendereco_complemento:string; procedure Setendereco_complemento(const value : string );
      property endereco_complemento : string read Getendereco_complemento write Setendereco_complemento;
      function Getendereco_bairro:string; procedure Setendereco_bairro(const value : string );
      property endereco_bairro : string read Getendereco_bairro write Setendereco_bairro;
      function Getendereco_cidade:string; procedure Setendereco_cidade(const value : string );
      property endereco_cidade : string read Getendereco_cidade write Setendereco_cidade;
      function Getendereco_uf :string; procedure Setendereco_uf(const value : string );
      property endereco_uf : string read Getendereco_uf write Setendereco_uf;
      function Getendereco_pais :string; procedure Setendereco_pais(const value : string );
      property endereco_pais : string read Getendereco_pais write Setendereco_pais;
      function Getendereco_cep:string; procedure Setendereco_cep(const value : string );
      property endereco_cep : string read Getendereco_cep write Setendereco_cep;
      function Getendereco_propriedade_tipo:string; procedure Setendereco_propriedade_tipo(const value : string );
      property endereco_propriedade_tipo : String read Getendereco_propriedade_tipo write Setendereco_propriedade_tipo; { 1 PRÓPRIO 2 PRÓPRIO FINANCIADO 3 ALUGADO 4 FAMILIAR 5 CEDIDO}
      function Getendereco_reside_desde :TDatetime; procedure Setendereco_reside_desde(const value : TDatetime );
      property endereco_reside_desde : TDatetime read Getendereco_reside_desde write Setendereco_reside_desde;
      function Gettelefone :string; procedure Settelefone(const value : string );
      property telefone : string read Gettelefone write Settelefone;
      function Getcelular :string; procedure Setcelular(const value : string );
      property celular : string read Getcelular write Setcelular;
      function Getcelular_operadora :string; procedure Setcelular_operadora(const value : string );
      property celular_operadora : string read Getcelular_operadora write Setcelular_operadora;
      function Getemail :string; procedure Setemail(const value : string );
      property email  : string read Getemail write Setemail;
      function Getempresa_nome :string; procedure Setempresa_nome(const value : string );
      property empresa_nome : string read Getempresa_nome write Setempresa_nome;
      function Getempresa_cnpj :string; procedure Setempresa_cnpj(const value : string );
      property empresa_cnpj : string read Getempresa_cnpj write Setempresa_cnpj;
      function Getempresa_rntrc :string; procedure Setempresa_rntrc(const value : string );
      property empresa_rntrc : string read Getempresa_rntrc write Setempresa_rntrc;
   end;

   ICarretas = interface ['{811BCD8B-1954-4D4A-A534-118E1ADFF23F}']
      function Item : IBeanVeiculo;
      function AddCarreta : IBeanVeiculo;
      function first : IBeanVeiculo;
      function Last : IBeanVeiculo;
      function Next : IBeanVeiculo;
   end;

   IBeanVeiculoRodocred = interface ['{D15CBCA9-C6BC-4E37-9EE2-5AD77B44194B}']
      function GetModeloVeiculoRodocred : string; Procedure SetModeloVeiculoRodocred( const value : string);
      property ModeloVeiculoRodocred : string read GetModeloVeiculoRodocred write SetModeloVeiculoRodocred;
      function GetTipoVeiculoRodocred : string; Procedure SetTipoVeiculoRodocred( const value : string);
      property TipoVeiculoRodocred : string read GetTipoVeiculoRodocred write SetTipoVeiculoRodocred;
      function GetTipoRodagemRodocred : string; Procedure SetTipoRodagemRodocred( const value : string);
      property TipoRodagemRodocred : string read GetTipoRodagemRodocred write SetTipoRodagemRodocred;
      function GetTipoCombustivelRodocred : string; Procedure SetTipoCombustivelRodocred( const value : string);
      property TipoCombustivelRodocred : string read GetTipoCombustivelRodocred write SetTipoCombustivelRodocred;
   end;

   IBeanVeiculoPamcary = interface ['{1075547A-D35E-4167-A9AB-17656D78EE68}']
      function GetCaterogiraVeiculoPamcad : string; Procedure SetCaterogiraVeiculoPamcad( const value : string);
      property CaterogiraVeiculoPamcad : string read GetCaterogiraVeiculoPamcad write SetCaterogiraVeiculoPamcad;
   end;

   IBeanVeiculoNDD = interface ['{472D15EB-4824-4B2D-9B70-E54C94F6DC12}']
      function GetCaterogiraPedagio : string; Procedure SetCaterogiraPedagio( const value : string);
      property CategoriaPedagio : string read GetCaterogiraPedagio write SetCaterogiraPedagio;
   end;

   IBeanVeiculo = interface ['{065B5905-8E71-4294-B634-019427BE385E}']
      function Getcontratado_cnpj_cpf : string; Procedure Setcontratado_cnpj_cpf( const value : string);
      property contratado_cnpj_cpf : string read Getcontratado_cnpj_cpf write Setcontratado_cnpj_cpf;
      function Getplaca : string; Procedure Setplaca( const value : string);
      property placa : string read Getplaca write Setplaca;
      function Getnumero_eixos : string; Procedure Setnumero_eixos( const value : string);
      property numero_eixos : string read Getnumero_eixos write Setnumero_eixos;
      function Getrenavam : string; Procedure Setrenavam( const value : string);
      property renavam : string read Getrenavam write Setrenavam;
      function Getrntrc_codigo : string; Procedure Setrntrc_codigo( const value : string);
      property rntrc_codigo : string read Getrntrc_codigo write Setrntrc_codigo;
      function Getplaca_uf : string; Procedure Setplaca_uf( const value : string);
      property placa_uf : string  read Getplaca_uf write Setplaca_uf;
      function Getrntrc_tipo : string; Procedure Setrntrc_tipo( const value : string);
      property rntrc_tipo : string read Getrntrc_tipo write Setrntrc_tipo;
      function Getcategoriaveiculo : integer; Procedure Setcategoriaveiculo( const value : integer);
      property categoriaveiculo : integer read Getcategoriaveiculo write Setcategoriaveiculo;
      function Getcarretas : ICarretas; Procedure Setcarretas( const value : ICarretas);
      property carretas : ICarretas read Getcarretas write Setcarretas;
      function GetdadosRodocred : IBeanVeiculoRodocred; Procedure SetdadosRodocred( const value : IBeanVeiculoRodocred);
      property dadosRodocred : IBeanVeiculoRodocred read GetdadosRodocred write SetdadosRodocred;
      function GetdadosPamcary : IBeanVeiculoPamcary; Procedure SetdadosPamcary( const value : IBeanVeiculoPamcary);
      property dadosPamcary : IBeanVeiculoPamcary read GetdadosPamcary write SetdadosPamcary;
      function GetdadosNDD : IBeanVeiculoNDD; Procedure SetdadosNDD( const value : IBeanVeiculoNDD);
      property dadosNDD : IBeanVeiculoNDD read GetdadosNDD write SetdadosNDD;

   end;


   IBeanOperadoraNDD = interface ['{019DECCA-C455-4F0C-ABDC-034609C59D25}']
      function GetdiretorioEntrada : string; Procedure SetdiretorioEntrada( const value : string);
      property diretorioEntrada : string read GetdiretorioEntrada write SetdiretorioEntrada;
      function GetdiretorioSaida : string; Procedure SetdiretorioSaida( const value : string);
      property diretorioSaida : string read GetdiretorioSaida write SetdiretorioSaida;
   end;

   IBeanOperadoraPamcard = interface ['{E2F9B8FE-0FA1-4F41-9FCC-889129E4AFAC}']
      function GetdiretorioEntrada : string; Procedure SetdiretorioEntrada( const value : string);
      property diretorioEntrada : string read GetdiretorioEntrada write SetdiretorioEntrada;
      function GetdiretorioSaida : string; Procedure SetdiretorioSaida( const value : string);
      property diretorioSaida : string read GetdiretorioSaida write SetdiretorioSaida;
   end;


   IBeanOperadoraRodocred = interface ['{38FBF647-B17D-4411-94DA-ED73A660FDCD}']
      function GetWebServer : string; Procedure SetWebServer( const value : string);
      property WebServer : string read GetWebServer write SetWebServer;
      function Getusuario : string; Procedure Setusuario( const value : string);
      property usuario : string read Getusuario write Setusuario;
      function Getsenha : string; Procedure Setsenha( const value : string);
      property senha : string read Getsenha write Setsenha;
      function Getcliente : string; Procedure Setcliente( const value : string);
      property cliente : string read Getcliente write Setcliente;
   end;

   IBeanOperadoraRepom = interface ['{C6FF2A16-B7A9-4468-97BB-DA4DC7D38EB4}']
      function GetWebServer : string; Procedure SetWebServer( const value : string);
      property WebServer : string read GetWebServer write SetWebServer;
      function Getusuario : string; Procedure Setusuario( const value : string);
      property usuario : string read Getusuario write Setusuario;
      function Getsenha : string; Procedure Setsenha( const value : string);
      property senha : string read Getsenha write Setsenha;
   end;


   IBeanOperadoraTicket = interface ['{6CE4AA83-C5F7-48D4-9588-54F154E39C47}']
      function GetWebServer : string; Procedure SetWebServer( const value : string);
      property WebServer : string read GetWebServer write SetWebServer;
      function Getusuario : string; Procedure Setusuario( const value : string);
      property usuario : string read Getusuario write Setusuario;
      function Getsenha : string; Procedure Setsenha( const value : string);
      property senha : string read Getsenha write Setsenha;
      function GetcodigoCliente : string; Procedure SetcodigoCliente( const value : string);
      property codigoCliente : string read GetcodigoCliente write SetcodigoCliente;
      function GetcodigoBase : string; Procedure SetcodigoBase( const value : string);
      property codigoBase : string read GetcodigoBase write SetcodigoBase;
   end;

implementation


end.
