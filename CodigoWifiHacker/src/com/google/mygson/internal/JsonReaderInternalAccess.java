package com.google.mygson.internal;

import com.google.mygson.stream.JsonReader;
import java.io.IOException;

public abstract class JsonReaderInternalAccess
{
  public static JsonReaderInternalAccess INSTANCE;

  public abstract void promoteNameToValue(JsonReader paramJsonReader)
    throws IOException;
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.JsonReaderInternalAccess
 * JD-Core Version:    0.5.3
 */