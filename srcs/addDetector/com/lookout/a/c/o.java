package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public final class o
{
  private g a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private ByteBuffer g;

  public o(g paramg)
  {
    this.a = paramg;
    this.g = ByteBuffer.allocate(paramg.c() - paramg.b());
    this.g.order(ByteOrder.LITTLE_ENDIAN);
  }

  public final String a(int paramInt)
  {
    int i = 0;
    if ((paramInt > this.b) || (paramInt < 0))
      throw new IllegalArgumentException("The requested constant pool index " + paramInt + " is invalid.");
    if ((0x100 & this.d) != 0)
    {
      int l = this.g.getInt(paramInt * 4) + 4 * (this.b + this.c);
      byte[] arrayOfByte2 = new byte[0xFF & this.g.get(l)];
      if (l + 2 + arrayOfByte2.length > this.g.capacity())
        throw new IllegalArgumentException("Request for index " + paramInt + " generates an excessive offset reference of " + l);
      int i1 = l + 2;
      while (i < arrayOfByte2.length)
      {
        arrayOfByte2[i] = this.g.get(i1 + i);
        ++i;
      }
      return new String(arrayOfByte2, "UTF-8").intern();
    }
    int j = this.g.getInt(paramInt * 4) + 4 * (this.b + this.c);
    byte[] arrayOfByte1 = new byte[2 * (0xFFFF & this.g.getShort(j))];
    if (j + 2 + arrayOfByte1.length > this.g.capacity())
      throw new IllegalArgumentException("Request for index " + paramInt + " generates an excessive offset reference of " + j);
    int k = j + 2;
    while (i < arrayOfByte1.length)
    {
      arrayOfByte1[i] = this.g.get(1 + k + i);
      arrayOfByte1[(i + 1)] = this.g.get(k + i);
      i += 2;
    }
    return new String(arrayOfByte1, "UTF-16").intern();
  }

  public final void a(DataInputStream paramDataInputStream)
  {
    this.b = b.a(paramDataInputStream.readInt());
    this.c = b.a(paramDataInputStream.readInt());
    this.d = b.a(paramDataInputStream.readInt());
    this.e = b.a(paramDataInputStream.readInt());
    this.f = b.a(paramDataInputStream.readInt());
    this.a.b(paramDataInputStream);
    paramDataInputStream.readFully(this.g.array(), 0, this.g.capacity());
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.o
 * JD-Core Version:    0.5.3
 */