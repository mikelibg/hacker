package com.google.mygson.internal.bind;

import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigInteger;

public final class BigIntegerTypeAdapter extends TypeAdapter<BigInteger>
{
  public BigInteger read(JsonReader paramJsonReader)
    throws IOException
  {
    BigInteger localBigInteger;
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      localBigInteger = null;
    }
    while (true)
    {
      return localBigInteger;
      try
      {
        localBigInteger = new BigInteger(paramJsonReader.nextString());
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new JsonSyntaxException(localNumberFormatException);
      }
    }
  }

  public void write(JsonWriter paramJsonWriter, BigInteger paramBigInteger)
    throws IOException
  {
    paramJsonWriter.value(paramBigInteger);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.bind.BigIntegerTypeAdapter
 * JD-Core Version:    0.5.3
 */