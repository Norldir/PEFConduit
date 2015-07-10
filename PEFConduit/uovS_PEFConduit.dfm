object PEFConduit: TPEFConduit
  OldCreateOrder = False
  OnCreate = ServiceCreate
  DisplayName = 'PEFConduit'
  ErrorSeverity = esSevere
  Interactive = True
  OnContinue = ServiceContinue
  OnExecute = ServiceExecute
  OnPause = ServicePause
  OnStart = ServiceStart
  OnStop = ServiceStop
  Left = 665
  Top = 255
  Height = 150
  Width = 215
end
