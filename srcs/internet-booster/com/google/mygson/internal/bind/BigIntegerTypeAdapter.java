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
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      BigInteger localBigInteger = new BigInteger(paramJsonReader.nextString());
      return localBigInteger;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new JsonSyntaxException(localNumberFormatException);
    }
  }

  public void write(JsonWriter paramJsonWriter, BigInteger paramBigInteger)
    throws IOException
  {
    paramJsonWriter.value(paramBigInteger);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.BigIntegerTypeAdapter
 * JD-Core Version:    0.5.3
 */