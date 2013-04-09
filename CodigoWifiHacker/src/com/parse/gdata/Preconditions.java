package com.parse.gdata;

public final class Preconditions
{
  public static void checkArgument(boolean paramBoolean)
  {
    if (paramBoolean)
      return;
    throw new IllegalArgumentException();
  }

  public static void checkArgument(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean)
      return;
    throw new IllegalArgumentException(String.valueOf(paramObject));
  }

  public static void checkArgument(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (paramBoolean)
      return;
    throw new IllegalArgumentException(format(paramString, paramArrayOfObject));
  }

  public static void checkElementIndex(int paramInt1, int paramInt2)
  {
    checkElementIndex(paramInt1, paramInt2, "index");
  }

  public static void checkElementIndex(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt2 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt2);
      checkArgument(bool, "negative size: %s", arrayOfObject1);
      if (paramInt1 >= 0)
        break;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = paramString;
      arrayOfObject3[1] = Integer.valueOf(paramInt1);
      throw new IndexOutOfBoundsException(format("%s (%s) must not be negative", arrayOfObject3));
    }
    if (paramInt1 < paramInt2)
      return;
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = paramString;
    arrayOfObject2[1] = Integer.valueOf(paramInt1);
    arrayOfObject2[2] = Integer.valueOf(paramInt2);
    throw new IndexOutOfBoundsException(format("%s (%s) must be less than size (%s)", arrayOfObject2));
  }

  public static <T> T checkNotNull(T paramT)
  {
    if (paramT == null)
      throw new NullPointerException();
    return paramT;
  }

  public static <T> T checkNotNull(T paramT, Object paramObject)
  {
    if (paramT == null)
      throw new NullPointerException(String.valueOf(paramObject));
    return paramT;
  }

  public static <T> T checkNotNull(T paramT, String paramString, Object[] paramArrayOfObject)
  {
    if (paramT == null)
      throw new NullPointerException(format(paramString, paramArrayOfObject));
    return paramT;
  }

  public static void checkPositionIndex(int paramInt1, int paramInt2)
  {
    checkPositionIndex(paramInt1, paramInt2, "index");
  }

  public static void checkPositionIndex(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt2 >= 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt2);
      checkArgument(bool, "negative size: %s", arrayOfObject1);
      if (paramInt1 >= 0)
        break;
      Object[] arrayOfObject3 = new Object[2];
      arrayOfObject3[0] = paramString;
      arrayOfObject3[1] = Integer.valueOf(paramInt1);
      throw new IndexOutOfBoundsException(format("%s (%s) must not be negative", arrayOfObject3));
    }
    if (paramInt1 <= paramInt2)
      return;
    Object[] arrayOfObject2 = new Object[3];
    arrayOfObject2[0] = paramString;
    arrayOfObject2[1] = Integer.valueOf(paramInt1);
    arrayOfObject2[2] = Integer.valueOf(paramInt2);
    throw new IndexOutOfBoundsException(format("%s (%s) must not be greater than size (%s)", arrayOfObject2));
  }

  public static void checkPositionIndexes(int paramInt1, int paramInt2, int paramInt3)
  {
    checkPositionIndex(paramInt1, paramInt3, "start index");
    checkPositionIndex(paramInt2, paramInt3, "end index");
    if (paramInt2 >= paramInt1)
      return;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt2);
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    throw new IndexOutOfBoundsException(format("end index (%s) must not be less than start index (%s)", arrayOfObject));
  }

  public static void checkState(boolean paramBoolean)
  {
    if (paramBoolean)
      return;
    throw new IllegalStateException();
  }

  public static void checkState(boolean paramBoolean, Object paramObject)
  {
    if (paramBoolean)
      return;
    throw new IllegalStateException(String.valueOf(paramObject));
  }

  public static void checkState(boolean paramBoolean, String paramString, Object[] paramArrayOfObject)
  {
    if (paramBoolean)
      return;
    throw new IllegalStateException(format(paramString, paramArrayOfObject));
  }

  static String format(String paramString, Object[] paramArrayOfObject)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + 16 * paramArrayOfObject.length);
    int i = 0;
    label124: int i3;
    for (int j = 0; ; j = i3)
    {
      int i2;
      if (j < paramArrayOfObject.length)
      {
        i2 = paramString.indexOf("%s", i);
        if (i2 != -1)
          break label124;
      }
      localStringBuilder.append(paramString.substring(i));
      if (j >= paramArrayOfObject.length)
        break label170;
      localStringBuilder.append(" [");
      int k = j + 1;
      localStringBuilder.append(paramArrayOfObject[j]);
      int i1;
      for (int l = k; ; l = i1)
      {
        if (l >= paramArrayOfObject.length)
          break label163;
        localStringBuilder.append(", ");
        i1 = l + 1;
        localStringBuilder.append(paramArrayOfObject[l]);
      }
      localStringBuilder.append(paramString.substring(i, i2));
      i3 = j + 1;
      localStringBuilder.append(paramArrayOfObject[j]);
      i = i2 + 2;
    }
    label163: localStringBuilder.append("]");
    label170: return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.gdata.Preconditions
 * JD-Core Version:    0.5.3
 */