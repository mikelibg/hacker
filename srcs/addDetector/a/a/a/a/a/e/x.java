package a.a.a.a.a.e;

public final class x
  implements Cloneable
{
  public static final x a = new x(33639248L);
  public static final x b = new x(67324752L);
  public static final x c = new x(134695760L);
  private final long d;

  private x(long paramLong)
  {
    this.d = paramLong;
  }

  public x(byte[] paramArrayOfByte)
  {
    this(paramArrayOfByte, 0);
  }

  private x(byte[] paramArrayOfByte, byte paramByte)
  {
    this.d = a(paramArrayOfByte, 0);
  }

  public static long a(byte[] paramArrayOfByte, int paramInt)
  {
    return ((0xFF000000 & paramArrayOfByte[(paramInt + 3)] << 24) + (0xFF0000 & paramArrayOfByte[(paramInt + 2)] << 16) + (0xFF00 & paramArrayOfByte[(paramInt + 1)] << 8) + (0xFF & paramArrayOfByte[paramInt]));
  }

  public static byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = (byte)(int)(0xFF & paramLong);
    arrayOfByte[1] = (byte)(int)((0xFF00 & paramLong) >> 8);
    arrayOfByte[2] = (byte)(int)((0xFF0000 & paramLong) >> 16);
    arrayOfByte[3] = (byte)(int)((0xFF000000 & paramLong) >> 24);
    return arrayOfByte;
  }

  public final byte[] a()
  {
    return a(this.d);
  }

  public final long b()
  {
    return this.d;
  }

  public final Object clone()
  {
    try
    {
      Object localObject = super.clone();
      return localObject;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof x)));
    do
      return false;
    while (this.d != ((x)paramObject).d);
    return true;
  }

  public final int hashCode()
  {
    return (int)this.d;
  }

  public final String toString()
  {
    return "ZipLong value: " + this.d;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.x
 * JD-Core Version:    0.5.3
 */