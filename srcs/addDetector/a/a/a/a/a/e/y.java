package a.a.a.a.a.e;

public final class y
  implements Cloneable
{
  private final int a;

  public y(int paramInt)
  {
    this.a = paramInt;
  }

  public y(byte[] paramArrayOfByte, int paramInt)
  {
    this.a = a(paramArrayOfByte, paramInt);
  }

  public static int a(byte[] paramArrayOfByte, int paramInt)
  {
    return ((0xFF00 & paramArrayOfByte[(paramInt + 1)] << 8) + (0xFF & paramArrayOfByte[paramInt]));
  }

  public static byte[] a(int paramInt)
  {
    byte[] arrayOfByte = new byte[2];
    arrayOfByte[0] = (byte)(paramInt & 0xFF);
    arrayOfByte[1] = (byte)((0xFF00 & paramInt) >> 8);
    return arrayOfByte;
  }

  public final byte[] a()
  {
    byte[] arrayOfByte = new byte[2];
    arrayOfByte[0] = (byte)(0xFF & this.a);
    arrayOfByte[1] = (byte)((0xFF00 & this.a) >> 8);
    return arrayOfByte;
  }

  public final int b()
  {
    return this.a;
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
    if ((paramObject == null) || (!(paramObject instanceof y)));
    do
      return false;
    while (this.a != ((y)paramObject).a);
    return true;
  }

  public final int hashCode()
  {
    return this.a;
  }

  public final String toString()
  {
    return "ZipShort value: " + this.a;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.y
 * JD-Core Version:    0.5.3
 */