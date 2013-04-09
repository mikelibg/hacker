package com.lookout.e;

public final class c
{
  private static final byte[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  public static byte[] a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[i * 2];
    for (int j = 0; j != i + 0; ++j)
    {
      int k = 2 * (j + 0);
      int l = k + 1;
      arrayOfByte[k] = a[(0xF & paramArrayOfByte[j] >> 4)];
      arrayOfByte[l] = a[(0xF & paramArrayOfByte[j])];
    }
    return arrayOfByte;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.e.c
 * JD-Core Version:    0.5.3
 */