package com.google.mygson.internal.bind;

import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.math.BigDecimal;

public final class BigDecimalTypeAdapter extends TypeAdapter<BigDecimal>
{
  public BigDecimal read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    try
    {
      BigDecimal localBigDecimal = new BigDecimal(paramJsonReader.nextString());
      return localBigDecimal;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new JsonSyntaxException(localNumberFormatException);
    }
  }

  public void write(JsonWriter paramJsonWriter, BigDecimal paramBigDecimal)
    throws IOException
  {
    paramJsonWriter.value(paramBigDecimal);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.BigDecimalTypeAdapter
 * JD-Core Version:    0.5.3
 */