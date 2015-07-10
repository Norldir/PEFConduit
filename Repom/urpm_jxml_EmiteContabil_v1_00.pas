unit urpm_jxml_EmiteContabil_v1_00;

interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

const
  snEmiteContabilResponse = 'EmiteContabilResponse';

type
  tEmiteContabilResponse = class
  private
  public
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://www.repom.com.br/';
  defNamespaceAlias = '';

end.
