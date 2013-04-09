package com.google.mygson;

import com.google.mygson.internal.Streams;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class JsonElement
{
  public BigDecimal getAsBigDecimal()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public BigInteger getAsBigInteger()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public boolean getAsBoolean()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  Boolean getAsBooleanWrapper()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public byte getAsByte()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public char getAsCharacter()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public double getAsDouble()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public float getAsFloat()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public int getAsInt()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public JsonArray getAsJsonArray()
  {
    if (isJsonArray())
      return ((JsonArray)this);
    throw new IllegalStateException("This is not a JSON Array.");
  }

  public JsonNull getAsJsonNull()
  {
    if (isJsonNull())
      return ((JsonNull)this);
    throw new IllegalStateException("This is not a JSON Null.");
  }

  public JsonObject getAsJsonObject()
  {
    if (isJsonObject())
      return ((JsonObject)this);
    throw new IllegalStateException("Not a JSON Object: " + this);
  }

  public JsonPrimitive getAsJsonPrimitive()
  {
    if (isJsonPrimitive())
      return ((JsonPrimitive)this);
    throw new IllegalStateException("This is not a JSON Primitive.");
  }

  public long getAsLong()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public Number getAsNumber()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public short getAsShort()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public String getAsString()
  {
    throw new UnsupportedOperationException(super.getClass().getSimpleName());
  }

  public boolean isJsonArray()
  {
    return this instanceof JsonArray;
  }

  public boolean isJsonNull()
  {
    return this instanceof JsonNull;
  }

  public boolean isJsonObject()
  {
    return this instanceof JsonObject;
  }

  public boolean isJsonPrimitive()
  {
    return this instanceof JsonPrimitive;
  }

  public String toString()
  {
    try
    {
      StringWriter localStringWriter = new StringWriter();
      JsonWriter localJsonWriter = new JsonWriter(localStringWriter);
      localJsonWriter.setLenient(true);
      Streams.write(this, localJsonWriter);
      String str = localStringWriter.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.mygson.JsonElement
 * JD-Core Version:    0.5.3
 */