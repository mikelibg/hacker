package com.google.mygson.internal;

import com.google.mygson.InstanceCreator;
import com.google.mygson.reflect.TypeToken;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;

public final class ConstructorConstructor
{
  private final Map<Type, InstanceCreator<?>> instanceCreators;

  public ConstructorConstructor()
  {
    this(Collections.emptyMap());
  }

  public ConstructorConstructor(Map<Type, InstanceCreator<?>> paramMap)
  {
    this.instanceCreators = paramMap;
  }

  private <T> ObjectConstructor<T> newDefaultConstructor(Class<? super T> paramClass)
  {
    2 local2;
    try
    {
      Constructor localConstructor = paramClass.getDeclaredConstructor(new Class[0]);
      if (!(localConstructor.isAccessible()))
        localConstructor.setAccessible(true);
      local2 = new ObjectConstructor(localConstructor)
      {
        public T construct()
        {
          try
          {
            Object localObject = this.val$constructor.newInstance(null);
            return localObject;
          }
          catch (InstantiationException localInstantiationException)
          {
            throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", localInstantiationException);
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            throw new RuntimeException("Failed to invoke " + this.val$constructor + " with no args", localInvocationTargetException.getTargetException());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            throw new AssertionError(localIllegalAccessException);
          }
        }
      };
      return local2;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      local2 = null;
    }
  }

  private <T> ObjectConstructor<T> newDefaultImplementationConstructor(Class<? super T> paramClass)
  {
    if (Collection.class.isAssignableFrom(paramClass))
      if (!(SortedSet.class.isAssignableFrom(paramClass)));
    for (Object localObject = new ObjectConstructor()
    {
      public T construct()
      {
        return new TreeSet();
      }
    }
    ; ; localObject = null)
      while (true)
      {
        return localObject;
        if (Set.class.isAssignableFrom(paramClass))
          localObject = new ObjectConstructor()
          {
            public T construct()
            {
              return new LinkedHashSet();
            }
          };
        if (Queue.class.isAssignableFrom(paramClass))
          localObject = new ObjectConstructor()
          {
            public T construct()
            {
              return new LinkedList();
            }
          };
        localObject = new ObjectConstructor()
        {
          public T construct()
          {
            return new ArrayList();
          }
        };
        continue;
        if (!(Map.class.isAssignableFrom(paramClass)))
          break;
        localObject = new ObjectConstructor()
        {
          public T construct()
          {
            return new LinkedHashMap();
          }
        };
      }
  }

  private <T> ObjectConstructor<T> newUnsafeAllocator(Type paramType, Class<? super T> paramClass)
  {
    return new ObjectConstructor(paramClass, paramType)
    {
      private final UnsafeAllocator unsafeAllocator = UnsafeAllocator.create();

      public T construct()
      {
        try
        {
          Object localObject = this.unsafeAllocator.newInstance(this.val$rawType);
          return localObject;
        }
        catch (Exception localException)
        {
          throw new RuntimeException("Unable to invoke no-args constructor for " + this.val$type + ". " + "Register an InstanceCreator with Gson for this type may fix this problem.", localException);
        }
      }
    };
  }

  public <T> ObjectConstructor<T> getConstructor(TypeToken<T> paramTypeToken)
  {
    Type localType = paramTypeToken.getType();
    Class localClass = paramTypeToken.getRawType();
    InstanceCreator localInstanceCreator = (InstanceCreator)this.instanceCreators.get(localType);
    if (localInstanceCreator != null);
    for (Object localObject = new ObjectConstructor(localInstanceCreator, localType)
    {
      public T construct()
      {
        return this.val$creator.createInstance(this.val$type);
      }
    }
    ; ; localObject = newUnsafeAllocator(localType, localClass))
      while (true)
      {
        return localObject;
        localObject = newDefaultConstructor(localClass);
        if (localObject != null)
          continue;
        ObjectConstructor localObjectConstructor = newDefaultImplementationConstructor(localClass);
        if (localObjectConstructor == null)
          break;
        localObject = localObjectConstructor;
      }
  }

  public String toString()
  {
    return this.instanceCreators.toString();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal.ConstructorConstructor
 * JD-Core Version:    0.5.3
 */