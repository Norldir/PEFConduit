unit uxmldsig_core_schema_v1_00;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://www.w3.org/2000/09/xmldsig#
// NameSpacePrefix: ds
// Date of Schema : 07/11/2012 14:18:18
// Translationdate: 15/12/2012 10:36:32
//

// ordinal types
type
//  tSignature = tSignatureType;
//  tDigestValueType = tDigestValueType;
//  tTTransformURI = tTTransformURI;
   tbase64Binary = string;
   tID = string;
   tstring = string;
   tTTransformURI = string;
   tanyURI = string;
   tDigestValueType = string;
   t = string;

const
  snX509DataType = 'X509DataType';
  snX509DataType_X509Certificate = 'X509Certificate';

type
  tX509DataType = class
  private
    F_NameSpaceAlias: string;
    FX509Certificate: tbase64Binary; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property X509Certificate: tbase64Binary read FX509Certificate write FX509Certificate;
  end;

const
  snKeyInfoType = 'KeyInfoType';
  snKeyInfoType_X509Data = 'X509Data';
  anKeyInfoType_Id = 'Id';

type
  tKeyInfoType = class
  private
    F_NameSpaceAlias: string;
    FX509Data: tX509DataType; // (E)
    FId: tID; // (A)
    FId_IsSet_: boolean;
    procedure SetId(value:tID);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property X509Data: tX509DataType read FX509Data write FX509Data;
    property Id: tID read FId write SetId;
    property Id_IsSet_:boolean read FId_IsSet_;
  end;

const
  snTransformType = 'TransformType';
  snTransformType_XPath = 'XPath';
  anTransformType_Algorithm = 'Algorithm';

type
  tTransformType = class
  private
    F_NameSpaceAlias: string;
    FXPath: tstring; // (E)
    FAlgorithm: tTTransformURI; // (A)
    FAlgorithm_IsSet_: boolean;
    procedure SetAlgorithm(value:tTTransformURI);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property XPath: tstring read FXPath write FXPath;
    property Algorithm: tTTransformURI read FAlgorithm write SetAlgorithm;
    property Algorithm_IsSet_:boolean read FAlgorithm_IsSet_;
  end;

const
  snTransformsType = 'TransformsType';
  snTransformsType_Transform = 'Transform';

type
  tTransformsType = class
  private
    F_NameSpaceAlias: string;
    FTransform: tManagedStringList; // of tTransformType(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Transform: tManagedStringList read FTransform write FTransform; // of tTransformType
  end;

const
  snDigestMethod = 'DigestMethod';
  anDigestMethod_Algorithm = 'Algorithm';

type
  tDigestMethod = class
  private
    F_NameSpaceAlias: string;
    FAlgorithm: tanyURI; // (A)
    FAlgorithm_IsSet_: boolean;
    procedure SetAlgorithm(value:tanyURI);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Algorithm: tanyURI read FAlgorithm write SetAlgorithm;
    property Algorithm_IsSet_:boolean read FAlgorithm_IsSet_;
  end;

const
  snReferenceType = 'ReferenceType';
  snReferenceType_Transforms = 'Transforms';
  snReferenceType_DigestMethod = 'DigestMethod';
  snReferenceType_DigestValue = 'DigestValue';
  anReferenceType_Id = 'Id';
  anReferenceType_URI = 'URI';
  anReferenceType_Type = 'Type';

type
  tReferenceType = class
  private
    F_NameSpaceAlias: string;
    FTransforms: tTransformsType; // (E)
    FDigestMethod: tDigestMethod; // (E)
    FDigestValue: tDigestValueType; // (E)
    FId: tID; // (A)
    FId_IsSet_: boolean;
    FURI: t; // (A)
    FURI_IsSet_: boolean;
    FType: tanyURI; // (A)
    FType_IsSet_: boolean;
    procedure SetId(value:tID);
    procedure SetURI(value:t);
    procedure SetType(value:tanyURI);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Transforms: tTransformsType read FTransforms write FTransforms;
    property DigestMethod: tDigestMethod read FDigestMethod write FDigestMethod;
    property DigestValue: tDigestValueType read FDigestValue write FDigestValue;
    property Id: tID read FId write SetId;
    property Id_IsSet_:boolean read FId_IsSet_;
    property URI: t read FURI write SetURI;
    property URI_IsSet_:boolean read FURI_IsSet_;
    property _Type: tanyURI read FType write SetType;
    property Type_IsSet_:boolean read FType_IsSet_;
  end;

