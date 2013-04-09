package com.google.mygson;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

final class DefaultDateTypeAdapter
  implements JsonSerializer<java.util.Date>, JsonDeserializer<java.util.Date>
{
  private final DateFormat enUsFormat;
  private final DateFormat iso8601Format;
  private final DateFormat localFormat;

  DefaultDateTypeAdapter()
  {
    this(DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
  }

  DefaultDateTypeAdapter(int paramInt)
  {
    this(DateFormat.getDateInstance(paramInt, Locale.US), DateFormat.getDateInstance(paramInt));
  }

  public DefaultDateTypeAdapter(int paramInt1, int paramInt2)
  {
    this(DateFormat.getDateTimeInstance(paramInt1, paramInt2, Locale.US), DateFormat.getDateTimeInstance(paramInt1, paramInt2));
  }

  DefaultDateTypeAdapter(String paramString)
  {
    this(new SimpleDateFormat(paramString, Locale.US), new SimpleDateFormat(paramString));
  }

  DefaultDateTypeAdapter(DateFormat paramDateFormat1, DateFormat paramDateFormat2)
  {
    this.enUsFormat = paramDateFormat1;
    this.localFormat = paramDateFormat2;
    this.iso8601Format = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    this.iso8601Format.setTimeZone(TimeZone.getTimeZone("UTC"));
  }

  // ERROR //
  private java.util.Date deserializeToDate(JsonElement paramJsonElement)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	com/google/mygson/DefaultDateTypeAdapter:localFormat	Ljava/text/DateFormat;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 56	com/google/mygson/DefaultDateTypeAdapter:localFormat	Ljava/text/DateFormat;
    //   11: aload_1
    //   12: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   15: invokevirtual 86	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   18: astore 9
    //   20: aload_2
    //   21: monitorexit
    //   22: aload 9
    //   24: areturn
    //   25: astore 4
    //   27: aload_0
    //   28: getfield 54	com/google/mygson/DefaultDateTypeAdapter:enUsFormat	Ljava/text/DateFormat;
    //   31: aload_1
    //   32: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   35: invokevirtual 86	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   38: astore 8
    //   40: aload_2
    //   41: monitorexit
    //   42: aload 8
    //   44: areturn
    //   45: astore_3
    //   46: aload_2
    //   47: monitorexit
    //   48: aload_3
    //   49: athrow
    //   50: astore 5
    //   52: aload_0
    //   53: getfield 60	com/google/mygson/DefaultDateTypeAdapter:iso8601Format	Ljava/text/DateFormat;
    //   56: aload_1
    //   57: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   60: invokevirtual 86	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   63: astore 7
    //   65: aload_2
    //   66: monitorexit
    //   67: aload 7
    //   69: areturn
    //   70: astore 6
    //   72: new 88	com/google/mygson/JsonSyntaxException
    //   75: dup
    //   76: aload_1
    //   77: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   80: aload 6
    //   82: invokespecial 91	com/google/mygson/JsonSyntaxException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   85: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   7	20	25	java/text/ParseException
    //   7	20	45	finally
    //   20	22	45	finally
    //   27	40	45	finally
    //   40	42	45	finally
    //   46	48	45	finally
    //   52	65	45	finally
    //   65	67	45	finally
    //   72	86	45	finally
    //   27	40	50	java/text/ParseException
    //   52	65	70	java/text/ParseException
  }

  public java.util.Date deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    if (!(paramJsonElement instanceof JsonPrimitive))
      throw new JsonParseException("The date should be a string value");
    java.util.Date localDate = deserializeToDate(paramJsonElement);
    if (paramType == java.util.Date.class)
      return localDate;
    if (paramType == Timestamp.class)
      return new Timestamp(localDate.getTime());
    if (paramType == java.sql.Date.class)
      return new java.sql.Date(localDate.getTime());
    throw new IllegalArgumentException(super.getClass() + " cannot deserialize to " + paramType);
  }

  public JsonElement serialize(java.util.Date paramDate, Type paramType, JsonSerializationContext paramJsonSerializationContext)
  {
    synchronized (this.localFormat)
    {
      JsonPrimitive localJsonPrimitive = new JsonPrimitive(this.enUsFormat.format(paramDate));
      return localJsonPrimitive;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(DefaultDateTypeAdapter.class.getSimpleName());
    localStringBuilder.append('(').append(this.localFormat.getClass().getSimpleName()).append(')');
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.DefaultDateTypeAdapter
 * JD-Core Version:    0.5.3
 */