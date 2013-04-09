package com.google.mygson.internal;

import com.google.mygson.ExclusionStrategy;
import com.google.mygson.FieldAttributes;
import com.google.mygson.Gson;
import com.google.mygson.TypeAdapter;
import com.google.mygson.TypeAdapterFactory;
import com.google.mygson.annotations.Expose;
import com.google.mygson.annotations.Since;
import com.google.mygson.annotations.Until;
import com.google.mygson.reflect.TypeToken;
import com.google.mygson.stream.JsonReader;
import com.google.mygson.stream.JsonWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class Excluder
  implements TypeAdapterFactory, Cloneable
{
  public static final Excluder DEFAULT = new Excluder();
  private static final double IGNORE_VERSIONS = -1.0D;
  private List<ExclusionStrategy> deserializationStrategies = Collections.emptyList();
  private int modifiers = 136;
  private boolean requireExpose;
  private List<ExclusionStrategy> serializationStrategies = Collections.emptyList();
  private boolean serializeInnerClasses = true;
  private double version = -1.0D;

  private boolean isAnonymousOrLocal(Class<?> paramClass)
  {
    return ((!(Enum.class.isAssignableFrom(paramClass))) && (((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()))));
  }

  private boolean isInnerClass(Class<?> paramClass)
  {
    return ((paramClass.isMemberClass()) && (!(isStatic(paramClass))));
  }

  private boolean isStatic(Class<?> paramClass)
  {
    return ((0x8 & paramClass.getModifiers()) != 0);
  }

  private boolean isValidSince(Since paramSince)
  {
    return ((paramSince == null) || (paramSince.value() <= this.version));
  }

  private boolean isValidUntil(Until paramUntil)
  {
    return ((paramUntil == null) || (paramUntil.value() > this.version));
  }

  private boolean isValidVersion(Since paramSince, Until paramUntil)
  {
    return ((isValidSince(paramSince)) && (isValidUntil(paramUntil)));
  }

  protected Excluder clone()
  {
    try
    {
      Excluder localExcluder = (Excluder)super.clone();
      return localExcluder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError();
    }
  }

  public <T> TypeAdapter<T> create(Gson paramGson, TypeToken<T> paramTypeToken)
  {
    Class localClass = paramTypeToken.getRawType();
    boolean bool1 = excludeClass(localClass, true);
    boolean bool2 = excludeClass(localClass, false);
    if ((!(bool1)) && (!(bool2)))
      return null;
    return new TypeAdapter(bool2, bool1, paramGson, paramTypeToken)
    {
      private TypeAdapter<T> delegate;

      private TypeAdapter<T> delegate()
      {
        TypeAdapter localTypeAdapter1 = this.delegate;
        if (localTypeAdapter1 != null)
          return localTypeAdapter1;
        TypeAdapter localTypeAdapter2 = GsonInternalAccess.INSTANCE.getNextAdapter(this.val$gson, Excluder.this, this.val$type);
        this.delegate = localTypeAdapter2;
        return localTypeAdapter2;
      }

      public T read(JsonReader paramJsonReader)
        throws IOException
      {
        if (this.val$skipDeserialize)
        {
          paramJsonReader.skipValue();
          return null;
        }
        return delegate().read(paramJsonReader);
      }

      public void write(JsonWriter paramJsonWriter, T paramT)
        throws IOException
      {
        if (this.val$skipSerialize)
        {
          paramJsonWriter.nullValue();
          return;
        }
        delegate().write(paramJsonWriter, paramT);
      }
    };
  }

  public Excluder disableInnerClassSerialization()
  {
    Excluder localExcluder = clone();
    localExcluder.serializeInnerClasses = false;
    return localExcluder;
  }

  public boolean excludeClass(Class<?> paramClass, boolean paramBoolean)
  {
    if ((this.version != -1.0D) && (!(isValidVersion((Since)paramClass.getAnnotation(Since.class), (Until)paramClass.getAnnotation(Until.class)))))
      return true;
    if ((!(this.serializeInnerClasses)) && (isInnerClass(paramClass)))
      return true;
    if (isAnonymousOrLocal(paramClass))
      return true;
    if (paramBoolean);
    for (List localList = this.serializationStrategies; ; localList = this.deserializationStrategies)
    {
      Iterator localIterator = localList.iterator();
      do
        if (!(localIterator.hasNext()))
          break label121;
      while (!(((ExclusionStrategy)localIterator.next()).shouldSkipClass(paramClass)));
      return true;
    }
    label121: return false;
  }

  public boolean excludeField(Field paramField, boolean paramBoolean)
  {
    if ((this.modifiers & paramField.getModifiers()) != 0)
      return true;
    if ((this.version != -1.0D) && (!(isValidVersion((Since)paramField.getAnnotation(Since.class), (Until)paramField.getAnnotation(Until.class)))))
      return true;
    if (paramField.isSynthetic())
      return true;
    if (this.requireExpose)
    {
      Expose localExpose = (Expose)paramField.getAnnotation(Expose.class);
      if (localExpose != null)
      {
        if (!(paramBoolean))
          break label100;
        if (localExpose.serialize())
          break label110;
      }
      label100: 
      do
        return true;
      while (!(localExpose.deserialize()));
    }
    if ((!(this.serializeInnerClasses)) && (isInnerClass(paramField.getType())))
      label110: return true;
    if (isAnonymousOrLocal(paramField.getType()))
      return true;
    if (paramBoolean);
    for (List localList = this.serializationStrategies; !(localList.isEmpty()); localList = this.deserializationStrategies)
    {
      FieldAttributes localFieldAttributes = new FieldAttributes(paramField);
      Iterator localIterator = localList.iterator();
      do
        if (!(localIterator.hasNext()))
          break label219;
      while (!(((ExclusionStrategy)localIterator.next()).shouldSkipField(localFieldAttributes)));
      return true;
    }
    label219: return false;
  }

  public Excluder excludeFieldsWithoutExposeAnnotation()
  {
    Excluder localExcluder = clone();
    localExcluder.requireExpose = true;
    return localExcluder;
  }

  public Excluder withExclusionStrategy(ExclusionStrategy paramExclusionStrategy, boolean paramBoolean1, boolean paramBoolean2)
  {
    Excluder localExcluder = clone();
    if (paramBoolean1)
    {
      localExcluder.serializationStrategies = new ArrayList(this.serializationStrategies);
      localExcluder.serializationStrategies.add(paramExclusionStrategy);
    }
    if (paramBoolean2)
    {
      localExcluder.deserializationStrategies = new ArrayList(this.deserializationStrategies);
      localExcluder.deserializationStrategies.add(paramExclusionStrategy);
    }
    return localExcluder;
  }

  public Excluder withModifiers(int[] paramArrayOfInt)
  {
    Excluder localExcluder = clone();
    localExcluder.modifiers = 0;
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; ++j)
      localExcluder.modifiers = (paramArrayOfInt[j] | localExcluder.modifiers);
    return localExcluder;
  }

  public Excluder withVersion(double paramDouble)
  {
    Excluder localExcluder = clone();
    localExcluder.version = paramDouble;
    return localExcluder;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.google.mygson.internal.Excluder
 * JD-Core Version:    0.5.3
 */