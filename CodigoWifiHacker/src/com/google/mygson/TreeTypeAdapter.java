package com.google.mygson;

import com.google.mygson.internal..Gson.Preconditions;
import com.google.mygson.internal.GsonInternalAccess;
import com.google.mygson.internal.Streams;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;

final class TreeTypeAdapter<T> extends TypeAdapter<T>
{
  private TypeAdapter<T> delegate;
  private final JsonDeserializer<T> deserializer;
  private final Gson gson;
  private final JsonSerializer<T> serializer;
  private final TypeAdapterFactory skipPast;
  private final TypeToken<T> typeToken;

  private TreeTypeAdapter(JsonSerializer<T> paramJsonSerializer, JsonDeserializer<T> paramJsonDeserializer, Gson paramGson, TypeToken<T> paramTypeToken, TypeAdapterFactory paramTypeAdapterFactory)
  {
    this.serializer = paramJsonSerializer;
    this.deserializer = paramJsonDeserializer;
    this.gson = paramGson;
    this.typeToken = paramTypeToken;
    this.skipPast = paramTypeAdapterFactory;
  }

  private TypeAdapter<T> delegate()
  {
    TypeAdapter localTypeAdapter = this.delegate;
    if (localTypeAdapter != null);
    while (true)
    {
      return localTypeAdapter;
      localTypeAdapter = GsonInternalAccess.INSTANCE.getNextAdapter(this.gson, this.skipPast, this.typeToken);
      this.delegate = localTypeAdapter;
    }
  }

  public static TypeAdapterFactory newFactory(TypeToken<?> paramTypeToken, Object paramObject)
  {
    return new SingleTypeFactory(paramObject, paramTypeToken, false, null, null);
  }

  public static TypeAdapterFactory newFactoryWithMatchRawType(TypeToken<?> paramTypeToken, Object paramObject)
  {
    if (paramTypeToken.getType() == paramTypeToken.getRawType());
    for (boolean bool = true; ; bool = false)
      return new SingleTypeFactory(paramObject, paramTypeToken, bool, null, null);
  }

  public static TypeAdapterFactory newTypeHierarchyFactory(Class<?> paramClass, Object paramObject)
  {
    return new SingleTypeFactory(paramObject, null, false, paramClass, null);
  }

  public T read(JsonReader paramJsonReader)
    throws IOException
  {
    if (this.deserializer == null);
    JsonElement localJsonElement;
    for (Object localObject = delegate().read(paramJsonReader); ; localObject = this.deserializer.deserialize(localJsonElement, this.typeToken.getType(), this.gson.deserializationContext))
      while (true)
      {
        return localObject;
        localJsonElement = Streams.parse(paramJsonReader);
        if (!(localJsonElement.isJsonNull()))
          break;
        localObject = null;
      }
  }

  public void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    if (this.serializer == null)
      delegate().write(paramJsonWriter, paramT);
    while (true)
    {
      return;
      if (paramT == null)
        paramJsonWriter.nullValue();
      Streams.write(this.serializer.serialize(paramT, this.typeToken.getType(), this.gson.serializationContext), paramJsonWriter);
    }
  }

  private static class SingleTypeFactory
    implements TypeAdapterFactory
  {
    private final JsonDeserializer<?> deserializer;
    private final TypeToken<?> exactType;
    private final Class<?> hierarchyType;
    private final boolean matchRawType;
    private final JsonSerializer<?> serializer;

    private SingleTypeFactory(Object paramObject, TypeToken<?> paramTypeToken, boolean paramBoolean, Class<?> paramClass)
    {
      JsonSerializer localJsonSerializer;
      label17: JsonDeserializer localJsonDeserializer;
      if (paramObject instanceof JsonSerializer)
      {
        localJsonSerializer = (JsonSerializer)paramObject;
        this.serializer = localJsonSerializer;
        if (!(paramObject instanceof JsonDeserializer))
          break label87;
        localJsonDeserializer = (JsonDeserializer)paramObject;
        label36: this.deserializer = localJsonDeserializer;
        if ((this.serializer == null) && (this.deserializer == null))
          break label93;
      }
      for (boolean bool = true; ; bool = false)
      {
        .Gson.Preconditions.checkArgument(bool);
        this.exactType = paramTypeToken;
        this.matchRawType = paramBoolean;
        this.hierarchyType = paramClass;
        return;
        localJsonSerializer = null;
        break label17:
        label87: localJsonDeserializer = null;
        label93: break label36:
      }
    }

    public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
    {
      boolean bool;
      if (this.exactType != null)
        if ((this.exactType.equals(paramTypeToken)) || ((this.matchRawType) && (this.exactType.getType() == paramTypeToken.getRawType())))
        {
          bool = true;
          label41: if (!(bool))
            break label89;
        }
      for (TreeTypeAdapter localTreeTypeAdapter = new TreeTypeAdapter(this.serializer, this.deserializer, paramGson, paramTypeToken, this, null); ; localTreeTypeAdapter = null)
      {
        return localTreeTypeAdapter;
        bool = false;
        break label41:
        bool = this.hierarchyType.isAssignableFrom(paramTypeToken.getRawType());
        label89: break label41:
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.TreeTypeAdapter
 * JD-Core Version:    0.5.3
 */