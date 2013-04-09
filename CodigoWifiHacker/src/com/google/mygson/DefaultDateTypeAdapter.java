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
    //   18: astore 10
    //   20: aload 10
    //   22: astore 8
    //   24: aload_2
    //   25: monitorexit
    //   26: aload 8
    //   28: areturn
    //   29: astore 4
    //   31: aload_0
    //   32: getfield 54	com/google/mygson/DefaultDateTypeAdapter:enUsFormat	Ljava/text/DateFormat;
    //   35: aload_1
    //   36: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   39: invokevirtual 86	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   42: astore 9
    //   44: aload 9
    //   46: astore 8
    //   48: aload_2
    //   49: monitorexit
    //   50: goto -24 -> 26
    //   53: astore_3
    //   54: aload_2
    //   55: monitorexit
    //   56: aload_3
    //   57: athrow
    //   58: astore 5
    //   60: aload_0
    //   61: getfield 60	com/google/mygson/DefaultDateTypeAdapter:iso8601Format	Ljava/text/DateFormat;
    //   64: aload_1
    //   65: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   68: invokevirtual 86	java/text/DateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   71: astore 7
    //   73: aload 7
    //   75: astore 8
    //   77: aload_2
    //   78: monitorexit
    //   79: goto -53 -> 26
    //   82: astore 6
    //   84: new 88	com/google/mygson/JsonSyntaxException
    //   87: dup
    //   88: aload_1
    //   89: invokevirtual 82	com/google/mygson/JsonElement:getAsString	()Ljava/lang/String;
    //   92: aload 6
    //   94: invokespecial 91	com/google/mygson/JsonSyntaxException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   97: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   7	20	29	java/text/ParseException
    //   7	20	53	finally
    //   24	26	53	finally
    //   31	44	53	finally
    //   48	56	53	finally
    //   60	73	53	finally
    //   77	98	53	finally
    //   31	44	58	java/text/ParseException
    //   60	73	82	java/text/ParseException
  }

  public java.util.Date deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
    throws JsonParseException
  {
    if (!(paramJsonElement instanceof JsonPrimitive))
      throw new JsonParseException("The date should be a string value");
    Object localObject = deserializeToDate(paramJsonElement);
    if (paramType == java.util.Date.class);
    while (true)
    {
      return localObject;
      if (paramType == Timestamp.class)
        localObject = new Timestamp(((java.util.Date)localObject).getTime());
      if (paramType != java.sql.Date.class)
        break;
      localObject = new java.sql.Date(((java.util.Date)localObject).getTime());
    }
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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.DefaultDateTypeAdapter
 * JD-Core Version:    0.5.3
 */