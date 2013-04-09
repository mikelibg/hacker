package com.google.mygson.internal.bind;

import com.google.mygson.Gson;
import com.google.mygson.JsonElement;
import com.google.mygson.JsonIOException;
import com.google.mygson.JsonPrimitive;
import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.internal..Gson.Types;
import com.google.mygson.internal.ConstructorConstructor;
import com.google.mygson.internal.JsonReaderInternalAccess;
import com.google.mygson.internal.ObjectConstructor;
import com.google.mygson.internal.Streams;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class MapTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final boolean complexMapKeySerialization;
  private final ConstructorConstructor constructorConstructor;

  public MapTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, boolean paramBoolean)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.complexMapKeySerialization = paramBoolean;
  }

  private TypeAdapter<?> getKeyAdapter(Gson paramGson, Type paramType)
  {
    if ((paramType == Boolean.TYPE) || (paramType == Boolean.class));
    for (TypeAdapter localTypeAdapter = TypeAdapters.BOOLEAN_AS_STRING; ; localTypeAdapter = paramGson.getAdapter(TypeToken.get(paramType)))
      return localTypeAdapter;
  }

  private static <T> JsonElement toJsonTree(TypeAdapter<T> paramTypeAdapter, T paramT)
  {
    try
    {
      JsonTreeWriter localJsonTreeWriter = new JsonTreeWriter();
      localJsonTreeWriter.setLenient(true);
      paramTypeAdapter.write(localJsonTreeWriter, paramT);
      JsonElement localJsonElement = localJsonTreeWriter.get();
      return localJsonElement;
    }
    catch (IOException localIOException)
    {
      throw new JsonIOException(localIOException);
    }
  }

  public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    if (!(Map.class.isAssignableFrom(paramTypeToken.getRawType())));
    Type[] arrayOfType;
    TypeAdapter localTypeAdapter1;
    TypeAdapter localTypeAdapter2;
    ObjectConstructor localObjectConstructor;
    for (Adapter localAdapter = null; ; localAdapter = new Adapter(paramGson, arrayOfType[0], localTypeAdapter1, arrayOfType[1], localTypeAdapter2, localObjectConstructor))
    {
      return localAdapter;
      arrayOfType = .Gson.Types.getMapKeyAndValueTypes(localType, .Gson.Types.getRawType(localType));
      localTypeAdapter1 = getKeyAdapter(paramGson, arrayOfType[0]);
      localTypeAdapter2 = paramGson.getAdapter(TypeToken.get(arrayOfType[1]));
      localObjectConstructor = this.constructorConstructor.getConstructor(paramTypeToken);
    }
  }

  private final class Adapter<K, V> extends TypeAdapter<Map<K, V>>
  {
    private final ObjectConstructor<? extends Map<K, V>> constructor;
    private final TypeAdapter<K> keyTypeAdapter;
    private final TypeAdapter<V> valueTypeAdapter;

    public Adapter(Type paramType1, TypeAdapter<K> paramTypeAdapter, Type paramType2, TypeAdapter<V> paramTypeAdapter1, ObjectConstructor<? extends Map<K, V>> paramObjectConstructor)
    {
      this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramType1, paramType2, paramTypeAdapter);
      this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramType1, paramObjectConstructor, paramTypeAdapter1);
      Object localObject;
      this.constructor = localObject;
    }

    private String keyToString(JsonElement paramJsonElement)
    {
      JsonPrimitive localJsonPrimitive;
      if (paramJsonElement.isJsonPrimitive())
      {
        localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
        if (!(localJsonPrimitive.isNumber()));
      }
      for (String str = String.valueOf(localJsonPrimitive.getAsNumber()); ; str = "null")
      {
        while (true)
        {
          return str;
          if (localJsonPrimitive.isBoolean())
            str = Boolean.toString(localJsonPrimitive.getAsBoolean());
          if (!(localJsonPrimitive.isString()))
            break;
          str = localJsonPrimitive.getAsString();
        }
        throw new AssertionError();
        if (!(paramJsonElement.isJsonNull()))
          break;
      }
      throw new AssertionError();
    }

    public Map<K, V> read(JsonReader paramJsonReader)
      throws IOException
    {
      JsonToken localJsonToken = paramJsonReader.peek();
      Map localMap;
      if (localJsonToken == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        localMap = null;
      }
      while (true)
      {
        return localMap;
        localMap = (Map)this.constructor.construct();
        if (localJsonToken == JsonToken.BEGIN_ARRAY)
        {
          paramJsonReader.beginArray();
          while (paramJsonReader.hasNext())
          {
            paramJsonReader.beginArray();
            Object localObject2 = this.keyTypeAdapter.read(paramJsonReader);
            if (localMap.put(localObject2, this.valueTypeAdapter.read(paramJsonReader)) != null)
              throw new JsonSyntaxException("duplicate key: " + localObject2);
            paramJsonReader.endArray();
          }
          paramJsonReader.endArray();
        }
        paramJsonReader.beginObject();
        Object localObject1;
        do
        {
          if (!(paramJsonReader.hasNext()))
            break label201;
          JsonReaderInternalAccess.INSTANCE.promoteNameToValue(paramJsonReader);
          localObject1 = this.keyTypeAdapter.read(paramJsonReader);
        }
        while (localMap.put(localObject1, this.valueTypeAdapter.read(paramJsonReader)) == null);
        throw new JsonSyntaxException("duplicate key: " + localObject1);
        label201: paramJsonReader.endObject();
      }
    }

    public void write(JsonWriter paramJsonWriter, Map<K, V> paramMap)
      throws IOException
    {
      if (paramMap == null)
        paramJsonWriter.nullValue();
      while (true)
      {
        return;
        if (!(MapTypeAdapterFactory.this.complexMapKeySerialization))
        {
          paramJsonWriter.beginObject();
          Iterator localIterator2 = paramMap.entrySet().iterator();
          while (localIterator2.hasNext())
          {
            Map.Entry localEntry2 = (Map.Entry)localIterator2.next();
            paramJsonWriter.name(String.valueOf(localEntry2.getKey()));
            this.valueTypeAdapter.write(paramJsonWriter, localEntry2.getValue());
          }
          paramJsonWriter.endObject();
        }
        int i = 0;
        ArrayList localArrayList1 = new ArrayList(paramMap.size());
        ArrayList localArrayList2 = new ArrayList(paramMap.size());
        Iterator localIterator1 = paramMap.entrySet().iterator();
        if (localIterator1.hasNext())
        {
          label146: Map.Entry localEntry1 = (Map.Entry)localIterator1.next();
          JsonElement localJsonElement = MapTypeAdapterFactory.access$100(this.keyTypeAdapter, localEntry1.getKey());
          localArrayList1.add(localJsonElement);
          localArrayList2.add(localEntry1.getValue());
          if ((localJsonElement.isJsonArray()) || (localJsonElement.isJsonObject()));
          for (int l = 1; ; l = 0)
          {
            i |= l;
            break label146:
          }
        }
        if (i != 0)
        {
          paramJsonWriter.beginArray();
          for (int k = 0; k < localArrayList1.size(); ++k)
          {
            paramJsonWriter.beginArray();
            Streams.write((JsonElement)localArrayList1.get(k), paramJsonWriter);
            this.valueTypeAdapter.write(paramJsonWriter, localArrayList2.get(k));
            paramJsonWriter.endArray();
          }
          paramJsonWriter.endArray();
        }
        paramJsonWriter.beginObject();
        for (int j = 0; j < localArrayList1.size(); ++j)
        {
          paramJsonWriter.name(keyToString((JsonElement)localArrayList1.get(j)));
          this.valueTypeAdapter.write(paramJsonWriter, localArrayList2.get(j));
        }
        paramJsonWriter.endObject();
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.bind.MapTypeAdapterFactory
 * JD-Core Version:    0.5.3
 */