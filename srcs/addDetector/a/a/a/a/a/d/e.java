package a.a.a.a.a.d;

public final class e
{
  public static long a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l1 = 0L;
    int i = paramInt1 + paramInt2;
    if (paramInt2 < 2)
      throw new IllegalArgumentException("Length " + paramInt2 + " must be at least 2");
    int j = 1;
    for (int k = paramInt1; ; ++k)
    {
      if (k < i)
      {
        if (paramArrayOfByte[k] == 0)
          continue;
        j = 0;
      }
      if (j == 0)
        break;
      return l1;
    }
    while (true)
    {
      if ((l < i) && (paramArrayOfByte[l] == 32))
        ++l;
      byte b1 = paramArrayOfByte[(i - 1)];
      int i1;
      int i2;
      if ((b1 == 0) || (b1 == 32))
      {
        i1 = i - 1;
        i2 = paramArrayOfByte[(i1 - 1)];
      }
      while (true)
      {
        if (((i2 != 0) && (i2 != 32)) || (l < --i1));
        byte b2 = paramArrayOfByte[l];
        if ((b2 < 48) || (b2 > 55))
        {
          throw new IllegalArgumentException(a(paramArrayOfByte, paramInt1, paramInt2, l, b2));
          throw new IllegalArgumentException(a(paramArrayOfByte, paramInt1, paramInt2, i - 1, b1));
        }
        long l2 = (l1 << 3) + b2 - 48;
        ++l;
        l1 = l2;
      }
      int l = paramInt1;
    }
  }

  private static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, byte paramByte)
  {
    String str = new String(paramArrayOfByte, paramInt1, paramInt2).replaceAll("", "{NUL}");
    return "Invalid byte " + paramByte + " at offset " + (paramInt3 - paramInt1) + " in '" + str + "' len=" + paramInt2;
  }

  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    return (paramArrayOfByte[paramInt] == 1);
  }

  public static String b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramInt2);
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      int j = paramArrayOfByte[paramInt1];
      if (j == 0)
        break;
      localStringBuffer.append((char)(j & 0xFF));
      ++paramInt1;
    }
    return localStringBuffer.toString();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.d.e
 * JD-Core Version:    0.5.3
 */