const
  snSignatureMethod = 'SignatureMethod';
  anSignatureMethod_Algorithm = 'Algorithm';

type
  tSignatureMethod = class
  private
    F_NameSpaceAlias: string;
    FAlgorithm: tanyURI; // (A)
    FAlgorithm_IsSet_: boolean;
    procedure SetAlgorithm(value:tanyURI);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Algorithm: tanyURI read FAlgorithm write SetAlgorithm;
    property Algorithm_IsSet_:boolean read FAlgorithm_IsSet_;
  end;

const
  snCanonicalizationMethod = 'CanonicalizationMethod';
  anCanonicalizationMethod_Algorithm = 'Algorithm';

type
  tCanonicalizationMethod = class
  private
    F_NameSpaceAlias: string;
    FAlgorithm: tanyURI; // (A)
    FAlgorithm_IsSet_: boolean;
    procedure SetAlgorithm(value:tanyURI);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Algorithm: tanyURI read FAlgorithm write SetAlgorithm;
    property Algorithm_IsSet_:boolean read FAlgorithm_IsSet_;
  end;

const
  snSignedInfoType = 'SignedInfoType';
  snSignedInfoType_CanonicalizationMethod = 'CanonicalizationMethod';
  snSignedInfoType_SignatureMethod = 'SignatureMethod';
  snSignedInfoType_Reference = 'Reference';
  anSignedInfoType_Id = 'Id';

type
  tSignedInfoType = class
  private
    F_NameSpaceAlias: string;
    FCanonicalizationMethod: tCanonicalizationMethod; // (E)
    FSignatureMethod: tSignatureMethod; // (E)
    FReference: tReferenceType; // (E)
    FId: tID; // (A)
    FId_IsSet_: boolean;
    procedure SetId(value:tID);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CanonicalizationMethod: tCanonicalizationMethod read FCanonicalizationMethod write FCanonicalizationMethod;
    property SignatureMethod: tSignatureMethod read FSignatureMethod write FSignatureMethod;
    property Reference: tReferenceType read FReference write FReference;
    property Id: tID read FId write SetId;
    property Id_IsSet_:boolean read FId_IsSet_;
  end;

const
  snSignatureValueType = 'SignatureValueType';

type
  tSignatureValueType = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snSignatureType = 'SignatureType';
  snSignatureType_SignedInfo = 'SignedInfo';
  snSignatureType_SignatureValue = 'SignatureValue';
  snSignatureType_KeyInfo = 'KeyInfo';
  anSignatureType_Id = 'Id';

type
  tSignatureType = class
  private
    F_NameSpaceAlias: string;
    FSignedInfo: tSignedInfoType; // (E)
    FSignatureValue: tSignatureValueType; // (E)
    FKeyInfo: tKeyInfoType; // (E)
    FId: tID; // (A)
    FId_IsSet_: boolean;
    procedure SetId(value:tID);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property SignedInfo: tSignedInfoType read FSignedInfo write FSignedInfo;
    property SignatureValue: tSignatureValueType read FSignatureValue write FSignatureValue;
    property KeyInfo: tKeyInfoType read FKeyInfo write FKeyInfo;
    property Id: tID read FId write SetId;
    property Id_IsSet_:boolean read FId_IsSet_;
  end;

type
  tSignature = tSignatureType;
  
implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://www.w3.org/2000/09/xmldsig#';
  defNamespaceAlias = 'ds';

{ tX509DataType }

class function tX509DataType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tX509DataType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tX509DataType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snX509DataType_X509Certificate) then
      X509Certificate :=  xn.text // tbase64Binary
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tX509DataType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tX509DataType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'X509DataType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snX509DataType_X509Certificate));
  xn.text := FX509Certificate;
end; // procedure save

{ tKeyInfoType }

class function tKeyInfoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tKeyInfoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tKeyInfoType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anKeyInfoType_Id then
      Id := aRoot.attribute[i]; // tID
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snKeyInfoType_X509Data) then
      FX509Data := tX509DataType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tKeyInfoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tKeyInfoType.SetId(value:tID);
begin
  FId := value;
  FId_IsSet_ := true;
end;

procedure tKeyInfoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'KeyInfoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Id_IsSet_ then
    aNode.attribute[anKeyInfoType_Id] := FId;

  if Assigned(FX509Data) then
  begin
    xn := aNode.addChildByName(snKeyInfoType_X509Data);
    FX509Data.Save(xn);
  end;
