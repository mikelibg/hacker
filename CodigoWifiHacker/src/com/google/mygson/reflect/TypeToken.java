package com.google.mygson.reflect;

import com.google.mygson.internal..Gson.Preconditions;
import com.google.mygson.internal..Gson.Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.HashMap;
import java.util.Map;

public class TypeToken<T>
{
  final int hashCode;
  final Class<? super T> rawType;
  final Type type;

  protected TypeToken()
  {
    this.type = getSuperclassTypeParameter(super.getClass());
    this.rawType = .Gson.Types.getRawType(this.type);
    this.hashCode = this.type.hashCode();
  }

  TypeToken(Type paramType)
  {
    this.type = .Gson.Types.canonicalize((Type).Gson.Preconditions.checkNotNull(paramType));
    this.rawType = .Gson.Types.getRawType(this.type);
    this.hashCode = this.type.hashCode();
  }

  private static AssertionError buildUnexpectedTypeError(Type paramType, Class<?>[] paramArrayOfClass)
  {
    StringBuilder localStringBuilder = new StringBuilder("Unexpected type. Expected one of: ");
    int i = paramArrayOfClass.length;
    for (int j = 0; j < i; ++j)
      localStringBuilder.append(paramArrayOfClass[j].getName()).append(", ");
    localStringBuilder.append("but got: ").append(paramType.getClass().getName()).append(", for type token: ").append(paramType.toString()).append('.');
    return new AssertionError(localStringBuilder.toString());
  }

  public static <T> TypeToken<T> get(Class<T> paramClass)
  {
    return new TypeToken(paramClass);
  }

  public static TypeToken<?> get(Type paramType)
  {
    return new TypeToken(paramType);
  }

  static Type getSuperclassTypeParameter(Class<?> paramClass)
  {
    Type localType = paramClass.getGenericSuperclass();
    if (localType instanceof Class)
      throw new RuntimeException("Missing type parameter.");
    return .Gson.Types.canonicalize(((ParameterizedType)localType).getActualTypeArguments()[0]);
  }

  private static boolean isAssignableFrom(Type paramType, GenericArrayType paramGenericArrayType)
  {
    Type localType = paramGenericArrayType.getGenericComponentType();
    Object localObject;
    if (localType instanceof ParameterizedType)
    {
      localObject = paramType;
      if (paramType instanceof GenericArrayType)
        localObject = ((GenericArrayType)paramType).getGenericComponentType();
    }
    for (boolean bool = isAssignableFrom((Type)localObject, (ParameterizedType)localType, new HashMap()); ; bool = true)
    {
      label35: return bool;
      if (paramType instanceof Class);
      for (Class localClass = (Class)paramType; localClass.isArray(); localClass = localClass.getComponentType());
      localObject = localClass;
      break label35:
    }
  }

  private static boolean isAssignableFrom(Type paramType, ParameterizedType paramParameterizedType, Map<String, Type> paramMap)
  {
    if (paramType == null);
    label7: Class localClass;
    for (boolean bool2 = false; ; bool2 = isAssignableFrom(localClass.getGenericSuperclass(), paramParameterizedType, new HashMap(paramMap)))
    {
      while (true)
      {
        return bool2;
        if (paramParameterizedType.equals(paramType))
          bool2 = true;
        localClass = .Gson.Types.getRawType(paramType);
        boolean bool1 = paramType instanceof ParameterizedType;
        ParameterizedType localParameterizedType = null;
        if (bool1)
          localParameterizedType = (ParameterizedType)paramType;
        if (localParameterizedType == null)
          break;
        Type[] arrayOfType2 = localParameterizedType.getActualTypeArguments();
        TypeVariable[] arrayOfTypeVariable = localClass.getTypeParameters();
        for (int k = 0; k < arrayOfType2.length; ++k)
        {
          Type localType = arrayOfType2[k];
          TypeVariable localTypeVariable = arrayOfTypeVariable[k];
          while (localType instanceof TypeVariable)
            localType = (Type)paramMap.get(((TypeVariable)localType).getName());
          paramMap.put(localTypeVariable.getName(), localType);
        }
        if (!(typeEquals(localParameterizedType, paramParameterizedType, paramMap)))
          break;
        bool2 = true;
      }
      Type[] arrayOfType1 = localClass.getGenericInterfaces();
      int i = arrayOfType1.length;
      for (int j = 0; j < i; ++j)
      {
        if (!(isAssignableFrom(arrayOfType1[j], paramParameterizedType, new HashMap(paramMap))))
          continue;
        bool2 = true;
        break label7:
      }
    }
  }

  private static boolean matches(Type paramType1, Type paramType2, Map<String, Type> paramMap)
  {
    if ((paramType2.equals(paramType1)) || ((paramType1 instanceof TypeVariable) && (paramType2.equals(paramMap.get(((TypeVariable)paramType1).getName())))));
    for (int i = 1; ; i = 0)
      return i;
  }

  private static boolean typeEquals(ParameterizedType paramParameterizedType1, ParameterizedType paramParameterizedType2, Map<String, Type> paramMap)
  {
    boolean bool1 = paramParameterizedType1.getRawType().equals(paramParameterizedType2.getRawType());
    int i = 0;
    int j;
    if (bool1)
    {
      Type[] arrayOfType1 = paramParameterizedType1.getActualTypeArguments();
      Type[] arrayOfType2 = paramParameterizedType2.getActualTypeArguments();
      j = 0;
      label42: if (j >= arrayOfType1.length)
        break label83;
      boolean bool2 = matches(arrayOfType1[j], arrayOfType2[j], paramMap);
      i = 0;
      if (bool2)
        break label77;
    }
    while (true)
    {
      return i;
      label77: ++j;
      break label42:
      label83: i = 1;
    }
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof TypeToken) && (.Gson.Types.equals(this.type, ((TypeToken)paramObject).type)));
    for (int i = 1; ; i = 0)
      return i;
  }

  public final Class<? super T> getRawType()
  {
    return this.rawType;
  }

  public final Type getType()
  {
    return this.type;
  }

  public final int hashCode()
  {
    return this.hashCode;
  }

  @Deprecated
  public boolean isAssignableFrom(TypeToken<?> paramTypeToken)
  {
    return isAssignableFrom(paramTypeToken.getType());
  }

  @Deprecated
  public boolean isAssignableFrom(Class<?> paramClass)
  {
    return isAssignableFrom(paramClass);
  }

  @Deprecated
  public boolean isAssignableFrom(Type paramType)
  {
    boolean bool1 = false;
    if (paramType == null);
    while (true)
    {
      label6: return bool1;
      if (this.type.equals(paramType))
        bool1 = true;
      if (this.type instanceof Class)
        bool1 = this.rawType.isAssignableFrom(.Gson.Types.getRawType(paramType));
      if (!(this.type instanceof ParameterizedType))
        break;
      bool1 = isAssignableFrom(paramType, (ParameterizedType)this.type, new HashMap());
    }
    if (this.type instanceof GenericArrayType)
    {
      if ((this.rawType.isAssignableFrom(.Gson.Types.getRawType(paramType))) && (isAssignableFrom(paramType, (GenericArrayType)this.type)));
      for (boolean bool2 = true; ; bool2 = false)
      {
        bool1 = bool2;
        break label6:
      }
    }
    throw buildUnexpectedTypeError(this.type, new Class[] { Class.class, ParameterizedType.class, GenericArrayType.class });
  }

  public final String toString()
  {
    return .Gson.Types.typeToString(this.type);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.reflect.TypeToken
 * JD-Core Version:    0.5.3
 */