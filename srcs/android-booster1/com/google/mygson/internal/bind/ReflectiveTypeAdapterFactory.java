package com.google.mygson.internal.bind;

import com.google.mygson.FieldNamingStrategy;
import com.google.mygson.Gson;
import com.google.mygson.JsonSyntaxException;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.annotations.SerializedName;
import com.google.mygson.internal..Gson.Types;
import com.google.mygson.internal.ConstructorConstructor;
import com.google.mygson.internal.Excluder;
import com.google.mygson.internal.ObjectConstructor;
import com.google.mygson.internal.Primitives;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonToken;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class ReflectiveTypeAdapterFactory
  implements TypeAdapterFactory
{
  private final ConstructorConstructor constructorConstructor;
  private final Excluder excluder;
  private final FieldNamingStrategy fieldNamingPolicy;

  public ReflectiveTypeAdapterFactory(ConstructorConstructor paramConstructorConstructor, FieldNamingStrategy paramFieldNamingStrategy, Excluder paramExcluder)
  {
    this.constructorConstructor = paramConstructorConstructor;
    this.fieldNamingPolicy = paramFieldNamingStrategy;
    this.excluder = paramExcluder;
  }

  private BoundField createBoundField(Gson paramGson, Field paramField, String paramString, TypeToken<?> paramTypeToken, boolean paramBoolean1, boolean paramBoolean2)
  {
    return new BoundField(paramString, paramBoolean1, paramBoolean2, paramGson, paramTypeToken, paramField, Primitives.isPrimitive(paramTypeToken.getRawType()))
    {
      final TypeAdapter<?> typeAdapter = this.val$context.getAdapter(this.val$fieldType);

      void read(JsonReader paramJsonReader, Object paramObject)
        throws IOException, IllegalAccessException
      {
        Object localObject = this.typeAdapter.read(paramJsonReader);
        if ((localObject == null) && (this.val$isPrimitive))
          return;
        this.val$field.set(paramObject, localObject);
      }

      void write(JsonWriter paramJsonWriter, Object paramObject)
        throws IOException, IllegalAccessException
      {
        Object localObject = this.val$field.get(paramObject);
        new TypeAdapterRuntimeTypeWrapper(this.val$context, this.typeAdapter, this.val$fieldType.getType()).write(paramJsonWriter, localObject);
      }
    };
  }

  private Map<String, BoundField> getBoundFields(Gson paramGson, TypeToken<?> paramTypeToken, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface())
      return localLinkedHashMap;
    Type localType1 = paramTypeToken.getType();
    while (true)
    {
      if (paramClass != Object.class);
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int i = arrayOfField.length;
      int j = 0;
      if (j < i)
      {
        label45: Field localField = arrayOfField[j];
        boolean bool1 = excludeField(localField, true);
        boolean bool2 = excludeField(localField, false);
        if ((!(bool1)) && (!(bool2)));
        BoundField localBoundField2;
        do
        {
          ++j;
          break label45:
          localField.setAccessible(true);
          Type localType4 = paramTypeToken.getType();
          Type localType5 = localField.getGenericType();
          Type localType6 = .Gson.Types.resolve(localType4, paramClass, localType5);
          BoundField localBoundField1 = createBoundField(paramGson, localField, getFieldName(localField), TypeToken.get(localType6), bool1, bool2);
          localBoundField2 = (BoundField)localLinkedHashMap.put(localBoundField1.name, localBoundField1);
        }
        while (localBoundField2 == null);
        throw new IllegalArgumentException(localType1 + " declares multiple JSON fields named " + localBoundField2.name);
      }
      Type localType2 = paramTypeToken.getType();
      Type localType3 = paramClass.getGenericSuperclass();
      paramTypeToken = TypeToken.get(.Gson.Types.resolve(localType2, paramClass, localType3));
      paramClass = paramTypeToken.getRawType();
    }
  }

  private String getFieldName(Field paramField)
  {
    SerializedName localSerializedName = (SerializedName)paramField.getAnnotation(SerializedName.class);
    if (localSerializedName == null)
      return this.fieldNamingPolicy.translateName(paramField);
    return localSerializedName.value();
  }

  public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    if (!(Object.class.isAssignableFrom(localClass)))
      return null;
    return new Adapter(this.constructorConstructor.getConstructor(paramTypeToken), getBoundFields(paramGson, paramTypeToken, localClass), null);
  }

  public boolean excludeField(Field paramField, boolean paramBoolean)
  {
    return ((!(this.excluder.excludeClass(paramField.getType(), paramBoolean))) && (!(this.excluder.excludeField(paramField, paramBoolean))));
  }

  public final class Adapter<T> extends TypeAdapter<T>
  {
    private final Map<String, ReflectiveTypeAdapterFactory.BoundField> boundFields;
    private final ObjectConstructor<T> constructor;

    private Adapter(Map<String, ReflectiveTypeAdapterFactory.BoundField> paramMap)
    {
      this.constructor = paramMap;
      Object localObject;
      this.boundFields = localObject;
    }

    public T read(JsonReader paramJsonReader)
      throws IOException
    {
      if (paramJsonReader.peek() == JsonToken.NULL)
      {
        paramJsonReader.nextNull();
        return null;
      }
      Object localObject = this.constructor.construct();
      ReflectiveTypeAdapterFactory.BoundField localBoundField;
      try
      {
        paramJsonReader.beginObject();
        if (!(paramJsonReader.hasNext()))
          break label111;
        String str = paramJsonReader.nextName();
        localBoundField = (ReflectiveTypeAdapterFactory.BoundField)this.boundFields.get(str);
        if ((localBoundField != null) && (localBoundField.deserialized))
          break label91;
        label91: paramJsonReader.skipValue();
      }
      catch (IllegalStateException localIllegalStateException)
      {
        throw new JsonSyntaxException(localIllegalStateException);
        localBoundField.read(paramJsonReader, localObject);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new AssertionError(localIllegalAccessException);
      }
      label111: paramJsonReader.endObject();
      return localObject;
    }

    public void write(JsonWriter paramJsonWriter, T paramT)
      throws IOException
    {
      if (paramT == null)
      {
        paramJsonWriter.nullValue();
        return;
      }
      paramJsonWriter.beginObject();
      try
      {
        Iterator localIterator = this.boundFields.values().iterator();
        ReflectiveTypeAdapterFactory.BoundField localBoundField;
        do
        {
          if (!(localIterator.hasNext()))
            break label91;
          localBoundField = (ReflectiveTypeAdapterFactory.BoundField)localIterator.next();
        }
        while (!(localBoundField.serialized));
        paramJsonWriter.name(localBoundField.name);
        localBoundField.write(paramJsonWriter, paramT);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        throw new AssertionError();
      }
      label91: paramJsonWriter.endObject();
    }
  }

  static abstract class BoundField
  {
    final boolean deserialized;
    final String name;
    final boolean serialized;

    protected BoundField(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.name = paramString;
      this.serialized = paramBoolean1;
      this.deserialized = paramBoolean2;
    }

    abstract void read(JsonReader paramJsonReader, Object paramObject)
      throws IOException, IllegalAccessException;

    abstract void write(JsonWriter paramJsonWriter, Object paramObject)
      throws IOException, IllegalAccessException;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.google.mygson.internal.bind.ReflectiveTypeAdapterFactory
 * JD-Core Version:    0.5.3
 */