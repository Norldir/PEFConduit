unit uTrg_service1_v1_50;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://schemas.microsoft.com/2003/10/Serialization/
// NameSpacePrefix: tns
// Date of Schema : 28/10/2014 10:19:22
// Translationdate: 28/10/2014 12:12:38
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tboolean = boolean;
  tdecimal = extended;
  tdouble = extended;
  tint = integer;
  tlong = int64;
  tstring = string;
  tunsignedByte = byte;
  tunsignedLong = int64;
  tchar = integer;
  tduration = cardinal;
  tguid = string;
  tbase64Binary = string;

  function trgBoolToStr( v : boolean) : string;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://schemas.microsoft.com/2003/10/Serialization/';
  defNamespaceAlias = 'tns';


function trgBoolToStr( v : boolean) : string;
begin
  if v then result := 'true' else result := 'false';
end;

end.

