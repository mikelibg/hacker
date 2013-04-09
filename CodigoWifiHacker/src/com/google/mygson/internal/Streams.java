package com.google.mygson.internal;

import com.google.mygson.JsonElement;
import com.google.mygson.JsonIOException;
import com.google.mygson.JsonNull;
import com.google.mygson.JsonParseException;
import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.internal.bind.TypeAdapters;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonWriter;
import com.google.mygson.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class Streams
{
  public static JsonElement parse(JsonReader paramJsonReader)
    throws JsonParseException
  {
    int i = 1;
    Object localObject;
    try
    {
      paramJsonReader.peek();
      i = 0;
      localObject = (JsonElement)TypeAdapters.JSON_ELEMENT.read(paramJsonReader);
      return localObject;
    }
    catch (EOFException localEOFException)
    {
      if (i != 0)
        localObject = JsonNull.INSTANCE;
      throw new JsonIOException(localEOFException);
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
  }

  public static void write(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
    throws IOException
  {
    TypeAdapters.JSON_ELEMENT.write(paramJsonWriter, paramJsonElement);
  }

  public static Writer writerForAppendable(Appendable paramAppendable)
  {
    if (paramAppendable instanceof Writer);
    for (Object localObject = (Writer)paramAppendable; ; localObject = new AppendableWriter(paramAppendable, null))
      return localObject;
  }

  private static class AppendableWriter extends Writer
  {
    private final Appendable appendable;
    private final CurrentWrite currentWrite = new CurrentWrite();

    private AppendableWriter(Appendable paramAppendable)
    {
      this.appendable = paramAppendable;
    }

    public void close()
    {
    }

    public void flush()
    {
    }

    public void write(int paramInt)
      throws IOException
    {
      this.appendable.append((char)paramInt);
    }

    public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
      throws IOException
    {
      this.currentWrite.chars = paramArrayOfChar;
      this.appendable.append(this.currentWrite, paramInt1, paramInt1 + paramInt2);
    }

    static class CurrentWrite
      implements CharSequence
    {
      char[] chars;

      public char charAt(int paramInt)
      {
        return this.chars[paramInt];
      }

      public int length()
      {
        return this.chars.length;
      }

      public CharSequence subSequence(int paramInt1, int paramInt2)
      {
        return new String(this.chars, paramInt1, paramInt2 - paramInt1);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.Streams
 * JD-Core Version:    0.5.3
 */