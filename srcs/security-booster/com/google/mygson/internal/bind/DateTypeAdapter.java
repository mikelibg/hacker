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
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public final class DateTypeAdapter extends TypeAdapter<Date>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
    {
      if (paramTypeToken.getRawType() == Date.class)
        return new DateTypeAdapter();
      return null;
    }
  };
  private final DateFormat enUsFormat = DateFormat.getDateTimeInstance(2, 2, Locale.US);
  private final DateFormat iso8601Format = buildIso8601Format();
  private final DateFormat localFormat = DateFormat.getDateTimeInstance(2, 2);

  private static DateFormat buildIso8601Format()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    return localSimpleDateFormat;
  }

  private Date deserializeToDate(String paramString)
  {
    monitorenter;
    Object localObject2;
    try
    {
      Date localDate3 = this.localFormat.parse(paramString);
      localObject2 = localDate3;
      return localObject2;
    }
    catch (ParseException localParseException1)
    {
    }
    finally
    {
      try
      {
        Date localDate2 = this.enUsFormat.parse(paramString);
        localObject2 = localDate2;
      }
      catch (ParseException localParseException2)
      {
        try
        {
          Date localDate1 = this.iso8601Format.parse(paramString);
          localObject2 = localDate1;
        }
        catch (ParseException localParseException3)
        {
          throw new JsonSyntaxException(paramString, localParseException3);
        }
        localObject1 = finally;
        monitorexit;
        throw localObject1;
      }
    }
  }

  public Date read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      return null;
    }
    return deserializeToDate(paramJsonReader.nextString());
  }

  public void write(JsonWriter paramJsonWriter, Date paramDate)
    throws IOException
  {
    monitorenter;
    if (paramDate == null);
    try
    {
      paramJsonWriter.nullValue();
      return;
    }
    finally
    {
      monitorexit;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.DateTypeAdapter
 * JD-Core Version:    0.5.3
 */