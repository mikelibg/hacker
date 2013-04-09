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
    if ((!(Enum.class.isAssignableFrom(paramClass))) && (((paramClass.isAnonymousClass()) || (paramClass.isLocalClass()))));
    for (int i = 1; ; i = 0)
      return i;
  }

  private boolean isInnerClass(Class<?> paramClass)
  {
    if ((paramClass.isMemberClass()) && (!(isStatic(paramClass))));
    for (int i = 1; ; i = 0)
      return i;
  }

  private boolean isStatic(Class<?> paramClass)
  {
    if ((0x8 & paramClass.getModifiers()) != 0);
    for (int i = 1; ; i = 0)
      return i;
  }

  private boolean isValidSince(Since paramSince)
  {
    if ((paramSince != null) && (paramSince.value() > this.version));
    for (int i = 0; ; i = 1)
      return i;
  }

  private boolean isValidUntil(Until paramUntil)
  {
    if ((paramUntil != null) && (paramUntil.value() <= this.version));
    for (int i = 0; ; i = 1)
      return i;
  }

  private boolean isValidVersion(Since paramSince, Until paramUntil)
  {
    if ((isValidSince(paramSince)) && (isValidUntil(paramUntil)));
    for (int i = 1; ; i = 0)
      return i;
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
    if ((!(bool1)) && (!(bool2)));
    for (1 local1 = null; ; local1 = new TypeAdapter(bool2, bool1, paramGson, paramTypeToken)
    {
      private TypeAdapter<T> delegate;

      private TypeAdapter<T> delegate()
      {
        TypeAdapter localTypeAdapter = this.delegate;
        if (localTypeAdapter != null);
        while (true)
        {
          return localTypeAdapter;
          localTypeAdapter = GsonInternalAccess.INSTANCE.getNextAdapter(this.val$gson, Excluder.this, this.val$type);
          this.delegate = localTypeAdapter;
        }
      }

      public T read(JsonReader paramJsonReader)
        throws IOException
      {
        if (this.val$skipDeserialize)
          paramJsonReader.skipValue();
        for (Object localObject = null; ; localObject = delegate().read(paramJsonReader))
          return localObject;
      }

      public void write(JsonWriter paramJsonWriter, T paramT)
        throws IOException
      {
        if (this.val$skipSerialize)
          paramJsonWriter.nullValue();
        while (true)
        {
          return;
          delegate().write(paramJsonWriter, paramT);
        }
      }
    })
      return local1;
  }

  public Excluder disableInnerClassSerialization()
  {
    Excluder localExcluder = clone();
    localExcluder.serializeInnerClasses = false;
    return localExcluder;
  }

  public boolean excludeClass(Class<?> paramClass, boolean paramBoolean)
  {
    if ((this.version != -1.0D) && (!(isValidVersion((Since)paramClass.getAnnotation(Since.class), (Until)paramClass.getAnnotation(Until.class)))));
    for (int i = 1; ; i = 0)
    {
      while (true)
      {
        label39: return i;
        if ((!(this.serializeInnerClasses)) && (isInnerClass(paramClass)))
          i = 1;
        if (!(isAnonymousOrLocal(paramClass)))
          break;
        i = 1;
      }
      if (paramBoolean);
      for (List localList = this.serializationStrategies; ; localList = this.deserializationStrategies)
      {
        Iterator localIterator = localList.iterator();
        do
          if (!(localIterator.hasNext()))
            break label137;
        while (!(((ExclusionStrategy)localIterator.next()).shouldSkipClass(paramClass)));
        i = 1;
        label137: break label39:
      }
    }
  }

  public boolean excludeField(Field paramField, boolean paramBoolean)
  {
    if ((this.modifiers & paramField.getModifiers()) != 0);
    for (int i = 1; ; i = 0)
    {
      while (true)
      {
        label15: return i;
        if ((this.version != -1.0D) && (!(isValidVersion((Since)paramField.getAnnotation(Since.class), (Until)paramField.getAnnotation(Until.class)))))
          i = 1;
        if (paramField.isSynthetic())
          i = 1;
        if (this.requireExpose)
        {
          Expose localExpose = (Expose)paramField.getAnnotation(Expose.class);
          if (localExpose != null)
          {
            if (!(paramBoolean))
              break label116;
            if (localExpose.serialize())
              break label126;
          }
          do
          {
            i = 1;
            label116: break label15:
          }
          while (!(localExpose.deserialize()));
        }
        if ((!(this.serializeInnerClasses)) && (isInnerClass(paramField.getType())))
          label126: i = 1;
        if (!(isAnonymousOrLocal(paramField.getType())))
          break;
        i = 1;
      }
      if (paramBoolean);
      for (List localList = this.serializationStrategies; !(localList.isEmpty()); localList = this.deserializationStrategies)
      {
        FieldAttributes localFieldAttributes = new FieldAttributes(paramField);
        Iterator localIterator = localList.iterator();
        do
          if (!(localIterator.hasNext()))
            break label247;
        while (!(((ExclusionStrategy)localIterator.next()).shouldSkipField(localFieldAttributes)));
        i = 1;
        label247: break label15:
      }
    }
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

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.Excluder
 * JD-Core Version:    0.5.3
 */