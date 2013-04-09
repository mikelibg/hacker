package a.a.a.a.a.b;

final class c
{
  static long a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramArrayOfByte.length % 2 != 0)
      throw new UnsupportedOperationException();
    byte[] arrayOfByte = new byte[paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    if (!(paramBoolean))
    {
      int i1;
      for (int j = 0; j < arrayOfByte.length; j = i1 + 1)
      {
        int k = arrayOfByte[j];
        i1 = j + 1;
        arrayOfByte[j] = arrayOfByte[i1];
        arrayOfByte[i1] = k;
      }
    }
    long l = 0xFF & arrayOfByte[0];
    for (int i = 1; i < arrayOfByte.length; ++i)
      l = l << 8 | 0xFF & arrayOfByte[i];
    return l;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.b.c
 * JD-Core Version:    0.5.3
 */