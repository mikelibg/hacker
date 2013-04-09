package com.google.mygson.internal.bind;

import com.google.mygson.Gson;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ObjectTypeAdapter extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
    {
      if (paramTypeToken.getRawType() == Object.class);
      for (ObjectTypeAdapter localObjectTypeAdapter = new ObjectTypeAdapter(paramGson, null); ; localObjectTypeAdapter = null)
        return localObjectTypeAdapter;
    }
  };
  private final Gson gson;

  private ObjectTypeAdapter(Gson paramGson)
  {
    this.gson = paramGson;
  }

  public Object read(JsonReader paramJsonReader)
    throws IOException
  {
    JsonToken localJsonToken = paramJsonReader.peek();
    Object localObject;
    switch (2.$SwitchMap$com$google$gson$stream$JsonToken[localJsonToken.ordinal()])
    {
    default:
      throw new IllegalStateException();
    case 1:
      localObject = new ArrayList();
      paramJsonReader.beginArray();
      while (paramJsonReader.hasNext())
        ((List)localObject).add(read(paramJsonReader));
      paramJsonReader.endArray();
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return localObject;
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      paramJsonReader.beginObject();
      while (paramJsonReader.hasNext())
        localLinkedHashMap.put(paramJsonReader.nextName(), read(paramJsonReader));
      paramJsonReader.endObject();
      localObject = localLinkedHashMap;
      continue;
      localObject = paramJsonReader.nextString();
      continue;
      localObject = Double.valueOf(paramJsonReader.nextDouble());
      continue;
      localObject = Boolean.valueOf(paramJsonReader.nextBoolean());
      continue;
      paramJsonReader.nextNull();
      localObject = null;
    }
  }

  public void write(JsonWriter paramJsonWriter, Object paramObject)
    throws IOException
  {
    if (paramObject == null)
      paramJsonWriter.nullValue();
    while (true)
    {
      return;
      TypeAdapter localTypeAdapter = this.gson.getAdapter(paramObject.getClass());
      if (localTypeAdapter instanceof ObjectTypeAdapter)
      {
        paramJsonWriter.beginObject();
        paramJsonWriter.endObject();
      }
      localTypeAdapter.write(paramJsonWriter, paramObject);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.bind.ObjectTypeAdapter
 * JD-Core Version:    0.5.3
 */