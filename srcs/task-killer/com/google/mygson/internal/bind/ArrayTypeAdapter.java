package com.google.mygson.internal.bind;

import com.google.mygson.Gson;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.internal..Gson.Types;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

public final class ArrayTypeAdapter<E> extends TypeAdapter<Object>
{
  public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory()
  {
    public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
    {
      Type localType1 = paramTypeToken.getType();
      if ((!(localType1 instanceof GenericArrayType)) && (((!(localType1 instanceof Class)) || (!(((Class)localType1).isArray())))))
        return null;
      Type localType2 = .Gson.Types.getArrayComponentType(localType1);
      return new ArrayTypeAdapter(paramGson, paramGson.getAdapter(TypeToken.get(localType2)), .Gson.Types.getRawType(localType2));
    }
  };
  private final Class<E> componentType;
  private final TypeAdapter<E> componentTypeAdapter;

  public ArrayTypeAdapter(Gson paramGson, TypeAdapter<E> paramTypeAdapter, Class<E> paramClass)
  {
    this.componentTypeAdapter = new TypeAdapterRuntimeTypeWrapper(paramGson, paramTypeAdapter, paramClass);
    this.componentType = paramClass;
  }

  public Object read(JsonReader paramJsonReader)
    throws IOException
  {
    if (paramJsonReader.peek() == JsonToken.NULL)
    {
      paramJsonReader.nextNull();
      localObject = null;
      return localObject;
    }
    ArrayList localArrayList = new ArrayList();
    paramJsonReader.beginArray();
    while (paramJsonReader.hasNext())
      localArrayList.add(this.componentTypeAdapter.read(paramJsonReader));
    paramJsonReader.endArray();
    Object localObject = Array.newInstance(this.componentType, localArrayList.size());
    for (int i = 0; ; ++i)
    {
      if (i < localArrayList.size());
      Array.set(localObject, i, localArrayList.get(i));
    }
  }

  public void write(JsonWriter paramJsonWriter, Object paramObject)
    throws IOException
  {
    if (paramObject == null)
    {
      paramJsonWriter.nullValue();
      return;
    }
    paramJsonWriter.beginArray();
    int i = 0;
    int j = Array.getLength(paramObject);
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      this.componentTypeAdapter.write(paramJsonWriter, localObject);
      ++i;
    }
    paramJsonWriter.endArray();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.ArrayTypeAdapter
 * JD-Core Version:    0.5.3
 */