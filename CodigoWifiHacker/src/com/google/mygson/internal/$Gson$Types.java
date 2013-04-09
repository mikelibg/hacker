package com.google.mygson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;

public final class $Gson$Types
{
  static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

  public static GenericArrayType arrayOf(Type paramType)
  {
    return new GenericArrayTypeImpl(paramType);
  }

  public static Type canonicalize(Type paramType)
  {
    if (paramType instanceof Class)
    {
      localObject = (Class)paramType;
      if (!(((Class)localObject).isArray()));
    }
    for (Object localObject = new GenericArrayTypeImpl(canonicalize(((Class)localObject).getComponentType())); ; localObject = paramType)
      while (true)
      {
        return localObject;
        if (paramType instanceof ParameterizedType)
        {
          ParameterizedType localParameterizedType = (ParameterizedType)paramType;
          localObject = new ParameterizedTypeImpl(localParameterizedType.getOwnerType(), localParameterizedType.getRawType(), localParameterizedType.getActualTypeArguments());
        }
        if (paramType instanceof GenericArrayType)
          localObject = new GenericArrayTypeImpl(((GenericArrayType)paramType).getGenericComponentType());
        if (!(paramType instanceof WildcardType))
          break;
        WildcardType localWildcardType = (WildcardType)paramType;
        localObject = new WildcardTypeImpl(localWildcardType.getUpperBounds(), localWildcardType.getLowerBounds());
      }
  }

  private static void checkNotPrimitive(Type paramType)
  {
    if ((!(paramType instanceof Class)) || (!(((Class)paramType).isPrimitive())));
    for (boolean bool = true; ; bool = false)
    {
      .Gson.Preconditions.checkArgument(bool);
      return;
    }
  }

  private static Class<?> declaringClassOf(TypeVariable<?> paramTypeVariable)
  {
    GenericDeclaration localGenericDeclaration = paramTypeVariable.getGenericDeclaration();
    if (localGenericDeclaration instanceof Class);
    for (Class localClass = (Class)localGenericDeclaration; ; localClass = null)
      return localClass;
  }

