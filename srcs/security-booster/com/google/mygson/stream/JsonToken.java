package com.google.mygson.stream;

public enum JsonToken
{
  static
  {
    BEGIN_OBJECT = new JsonToken("BEGIN_OBJECT", 2);
    END_OBJECT = new JsonToken("END_OBJECT", 3);
    NAME = new JsonToken("NAME", 4);
    STRING = new JsonToken("STRING", 5);
    NUMBER = new JsonToken("NUMBER", 6);
    BOOLEAN = new JsonToken("BOOLEAN", 7);
    NULL = new JsonToken("NULL", 8);
    END_DOCUMENT = new JsonToken("END_DOCUMENT", 9);
    JsonToken[] arrayOfJsonToken = new JsonToken[10];
    arrayOfJsonToken[0] = BEGIN_ARRAY;
    arrayOfJsonToken[1] = END_ARRAY;
    arrayOfJsonToken[2] = BEGIN_OBJECT;
    arrayOfJsonToken[3] = END_OBJECT;
    arrayOfJsonToken[4] = NAME;
    arrayOfJsonToken[5] = STRING;
    arrayOfJsonToken[6] = NUMBER;
    arrayOfJsonToken[7] = BOOLEAN;
    arrayOfJsonToken[8] = NULL;
    arrayOfJsonToken[9] = END_DOCUMENT;
    $VALUES = arrayOfJsonToken;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.stream.JsonToken
 * JD-Core Version:    0.5.3
 */