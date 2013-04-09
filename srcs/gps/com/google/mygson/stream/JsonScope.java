package com.google.mygson.stream;

 enum JsonScope
{
  static
  {
    EMPTY_OBJECT = new JsonScope("EMPTY_OBJECT", 2);
    DANGLING_NAME = new JsonScope("DANGLING_NAME", 3);
    NONEMPTY_OBJECT = new JsonScope("NONEMPTY_OBJECT", 4);
    EMPTY_DOCUMENT = new JsonScope("EMPTY_DOCUMENT", 5);
    NONEMPTY_DOCUMENT = new JsonScope("NONEMPTY_DOCUMENT", 6);
    CLOSED = new JsonScope("CLOSED", 7);
    JsonScope[] arrayOfJsonScope = new JsonScope[8];
    arrayOfJsonScope[0] = EMPTY_ARRAY;
    arrayOfJsonScope[1] = NONEMPTY_ARRAY;
    arrayOfJsonScope[2] = EMPTY_OBJECT;
    arrayOfJsonScope[3] = DANGLING_NAME;
    arrayOfJsonScope[4] = NONEMPTY_OBJECT;
    arrayOfJsonScope[5] = EMPTY_DOCUMENT;
    arrayOfJsonScope[6] = NONEMPTY_DOCUMENT;
    arrayOfJsonScope[7] = CLOSED;
    $VALUES = arrayOfJsonScope;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.stream.JsonScope
 * JD-Core Version:    0.5.3
 */