end; // procedure save

{ tTransformType }

class function tTransformType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransformType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tTransformType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anTransformType_Algorithm then
      Algorithm := aRoot.attribute[i]; // tTTransformURI
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snTransformType_XPath) then
      XPath :=  xn.text // tstring
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransformType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tTransformType.SetAlgorithm(value:tTTransformURI);
begin
  FAlgorithm := value;
  FAlgorithm_IsSet_ := true;
end;

procedure tTransformType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'TransformType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Algorithm_IsSet_ then
    aNode.attribute[anTransformType_Algorithm] := FAlgorithm;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransformType_XPath));
  xn.text := FXPath;
end; // procedure save

{ tTransformsType }

class function tTransformsType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransformsType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FTransform := tManagedStringlist.Create;
end; // constructor ...

constructor tTransformsType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snTransformsType_Transform) then
    begin
      // list of simple type
      FTransform.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransformsType.Destroy;
begin
  FTransform.Free;
  inherited;
end; // destructor ...

procedure tTransformsType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'TransformsType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Transform" is tManagedStringlist
  // but of simple elements
  if Assigned(FTransform) then
    for i:=0 to FTransform.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransformsType_Transform));
      xn.text := FTransform.Strings[i];
    end; // for i:=0 to ...
end; // procedure save

{ tDigestMethod }

class function tDigestMethod._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDigestMethod.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDigestMethod.Create(aRoot:tJanXMLNode2);
var
//  xn: tJanXMLNode2;
  sn: string;
  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anDigestMethod_Algorithm then
      Algorithm := aRoot.attribute[i]; // tanyURI
  end;

end; // constructor ...

destructor tDigestMethod.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDigestMethod.SetAlgorithm(value:tanyURI);
begin
  FAlgorithm := value;
  FAlgorithm_IsSet_ := true;
end;

procedure tDigestMethod.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DigestMethod')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Algorithm_IsSet_ then
    aNode.attribute[anDigestMethod_Algorithm] := FAlgorithm;

end; // procedure save

{ tReferenceType }

class function tReferenceType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tReferenceType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tReferenceType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anReferenceType_Id then
      Id := aRoot.attribute[i]; // tID
    if sn = anReferenceType_URI then
      URI := aRoot.attribute[i]; // t
    if sn = anReferenceType_Type then
      _Type := aRoot.attribute[i]; // tanyURI
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snReferenceType_Transforms) then
      FTransforms := tTransformsType.Create(xn)
    else if (sn = snReferenceType_DigestMethod)
      and ((thisURI='') or (tDigestMethod._nsURI_ = thisURI)) then
      FDigestMethod := tDigestMethod.Create(xn)
    else if (sn = snReferenceType_DigestValue) then
      DigestValue :=  xn.text // tDigestValueType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tReferenceType.Destroy;
begin
  FDigestMethod.Free;
  inherited;
end; // destructor ...

procedure tReferenceType.SetId(value:tID);
begin
  FId := value;
  FId_IsSet_ := true;
end;

procedure tReferenceType.SetURI(value:t);
begin
  FURI := value;
  FURI_IsSet_ := true;
end;

procedure tReferenceType.SetType(value:tanyURI);
begin
  FType := value;
  FType_IsSet_ := true;
end;

procedure tReferenceType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ReferenceType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Id_IsSet_ then
    aNode.attribute[anReferenceType_Id] := FId;
  if URI_IsSet_ then
    aNode.attribute[anReferenceType_URI] := FURI;
  if Type_IsSet_ then
    aNode.attribute[anReferenceType_Type] := FType;

  if Assigned(FTransforms) then
  begin
    xn := aNode.addChildByName(snReferenceType_Transforms);
    FTransforms.Save(xn);
  end;
  if Assigned(FDigestMethod) then
  begin
    xn := aNode.addChildByName(snReferenceType_DigestMethod);
    FDigestMethod.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snReferenceType_DigestValue));
  xn.text := FDigestValue;
end; // procedure save

{ tSignatureMethod }

class function tSignatureMethod._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSignatureMethod.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tSignatureMethod.Create(aRoot:tJanXMLNode2);
var
//  xn: tJanXMLNode2;
  sn: string;
  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anSignatureMethod_Algorithm then
      Algorithm := aRoot.attribute[i]; // tanyURI
  end;

end; // constructor ...

