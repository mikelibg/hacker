package com.google.mygson.internal.bind;

import com.google.mygson.Gson;
import com.google.mygson.TypeAdapter;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T>
{
  private final Gson context;
  private final TypeAdapter<T> delegate;
  private final Type type;

  TypeAdapterRuntimeTypeWrapper(Gson paramGson, TypeAdapter<T> paramTypeAdapter, Type paramType)
  {
    this.context = paramGson;
    this.delegate = paramTypeAdapter;
    this.type = paramType;
  }

  private Type getRuntimeTypeIfMoreSpecific(Type paramType, Object paramObject)
  {
    if ((paramObject != null) && (((paramType == Object.class) || (paramType instanceof TypeVariable) || (paramType instanceof Class))))
      paramType = paramObject.getClass();
    return paramType;
  }

  public T read(JsonReader paramJsonReader)
    throws IOException
  {
    return this.delegate.read(paramJsonReader);
  }

  public void write(JsonWriter paramJsonWriter, T paramT)
    throws IOException
  {
    Object localObject = this.delegate;
    Type localType = getRuntimeTypeIfMoreSpecific(this.type, paramT);
    TypeAdapter localTypeAdapter;
    if (localType != this.type)
    {
      localTypeAdapter = this.context.getAdapter(TypeToken.get(localType));
      if (localTypeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter)
        break label57;
    }
    for (localObject = localTypeAdapter; ; localObject = localTypeAdapter)
      while (true)
      {
        ((TypeAdapter)localObject).write(paramJsonWriter, paramT);
        return;
        label57: if (this.delegate instanceof ReflectiveTypeAdapterFactory.Adapter)
          break;
        localObject = this.delegate;
      }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.TypeAdapterRuntimeTypeWrapper
 * JD-Core Version:    0.5.3
 */