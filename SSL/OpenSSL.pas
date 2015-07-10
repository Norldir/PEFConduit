unit OpenSSL;

interface

function GetOpenSLLVersion: string;
function SHA1(msg: string): string;

implementation

uses sysUtils, libeay32;

function GetOpenSLLVersion: string;
var
  v: cardinal;
  s: PChar;
begin
  v := SSLeay;
  s := SSLeay_version(_SSLEAY_CFLAGS);
  result := s + ' (' + IntToHex(v, 9) + ')';
end;

function SHA1(msg: string): string;
{var
  mdLength, b64Length: integer;
  mdValue: array [0..EVP_MAX_MD_SIZE] of byte;
  mdctx: EVP_MD_CTX;
  memout, b64: pBIO;
  inbuf, outbuf: array [0..1023] of char;
}
begin
{
  StrPCopy(inbuf, msg);
  EVP_DigestInit(@mdctx, EVP_sha1());
  EVP_DigestUpdate(@mdctx, @inbuf, StrLen(inbuf));
  EVP_DigestFinal(@mdctx, @mdValue, mdLength);
  mdLength := EVP_MD_CTX_size(@mdctx);
  b64 := BIO_new(BIO_f_base64);
  memout := BIO_new(BIO_s_mem);
  b64 := BIO_push(b64, memout);
  BIO_write(b64, @mdValue, mdLength);
  BIO_flush(b64);
  b64Length := BIO_read(memout, @outbuf, 1024);
  outbuf[b64Length-1] := #0;
  result := StrPas(@outbuf);
}
end;

(******************************************************************************
 Author: Marco Ferrante
 Copyright (C) 2002-2003, CSITA - Università di Genova (IT).
 http://www.csita.unige.it/
 ******************************************************************************)
(*
unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, libeay32, StdCtrls;

type
  {
    Must return passphrase
  }
  TAskPassphraseEvent = procedure(var Passphrase: String) of object;

  TMainForm = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    fAskPassphrase: TAskPassphraseEvent;
    procedure InitOpenSSL;
    procedure FreeOpenSSL;
    procedure AskPassphrase(var Passphrase: String);
    function ReadPrivateKey(AFileName: TFileName): pEVP_PKEY;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}
{
  Return last error message
}
function GetErrorMessage: string;
var
  ErrMsg: array [0..160] of char;
begin
ERR_error_string(ERR_get_error, @ErrMsg);
result := StrPas(@ErrMsg);
end;

{
  You must call this procedure before any OpenSSL-related function.
  When you finish, you can clear environment with FreeOpenSSL prodedure.
}
procedure TMainForm.InitOpenSSL;
begin
OpenSSL_add_all_algorithms;
OpenSSL_add_all_ciphers;
OpenSSL_add_all_digests;
ERR_load_crypto_strings;
end;

{
  Cleanup environment and release memory.
}
procedure TMainForm.FreeOpenSSL;
begin
EVP_cleanup;
end;

{
  Open a dialog to ask for passphrase if required.
}
procedure TMainForm.AskPassphrase(var Passphrase: String);
begin
Passphrase := 'bar';  // Dummy example value
end;

{
  Read a private key, asking for password if required.
}
function TMainForm.ReadPrivateKey(AFileName: TFileName): pEVP_PKEY;
var
  keyfile: pBIO;

  // Callback for encrypted private key
  function cb(buffer: PChar; blength: integer;
      verify: integer; data: pointer): integer; cdecl;
  var
    Passphrase: String;
  begin
  result := 0;
  if (data = nil) or not(TObject(data) is TMainForm) then
    exit;
  if not Assigned(TMainForm(data).fAskPassphrase) then
    exit;
  TMainForm(data).fAskPassphrase(Passphrase);
  if Passphrase <> '' then
    begin
    StrPCopy(buffer, Passphrase);  // TODO: length check
    result := Length(Passphrase);
    end
  end;

begin
keyfile := BIO_new(BIO_s_file());
BIO_read_filename(keyfile, PChar(AFilename));
result := PEM_read_bio_PrivateKey(keyfile, nil, @cb, self);
if result = nil then
  raise Exception.Create('Unable to read private key. ' + GetErrorMessage);
end;

{
  Main procedure: when you press button, private key will be load
}
procedure TMainForm.Button1Click(Sender: TObject);
var
  key: pEVP_PKEY;
begin
fAskPassphrase := AskPassphrase;
InitOpenSSL;
key := ReadPrivateKey('foo.key');
FreeOpenSSL
end;


// Equivalent to:
//   openssl rsautl -encrypt -in CleartextFile -out CryptedFile -inkey KeyFile
// Probably you should set padding := RSA_PKCS1_PADDING
procedure RSAEncrypt(KeyFile, CleartextFile, CryptedFile: string; padding: integer);
var
  rsa: pRSA;
  keysize: integer;

  key: pEVP_PKEY;
  cleartext, crypted: pBIO;
  rsa_in, rsa_out: pointer;
  rsa_inlen, rsa_outlen: integer;
begin
  // as in AskPassphrase.html
  key := ReadPrivateKey(KeyFile);
  rsa := EVP_PKEY_get1_RSA(key);
  EVP_PKEY_free(key);
  if rsa = nil then
    raise Exception.Create('Error getting RSA key. ' + GetErrorMessage);

  cleartext := BIO_new_file(PChar(CleartextFile), 'rb');
  if cleartext = nil then
    raise Exception.Create('Error Reading Input File. ' + GetErrorMessage);
  crypted := BIO_new_file(PChar(CryptedFile), 'wb');
  if crypted = nil then
    raise Exception.Create('Error Reading Output File. ' + GetErrorMessage);

  keysize := RSA_size(rsa);

  // Should be free if exception is raised
  rsa_in := OPENSSL_malloc(keysize * 2);
  rsa_out := OPENSSL_malloc(keysize);

  // Read the input data
  rsa_inlen := BIO_read(cleartext, rsa_in, keysize * 2);
  if rsa_inlen <= 0 then
    raise Exception.Create('Error reading input Data.');
  rsa_outlen := RSA_public_encrypt(rsa_inlen, rsa_in, rsa_out, rsa, padding);
  if rsa_outlen <= 0 then
    raise Exception.Create('RSA operation error. ' + GetErrorMessage);

  BIO_write(crypted, rsa_out, rsa_outlen);
  RSA_free(rsa);
  BIO_free(cleartext);
  BIO_free_all(crypted);
  if rsa_in <> nil then
    OPENSSL_free(rsa_in);
  if rsa_out <> nil then
    OPENSSL_free(rsa_out);
end;
*)
end.
