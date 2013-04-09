package com.google.mygson;

import com.google.mygson.internal.ConstructorConstructor;
import com.google.mygson.internal.Excluder;
import com.google.mygson.internal.GsonInternalAccess;
import com.google.mygson.internal.Primitives;
import com.google.mygson.internal.Streams;
import com.google.mygson.internal.bind.ArrayTypeAdapter;
import com.google.mygson.internal.bind.BigDecimalTypeAdapter;
import com.google.mygson.internal.bind.BigIntegerTypeAdapter;
import com.google.mygson.internal.bind.CollectionTypeAdapterFactory;
import com.google.mygson.internal.bind.DateTypeAdapter;
import com.google.mygson.internal.bind.JsonTreeReader;
import com.google.mygson.internal.bind.JsonTreeWriter;
import com.google.mygson.internal.bind.MapTypeAdapterFactory;
import com.google.mygson.internal.bind.ObjectTypeAdapter;
import com.google.mygson.internal.bind.ReflectiveTypeAdapterFactory;
import com.google.mygson.internal.bind.SqlDateTypeAdapter;
import com.google.mygson.internal.bind.TimeTypeAdapter;
import com.google.mygson.internal.bind.TypeAdapters;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import com.google.mygson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class Gson
{
  static final boolean DEFAULT_JSON_NON_EXECUTABLE = 0;
  private static final String JSON_NON_EXECUTABLE_PREFIX = ")]}'\n";
  private final ThreadLocal<Map<TypeToken<?>, FutureTypeAdapter<?>>> calls;
  private final ConstructorConstructor constructorConstructor;
  final JsonDeserializationContext deserializationContext;
  private final List<TypeAdapterFactory> factories;
  private final boolean generateNonExecutableJson;
  private final boolean htmlSafe;
  private final boolean prettyPrinting;
  final JsonSerializationContext serializationContext;
  private final boolean serializeNulls;
  private final Map<TypeToken<?>, TypeAdapter<?>> typeTokenCache;

  static
  {
    GsonInternalAccess.INSTANCE = new GsonInternalAccess()
    {
      public <T> TypeAdapter<T> getNextAdapter(Gson paramGson, TypeAdapterFactory paramTypeAdapterFactory, TypeToken<T> paramTypeToken)
      {
        int i = 0;
        Iterator localIterator = paramGson.factories.iterator();
        TypeAdapter localTypeAdapter;
        while (localIterator.hasNext())
        {
          TypeAdapterFactory localTypeAdapterFactory = (TypeAdapterFactory)localIterator.next();
          if (i == 0)
          {
            if (localTypeAdapterFactory != paramTypeAdapterFactory)
              continue;
            i = 1;
          }
          localTypeAdapter = localTypeAdapterFactory.create(paramGson, paramTypeToken);
          if (localTypeAdapter != null)
            return localTypeAdapter;
        }
        throw new IllegalArgumentException("GSON cannot serialize " + paramTypeToken);
      }
    };
  }

  public Gson()
  {
    this(Excluder.DEFAULT, FieldNamingPolicy.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, LongSerializationPolicy.DEFAULT, Collections.emptyList());
  }

  Gson(Excluder paramExcluder, FieldNamingStrategy paramFieldNamingStrategy, Map<Type, InstanceCreator<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, LongSerializationPolicy paramLongSerializationPolicy, List<TypeAdapterFactory> paramList)
  {
    this.calls = new ThreadLocal()
    {
      protected Map<TypeToken<?>, Gson.FutureTypeAdapter<?>> initialValue()
      {
        return new HashMap();
      }
    };
    this.typeTokenCache = Collections.synchronizedMap(new HashMap());
    this.deserializationContext = new JsonDeserializationContext()
    {
      public <T> T deserialize(JsonElement paramJsonElement, Type paramType)
        throws JsonParseException
      {
        return Gson.this.fromJson(paramJsonElement, paramType);
      }
    };
    this.serializationContext = new JsonSerializationContext()
    {
      public JsonElement serialize(Object paramObject)
      {
        return Gson.this.toJsonTree(paramObject);
      }

      public JsonElement serialize(Object paramObject, Type paramType)
      {
        return Gson.this.toJsonTree(paramObject, paramType);
      }
    };
    this.constructorConstructor = new ConstructorConstructor(paramMap);
    this.serializeNulls = paramBoolean1;
    this.generateNonExecutableJson = paramBoolean3;
    this.htmlSafe = paramBoolean4;
    this.prettyPrinting = paramBoolean5;
    ReflectiveTypeAdapterFactory localReflectiveTypeAdapterFactory = new ReflectiveTypeAdapterFactory(this.constructorConstructor, paramFieldNamingStrategy, paramExcluder);
    ConstructorConstructor localConstructorConstructor = new ConstructorConstructor();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(TypeAdapters.STRING_FACTORY);
    localArrayList.add(TypeAdapters.INTEGER_FACTORY);
    localArrayList.add(TypeAdapters.BOOLEAN_FACTORY);
    localArrayList.add(TypeAdapters.BYTE_FACTORY);
    localArrayList.add(TypeAdapters.SHORT_FACTORY);
    localArrayList.add(TypeAdapters.newFactory(Long.TYPE, Long.class, longAdapter(paramLongSerializationPolicy)));
    localArrayList.add(TypeAdapters.newFactory(Double.TYPE, Double.class, doubleAdapter(paramBoolean6)));
    localArrayList.add(TypeAdapters.newFactory(Float.TYPE, Float.class, floatAdapter(paramBoolean6)));
    localArrayList.add(paramExcluder);
    localArrayList.add(TypeAdapters.NUMBER_FACTORY);
    localArrayList.add(TypeAdapters.CHARACTER_FACTORY);
    localArrayList.add(TypeAdapters.STRING_BUILDER_FACTORY);
    localArrayList.add(TypeAdapters.STRING_BUFFER_FACTORY);
    localArrayList.add(TypeAdapters.newFactory(BigDecimal.class, new BigDecimalTypeAdapter()));
    localArrayList.add(TypeAdapters.newFactory(BigInteger.class, new BigIntegerTypeAdapter()));
    localArrayList.add(TypeAdapters.JSON_ELEMENT_FACTORY);
    localArrayList.add(ObjectTypeAdapter.FACTORY);
    localArrayList.addAll(paramList);
    localArrayList.add(new CollectionTypeAdapterFactory(localConstructorConstructor));
    localArrayList.add(TypeAdapters.URL_FACTORY);
    localArrayList.add(TypeAdapters.URI_FACTORY);
    localArrayList.add(TypeAdapters.UUID_FACTORY);
    localArrayList.add(TypeAdapters.LOCALE_FACTORY);
    localArrayList.add(TypeAdapters.INET_ADDRESS_FACTORY);
    localArrayList.add(TypeAdapters.BIT_SET_FACTORY);
    localArrayList.add(DateTypeAdapter.FACTORY);
    localArrayList.add(TypeAdapters.CALENDAR_FACTORY);
    localArrayList.add(TimeTypeAdapter.FACTORY);
    localArrayList.add(SqlDateTypeAdapter.FACTORY);
    localArrayList.add(TypeAdapters.TIMESTAMP_FACTORY);
    localArrayList.add(new MapTypeAdapterFactory(localConstructorConstructor, paramBoolean2));
    localArrayList.add(ArrayTypeAdapter.FACTORY);
    localArrayList.add(TypeAdapters.ENUM_FACTORY);
    localArrayList.add(TypeAdapters.CLASS_FACTORY);
    localArrayList.add(localReflectiveTypeAdapterFactory);
    this.factories = Collections.unmodifiableList(localArrayList);
  }

  private static void assertFullConsumption(Object paramObject, JsonReader paramJsonReader)
  {
    if (paramObject == null)
      return;
    try
    {
      if (paramJsonReader.peek() == JsonToken.END_DOCUMENT)
        return;
      throw new JsonIOException("JSON document was not fully consumed.");
    }
    catch (MalformedJsonException localMalformedJsonException)
    {
      throw new JsonSyntaxException(localMalformedJsonException);
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
  }

  private void checkValidFloatingPoint(double paramDouble)
  {
    if ((!(Double.isNaN(paramDouble))) && (!(Double.isInfinite(paramDouble))))
      return;
    throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this" + " behavior, use GsonBuilder.serializeSpecialDoubleValues() method.");
  }

  private TypeAdapter<Number> doubleAdapter(boolean paramBoolean)
  {
    if (paramBoolean);
    for (Object localObject = TypeAdapters.DOUBLE; ; localObject = new TypeAdapter()
    {
      public Double read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
          paramJsonReader.nextNull();
        for (Double localDouble = null; ; localDouble = Double.valueOf(paramJsonReader.nextDouble()))
          return localDouble;
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        if (paramNumber == null)
          paramJsonWriter.nullValue();
        while (true)
        {
          return;
          double d = paramNumber.doubleValue();
          Gson.this.checkValidFloatingPoint(d);
          paramJsonWriter.value(paramNumber);
        }
      }
    })
      return localObject;
  }

  private TypeAdapter<Number> floatAdapter(boolean paramBoolean)
  {
    if (paramBoolean);
    for (Object localObject = TypeAdapters.FLOAT; ; localObject = new TypeAdapter()
    {
      public Float read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
          paramJsonReader.nextNull();
        for (Float localFloat = null; ; localFloat = Float.valueOf((float)paramJsonReader.nextDouble()))
          return localFloat;
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        if (paramNumber == null)
          paramJsonWriter.nullValue();
        while (true)
        {
          return;
          float f = paramNumber.floatValue();
          Gson.this.checkValidFloatingPoint(f);
          paramJsonWriter.value(paramNumber);
        }
      }
    })
      return localObject;
  }

  private TypeAdapter<Number> longAdapter(LongSerializationPolicy paramLongSerializationPolicy)
  {
    if (paramLongSerializationPolicy == LongSerializationPolicy.DEFAULT);
    for (Object localObject = TypeAdapters.LONG; ; localObject = new TypeAdapter()
    {
      public Number read(JsonReader paramJsonReader)
        throws IOException
      {
        if (paramJsonReader.peek() == JsonToken.NULL)
          paramJsonReader.nextNull();
        for (Long localLong = null; ; localLong = Long.valueOf(paramJsonReader.nextLong()))
          return localLong;
      }

      public void write(JsonWriter paramJsonWriter, Number paramNumber)
        throws IOException
      {
        if (paramNumber == null)
          paramJsonWriter.nullValue();
        while (true)
        {
          return;
          paramJsonWriter.value(paramNumber.toString());
        }
      }
    })
      return localObject;
  }

  private JsonWriter newJsonWriter(Writer paramWriter)
    throws IOException
  {
    if (this.generateNonExecutableJson)
      paramWriter.write(")]}'\n");
    JsonWriter localJsonWriter = new JsonWriter(paramWriter);
    if (this.prettyPrinting)
      localJsonWriter.setIndent("  ");
    localJsonWriter.setSerializeNulls(this.serializeNulls);
    return localJsonWriter;
  }

  public <T> T fromJson(JsonElement paramJsonElement, Class<T> paramClass)
    throws JsonSyntaxException
  {
    Object localObject = fromJson(paramJsonElement, paramClass);
    return Primitives.wrap(paramClass).cast(localObject);
  }

  public <T> T fromJson(JsonElement paramJsonElement, Type paramType)
    throws JsonSyntaxException
  {
    if (paramJsonElement == null);
    for (Object localObject = null; ; localObject = fromJson(new JsonTreeReader(paramJsonElement), paramType))
      return localObject;
  }

  // ERROR //
  public <T> T fromJson(JsonReader paramJsonReader, Type paramType)
    throws JsonIOException, JsonSyntaxException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_1
    //   3: invokevirtual 410	com/google/mygson/stream/JsonReader:isLenient	()Z
    //   6: istore 4
    //   8: aload_1
    //   9: iconst_1
    //   10: invokevirtual 413	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   13: aload_1
    //   14: invokevirtual 290	com/google/mygson/stream/JsonReader:peek	()Lcom/google/mygson/stream/JsonToken;
    //   17: pop
    //   18: iconst_0
    //   19: istore_3
    //   20: aload_0
    //   21: aload_2
    //   22: invokestatic 419	com/google/mygson/reflect/TypeToken:get	(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;
    //   25: invokevirtual 423	com/google/mygson/Gson:getAdapter	(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    //   28: aload_1
    //   29: invokevirtual 429	com/google/mygson/TypeAdapter:read	(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    //   32: astore 11
    //   34: aload 11
    //   36: astore 9
    //   38: aload_1
    //   39: iload 4
    //   41: invokevirtual 413	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   44: aload 9
    //   46: areturn
    //   47: astore 8
    //   49: iload_3
    //   50: ifeq +15 -> 65
    //   53: aload_1
    //   54: iload 4
    //   56: invokevirtual 413	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   59: aconst_null
    //   60: astore 9
    //   62: goto -18 -> 44
    //   65: new 305	JsonSyntaxException
    //   68: dup
    //   69: aload 8
    //   71: invokespecial 308	JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   74: athrow
    //   75: astore 6
    //   77: aload_1
    //   78: iload 4
    //   80: invokevirtual 413	com/google/mygson/stream/JsonReader:setLenient	(Z)V
    //   83: aload 6
    //   85: athrow
    //   86: astore 7
    //   88: new 305	JsonSyntaxException
    //   91: dup
    //   92: aload 7
    //   94: invokespecial 308	JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   97: athrow
    //   98: astore 5
    //   100: new 305	JsonSyntaxException
    //   103: dup
    //   104: aload 5
    //   106: invokespecial 308	JsonSyntaxException:<init>	(Ljava/lang/Throwable;)V
    //   109: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   13	34	47	java/io/EOFException
    //   13	34	75	finally
    //   65	75	75	finally
    //   88	110	75	finally
    //   13	34	86	java/lang/IllegalStateException
    //   13	34	98	IOException
  }

  public <T> T fromJson(Reader paramReader, Class<T> paramClass)
    throws JsonSyntaxException, JsonIOException
  {
    JsonReader localJsonReader = new JsonReader(paramReader);
    Object localObject = fromJson(localJsonReader, paramClass);
    assertFullConsumption(localObject, localJsonReader);
    return Primitives.wrap(paramClass).cast(localObject);
  }

  public <T> T fromJson(Reader paramReader, Type paramType)
    throws JsonIOException, JsonSyntaxException
  {
    JsonReader localJsonReader = new JsonReader(paramReader);
    Object localObject = fromJson(localJsonReader, paramType);
    assertFullConsumption(localObject, localJsonReader);
    return localObject;
  }

  public <T> T fromJson(String paramString, Class<T> paramClass)
    throws JsonSyntaxException
  {
    Object localObject = fromJson(paramString, paramClass);
    return Primitives.wrap(paramClass).cast(localObject);
  }

  public <T> T fromJson(String paramString, Type paramType)
    throws JsonSyntaxException
  {
    if (paramString == null);
    for (Object localObject = null; ; localObject = fromJson(new StringReader(paramString), paramType))
      return localObject;
  }

  public <T> TypeAdapter<T> getAdapter(TypeToken<T> paramTypeToken)
  {
    Object localObject1 = (TypeAdapter)this.typeTokenCache.get(paramTypeToken);
    if (localObject1 != null);
    Map localMap;
    while (true)
    {
      return localObject1;
      localMap = (Map)this.calls.get();
      FutureTypeAdapter localFutureTypeAdapter1 = (FutureTypeAdapter)localMap.get(paramTypeToken);
      if (localFutureTypeAdapter1 == null)
        break;
      localObject1 = localFutureTypeAdapter1;
    }
    FutureTypeAdapter localFutureTypeAdapter2 = new FutureTypeAdapter();
    localMap.put(paramTypeToken, localFutureTypeAdapter2);
    try
    {
      Iterator localIterator = this.factories.iterator();
      TypeAdapter localTypeAdapter;
      do
      {
        if (!(localIterator.hasNext()))
          break label152;
        localTypeAdapter = ((TypeAdapterFactory)localIterator.next()).create(this, paramTypeToken);
      }
      while (localTypeAdapter == null);
      localFutureTypeAdapter2.setDelegate(localTypeAdapter);
      this.typeTokenCache.put(paramTypeToken, localTypeAdapter);
      localMap.remove(paramTypeToken);
      localObject1 = localTypeAdapter;
      label152: throw new IllegalArgumentException("GSON cannot handle " + paramTypeToken);
    }
    finally
    {
      localMap.remove(paramTypeToken);
    }
  }

  public <T> TypeAdapter<T> getAdapter(Class<T> paramClass)
  {
    return getAdapter(TypeToken.get(paramClass));
  }

  public String toJson(JsonElement paramJsonElement)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramJsonElement, localStringWriter);
    return localStringWriter.toString();
  }

  public String toJson(Object paramObject)
  {
    if (paramObject == null);
    for (String str = toJson(JsonNull.INSTANCE); ; str = toJson(paramObject, paramObject.getClass()))
      return str;
  }

  public String toJson(Object paramObject, Type paramType)
  {
    StringWriter localStringWriter = new StringWriter();
    toJson(paramObject, paramType, localStringWriter);
    return localStringWriter.toString();
  }

  public void toJson(JsonElement paramJsonElement, JsonWriter paramJsonWriter)
    throws JsonIOException
  {
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(this.htmlSafe);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(this.serializeNulls);
    try
    {
      Streams.write(paramJsonElement, paramJsonWriter);
      return;
    }
    catch (IOException localIOException)
    {
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
  }

  public void toJson(JsonElement paramJsonElement, Appendable paramAppendable)
    throws JsonIOException
  {
    try
    {
      toJson(paramJsonElement, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public void toJson(Object paramObject, Appendable paramAppendable)
    throws JsonIOException
  {
    if (paramObject != null)
      toJson(paramObject, paramObject.getClass(), paramAppendable);
    while (true)
    {
      return;
      toJson(JsonNull.INSTANCE, paramAppendable);
    }
  }

  public void toJson(Object paramObject, Type paramType, JsonWriter paramJsonWriter)
    throws JsonIOException
  {
    TypeAdapter localTypeAdapter = getAdapter(TypeToken.get(paramType));
    boolean bool1 = paramJsonWriter.isLenient();
    paramJsonWriter.setLenient(true);
    boolean bool2 = paramJsonWriter.isHtmlSafe();
    paramJsonWriter.setHtmlSafe(this.htmlSafe);
    boolean bool3 = paramJsonWriter.getSerializeNulls();
    paramJsonWriter.setSerializeNulls(this.serializeNulls);
    try
    {
      localTypeAdapter.write(paramJsonWriter, paramObject);
      return;
    }
    catch (IOException localIOException)
    {
    }
    finally
    {
      paramJsonWriter.setLenient(bool1);
      paramJsonWriter.setHtmlSafe(bool2);
      paramJsonWriter.setSerializeNulls(bool3);
    }
  }

  public void toJson(Object paramObject, Type paramType, Appendable paramAppendable)
    throws JsonIOException
  {
    try
    {
      toJson(paramObject, paramType, newJsonWriter(Streams.writerForAppendable(paramAppendable)));
      return;
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
  }

  public JsonElement toJsonTree(Object paramObject)
  {
    if (paramObject == null);
    for (Object localObject = JsonNull.INSTANCE; ; localObject = toJsonTree(paramObject, paramObject.getClass()))
      return localObject;
  }

  public JsonElement toJsonTree(Object paramObject, Type paramType)
  {
    JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
    toJson(paramObject, paramType, localJsonTreeWriter);
    return localJsonTreeWriter.get();
  }

  public String toString()
  {
    return "{" + "serializeNulls:" + this.serializeNulls + "factories:" + this.factories + ",instanceCreators:" + this.constructorConstructor + "}";
  }

  static class FutureTypeAdapter<T> extends TypeAdapter<T>
  {
    private TypeAdapter<T> delegate;

    public T read(JsonReader paramJsonReader)
      throws IOException
    {
      if (this.delegate == null)
        throw new IllegalStateException();
      return this.delegate.read(paramJsonReader);
    }

    public void setDelegate(TypeAdapter<T> paramTypeAdapter)
    {
      if (this.delegate != null)
        throw new AssertionError();
      this.delegate = paramTypeAdapter;
    }

    public void write(JsonWriter paramJsonWriter, T paramT)
      throws IOException
    {
      if (this.delegate == null)
        throw new IllegalStateException();
      this.delegate.write(paramJsonWriter, paramT);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.Gson
 * JD-Core Version:    0.5.3
 */