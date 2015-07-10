unit urpm_CancelamentoContrato_v1_00;

interface
uses
   Classes, InvokeRegistry;

type
   Tcontrato = class( TRemotable )
   private
    Fprocesso_cliente_codigo: string;
    Flogin: string;
    Ffilial_codigo_cliente: string;
    Fprocesso_transporte_codigo: string;
   published
      property processo_transporte_codigo : string read Fprocesso_transporte_codigo write Fprocesso_transporte_codigo;
      property processo_cliente_codigo : string read Fprocesso_cliente_codigo write Fprocesso_cliente_codigo;
      property filial_codigo_cliente : string read Ffilial_codigo_cliente write Ffilial_codigo_cliente;
      property login : string read Flogin write Flogin;
   end;

implementation


end.
