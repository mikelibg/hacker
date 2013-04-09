package a.a.a.b.a;

public final class b
{
  private static final ThreadLocal a = new ThreadLocal();
  private final int b;
  private int c = 0;

  public b()
  {
    this.b = 37;
    this.c = 17;
  }

  public b(int paramInt1, int paramInt2)
  {
    if (paramInt1 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires a non zero initial value");
    if (paramInt1 % 2 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires an odd initial value");
    if (paramInt2 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires a non zero multiplier");
    if (paramInt2 % 2 == 0)
      throw new IllegalArgumentException("HashCodeBuilder requires an odd multiplier");
    this.b = paramInt2;
    this.c = paramInt1;
  }

  public final int a()
  {
    return this.c;
  }

  public final b a(long paramLong)
  {
    this.c = (this.c * this.b + (int)(paramLong ^ paramLong >> 32));
    return this;
  }

  public final b a(Object paramObject)
  {
    if (paramObject == null)
      this.c *= this.b;
    boolean[] arrayOfBoolean;
    int j;
    do
    {
      return this;
      if (!(paramObject.getClass().isArray()))
        break label641;
      if (paramObject instanceof long[])
      {
        long[] arrayOfLong = (long[])paramObject;
        int i8 = 0;
        if (arrayOfLong == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i8 < arrayOfLong.length);
          a(arrayOfLong[i8]);
          ++i8;
        }
      }
      if (paramObject instanceof int[])
      {
        int[] arrayOfInt = (int[])paramObject;
        int i7 = 0;
        if (arrayOfInt == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i7 < arrayOfInt.length);
          this.c = (arrayOfInt[i7] + this.c * this.b);
          ++i7;
        }
      }
      if (paramObject instanceof short[])
      {
        short[] arrayOfShort = (short[])paramObject;
        int i6 = 0;
        if (arrayOfShort == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i6 < arrayOfShort.length);
          this.c = (arrayOfShort[i6] + this.c * this.b);
          ++i6;
        }
      }
      if (paramObject instanceof char[])
      {
        char[] arrayOfChar = (char[])paramObject;
        int i5 = 0;
        if (arrayOfChar == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i5 < arrayOfChar.length);
          this.c = (arrayOfChar[i5] + this.c * this.b);
          ++i5;
        }
      }
      if (paramObject instanceof byte[])
      {
        byte[] arrayOfByte = (byte[])paramObject;
        int i4 = 0;
        if (arrayOfByte == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i4 < arrayOfByte.length);
          this.c = (arrayOfByte[i4] + this.c * this.b);
          ++i4;
        }
      }
      if (paramObject instanceof double[])
      {
        double[] arrayOfDouble = (double[])paramObject;
        int i3 = 0;
        if (arrayOfDouble == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i3 < arrayOfDouble.length);
          a(Double.doubleToLongBits(arrayOfDouble[i3]));
          ++i3;
        }
      }
      if (paramObject instanceof float[])
      {
        float[] arrayOfFloat = (float[])paramObject;
        int i2 = 0;
        if (arrayOfFloat == null)
        {
          this.c *= this.b;
          return this;
        }
        while (true)
        {
          if (i2 < arrayOfFloat.length);
          float f = arrayOfFloat[i2];
          this.c = (this.c * this.b + Float.floatToIntBits(f));
          ++i2;
        }
      }
      if (!(paramObject instanceof boolean[]))
        break label595;
      arrayOfBoolean = (boolean[])paramObject;
      if (arrayOfBoolean == null)
      {
        this.c *= this.b;
        return this;
      }
      label540: j = 0;
    }
    while (j >= arrayOfBoolean.length);
    int k = arrayOfBoolean[j];
    int l = this.c * this.b;
    if (k != 0);
    for (int i1 = 0; ; i1 = 1)
    {
      this.c = (i1 + l);
      ++j;
      break label540:
    }
    label595: Object[] arrayOfObject = (Object[])paramObject;
    int i = 0;
    if (arrayOfObject == null)
    {
      this.c *= this.b;
      return this;
    }
    while (true)
    {
      if (i < arrayOfObject.length);
      a(arrayOfObject[i]);
      ++i;
    }
    label641: this.c = (this.c * this.b + paramObject.hashCode());
    return this;
  }

  public final int hashCode()
  {
    return this.c;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.b.a.b
 * JD-Core Version:    0.5.3
 */