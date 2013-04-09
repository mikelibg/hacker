package android.support.v4.app;

import android.util.Log;

public class HCSparseArray<E>
{
  private static final Object DELETED = new Object();
  private boolean mGarbage;
  private int[] mKeys;
  private int mSize;
  private Object[] mValues;

  public HCSparseArray()
  {
    this(10);
  }

  public HCSparseArray(int paramInt)
  {
    this.mGarbage = false;
    int i = idealIntArraySize(paramInt);
    this.mKeys = new int[i];
    this.mValues = new Object[i];
    this.mSize = 0;
  }

  private static int binarySearch(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt1 + paramInt2;
    int j = paramInt1 - 1;
    while (true)
    {
      if (i - j <= 1)
      {
        if (i != paramInt1 + paramInt2)
          break;
        return (0xFFFFFFFF ^ paramInt1 + paramInt2);
      }
      int k = (i + j) / 2;
      if (paramArrayOfInt[k] < paramInt3)
        j = k;
      i = k;
    }
    if (paramArrayOfInt[i] == paramInt3)
      return i;
    return (i ^ 0xFFFFFFFF);
  }

  private void checkIntegrity()
  {
    for (int i = 1; ; ++i)
    {
      if (i >= this.mSize)
        return;
      if (this.mKeys[i] > this.mKeys[(i - 1)])
        continue;
      for (int j = 0; ; ++j)
      {
        if (j >= this.mSize)
          throw new RuntimeException();
        Log.e("FAIL", j + ": " + this.mKeys[j] + " -> " + this.mValues[j]);
      }
    }
  }

  private void gc()
  {
    int i = this.mSize;
    int j = 0;
    int[] arrayOfInt = this.mKeys;
    Object[] arrayOfObject = this.mValues;
    for (int k = 0; ; ++k)
    {
      if (k >= i)
      {
        this.mGarbage = false;
        this.mSize = j;
        return;
      }
      Object localObject = arrayOfObject[k];
      if (localObject == DELETED)
        continue;
      if (k != j)
      {
        arrayOfInt[j] = arrayOfInt[k];
        arrayOfObject[j] = localObject;
      }
      ++j;
    }
  }

  static int idealByteArraySize(int paramInt)
  {
    for (int i = 4; ; ++i)
    {
      if (i >= 32)
        return paramInt;
      if (paramInt <= (1 << i) - 12)
        return ((1 << i) - 12);
    }
  }

  static int idealIntArraySize(int paramInt)
  {
    return (idealByteArraySize(paramInt * 4) / 4);
  }

  public void append(int paramInt, E paramE)
  {
    if ((this.mSize != 0) && (paramInt <= this.mKeys[(this.mSize - 1)]))
    {
      put(paramInt, paramE);
      return;
    }
    if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
      gc();
    int i = this.mSize;
    if (i >= this.mKeys.length)
    {
      int j = idealIntArraySize(i + 1);
      int[] arrayOfInt = new int[j];
      Object[] arrayOfObject = new Object[j];
      System.arraycopy(this.mKeys, 0, arrayOfInt, 0, this.mKeys.length);
      System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
      this.mKeys = arrayOfInt;
      this.mValues = arrayOfObject;
    }
    this.mKeys[i] = paramInt;
    this.mValues[i] = paramE;
    this.mSize = (i + 1);
  }

  public void clear()
  {
    int i = this.mSize;
    Object[] arrayOfObject = this.mValues;
    for (int j = 0; ; ++j)
    {
      if (j >= i)
      {
        this.mSize = 0;
        this.mGarbage = false;
        return;
      }
      arrayOfObject[j] = null;
    }
  }

  public void delete(int paramInt)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramInt);
    if ((i < 0) || (this.mValues[i] == DELETED))
      return;
    this.mValues[i] = DELETED;
    this.mGarbage = true;
  }

  public E get(int paramInt)
  {
    return get(paramInt, null);
  }

  public E get(int paramInt, E paramE)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramInt);
    if ((i < 0) || (this.mValues[i] == DELETED))
      return paramE;
    return this.mValues[i];
  }

  public int indexOfKey(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return binarySearch(this.mKeys, 0, this.mSize, paramInt);
  }

  public int indexOfValue(E paramE)
  {
    if (this.mGarbage)
      gc();
    for (int i = 0; ; ++i)
    {
      if (i >= this.mSize)
        return -1;
      if (this.mValues[i] == paramE)
        return i;
    }
  }

  public int keyAt(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return this.mKeys[paramInt];
  }

  public void put(int paramInt, E paramE)
  {
    int i = binarySearch(this.mKeys, 0, this.mSize, paramInt);
    if (i >= 0)
    {
      this.mValues[i] = paramE;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < this.mSize) && (this.mValues[j] == DELETED))
    {
      this.mKeys[j] = paramInt;
      this.mValues[j] = paramE;
      return;
    }
    if ((this.mGarbage) && (this.mSize >= this.mKeys.length))
    {
      gc();
      j = 0xFFFFFFFF ^ binarySearch(this.mKeys, 0, this.mSize, paramInt);
    }
    if (this.mSize >= this.mKeys.length)
    {
      int k = idealIntArraySize(1 + this.mSize);
      int[] arrayOfInt = new int[k];
      Object[] arrayOfObject = new Object[k];
      System.arraycopy(this.mKeys, 0, arrayOfInt, 0, this.mKeys.length);
      System.arraycopy(this.mValues, 0, arrayOfObject, 0, this.mValues.length);
      this.mKeys = arrayOfInt;
      this.mValues = arrayOfObject;
    }
    if (this.mSize - j != 0)
    {
      System.arraycopy(this.mKeys, j, this.mKeys, j + 1, this.mSize - j);
      System.arraycopy(this.mValues, j, this.mValues, j + 1, this.mSize - j);
    }
    this.mKeys[j] = paramInt;
    this.mValues[j] = paramE;
    this.mSize = (1 + this.mSize);
  }

  public void remove(int paramInt)
  {
    delete(paramInt);
  }

  public void removeAt(int paramInt)
  {
    if (this.mValues[paramInt] == DELETED)
      return;
    this.mValues[paramInt] = DELETED;
    this.mGarbage = true;
  }

  public void setValueAt(int paramInt, E paramE)
  {
    if (this.mGarbage)
      gc();
    this.mValues[paramInt] = paramE;
  }

  public int size()
  {
    if (this.mGarbage)
      gc();
    return this.mSize;
  }

  public E valueAt(int paramInt)
  {
    if (this.mGarbage)
      gc();
    return this.mValues[paramInt];
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.HCSparseArray
 * JD-Core Version:    0.5.3
 */