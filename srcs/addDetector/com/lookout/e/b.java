package com.lookout.e;

import java.nio.ByteBuffer;

public final class b
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  public static int a(int paramInt)
  {
    return (0xFF000000 & paramInt << 24 | 0xFF0000 & paramInt << 8 | 0xFF00 & paramInt >> 8 | 0xFF & paramInt >> 24);
  }

  public static int a(ByteBuffer paramByteBuffer)
  {
    return (0xFF & paramByteBuffer.get(40) | 0xFF00 & paramByteBuffer.get(41) << 8 | 0xFF0000 & paramByteBuffer.get(42) << 16 | 0xFF000000 & paramByteBuffer.get(43) << 24);
  }

  public static short a(short paramShort)
  {
    return (short)(0xFF & paramShort >> 8 | 0xFF00 & paramShort << 8);
  }

  public static byte[] a(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    ByteBuffer localByteBuffer = paramByteBuffer.duplicate();
    localByteBuffer.position(paramInt1);
    localByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }

  public static long b(ByteBuffer paramByteBuffer)
  {
    long l = 0L;
    for (int i = 0; ; i += 7)
    {
      int j = 0xFF & paramByteBuffer.get();
      l |= (j & 0x7F) << i;
      if ((j & 0xFFFFFF80) == 0)
        break;
    }
    return l;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.e.b
 * JD-Core Version:    0.5.3
 */