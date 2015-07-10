unit upam_InsertFreightContrac;

interface


(* type
 tDocumentoContratante = class
  published
     property numero : string read FNumero write FNumero;
  end

  tContratante = class
  published
    property documento : tDocumentoContratante read FDocumento write FDocumento;
  end;

  tDocumentoUnidade = class
  published
     property tipo : integer read Ftipo write Ftipo;
     property numero : string read FNumero write FNumero;
  end

  tUnidade = class
  published
     property documento : tDocumentoUnidade read Fdocumento write fdocumento;
  end;


  tid = class
  published
     property cliente : integer read fcliente write fcliente;
  end;


  tContrato = class
  published
     property numero : string read Fnumero write fnumero;
  end;

  tdocumentoFavorecidoType = class
  published
    property tipo : integer read ftipo write ftipo;
    property numero : string read fnumero write fnumero;
  end;
  tdocumentoFavorecido = array of tdocumentoFavorecidotype;

  tmeio = class
  published
    property pagamento : integer read fPagamento write fPagamento;
  end;

  fConta = class
  published
     property banco : integer read fbanco write fbanco;
     property numero : string read fnumero write fnumero;
     property tipo : integer read ftipo write ftipo;
  end;

  tCartao = class
  published
     property numero : integer read fnumero write fnumero;
  end;

  tfavorecidotype = class
  published
     property tipo : integer read ftipo write ftipo;
     property documento : tdocumentoFavorecido read fdocumento write Fdocumento;
     property meio : tmeio read fmeio write fmeio;
     property conta : tconta read fconta write fconta;
     property cartao : tcartao read fcartao write fcartao;
  end;
  tfavorecido = array of tfavorecidotype;

  tplacaN = array of string;
  trntrcN = array of string;

  tveiculo = class
  published
     property placa : tplaca read fplaca write fplaca;
     property placaN : tplacaN read fplacaN write fplacaN;
     property fntrcN : trntrcN read frntrcN write frntrcN;
     property categoria : string read fcategoria write fcategoria;
  end;

  tData = class
  published
     property partida : Tdatetime read fpartida write fpartida;
     property termino : Tdatetime read ftermino write ftermino;
  end;

  trota = class
  published
    property id : integer read fid write fid;
    property nome : string read fnome write fnome;
  end;

  tcidade = class
  published
    property ibge integer read fibge write fibge;
  end;
  tcidades = array of tcidade;

  tqtde = class
  published
     property qtde : integer read fqtde write fqtde;
  end;

  tstatuspedagio = class
  published
     property id : integer read fid write fid;
  end;

  tobterpedagio = class
  published
     property praca : char read fpraca write fpraca;
  end;

  tutilizapedagio = class
  published
     property saldo : char read fsaldo write fsaldo;
  end;

  tpedagio = class
  published
     property valor : extended read fvalor write fvalor;
     property status : tstatuspedagio read fstatus write fstatus;
     property roteirizar : char read froteirizar write froteirizar;
     property obter : tobterpedagio read fobter write fobter;
     property utiliza : tutilizapedagio read futiliza write futiliza;
  end;

  tcarga = class
  published
     property tipo : integer read ftipo write ftipo;
     property natureza : string read fnatureza write fnatureza;
     property peso : extended read fpeso write fpeso;
  end;

  tdocumentoViagem = class
  published
      property qtde integer read fqtde write fqtde;
      property complementar : tqtde rad fcomplementar write fcomplementar;
      property complementarN : tdocumentocomplementarN read fcomplementarN write fcomplementarN;
  end;

  tnome = class
  published
     property nome : string read fnome write fnome;
  end;

  tcidade = class
  published
     property nome : string read fnome write fnome;
     property ibge : string read fibge write fibge;
  end;

  tpessoafisicantype = class
  published
      property tipo : integer read ftipo write ftipo;
      property codigo : integer read fcodigo write fcodigo;
      property documento : string read fdocumento write fdocumento;
      property nome : string read fnome write fnome;
      property logradouro  : string read flogradouro write flogradouro;
      property numero : integer read fnumero write fnumero;
      property complemento : string read fcomplemento write fcomplemento;
      property bairro : string read fbairro write fbairro;
      property pais : tnome read fpais write fpais
      property estado : tnome read festado write festado;
      property cidade : tcidade  read fcidade write fcidade;
      property cep : itneger read fcep write fcep;
  end;
  tpessoafisican = array of tpessoafisicantype;

  tdocumentoNViagemtype = class
  published
      property tipo numérico 2 ObrigatórioVer Tabela
      property numero alfanumérico 30 Obrigatório
      property serie Alfa 5 Obrigatório seinformadodocumento.numero
      property quantidade decimal 7,2 Obrigatório seinformadodocumento.numero
      property especie Alfa 15 Obrigatório seinformadodocumento.numero
      property cubagem decimal 8,3
      property mercadoria.valor decimal 17,
      property pessoafiscal.qtde numérico 2 Obrigatorio
      property pessoafiscalN : ttpessoafisican read fpessoafisicaN write fpessoafisicaN;
  end;
  tdocumentoNViagem = array of tdocumentoNViagemtype;

  tParcelaNViagemtype = class
  published
      property efetivacao.tipo numérico 2 Ver Tabela
      property valor decimal 9,2 Obs 11
      property subtipo numérico 2 Ver Tabela
      property base booleano  1 (S ou N)Obs. 24
      property status.id numérico 2 Ver Tabela
      property data data  (dd/mm/aaaa)
      property favorecido numérico 1 Obrigatório1=contratado2=subcontratado
  end;
*)
{

59 viagem.parcela.qtde  numérico 10 Obrigatório
60 viagem.parcelaN.efetivacao.tipo numérico 2 Ver Tabela
61 viagem.parcelaN.valor decimal 9,2 Obs 11
62 viagem.parcelaN.subtipo numérico 2 Ver Tabela
63 viagem.parcelaN.base booleano  1 (S ou N)Obs. 24
64 viagem.parcelaN.status.id numérico 2 Ver Tabela
65 viagem.parcelaN.data data  (dd/mm/aaaa)
66 viagem.parcelaN.favorecido numérico 1 Obrigatório1=contratado2=subcontratado
67 Viagem.quitacao.prazo Numérico 2 Obs 19
68 viagem.quitacao.indicador Booleano 1 (S ou N)  Obs21
69 viagem.quitacao.entrega.ressalva Booleano 1 (S ou N) obs 22
70 viagem.indicador.provedor.certificacao Numérico  2 =01 pamcertObs. 21
71 viagem.comprovacao.observacao alfa 4000 Obs. 21
72 viagem.frete.valor.bruto decimal 9,2 obrigatórioObs 23
73 viagem.frete.valor.liquido decimal 9,2 ObrigatórioObs 23
74 viagem.frete.item.qtde Numérico 2 Obrigatório
75 viagem.frete.itemN.tipo Numérico 3 Ver Tabela
76 viagem.frete.itemN.valor decimal 17,2 Obs. 25



1 viagem.contratante.documento.numero alfanumérico  20 Obrigatório

2 viagem.unidade.documento.tipo numérico 2 Ver Tabela
3 viagem.unidade.documento.numero alfanumérico 20

4 viagem.id.cliente  numérico  Obs.1

5 viagem.contrato.numero alfanumérico  Obrigatório

6 Viagem.favorecidoN.tipo Numérico 1  1-Contratado 2-subContratante
7 Viagem. favorecidoN.documentoN.tipo numérico 2 Obrigatorio Ver Tabela
8 Viagem. favorecidoN.documentoN.numero alfanumérico 30 Obrigatório Obs.3
9 Viagem. favorecidoN.meio.pagamento numérico 1 1=cartão;2=contadepósito
10 Viagem. favorecidoN.conta.banco Numérico 4 Obs. 2
11 Viagem. favorecidoN.conta.agencia alfanumérico 10 Obs. 2
12 Viagem. favorecidoN.conta.numero Alfanumérico 10 Obs. 2
13 Viagem. favorecidoN.conta.tipo Numérico 1 Obs. 21=poupança2=corrente
14 viagem. favorecidoN.cartao.numero numérico 16 Obs.4

15 Viagem.veiculo.placa.qtde Numérico 1 Max. 5ocorrências
16 viagem.veiculo.placaN Alfanumérico 7 ObrigatórioObs 5
17 viagem.veiculo.rntrcN alfanumérico 7
18 viagem.veiculo.categoria Alfanumérico  Obrigatório

19 viagem.data.partida  Data 10 dd/mm/yyyy
20 viagem.data.termino  Data 10 dd/mm/yyyyObs 6

21 viagem.rota.id  numérico 10 Obs 7
22 viagem.rota.nome  alfanumérico 50 Obs 8

23 viagem.origem.cidade.ibge numérico 7 Obs 9
24 viagem.destino.cidade.ibge numerico 7 Obs 9

25 viagem.ponto.qtde  numérico 10 Obs 10

26 viagem.pontoN.cidade.ibge numérico 7

27 viagem.pedagio.valor decimal 9,2 Obs 11
28 viagem.pedagio.status.id numérico 2 Ver Tabela
29 viagem.pedagio.roteirizar booleano  1 (S ou N)Obs 12
30 viagem.pedagio.obter.praca Alfa 1 (S ou N)Obs 13
31 viagem.pedagio.utiliza.saldo Alfa 1 (S ou N)obs 14

32 Viagem.carga.tipo  Numérico 1 1-Lotação 2-Fracionada
33 viagem.carga.natureza Alfa 60
34 viagem.carga.peso  decimal 8,3

35 viagem.documento.qtde numérico 10 ObrigatórioObs. 15
36 viagem.documentoN.tipo numérico 2 ObrigatórioVer Tabela
37 viagem.documentoN.numero alfanumérico 30 Obrigatório
38 viagem.documentoN.serie Alfa 5 Obrigatório seinformadodocumento.numero
39 Viagem.documentoN.quantidade decimal 7,2 Obrigatório seinformadodocumento.numero
40 viagem.documentoN.especie Alfa 15 Obrigatório seinformadodocumento.numero
41 viagem.documentoN.cubagem decimal 8,3
42 viagem.documentoN.mercadoria.valor decimal 17,
43 viagem.documentoN.pessoafiscal.qtde numérico 2 Obrigatorio
44 viagem.documentoN.pessoafiscalN.tipo Numérico 1  Obrigatório1=Remetente2=Destinatário3=Consignatário
45 viagem.documentoN.pessoafiscalN.codigo Numérico  10 Obs. 16
46 viagem.documentoN.pessoafiscalN.documento Alfanumérico 20 Obs. 17
47 viagem.documentoN.pessoafiscalN.nome Alfanumérico 40 Obs. 17
48 viagem.documentoN.pessoafiscalN.logradouro Alfanumérico 40 Obs. 17
49 viagem.documentoN.pessoafiscalN.numero Numérico  5 Obs. 17
50 viagem.documentoN.pessoafiscalN.complemento Alfanumérico 15 Obs. 17
51 viagem.documentoN.pessoafiscalN.bairro Alfanumérico 30 Obs.17
52 viagem.documentoN.pessoafiscalN.pais.nome Alfanumérico 30 Obs. 17
53 viagem.documentoN.pessoafiscalN.estado.nome Alfanumérico 2 Obs. 17
54 viagem.documentoN.pessoafiscalN.cidade.nome Alfanumérico 30 Obs. 17
55 viagem.documentoN.pessoafiscalN.cidade.ibge numérico 7 Obs. 17Obs. 18
56 viagem.documentoN.pessoafiscalN.cep Numérico 8 Obs. 17
57 viagem.documento.complementar.qtde Numérico  2 Obs. 19
58 viagem.documento.complementarN.tipo Numérico 2 Ver Tabela

}

implementation

end.
