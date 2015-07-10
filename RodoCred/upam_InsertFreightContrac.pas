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
      property tipo num�rico 2 Obrigat�rioVer Tabela
      property numero alfanum�rico 30 Obrigat�rio
      property serie Alfa 5 Obrigat�rio seinformadodocumento.numero
      property quantidade decimal 7,2 Obrigat�rio seinformadodocumento.numero
      property especie Alfa 15 Obrigat�rio seinformadodocumento.numero
      property cubagem decimal 8,3
      property mercadoria.valor decimal 17,
      property pessoafiscal.qtde num�rico 2 Obrigatorio
      property pessoafiscalN : ttpessoafisican read fpessoafisicaN write fpessoafisicaN;
  end;
  tdocumentoNViagem = array of tdocumentoNViagemtype;

  tParcelaNViagemtype = class
  published
      property efetivacao.tipo num�rico 2 Ver Tabela
      property valor decimal 9,2 Obs 11
      property subtipo num�rico 2 Ver Tabela
      property base booleano  1 (S ou N)Obs. 24
      property status.id num�rico 2 Ver Tabela
      property data data  (dd/mm/aaaa)
      property favorecido num�rico 1 Obrigat�rio1=contratado2=subcontratado
  end;
*)
{

59 viagem.parcela.qtde  num�rico 10 Obrigat�rio
60 viagem.parcelaN.efetivacao.tipo num�rico 2 Ver Tabela
61 viagem.parcelaN.valor decimal 9,2 Obs 11
62 viagem.parcelaN.subtipo num�rico 2 Ver Tabela
63 viagem.parcelaN.base booleano  1 (S ou N)Obs. 24
64 viagem.parcelaN.status.id num�rico 2 Ver Tabela
65 viagem.parcelaN.data data  (dd/mm/aaaa)
66 viagem.parcelaN.favorecido num�rico 1 Obrigat�rio1=contratado2=subcontratado
67 Viagem.quitacao.prazo Num�rico 2 Obs 19
68 viagem.quitacao.indicador Booleano 1 (S ou N)  Obs21
69 viagem.quitacao.entrega.ressalva Booleano 1 (S ou N) obs 22
70 viagem.indicador.provedor.certificacao Num�rico  2 =01 pamcertObs. 21
71 viagem.comprovacao.observacao alfa 4000 Obs. 21
72 viagem.frete.valor.bruto decimal 9,2 obrigat�rioObs 23
73 viagem.frete.valor.liquido decimal 9,2 Obrigat�rioObs 23
74 viagem.frete.item.qtde Num�rico 2 Obrigat�rio
75 viagem.frete.itemN.tipo Num�rico 3 Ver Tabela
76 viagem.frete.itemN.valor decimal 17,2 Obs. 25



1 viagem.contratante.documento.numero alfanum�rico  20 Obrigat�rio

2 viagem.unidade.documento.tipo num�rico 2 Ver Tabela
3 viagem.unidade.documento.numero alfanum�rico 20

4 viagem.id.cliente  num�rico  Obs.1

5 viagem.contrato.numero alfanum�rico  Obrigat�rio

6 Viagem.favorecidoN.tipo Num�rico 1  1-Contratado 2-subContratante
7 Viagem. favorecidoN.documentoN.tipo num�rico 2 Obrigatorio Ver Tabela
8 Viagem. favorecidoN.documentoN.numero alfanum�rico 30 Obrigat�rio Obs.3
9 Viagem. favorecidoN.meio.pagamento num�rico 1 1=cart�o;2=contadep�sito
10 Viagem. favorecidoN.conta.banco Num�rico 4 Obs. 2
11 Viagem. favorecidoN.conta.agencia alfanum�rico 10 Obs. 2
12 Viagem. favorecidoN.conta.numero Alfanum�rico 10 Obs. 2
13 Viagem. favorecidoN.conta.tipo Num�rico 1 Obs. 21=poupan�a2=corrente
14 viagem. favorecidoN.cartao.numero num�rico 16 Obs.4

15 Viagem.veiculo.placa.qtde Num�rico 1 Max. 5ocorr�ncias
16 viagem.veiculo.placaN Alfanum�rico 7 Obrigat�rioObs 5
17 viagem.veiculo.rntrcN alfanum�rico 7
18 viagem.veiculo.categoria Alfanum�rico  Obrigat�rio

19 viagem.data.partida  Data 10 dd/mm/yyyy
20 viagem.data.termino  Data 10 dd/mm/yyyyObs 6

21 viagem.rota.id  num�rico 10 Obs 7
22 viagem.rota.nome  alfanum�rico 50 Obs 8

23 viagem.origem.cidade.ibge num�rico 7 Obs 9
24 viagem.destino.cidade.ibge numerico 7 Obs 9

25 viagem.ponto.qtde  num�rico 10 Obs 10

26 viagem.pontoN.cidade.ibge num�rico 7

27 viagem.pedagio.valor decimal 9,2 Obs 11
28 viagem.pedagio.status.id num�rico 2 Ver Tabela
29 viagem.pedagio.roteirizar booleano  1 (S ou N)Obs 12
30 viagem.pedagio.obter.praca Alfa 1 (S ou N)Obs 13
31 viagem.pedagio.utiliza.saldo Alfa 1 (S ou N)obs 14

32 Viagem.carga.tipo  Num�rico 1 1-Lota��o 2-Fracionada
33 viagem.carga.natureza Alfa 60
34 viagem.carga.peso  decimal 8,3

35 viagem.documento.qtde num�rico 10 Obrigat�rioObs. 15
36 viagem.documentoN.tipo num�rico 2 Obrigat�rioVer Tabela
37 viagem.documentoN.numero alfanum�rico 30 Obrigat�rio
38 viagem.documentoN.serie Alfa 5 Obrigat�rio seinformadodocumento.numero
39 Viagem.documentoN.quantidade decimal 7,2 Obrigat�rio seinformadodocumento.numero
40 viagem.documentoN.especie Alfa 15 Obrigat�rio seinformadodocumento.numero
41 viagem.documentoN.cubagem decimal 8,3
42 viagem.documentoN.mercadoria.valor decimal 17,
43 viagem.documentoN.pessoafiscal.qtde num�rico 2 Obrigatorio
44 viagem.documentoN.pessoafiscalN.tipo Num�rico 1  Obrigat�rio1=Remetente2=Destinat�rio3=Consignat�rio
45 viagem.documentoN.pessoafiscalN.codigo Num�rico  10 Obs. 16
46 viagem.documentoN.pessoafiscalN.documento Alfanum�rico 20 Obs. 17
47 viagem.documentoN.pessoafiscalN.nome Alfanum�rico 40 Obs. 17
48 viagem.documentoN.pessoafiscalN.logradouro Alfanum�rico 40 Obs. 17
49 viagem.documentoN.pessoafiscalN.numero Num�rico  5 Obs. 17
50 viagem.documentoN.pessoafiscalN.complemento Alfanum�rico 15 Obs. 17
51 viagem.documentoN.pessoafiscalN.bairro Alfanum�rico 30 Obs.17
52 viagem.documentoN.pessoafiscalN.pais.nome Alfanum�rico 30 Obs. 17
53 viagem.documentoN.pessoafiscalN.estado.nome Alfanum�rico 2 Obs. 17
54 viagem.documentoN.pessoafiscalN.cidade.nome Alfanum�rico 30 Obs. 17
55 viagem.documentoN.pessoafiscalN.cidade.ibge num�rico 7 Obs. 17Obs. 18
56 viagem.documentoN.pessoafiscalN.cep Num�rico 8 Obs. 17
57 viagem.documento.complementar.qtde Num�rico  2 Obs. 19
58 viagem.documento.complementarN.tipo Num�rico 2 Ver Tabela

}

implementation

end.
