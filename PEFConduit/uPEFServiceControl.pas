unit uPEFServiceControl;

interface

uses
  SysUtils, Windows, WinSvc;

type

  TManipulacaoServico = class
  private
    { Private declarations }
    ServiceControlManager: SC_Handle;
    ServiceHandle: SC_Handle;
    fServiceName: String;
  protected
    function DoStartService(NumberOfArgument: DWORD; ServiceArgVectors: PChar): Boolean;
  public
    { Public declarations }
    destructor Destroy; override;
    function Connect(MachineName: PChar = nil; DatabaseName: Pchar = nil;
      Access: DWORD = SC_MANAGER_CONNECT): Boolean;
    function OpenServiceConnection(aServiceName: PChar): Boolean;
    function StartService: Boolean; overload; // Simple start
    function StartService(NumberOfArgument: DWORD; ServiceArgVectors: PChar): Boolean; overload; // More complex start
    function StopService: Boolean;
    function PauseService: Boolean;
    function ContinueService: Boolean;
    function ShutdownService: Boolean;
    function DisableService: Boolean;
    function GetStatus: DWORD;
    function IsServiceRunning: Boolean;
    function IsServiceStopped: Boolean;
  published
    property ServiceName : String   read fServiceName write fServiceName;
  end;

implementation

{ TServiceManager }


function TManipulacaoServico.Connect(MachineName, DatabaseName: PChar; Access: DWORD): Boolean;
begin
  ServiceControlManager := OpenSCManager(MachineName, DatabaseName, Access);
  Result := (ServiceControlManager <> 0);
//  ManipulaArquivoLog('Chamada de conexão manual realizada.');
end;


function TManipulacaoServico.OpenServiceConnection(aServiceName: PChar): Boolean;
begin
  fServiceName := aServiceName;
  ServiceHandle := OpenService(ServiceControlManager, aServiceName, SERVICE_ALL_ACCESS);
  Result := (ServiceHandle <> 0);
//  ManipulaArquivoLog('Solicitado comunicaço manual.');

end;

function TManipulacaoServico.PauseService: Boolean;
var
  ServiceStatus: TServiceStatus;
begin
  Result := False;
  { Pause the service: attention not supported by all services }
  while GetStatus <> 7 do
     Result := ControlService(ServiceHandle, SERVICE_CONTROL_PAUSE, ServiceStatus);
end;

function TManipulacaoServico.StopService: Boolean;
var
  ServiceStatus: TServiceStatus;
begin
  Result := False;
  { Stop the service }
  while GetStatus <> 1 do
     Result := ControlService(ServiceHandle, SERVICE_CONTROL_STOP, ServiceStatus);
end;

function TManipulacaoServico.ContinueService: Boolean;
var
  ServiceStatus: TServiceStatus;
begin
  { Continue the service after a pause: attention not supported by all services }
  Result := ControlService(ServiceHandle, SERVICE_CONTROL_CONTINUE, ServiceStatus);
end;

function TManipulacaoServico.ShutdownService: Boolean;
var
  ServiceStatus: TServiceStatus;
begin
  { Shut service down: attention not supported by all services }
  Result := ControlService(ServiceHandle, SERVICE_CONTROL_SHUTDOWN, ServiceStatus);
end;

function TManipulacaoServico.StartService: Boolean;
begin
  Result := DoStartService(0, '');
end;

function TManipulacaoServico.StartService(NumberOfArgument: DWORD; ServiceArgVectors: PChar): Boolean;
begin
  Result := DoStartService(NumberOfArgument, ServiceArgVectors);
end;

function TManipulacaoServico.GetStatus: DWORD;
var
  ServiceStatus: TServiceStatus;
begin
{ Returns the status of the service. Maybe you want to check this
  more than once, so just call this function again.
  Results may be: SERVICE_STOPPED
                  SERVICE_START_PENDING
                  SERVICE_STOP_PENDING
                  SERVICE_RUNNING
                  SERVICE_CONTINUE_PENDING
                  SERVICE_PAUSE_PENDING
                  SERVICE_PAUSED   }
  QueryServiceStatus(ServiceHandle, ServiceStatus);
  Result := ServiceStatus.dwCurrentState;
end;

function TManipulacaoServico.DisableService: Boolean;
begin
  { Need to Implement... }
  Result := False;
end;

function TManipulacaoServico.IsServiceRunning: Boolean;
begin
  Result := (GetStatus = SERVICE_RUNNING);
end;

function TManipulacaoServico.IsServiceStopped: Boolean;
begin
  Result := (GetStatus = SERVICE_STOPPED);
end;

function TManipulacaoServico.DoStartService(NumberOfArgument: DWORD;
  ServiceArgVectors: PChar): Boolean;
begin
  Result := WinSvc.StartService(ServiceHandle, NumberOfArgument, ServiceArgVectors);
end;

destructor TManipulacaoServico.Destroy;
begin
   if (ServiceHandle <> 0) then
       CloseServiceHandle(ServiceHandle);
  inherited;
end;

end.
