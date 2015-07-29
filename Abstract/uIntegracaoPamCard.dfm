object IntegracaoPamCard: TIntegracaoPamCard
  OldCreateOrder = False
  OnCreate = ServiceCreate
  OnDestroy = ServiceDestroy
  DisplayName = 'T-Transp Integracao Pam Card'
  AfterInstall = ServiceAfterInstall
  OnContinue = ServiceContinue
  OnExecute = ServiceExecute
  OnPause = ServicePause
  OnStart = ServiceStart
  OnStop = ServiceStop
  Left = 612
  Top = 250
  Height = 130
  Width = 201
  object oTM_Service: TTimer
    Interval = 5000
    OnTimer = oTM_ServiceTimer
    Left = 80
    Top = 16
  end
end
