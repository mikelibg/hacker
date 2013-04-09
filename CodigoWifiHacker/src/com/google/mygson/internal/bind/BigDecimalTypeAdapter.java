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
    BigDecimal localBigDecimal;
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      localBigDecimal = null;
    }
    while (true)
    {
      return localBigDecimal;
      try
      {
        localBigDecimal = new BigDecimal(paramJsonReader.nextString());
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new JsonSyntaxException(localNumberFormatException);
      }
    }
  }

  public void write(JsonWriter paramJsonWriter, BigDecimal paramBigDecimal)
    throws IOException
  {
    paramJsonWriter.value(paramBigDecimal);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.bind.BigDecimalTypeAdapter
 * JD-Core Version:    0.5.3
 */