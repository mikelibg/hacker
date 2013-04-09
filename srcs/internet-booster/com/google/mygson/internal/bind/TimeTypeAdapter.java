package com.google.mygson.internal.bind;

import com.google.mygson.Gson;
import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class TimeTypeAdapter extends TypeAdapter<Time>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
    {
      if (paramTypeToken.getRawType() == Time.class)
        return new TimeTypeAdapter();
      return null;
    }
  };
  private final DateFormat format = new SimpleDateFormat("hh:mm:ss a");

  public Time read(JsonReader paramJsonReader)
    throws IOException
  {
    monitorenter;
    try
    {
      Time localTime;
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        localTime = null;
      }
      while (true)
      {
        monitorexit;
        try
        {
          localTime = new Time(this.format.parse(paramJsonReader.nextString()).getTime());
        }
        catch (ParseException localParseException)
        {
          throw new JsonSyntaxException(localParseException);
        }
      }
    }
    finally
    {
      monitorexit;
    }
  }

  public void write(JsonWriter paramJsonWriter, Time paramTime)
    throws IOException
  {
    monitorenter;
    Object localObject2;
    if (paramTime == null)
      localObject2 = null;
    while (true)
    {
      String str;
      try
      {
        paramJsonWriter.value((String)localObject2);
        return;
        str = this.format.format(paramTime);
      }
      finally
      {
        monitorexit;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.TimeTypeAdapter
 * JD-Core Version:    0.5.3
 */