destructor tSignatureMethod.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSignatureMethod.SetAlgorithm(value:tanyURI);
begin
  FAlgorithm := value;
  FAlgorithm_IsSet_ := true;
end;

procedure tSignatureMethod.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SignatureMethod')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Algorithm_IsSet_ then
    aNode.attribute[anSignatureMethod_Algorithm] := FAlgorithm;

end; // procedure save

{ tCanonicalizationMethod }

class function tCanonicalizationMethod._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCanonicalizationMethod.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCanonicalizationMethod.Create(aRoot:tJanXMLNode2);
var
//  xn: tJanXMLNode2;
  sn: string;
  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anCanonicalizationMethod_Algorithm then
      Algorithm := aRoot.attribute[i]; // tanyURI
  end;

end; // constructor ...

destructor tCanonicalizationMethod.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCanonicalizationMethod.SetAlgorithm(value:tanyURI);
begin
  FAlgorithm := value;
  FAlgorithm_IsSet_ := true;
end;

procedure tCanonicalizationMethod.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CanonicalizationMethod')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Algorithm_IsSet_ then
    aNode.attribute[anCanonicalizationMethod_Algorithm] := FAlgorithm;

end; // procedure save

{ tSignedInfoType }

class function tSignedInfoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSignedInfoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tSignedInfoType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anSignedInfoType_Id then
      Id := aRoot.attribute[i]; // tID
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snSignedInfoType_CanonicalizationMethod)
      and ((thisURI='') or (tCanonicalizationMethod._nsURI_ = thisURI)) then
      FCanonicalizationMethod := tCanonicalizationMethod.Create(xn)
    else if (sn = snSignedInfoType_SignatureMethod)
      and ((thisURI='') or (tSignatureMethod._nsURI_ = thisURI)) then
      FSignatureMethod := tSignatureMethod.Create(xn)
    else if (sn = snSignedInfoType_Reference) then
      FReference := tReferenceType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tSignedInfoType.Destroy;
begin
  FCanonicalizationMethod.Free;
  FSignatureMethod.Free;
  inherited;
end; // destructor ...

procedure tSignedInfoType.SetId(value:tID);
begin
  FId := value;
  FId_IsSet_ := true;
end;

procedure tSignedInfoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SignedInfoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Id_IsSet_ then
    aNode.attribute[anSignedInfoType_Id] := FId;

  if Assigned(FCanonicalizationMethod) then
  begin
    xn := aNode.addChildByName(snSignedInfoType_CanonicalizationMethod);
    FCanonicalizationMethod.Save(xn);
  end;
  if Assigned(FSignatureMethod) then
  begin
    xn := aNode.addChildByName(snSignedInfoType_SignatureMethod);
    FSignatureMethod.Save(xn);
  end;
  if Assigned(FReference) then
  begin
    xn := aNode.addChildByName(snSignedInfoType_Reference);
    FReference.Save(xn);
  end;
end; // procedure save

{ tSignatureValueType }

class function tSignatureValueType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSignatureValueType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tSignatureValueType.Create(aRoot:tJanXMLNode2);
//var
//  xn: tJanXMLNode2;
//  sn: string;
//  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tSignatureValueType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSignatureValueType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SignatureValueType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

{ tSignatureType }

class function tSignatureType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSignatureType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tSignatureType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anSignatureType_Id then
      Id := aRoot.attribute[i]; // tID
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snSignatureType_SignedInfo) then
      FSignedInfo := tSignedInfoType.Create(xn)
    else if (sn = snSignatureType_SignatureValue) then
      FSignatureValue := tSignatureValueType.Create(xn)
    else if (sn = snSignatureType_KeyInfo) then
      FKeyInfo := tKeyInfoType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tSignatureType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSignatureType.SetId(value:tID);
begin
  FId := value;
  FId_IsSet_ := true;
end;

procedure tSignatureType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SignatureType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Id_IsSet_ then
    aNode.attribute[anSignatureType_Id] := FId;

  if Assigned(FSignedInfo) then
  begin
    xn := aNode.addChildByName(snSignatureType_SignedInfo);
    FSignedInfo.Save(xn);
  end;
  if Assigned(FSignatureValue) then
  begin
    xn := aNode.addChildByName(snSignatureType_SignatureValue);
    FSignatureValue.Save(xn);
  end;
  if Assigned(FKeyInfo) then
  begin
    xn := aNode.addChildByName(snSignatureType_KeyInfo);
    FKeyInfo.Save(xn);
  end;
end; // procedure save

end.
