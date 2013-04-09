package com.google.mygson;

import com.google.mygson.internal.Streams;
import com.google.mygson.stream.JsonReader;
import java.io.EOFException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class JsonStreamParser
  implements Iterator<JsonElement>
{
  private final Object lock;
  private final JsonReader parser;

  public JsonStreamParser(Reader paramReader)
  {
    this.parser = new JsonReader(paramReader);
    this.parser.setLenient(true);
    this.lock = new Object();
  }

  public JsonStreamParser(String paramString)
  {
    this(new StringReader(paramString));
  }

  // ERROR //
  public boolean hasNext()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 28	com/google/mygson/JsonStreamParser:lock	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 22	com/google/mygson/JsonStreamParser:parser	Lcom/google/mygson/stream/JsonReader;
    //   11: invokevirtual 44	com/google/mygson/stream/JsonReader:peek	()Lcom/google/mygson/stream/JsonToken;
    //   14: astore 5
    //   16: getstatic 50	com/google/mygson/stream/JsonToken:END_DOCUMENT	Lcom/google/mygson/stream/JsonToken;
    //   19: astore 6
    //   21: aload 5
    //   23: aload 6
    //   25: if_acmpeq +38 -> 63
    //   28: iconst_1
    //   29: istore 7
    //   31: aload_1
    //   32: monitorexit
    //   33: iload 7
    //   35: ireturn
    //   36: astore 4
    //   38: new 52	com/google/mygson/JsonSyntaxException
    //   41: dup
    //   42: aload 4
    //   44: invokespecial 55	com/google/mygson/JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   47: athrow
    //   48: astore_3
    //   49: aload_1
    //   50: monitorexit
    //   51: aload_3
    //   52: athrow
    //   53: astore_2
    //   54: new 57	com/google/mygson/JsonIOException
    //   57: dup
    //   58: aload_2
    //   59: invokespecial 58	com/google/mygson/JsonIOException:<init>	(Ljava/lang/Throwable;)V
    //   62: athrow
    //   63: iconst_0
    //   64: istore 7
    //   66: goto -35 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   7	21	36	com/google/mygson/stream/MalformedJsonException
    //   7	21	48	finally
    //   31	33	48	finally
    //   38	48	48	finally
    //   49	51	48	finally
    //   54	63	48	finally
    //   7	21	53	java/io/IOException
  }

  public JsonElement next()
    throws JsonParseException
  {
    if (!(hasNext()))
      throw new NoSuchElementException();
    try
    {
      JsonElement localJsonElement = Streams.parse(this.parser);
      return localJsonElement;
    }
    catch (StackOverflowError localStackOverflowError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localStackOverflowError);
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      throw new JsonParseException("Failed parsing JSON source to Json", localOutOfMemoryError);
    }
    catch (JsonParseException localNoSuchElementException)
    {
      NoSuchElementException localNoSuchElementException;
      if (localJsonParseException.getCause() instanceof EOFException)
        localNoSuchElementException = new NoSuchElementException();
      throw localNoSuchElementException;
    }
  }

  public void remove()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.JsonStreamParser
 * JD-Core Version:    0.5.3
 */