package com.google.mygson.internal.bind;

import com.google.mygson.JsonArray;
import com.google.mygson.JsonElement;
import com.google.mygson.JsonNull;
import com.google.mygson.JsonObject;
import com.google.mygson.JsonPrimitive;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class JsonTreeWriter extends JsonWriter
{
  private static final JsonPrimitive SENTINEL_CLOSED;
  private static final Writer UNWRITABLE_WRITER = new Writer()
  {
    public void close()
      throws IOException
    {
      throw new AssertionError();
    }

    public void flush()
      throws IOException
    {
      throw new AssertionError();
    }

    public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      throw new AssertionError();
    }
  };
  private String pendingName;
  private JsonElement product = JsonNull.INSTANCE;
  private final List<JsonElement> stack = new ArrayList();

  static
  {
    SENTINEL_CLOSED = new JsonPrimitive("closed");
  }

  public JsonTreeWriter()
  {
    super(UNWRITABLE_WRITER);
  }

  private JsonElement peek()
  {
    return ((JsonElement)this.stack.get(-1 + this.stack.size()));
  }

  private void put(JsonElement paramJsonElement)
  {
    if (this.pendingName != null)
    {
      if ((!(paramJsonElement.isJsonNull())) || (getSerializeNulls()))
        ((JsonObject)peek()).add(this.pendingName, paramJsonElement);
      this.pendingName = null;
    }
    while (true)
    {
      return;
      if (this.stack.isEmpty())
        this.product = paramJsonElement;
      JsonElement localJsonElement = peek();
      if (!(localJsonElement instanceof JsonArray))
        break;
      ((JsonArray)localJsonElement).add(paramJsonElement);
    }
    throw new IllegalStateException();
  }

  public JsonWriter beginArray()
    throws IOException
  {
    JsonArray localJsonArray = new JsonArray();
    put(localJsonArray);
    this.stack.add(localJsonArray);
    return this;
  }

  public JsonWriter beginObject()
    throws IOException
  {
    JsonObject localJsonObject = new JsonObject();
    put(localJsonObject);
    this.stack.add(localJsonObject);
    return this;
  }

  public void close()
    throws IOException
  {
    if (!(this.stack.isEmpty()))
      throw new IOException("Incomplete document");
    this.stack.add(SENTINEL_CLOSED);
  }

  public JsonWriter endArray()
    throws IOException
  {
    if ((this.stack.isEmpty()) || (this.pendingName != null))
      throw new IllegalStateException();
    if (peek() instanceof JsonArray)
    {
      this.stack.remove(-1 + this.stack.size());
      return this;
    }
    throw new IllegalStateException();
  }

  public JsonWriter endObject()
    throws IOException
  {
    if ((this.stack.isEmpty()) || (this.pendingName != null))
      throw new IllegalStateException();
    if (peek() instanceof JsonObject)
    {
      this.stack.remove(-1 + this.stack.size());
      return this;
    }
    throw new IllegalStateException();
  }

  public void flush()
    throws IOException
  {
  }

  public JsonElement get()
  {
    if (!(this.stack.isEmpty()))
      throw new IllegalStateException("Expected one JSON element but was " + this.stack);
    return this.product;
  }

  public JsonWriter name(String paramString)
    throws IOException
  {
    if ((this.stack.isEmpty()) || (this.pendingName != null))
      throw new IllegalStateException();
    if (peek() instanceof JsonObject)
    {
      this.pendingName = paramString;
      return this;
    }
    throw new IllegalStateException();
  }

  public JsonWriter nullValue()
    throws IOException
  {
    put(JsonNull.INSTANCE);
    return this;
  }

  public JsonWriter value(double paramDouble)
    throws IOException
  {
    if ((!(isLenient())) && (((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble)))))
      throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramDouble);
    put(new JsonPrimitive(Double.valueOf(paramDouble)));
    return this;
  }

  public JsonWriter value(long paramLong)
    throws IOException
  {
    put(new JsonPrimitive(Long.valueOf(paramLong)));
    return this;
  }

  public JsonWriter value(Number paramNumber)
    throws IOException
  {
    if (paramNumber == null)
      this = nullValue();
    while (true)
    {
      return this;
      if (!(isLenient()))
      {
        double d = paramNumber.doubleValue();
        if ((Double.isNaN(d)) || (Double.isInfinite(d)))
          throw new IllegalArgumentException("JSON forbids NaN and infinities: " + paramNumber);
      }
      put(new JsonPrimitive(paramNumber));
    }
  }

  public JsonWriter value(String paramString)
    throws IOException
  {
    if (paramString == null)
      this = nullValue();
    while (true)
    {
      return this;
      put(new JsonPrimitive(paramString));
    }
  }

  public JsonWriter value(boolean paramBoolean)
    throws IOException
  {
    put(new JsonPrimitive(Boolean.valueOf(paramBoolean)));
    return this;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.bind.JsonTreeWriter
 * JD-Core Version:    0.5.3
 */