  static boolean equal(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2))));
    for (int i = 1; ; i = 0)
      return i;
  }

  public static boolean equals(Type paramType1, Type paramType2)
  {
    boolean bool1 = true;
    boolean bool3;
    if (paramType1 == paramType2)
      bool3 = bool1;
    label10: label273: boolean bool4;
    do
    {
      boolean bool2;
      do
      {
        boolean bool5;
        do
        {
          while (true)
          {
            return bool3;
            if (paramType1 instanceof Class)
              bool3 = paramType1.equals(paramType2);
            if (paramType1 instanceof ParameterizedType)
            {
              boolean bool7 = paramType2 instanceof ParameterizedType;
              bool3 = false;
              if (!(bool7))
                continue;
              ParameterizedType localParameterizedType1 = (ParameterizedType)paramType1;
              ParameterizedType localParameterizedType2 = (ParameterizedType)paramType2;
              if ((equal(localParameterizedType1.getOwnerType(), localParameterizedType2.getOwnerType())) && (localParameterizedType1.getRawType().equals(localParameterizedType2.getRawType())) && (Arrays.equals(localParameterizedType1.getActualTypeArguments(), localParameterizedType2.getActualTypeArguments())));
              while (true)
              {
                bool3 = bool1;
                break label10:
                bool1 = false;
              }
            }
            if (!(paramType1 instanceof GenericArrayType))
              break;
            boolean bool6 = paramType2 instanceof GenericArrayType;
            bool3 = false;
            if (!(bool6))
              continue;
            GenericArrayType localGenericArrayType1 = (GenericArrayType)paramType1;
            GenericArrayType localGenericArrayType2 = (GenericArrayType)paramType2;
            bool3 = equals(localGenericArrayType1.getGenericComponentType(), localGenericArrayType2.getGenericComponentType());
          }
          if (!(paramType1 instanceof WildcardType))
            break label273;
          bool5 = paramType2 instanceof WildcardType;
          bool3 = false;
        }
        while (!(bool5));
        WildcardType localWildcardType1 = (WildcardType)paramType1;
        WildcardType localWildcardType2 = (WildcardType)paramType2;
        if ((Arrays.equals(localWildcardType1.getUpperBounds(), localWildcardType2.getUpperBounds())) && (Arrays.equals(localWildcardType1.getLowerBounds(), localWildcardType2.getLowerBounds())));
        while (true)
        {
          bool3 = bool1;
          break label10:
          bool1 = false;
        }
        bool2 = paramType1 instanceof TypeVariable;
        bool3 = false;
      }
      while (!(bool2));
      bool4 = paramType2 instanceof TypeVariable;
      bool3 = false;
    }
    while (!(bool4));
    TypeVariable localTypeVariable1 = (TypeVariable)paramType1;
    TypeVariable localTypeVariable2 = (TypeVariable)paramType2;
    if ((localTypeVariable1.getGenericDeclaration() == localTypeVariable2.getGenericDeclaration()) && (localTypeVariable1.getName().equals(localTypeVariable2.getName())));
    while (true)
    {
      bool3 = bool1;
      break label10:
      bool1 = false;
    }
  }

  public static Type getArrayComponentType(Type paramType)
  {
    if (paramType instanceof GenericArrayType);
    for (Object localObject = ((GenericArrayType)paramType).getGenericComponentType(); ; localObject = ((Class)paramType).getComponentType())
      return localObject;
  }

  public static Type getCollectionElementType(Type paramType, Class<?> paramClass)
  {
    Type localType = getSupertype(paramType, paramClass, Collection.class);
    if (localType instanceof WildcardType)
      localType = ((WildcardType)localType).getUpperBounds()[0];
    if (localType instanceof ParameterizedType);
    for (Object localObject = ((ParameterizedType)localType).getActualTypeArguments()[0]; ; localObject = Object.class)
      return localObject;
  }

  static Type getGenericSupertype(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    if (paramClass2 == paramClass1);
    while (true)
    {
      return paramType;
      if (paramClass2.isInterface())
      {
        Class[] arrayOfClass = paramClass1.getInterfaces();
        int i = 0;
        int j = arrayOfClass.length;
        while (i < j)
        {
          if (arrayOfClass[i] == paramClass2)
            paramType = paramClass1.getGenericInterfaces()[i];
          if (paramClass2.isAssignableFrom(arrayOfClass[i]))
            paramType = getGenericSupertype(paramClass1.getGenericInterfaces()[i], arrayOfClass[i], paramClass2);
          ++i;
        }
      }
      while ((!(paramClass1.isInterface())) && (paramClass1 != Object.class))
      {
        Class localClass = paramClass1.getSuperclass();
        if (localClass == paramClass2)
          paramType = paramClass1.getGenericSuperclass();
        if (paramClass2.isAssignableFrom(localClass))
          paramType = getGenericSupertype(paramClass1.getGenericSuperclass(), localClass, paramClass2);
        paramClass1 = localClass;
      }
      paramType = paramClass2;
    }
  }

  public static Type[] getMapKeyAndValueTypes(Type paramType, Class<?> paramClass)
  {
    Type[] arrayOfType;
    if (paramType == Properties.class)
    {
      arrayOfType = new Type[2];
      arrayOfType[0] = String.class;
      arrayOfType[1] = String.class;
    }
    while (true)
    {
      return arrayOfType;
      Type localType = getSupertype(paramType, paramClass, Map.class);
      if (localType instanceof ParameterizedType)
        arrayOfType = ((ParameterizedType)localType).getActualTypeArguments();
      arrayOfType = new Type[] { Object.class, Object.class };
    }
  }

  public static Class<?> getRawType(Type paramType)
  {
    if (paramType instanceof Class);
    for (Object localObject = (Class)paramType; ; localObject = getRawType(((WildcardType)paramType).getUpperBounds()[0]))
    {
      while (true)
      {
        return localObject;
        if (paramType instanceof ParameterizedType)
        {
          Type localType = ((ParameterizedType)paramType).getRawType();
          .Gson.Preconditions.checkArgument(localType instanceof Class);
          localObject = (Class)localType;
        }
        if (paramType instanceof GenericArrayType)
          localObject = Array.newInstance(getRawType(((GenericArrayType)paramType).getGenericComponentType()), 0).getClass();
        if (!(paramType instanceof TypeVariable))
          break;
        localObject = Object.class;
      }
      if (!(paramType instanceof WildcardType))
        break;
    }
    if (paramType == null);
    for (String str = "null"; ; str = paramType.getClass().getName())
      throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + paramType + "> is of type " + str);
  }

  static Type getSupertype(Type paramType, Class<?> paramClass1, Class<?> paramClass2)
  {
    .Gson.Preconditions.checkArgument(paramClass2.isAssignableFrom(paramClass1));
    return resolve(paramType, paramClass1, getGenericSupertype(paramType, paramClass1, paramClass2));
  }

  private static int hashCodeOrZero(Object paramObject)
  {
    if (paramObject != null);
    for (int i = paramObject.hashCode(); ; i = 0)
      return i;
  }

  private static int indexOf(Object[] paramArrayOfObject, Object paramObject)
  {
    for (int i = 0; i < paramArrayOfObject.length; ++i)
      if (paramObject.equals(paramArrayOfObject[i]))
        return i;
    throw new NoSuchElementException();
  }

  public static ParameterizedType newParameterizedTypeWithOwner(Type paramType1, Type paramType2, Type[] paramArrayOfType)
  {
    return new ParameterizedTypeImpl(paramType1, paramType2, paramArrayOfType);
  }

  public static Type resolve(Type paramType1, Class<?> paramClass, Type paramType2)
  {
    TypeVariable localTypeVariable;
    do
    {
      if (!(paramType2 instanceof TypeVariable))
        break;
      localTypeVariable = (TypeVariable)paramType2;
      paramType2 = resolveTypeVariable(paramType1, paramClass, localTypeVariable);
    }
    while (paramType2 != localTypeVariable);
    for (Object localObject1 = paramType2; ; localObject1 = paramType2)
      while (true)
      {
        label29: return localObject1;
        if ((paramType2 instanceof Class) && (((Class)paramType2).isArray()))
        {
          Object localObject2 = (Class)paramType2;
          Class localClass = ((Class)localObject2).getComponentType();
          Type localType8 = resolve(paramType1, paramClass, localClass);
          if (localClass == localType8);
          while (true)
          {
            localObject1 = localObject2;
            break label29:
            localObject2 = arrayOf(localType8);
          }
        }
        if (paramType2 instanceof GenericArrayType)
        {
          localObject1 = (GenericArrayType)paramType2;
          Type localType6 = ((GenericArrayType)localObject1).getGenericComponentType();
          Type localType7 = resolve(paramType1, paramClass, localType6);
          if (localType6 == localType7)
            continue;
          localObject1 = arrayOf(localType7);
        }
        if (paramType2 instanceof ParameterizedType)
        {
          localObject1 = (ParameterizedType)paramType2;
          Type localType3 = ((ParameterizedType)localObject1).getOwnerType();
          Type localType4 = resolve(paramType1, paramClass, localType3);
          if (localType4 != localType3);
          Type[] arrayOfType3;
          for (int i = 1; ; i = 0)
          {
            arrayOfType3 = ((ParameterizedType)localObject1).getActualTypeArguments();
            int j = 0;
            int k = arrayOfType3.length;
            while (true)
            {
              if (j >= k)
                break label259;
              Type localType5 = resolve(paramType1, paramClass, arrayOfType3[j]);
              if (localType5 != arrayOfType3[j])
              {
                if (i == 0)
                {
                  arrayOfType3 = (Type[])arrayOfType3.clone();
                  i = 1;
                }
                arrayOfType3[j] = localType5;
              }
              ++j;
            }
          }
          label259: if (i == 0)
            continue;
          localObject1 = newParameterizedTypeWithOwner(localType4, ((ParameterizedType)localObject1).getRawType(), arrayOfType3);
        }
        if (!(paramType2 instanceof WildcardType))
          break;
        localObject1 = (WildcardType)paramType2;
        Type[] arrayOfType1 = ((WildcardType)localObject1).getLowerBounds();
        Type[] arrayOfType2 = ((WildcardType)localObject1).getUpperBounds();
        if (arrayOfType1.length == 1)
        {
          Type localType2 = resolve(paramType1, paramClass, arrayOfType1[0]);
          if (localType2 == arrayOfType1[0])
            continue;
          localObject1 = supertypeOf(localType2);
        }
        if (arrayOfType2.length != 1)
          continue;
        Type localType1 = resolve(paramType1, paramClass, arrayOfType2[0]);
        if (localType1 == arrayOfType2[0])
          continue;
        localObject1 = subtypeOf(localType1);
      }
  }

  static Type resolveTypeVariable(Type paramType, Class<?> paramClass, TypeVariable<?> paramTypeVariable)
  {
    Class localClass = declaringClassOf(paramTypeVariable);
    if (localClass == null);
    while (true)
    {
      return paramTypeVariable;
      Type localType = getGenericSupertype(paramType, paramClass, localClass);
      if (!(localType instanceof ParameterizedType))
        continue;
      int i = indexOf(localClass.getTypeParameters(), paramTypeVariable);
      paramTypeVariable = ((ParameterizedType)localType).getActualTypeArguments()[i];
    }
  }

  public static WildcardType subtypeOf(Type paramType)
  {
    return new WildcardTypeImpl(new Type[] { paramType }, EMPTY_TYPE_ARRAY);
  }

  public static WildcardType supertypeOf(Type paramType)
  {
    return new WildcardTypeImpl(new Type[] { Object.class }, new Type[] { paramType });
  }

  public static String typeToString(Type paramType)
  {
    if (paramType instanceof Class);
    for (String str = ((Class)paramType).getName(); ; str = paramType.toString())
      return str;
  }

  private static final class GenericArrayTypeImpl
    implements GenericArrayType, Serializable
  {
    private static final long serialVersionUID;
    private final Type componentType;

    public GenericArrayTypeImpl(Type paramType)
    {
      this.componentType = .Gson.Types.canonicalize(paramType);
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Serializable) && (.Gson.Types.equals(this, (Serializable)paramObject)));
      for (int i = 1; ; i = 0)
        return i;
    }

    public Type getGenericComponentType()
    {
      return this.componentType;
    }

    public int hashCode()
    {
      return this.componentType.hashCode();
    }

    public String toString()
    {
      return .Gson.Types.typeToString(this.componentType) + "[]";
    }
  }

  private static final class ParameterizedTypeImpl
    implements ParameterizedType, Serializable
  {
    private static final long serialVersionUID;
    private final Type ownerType;
    private final Type rawType;
    private final Type[] typeArguments;

    public ParameterizedTypeImpl(Type paramType1, Type paramType2, Type[] paramArrayOfType)
    {
      boolean bool1;
      if (paramType2 instanceof Class)
      {
        Class localClass1 = (Class)paramType2;
        if ((paramType1 == null) && (localClass1.getEnclosingClass() != null))
          break label153;
        bool1 = true;
        label32: .Gson.Preconditions.checkArgument(bool1);
        if (paramType1 != null)
        {
          Class localClass2 = localClass1.getEnclosingClass();
          bool2 = false;
          if (localClass2 == null)
            break label59;
        }
        boolean bool2 = true;
        label59: .Gson.Preconditions.checkArgument(bool2);
      }
      if (paramType1 == null);
      for (Type localType = null; ; localType = .Gson.Types.canonicalize(paramType1))
      {
        this.ownerType = localType;
        this.rawType = .Gson.Types.canonicalize(paramType2);
        this.typeArguments = ((Type[])paramArrayOfType.clone());
        for (int i = 0; ; ++i)
        {
          if (i >= this.typeArguments.length)
            return;
          .Gson.Preconditions.checkNotNull(this.typeArguments[i]);
          .Gson.Types.access$000(this.typeArguments[i]);
          this.typeArguments[i] = .Gson.Types.canonicalize(this.typeArguments[i]);
        }
        label153: bool1 = false;
        break label32:
      }
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Serializable) && (.Gson.Types.equals(this, (Serializable)paramObject)));
      for (int i = 1; ; i = 0)
        return i;
    }

    public Type[] getActualTypeArguments()
    {
      return ((Type[])this.typeArguments.clone());
    }

    public Type getOwnerType()
    {
      return this.ownerType;
    }

    public Type getRawType()
    {
      return this.rawType;
    }

    public int hashCode()
    {
      return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode() ^ .Gson.Types.access$100(this.ownerType));
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder(30 * (1 + this.typeArguments.length));
      localStringBuilder.append(.Gson.Types.typeToString(this.rawType));
      if (this.typeArguments.length == 0);
      for (String str = localStringBuilder.toString(); ; str = ">")
      {
        return str;
        localStringBuilder.append("<").append(.Gson.Types.typeToString(this.typeArguments[0]));
        for (int i = 1; i < this.typeArguments.length; ++i)
          localStringBuilder.append(", ").append(.Gson.Types.typeToString(this.typeArguments[i]));
      }
    }
  }

  private static final class WildcardTypeImpl
    implements WildcardType, Serializable
  {
    private static final long serialVersionUID;
    private final Type lowerBound;
    private final Type upperBound;

    public WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
    {
      if (paramArrayOfType2.length <= i)
      {
        int k = i;
        label15: .Gson.Preconditions.checkArgument(k);
        if (paramArrayOfType1.length != i)
          break label88;
        int i1 = i;
        label29: .Gson.Preconditions.checkArgument(i1);
        if (paramArrayOfType2.length != i)
          break label99;
        .Gson.Preconditions.checkNotNull(paramArrayOfType2[0]);
        .Gson.Types.access$000(paramArrayOfType2[0]);
        if (paramArrayOfType1[0] != Object.class)
          break label94;
        label61: .Gson.Preconditions.checkArgument(i);
        this.lowerBound = .Gson.Types.canonicalize(paramArrayOfType2[0]);
      }
      for (this.upperBound = Object.class; ; this.upperBound = .Gson.Types.canonicalize(paramArrayOfType1[0]))
      {
        return;
        int l = 0;
        break label15:
        label88: int i2 = 0;
        break label29:
        label94: int j = 0;
        break label61:
        label99: .Gson.Preconditions.checkNotNull(paramArrayOfType1[0]);
        .Gson.Types.access$000(paramArrayOfType1[0]);
        this.lowerBound = null;
      }
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Serializable) && (.Gson.Types.equals(this, (Serializable)paramObject)));
      for (int i = 1; ; i = 0)
        return i;
    }

    public Type[] getLowerBounds()
    {
      Type[] arrayOfType;
      if (this.lowerBound != null)
      {
        arrayOfType = new Type[1];
        arrayOfType[0] = this.lowerBound;
      }
      while (true)
      {
        return arrayOfType;
        arrayOfType = .Gson.Types.EMPTY_TYPE_ARRAY;
      }
    }

    public Type[] getUpperBounds()
    {
      Type[] arrayOfType = new Type[1];
      arrayOfType[0] = this.upperBound;
      return arrayOfType;
    }

    public int hashCode()
    {
      if (this.lowerBound != null);
      for (int i = 31 + this.lowerBound.hashCode(); ; i = 1)
        return (i ^ 31 + this.upperBound.hashCode());
    }

    public String toString()
    {
      if (this.lowerBound != null);
      for (String str = "? super " + .Gson.Types.typeToString(this.lowerBound); ; str = "? extends " + .Gson.Types.typeToString(this.upperBound))
        while (true)
        {
          return str;
          if (this.upperBound != Object.class)
            break;
          str = "?";
        }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.google.mygson.internal..Gson.Types
 * JD-Core Version:    0.5.3
 */