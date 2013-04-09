package com.google.mygson.internal.bind;

import com.google.mygson.Gson;
import com.google.mygson.JsonArray;
import com.google.mygson.JsonElement;
import com.google.mygson.JsonIOException;
import com.google.mygson.JsonNull;
import com.google.mygson.JsonObject;
import com.google.mygson.JsonPrimitive;
import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.annotations.SerializedName;
import com.google.mygson.internal.LazilyParsedNumber;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.UUID;

public final class TypeAdapters
{
  public static final TypeAdapter<BitSet> BIT_SET;
  public static final TypeAdapterFactory BIT_SET_FACTORY;
  public static final TypeAdapter<Boolean> BOOLEAN;
  public static final TypeAdapter<Boolean> BOOLEAN_AS_STRING;
  public static final TypeAdapterFactory BOOLEAN_FACTORY;
  public static final TypeAdapter<Number> BYTE;
  public static final TypeAdapterFactory BYTE_FACTORY;
  public static final TypeAdapter<Calendar> CALENDAR;
  public static final TypeAdapterFactory CALENDAR_FACTORY;
  public static final TypeAdapter<Character> CHARACTER;
  public static final TypeAdapterFactory CHARACTER_FACTORY;
  public static final TypeAdapter<Class> CLASS = new TypeAdapter()
  {
    public Class read(JsonReader paramJsonReader)
      throws IOException
    {
      throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
    }

    public void write(JsonWriter paramJsonWriter, Class paramClass)
      throws IOException
    {
      throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + paramClass.getName() + ". Forgot to register a type adapter?");
    }
  };
  public static final TypeAdapterFactory CLASS_FACTORY = newFactory(Class.class, CLASS);
  public static final TypeAdapter<Number> DOUBLE;
  public static final TypeAdapterFactory ENUM_FACTORY;
  public static final TypeAdapter<Number> FLOAT;
  public static final TypeAdapter<InetAddress> INET_ADDRESS;
  public static final TypeAdapterFactory INET_ADDRESS_FACTORY;
  public static final TypeAdapter<Number> INTEGER;
  public static final TypeAdapterFactory INTEGER_FACTORY;
  public static final TypeAdapter<JsonElement> JSON_ELEMENT;
  public static final TypeAdapterFactory JSON_ELEMENT_FACTORY;
  public static final TypeAdapter<Locale> LOCALE;
  public static final TypeAdapterFactory LOCALE_FACTORY;
  public static final TypeAdapter<Number> LONG;
  public static final TypeAdapter<Number> NUMBER;
  public static final TypeAdapterFactory NUMBER_FACTORY;
  public static final TypeAdapter<Number> SHORT;
  public static final TypeAdapterFactory SHORT_FACTORY;
  public static final TypeAdapter<String> STRING;
  public static final TypeAdapter<StringBuffer> STRING_BUFFER;
  public static final TypeAdapterFactory STRING_BUFFER_FACTORY;
  public static final TypeAdapter<StringBuilder> STRING_BUILDER;
  public static final TypeAdapterFactory STRING_BUILDER_FACTORY;
  public static final TypeAdapterFactory STRING_FACTORY;
  public static final TypeAdapterFactory TIMESTAMP_FACTORY;
  public static final TypeAdapter<URI> URI;
  public static final TypeAdapterFactory URI_FACTORY;
  public static final TypeAdapter<URL> URL;
  public static final TypeAdapterFactory URL_FACTORY;
  public static final TypeAdapter<UUID> UUID;
  public static final TypeAdapterFactory UUID_FACTORY;

  static
  {
    BIT_SET = new TypeAdapter()
    {
      public BitSet read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        BitSet localBitSet = new BitSet();
        paramJsonReader.beginArray();
        int i = 0;
        JsonToken localJsonToken = paramJsonReader.peek();
        if (localJsonToken != JsonToken.END_ARRAY)
        {
          label36: boolean bool;
          switch (TypeAdapters.30.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
          {
          default:
            throw new JsonSyntaxException("Invalid bitset value type: " + localJsonToken);
          case 1:
            if (paramJsonReader.nextInt() == 0);
          case 2:
            for (bool = true; ; bool = paramJsonReader.nextBoolean())
              while (true)
              {
                if (bool)
                  localBitSet.set(i);
                ++i;
                localJsonToken = paramJsonReader.peek();
                break label36:
                bool = false;
              }
          case 3:
          }
          String str = paramJsonReader.nextString();
          try
          {
            int j = Integer.parseInt(str);
            if (j != 0)
              bool = true;
            bool = false;
          }
          catch (NumberFormatException localNumberFormatException)
          {
            throw new JsonSyntaxException("Error: Expecting: bitset number value (1, 0), Found: " + str);
          }
        }
        paramJsonReader.endArray();
        return localBitSet;
      }

      public void write(JsonWriter paramJsonWriter, BitSet paramBitSet)
        throws IOException
      {
        if (paramBitSet == null)
        {
          paramJsonWriter.nullValue();
          return;
        }
        paramJsonWriter.beginArray();
        int i = 0;
        if (i < paramBitSet.length())
        {
          label18: if (paramBitSet.get(i));
          int k;
          for (int j = 1; ; k = 0)
          {
            paramJsonWriter.value(j);
            ++i;
            break label18:
          }
        }
        paramJsonWriter.endArray();
      }
    };
    BIT_SET_FACTORY = newFactory(BitSet.class, BIT_SET);
    BOOLEAN = new TypeAdapter()
    {
      public Boolean read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        if (paramJsonReader.peek() == JsonToken.STRING)
          return Boolean.valueOf(Boolean.parseBoolean(paramJsonReader.nextString()));
        return Boolean.valueOf(paramJsonReader.nextBoolean());
      }

      public void write(JsonWriter paramJsonWriter, Boolean paramBoolean)
        throws IOException
      {
        if (paramBoolean == null)
        {
          paramJsonWriter.nullValue();
          return;
        }
        paramJsonWriter.value(paramBoolean.booleanValue());
      }
    };
    BOOLEAN_AS_STRING = new TypeAdapter()
    {
      public Boolean read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return Boolean.valueOf(paramJsonReader.nextString());
      }

      public void write(JsonWriter paramJsonWriter, Boolean paramBoolean)
        throws IOException
      {
        if (paramBoolean == null);
        for (String str = "null"; ; str = paramBoolean.toString())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    BOOLEAN_FACTORY = newFactory(Boolean.TYPE, Boolean.class, BOOLEAN);
    BYTE = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        try
        {
          Byte localByte = Byte.valueOf((byte)paramJsonReader.nextInt());
          return localByte;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new JsonSyntaxException(localNumberFormatException);
        }
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    BYTE_FACTORY = newFactory(Byte.TYPE, Byte.class, BYTE);
    SHORT = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        try
        {
          Short localShort = Short.valueOf((short)paramJsonReader.nextInt());
          return localShort;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new JsonSyntaxException(localNumberFormatException);
        }
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    SHORT_FACTORY = newFactory(Short.TYPE, Short.class, SHORT);
    INTEGER = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        try
        {
          Integer localInteger = Integer.valueOf(paramJsonReader.nextInt());
          return localInteger;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new JsonSyntaxException(localNumberFormatException);
        }
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    INTEGER_FACTORY = newFactory(Integer.TYPE, Integer.class, INTEGER);
    LONG = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        try
        {
          Long localLong = Long.valueOf(paramJsonReader.nextLong());
          return localLong;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw new JsonSyntaxException(localNumberFormatException);
        }
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    FLOAT = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return Float.valueOf((float)paramJsonReader.nextDouble());
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    DOUBLE = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return Double.valueOf(paramJsonReader.nextDouble());
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    NUMBER = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        JsonToken localJsonToken = paramJsonReader.peek();
        switch (TypeAdapters.30.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
        {
        case 2:
        case 3:
        default:
          throw new JsonSyntaxException("Expecting number, got: " + localJsonToken);
        case 4:
          paramJsonReader.nextNull();
          return null;
        case 1:
        }
        return new LazilyParsedNumber(paramJsonReader.nextString());
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        paramJsonWriter.value(paramNumber);
      }
    };
    NUMBER_FACTORY = newFactory(Number.class, NUMBER);
    CHARACTER = new TypeAdapter()
    {
      public Character read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        String str = paramJsonReader.nextString();
        if (str.length() != 1)
          throw new JsonSyntaxException("Expecting character, got: " + str);
        return Character.valueOf(str.charAt(0));
      }

      public void write(JsonWriter paramJsonWriter, Character paramCharacter)
        throws IOException
      {
        if (paramCharacter == null);
        for (String str = null; ; str = String.valueOf(paramCharacter))
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    CHARACTER_FACTORY = newFactory(Character.TYPE, Character.class, CHARACTER);
    STRING = new TypeAdapter()
    {
      public String read(JsonReader paramJsonReader)
        throws IOException
      {
        JsonToken localJsonToken = paramJsonReader.peek();
        if (localJsonToken == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        if (localJsonToken == JsonToken.BOOLEAN)
          return Boolean.toString(paramJsonReader.nextBoolean());
        return paramJsonReader.nextString();
      }

      public void write(JsonWriter paramJsonWriter, String paramString)
        throws IOException
      {
        paramJsonWriter.value(paramString);
      }
    };
    STRING_FACTORY = newFactory(String.class, STRING);
    STRING_BUILDER = new TypeAdapter()
    {
      public StringBuilder read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return new StringBuilder(paramJsonReader.nextString());
      }

      public void write(JsonWriter paramJsonWriter, StringBuilder paramStringBuilder)
        throws IOException
      {
        if (paramStringBuilder == null);
        for (String str = null; ; str = paramStringBuilder.toString())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    STRING_BUILDER_FACTORY = newFactory(StringBuilder.class, STRING_BUILDER);
    STRING_BUFFER = new TypeAdapter()
    {
      public StringBuffer read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return new StringBuffer(paramJsonReader.nextString());
      }

      public void write(JsonWriter paramJsonWriter, StringBuffer paramStringBuffer)
        throws IOException
      {
        if (paramStringBuffer == null);
        for (String str = null; ; str = paramStringBuffer.toString())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    STRING_BUFFER_FACTORY = newFactory(StringBuffer.class, STRING_BUFFER);
    URL = new TypeAdapter()
    {
      public URL read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
          paramJsonReader.nextNull();
        String str;
        do
        {
          return null;
          str = paramJsonReader.nextString();
        }
        while ("null".equals(str));
        return new URL(str);
      }

      public void write(JsonWriter paramJsonWriter, URL paramURL)
        throws IOException
      {
        if (paramURL == null);
        for (String str = null; ; str = paramURL.toExternalForm())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    URL_FACTORY = newFactory(URL.class, URL);
    URI = new TypeAdapter()
    {
      public URI read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        try
        {
          String str = paramJsonReader.nextString();
          if (!("null".equals(str)));
          URI localURI = new URI(str);
          return localURI;
        }
        catch (URISyntaxException localURISyntaxException)
        {
          throw new JsonIOException(localURISyntaxException);
        }
      }

      public void write(JsonWriter paramJsonWriter, URI paramURI)
        throws IOException
      {
        if (paramURI == null);
        for (String str = null; ; str = paramURI.toASCIIString())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    URI_FACTORY = newFactory(URI.class, URI);
    INET_ADDRESS = new TypeAdapter()
    {
      public InetAddress read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return InetAddress.getByName(paramJsonReader.nextString());
      }

      public void write(JsonWriter paramJsonWriter, InetAddress paramInetAddress)
        throws IOException
      {
        if (paramInetAddress == null);
        for (String str = null; ; str = paramInetAddress.getHostAddress())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    INET_ADDRESS_FACTORY = newTypeHierarchyFactory(InetAddress.class, INET_ADDRESS);
    UUID = new TypeAdapter()
    {
      public UUID read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        return UUID.fromString(paramJsonReader.nextString());
      }

      public void write(JsonWriter paramJsonWriter, UUID paramUUID)
        throws IOException
      {
        if (paramUUID == null);
        for (String str = null; ; str = paramUUID.toString())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    UUID_FACTORY = newFactory(UUID.class, UUID);
    TIMESTAMP_FACTORY = new TypeAdapterFactory()
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        if (paramTypeToken.getRawType() != Timestamp.class)
          return null;
        return new TypeAdapter(paramGson.getAdapter(Date.class))
        {
          public Timestamp read(JsonReader paramJsonReader)
            throws IOException
          {
            Date localDate = (Date)this.val$dateTypeAdapter.read(paramJsonReader);
            if (localDate != null)
              return new Timestamp(localDate.getTime());
            return null;
          }

          public void write(JsonWriter paramJsonWriter, Timestamp paramTimestamp)
            throws IOException
          {
            this.val$dateTypeAdapter.write(paramJsonWriter, paramTimestamp);
          }
        };
      }
    };
    CALENDAR = new TypeAdapter()
    {
      private static final String DAY_OF_MONTH = "dayOfMonth";
      private static final String HOUR_OF_DAY = "hourOfDay";
      private static final String MINUTE = "minute";
      private static final String MONTH = "month";
      private static final String SECOND = "second";
      private static final String YEAR = "year";

      public Calendar read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        paramJsonReader.beginObject();
        int i = 0;
        int j = 0;
        int k = 0;
        int l = 0;
        int i1 = 0;
        int i3;
        for (int i2 = 0; paramJsonReader.peek() != JsonToken.END_OBJECT; i2 = i3)
        {
          String str;
          do
            while (true)
            {
              str = paramJsonReader.nextName();
              i3 = paramJsonReader.nextInt();
              if ("year".equals(str))
                i = i3;
              if ("month".equals(str))
                j = i3;
              if ("dayOfMonth".equals(str))
                k = i3;
              if ("hourOfDay".equals(str))
                l = i3;
              if (!("minute".equals(str)))
                break;
              i1 = i3;
            }
          while (!("second".equals(str)));
        }
        paramJsonReader.endObject();
        return new GregorianCalendar(i, j, k, l, i1, i2);
      }

      public void write(JsonWriter paramJsonWriter, Calendar paramCalendar)
        throws IOException
      {
        if (paramCalendar == null)
        {
          paramJsonWriter.nullValue();
          return;
        }
        paramJsonWriter.beginObject();
        paramJsonWriter.name("year");
        paramJsonWriter.value(paramCalendar.get(1));
        paramJsonWriter.name("month");
        paramJsonWriter.value(paramCalendar.get(2));
        paramJsonWriter.name("dayOfMonth");
        paramJsonWriter.value(paramCalendar.get(5));
        paramJsonWriter.name("hourOfDay");
        paramJsonWriter.value(paramCalendar.get(11));
        paramJsonWriter.name("minute");
        paramJsonWriter.value(paramCalendar.get(12));
        paramJsonWriter.name("second");
        paramJsonWriter.value(paramCalendar.get(13));
        paramJsonWriter.endObject();
      }
    };
    CALENDAR_FACTORY = newFactoryForMultipleTypes(Calendar.class, GregorianCalendar.class, CALENDAR);
    LOCALE = new TypeAdapter()
    {
      public Locale read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
        {
          paramJsonReader.nextNull();
          return null;
        }
        StringTokenizer localStringTokenizer = new StringTokenizer(paramJsonReader.nextString(), "_");
        boolean bool1 = localStringTokenizer.hasMoreElements();
        String str1 = null;
        if (bool1)
          str1 = localStringTokenizer.nextToken();
        boolean bool2 = localStringTokenizer.hasMoreElements();
        String str2 = null;
        if (bool2)
          str2 = localStringTokenizer.nextToken();
        boolean bool3 = localStringTokenizer.hasMoreElements();
        String str3 = null;
        if (bool3)
          str3 = localStringTokenizer.nextToken();
        if ((str2 == null) && (str3 == null))
          return new Locale(str1);
        if (str3 == null)
          return new Locale(str1, str2);
        return new Locale(str1, str2, str3);
      }

      public void write(JsonWriter paramJsonWriter, Locale paramLocale)
        throws IOException
      {
        if (paramLocale == null);
        for (String str = null; ; str = paramLocale.toString())
        {
          paramJsonWriter.value(str);
          return;
        }
      }
    };
    LOCALE_FACTORY = newFactory(Locale.class, LOCALE);
    JSON_ELEMENT = new TypeAdapter()
    {
      public JsonElement read(JsonReader paramJsonReader)
        throws IOException
      {
        switch (TypeAdapters.30.$SwitchMap$com$google$gson$stream$JsonToken[paramJsonReader.peek().ordinal()])
        {
        default:
          throw new IllegalArgumentException();
        case 3:
          return new JsonPrimitive(paramJsonReader.nextString());
        case 1:
          return new JsonPrimitive(new LazilyParsedNumber(paramJsonReader.nextString()));
        case 2:
          return new JsonPrimitive(Boolean.valueOf(paramJsonReader.nextBoolean()));
        case 4:
          paramJsonReader.nextNull();
          return JsonNull.INSTANCE;
        case 5:
          JsonArray localJsonArray = new JsonArray();
          paramJsonReader.beginArray();
          while (paramJsonReader.hasNext())
            localJsonArray.add(read(paramJsonReader));
          paramJsonReader.endArray();
          return localJsonArray;
        case 6:
        }
        JsonObject localJsonObject = new JsonObject();
        paramJsonReader.beginObject();
        while (paramJsonReader.hasNext())
          localJsonObject.add(paramJsonReader.nextName(), read(paramJsonReader));
        paramJsonReader.endObject();
        return localJsonObject;
      }

      public void write(JsonWriter paramJsonWriter, JsonElement paramJsonElement)
        throws IOException
      {
        if ((paramJsonElement == null) || (paramJsonElement.isJsonNull()))
        {
          paramJsonWriter.nullValue();
          return;
        }
        if (paramJsonElement.isJsonPrimitive())
        {
          JsonPrimitive localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
          if (localJsonPrimitive.isNumber())
          {
            paramJsonWriter.value(localJsonPrimitive.getAsNumber());
            return;
          }
          if (localJsonPrimitive.isBoolean())
          {
            paramJsonWriter.value(localJsonPrimitive.getAsBoolean());
            return;
          }
          paramJsonWriter.value(localJsonPrimitive.getAsString());
          return;
        }
        if (paramJsonElement.isJsonArray())
        {
          paramJsonWriter.beginArray();
          Iterator localIterator2 = paramJsonElement.getAsJsonArray().iterator();
          while (localIterator2.hasNext())
            write(paramJsonWriter, (JsonElement)localIterator2.next());
          paramJsonWriter.endArray();
          return;
        }
        if (paramJsonElement.isJsonObject())
        {
          paramJsonWriter.beginObject();
          Iterator localIterator1 = paramJsonElement.getAsJsonObject().entrySet().iterator();
          while (localIterator1.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator1.next();
            paramJsonWriter.name((String)localEntry.getKey());
            write(paramJsonWriter, (JsonElement)localEntry.getValue());
          }
          paramJsonWriter.endObject();
          return;
        }
        throw new IllegalArgumentException("Couldn't write " + paramJsonElement.getClass());
      }
    };
    JSON_ELEMENT_FACTORY = newFactory(JsonElement.class, JSON_ELEMENT);
    ENUM_FACTORY = newEnumTypeHierarchyFactory();
  }

  public static <TT> TypeAdapterFactory newEnumTypeHierarchyFactory()
  {
    return new TypeAdapterFactory()
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        Class localClass = paramTypeToken.getRawType();
        if ((!(Enum.class.isAssignableFrom(localClass))) || (localClass == Enum.class))
          return null;
        if (!(localClass.isEnum()))
          localClass = localClass.getSuperclass();
        return new TypeAdapters.EnumTypeAdapter(localClass);
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactory(TypeToken<TT> paramTypeToken, TypeAdapter<TT> paramTypeAdapter)
  {
    return new TypeAdapterFactory(paramTypeToken, paramTypeAdapter)
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        if (paramTypeToken.equals(this.val$type))
          return this.val$typeAdapter;
        return null;
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactory(Class<TT> paramClass, TypeAdapter<TT> paramTypeAdapter)
  {
    return new TypeAdapterFactory(paramClass, paramTypeAdapter)
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        if (paramTypeToken.getRawType() == this.val$type)
          return this.val$typeAdapter;
        return null;
      }

      public String toString()
      {
        return "Factory[type=" + this.val$type.getName() + ",adapter=" + this.val$typeAdapter + "]";
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactory(Class<TT> paramClass1, Class<TT> paramClass2, TypeAdapter<? super TT> paramTypeAdapter)
  {
    return new TypeAdapterFactory(paramClass1, paramClass2, paramTypeAdapter)
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        Class localClass = paramTypeToken.getRawType();
        if ((localClass == this.val$unboxed) || (localClass == this.val$boxed))
          return this.val$typeAdapter;
        return null;
      }

      public String toString()
      {
        return "Factory[type=" + this.val$boxed.getName() + "+" + this.val$unboxed.getName() + ",adapter=" + this.val$typeAdapter + "]";
      }
    };
  }

  public static <TT> TypeAdapterFactory newFactoryForMultipleTypes(Class<TT> paramClass, Class<? extends TT> paramClass1, TypeAdapter<? super TT> paramTypeAdapter)
  {
    return new TypeAdapterFactory(paramClass, paramClass1, paramTypeAdapter)
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        Class localClass = paramTypeToken.getRawType();
        if ((localClass == this.val$base) || (localClass == this.val$sub))
          return this.val$typeAdapter;
        return null;
      }

      public String toString()
      {
        return "Factory[type=" + this.val$base.getName() + "+" + this.val$sub.getName() + ",adapter=" + this.val$typeAdapter + "]";
      }
    };
  }

  public static <TT> TypeAdapterFactory newTypeHierarchyFactory(Class<TT> paramClass, TypeAdapter<TT> paramTypeAdapter)
  {
    return new TypeAdapterFactory(paramClass, paramTypeAdapter)
    {
      public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
      {
        if (this.val$clazz.isAssignableFrom(paramTypeToken.getRawType()))
          return this.val$typeAdapter;
        return null;
      }

      public String toString()
      {
        return "Factory[typeHierarchy=" + this.val$clazz.getName() + ",adapter=" + this.val$typeAdapter + "]";
      }
    };
  }

  private static final class EnumTypeAdapter<T extends Enum<T>> extends TypeAdapter<T>
  {
    private final Map<T, String> constantToName = new HashMap();
    private final Map<String, T> nameToConstant = new HashMap();

    public EnumTypeAdapter(Class<T> paramClass)
    {
      try
      {
        Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
        int i = arrayOfEnum.length;
        int j = 0;
        if (j >= i)
          return;
        Enum localEnum = arrayOfEnum[j];
        String str = localEnum.name();
        SerializedName localSerializedName = (SerializedName)paramClass.getField(str).getAnnotation(SerializedName.class);
        if (localSerializedName != null)
          str = localSerializedName.value();
        this.nameToConstant.put(str, localEnum);
        this.constantToName.put(localEnum, str);
        ++j;
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        throw new AssertionError();
      }
    }

    public T read(JsonReader paramJsonReader)
      throws IOException
    {
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      return ((Enum)this.nameToConstant.get(paramJsonReader.nextString()));
    }

    public void write(JsonWriter paramJsonWriter, T paramT)
      throws IOException
    {
      if (paramT == null);
      for (String str = null; ; str = (String)this.constantToName.get(paramT))
      {
        paramJsonWriter.value(str);
        return;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.TypeAdapters
 * JD-Core Version:    0.5.3
 */