package com.google.mygson;

import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class JsonParser
{
  // ERROR //
  public JsonElement parse(JsonReader paramJsonReader)
    throws JsonIOException, JsonSyntaxException
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 26	com/google/mygson/stream/JsonReader:isLenient	()Z
    //   4: istore_2
    //   5: aload_1
    //   6: iconst_1
    //   7: invokevirtual 30	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   10: aload_1
    //   11: invokestatic 34	com/google/mygson/internal/Streams:parse	(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;
    //   14: astore 8
    //   16: aload 8
    //   18: astore 5
    //   20: aload_1
    //   21: iload_2
    //   22: invokevirtual 30	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   25: aload 5
    //   27: areturn
    //   28: astore 7
    //   30: new 20	com/google/mygson/JsonParseException
    //   33: dup
    //   34: new 36	java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   41: ldc 39
    //   43: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: aload_1
    //   47: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   50: ldc 48
    //   52: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: aload 7
    //   60: invokespecial 55	com/google/mygson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   63: athrow
    //   64: astore 4
    //   66: aload_1
    //   67: iload_2
    //   68: invokevirtual 30	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   71: aload 4
    //   73: athrow
    //   74: astore 6
    //   76: new 20	com/google/mygson/JsonParseException
    //   79: dup
    //   80: new 36	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   87: ldc 39
    //   89: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   96: ldc 48
    //   98: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: aload 6
    //   106: invokespecial 55	com/google/mygson/JsonParseException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   109: athrow
    //   110: astore_3
    //   111: aload_3
    //   112: invokevirtual 59	com/google/mygson/JsonParseException:getCause	()Ljava/lang/Throwable;
    //   115: instanceof 61
    //   118: ifeq +16 -> 134
    //   121: getstatic 67	com/google/mygson/JsonNull:INSTANCE	Lcom/google/mygson/JsonNull;
    //   124: astore 5
    //   126: aload_1
    //   127: iload_2
    //   128: invokevirtual 30	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   131: goto -106 -> 25
    //   134: aload_3
    //   135: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   10	16	28	java/lang/StackOverflowError
    //   10	16	64	finally
    //   30	64	64	finally
    //   76	126	64	finally
    //   134	136	64	finally
    //   10	16	74	java/lang/OutOfMemoryError
    //   10	16	110	com/google/mygson/JsonParseException
  }

  public JsonElement parse(Reader paramReader)
    throws JsonIOException, JsonSyntaxException
  {
    JsonElement localJsonElement;
    try
    {
      JsonReader localJsonReader = new JsonReader(paramReader);
      localJsonElement = parse(localJsonReader);
      if ((!(localJsonElement.isJsonNull())) && (localJsonReader.peek() != JsonToken.END_DOCUMENT))
        throw new JsonSyntaxException("Did not consume the entire document.");
    }
    catch (MalformedJsonException localMalformedJsonException)
    {
      throw new JsonSyntaxException(localMalformedJsonException);
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new JsonSyntaxException(localNumberFormatException);
    }
    return localJsonElement;
  }

  public JsonElement parse(String paramString)
    throws JsonSyntaxException
  {
    return parse(new StringReader(paramString));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.JsonParser
 * JD-Core Version:    0.5.3
 */