package com.google.mygson;

import com.google.mygson.internal.bind.JsonTreeReader;
import com.google.mygson.internal.bind.JsonTreeWriter;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter<T>
{
  final T fromJson(Reader paramReader)
    throws IOException
  {
    JsonReader localJsonReader = new JsonReader(paramReader);
    localJsonReader.setLenient(true);
    return read(localJsonReader);
  }

  final T fromJson(String paramString)
    throws IOException
  {
    return fromJson(new StringReader(paramString));
  }

  final T fromJsonTree(JsonElement paramJsonElement)
  {
    try
    {
      JsonTreeReader localJsonTreeReader = new JsonTreeReader(paramJsonElement);
      localJsonTreeReader.setLenient(true);
      Object localObject = read(localJsonTreeReader);
      return localObject;
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
  }

  public final TypeAdapter<T> nullSafe()
  {
    return new TypeAdapter()
    {
      public T read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return TypeAdapter.this.read(paramJsonReader);
      }

      public void write(JsonWriter paramJsonWriter, T paramT)
        throws IOException
      {
        if (paramT == null)
        {
          paramJsonWriter.nullValue();
          return;
        }
        TypeAdapter.this.write(paramJsonWriter, paramT);
      }
    };
  }

  public abstract T read(JsonReader paramJsonReader)
    throws IOException;

  final String toJson(T paramT)
    throws IOException
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(localStringWriter, paramT);
    return localStringWriter.toString();
  }

  final void toJson(Writer paramWriter, T paramT)
    throws IOException
  {
    write(new JsonWriter(paramWriter), paramT);
  }

  final JsonElement toJsonTree(T paramT)
  {
    try
    {
      JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
      localJsonTreeWriter.setLenient(true);
      write(localJsonTreeWriter, paramT);
      JsonElement localJsonElement = localJsonTreeWriter.get();
      return localJsonElement;
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
  }

  public abstract void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException;
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.TypeAdapter
 * JD-Core Version:    0.5.3
 */