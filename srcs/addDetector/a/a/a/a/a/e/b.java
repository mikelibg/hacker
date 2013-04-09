package a.a.a.a.a.e;

import java.util.zip.CRC32;
import java.util.zip.ZipException;

public class b
  implements w, Cloneable
{
  private static final y a = new y(30062);
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private String e = "";
  private boolean f = false;
  private CRC32 g = new CRC32();

  private int a(int paramInt)
  {
    int i = 32768;
    if (b())
    {
      i = 40960;
      label13: return (i | paramInt & 0xFFF);
    }
    if ((this.f) && (!(b())));
    for (int j = 1; ; j = 0)
    {
      if (j != 0);
      i = 16384;
      break label13:
    }
  }

  private boolean b()
  {
    return (this.e.length() != 0);
  }

  public final y a()
  {
    return a;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l1 = x.a(paramArrayOfByte, paramInt1);
    byte[] arrayOfByte1 = new byte[paramInt2 - 4];
    System.arraycopy(paramArrayOfByte, paramInt1 + 4, arrayOfByte1, 0, paramInt2 - 4);
    this.g.reset();
    this.g.update(arrayOfByte1);
    long l2 = this.g.getValue();
    if (l1 != l2)
      throw new ZipException("bad CRC checksum " + Long.toHexString(l1) + " instead of " + Long.toHexString(l2));
    int i = y.a(arrayOfByte1, 0);
    byte[] arrayOfByte2 = new byte[(int)x.a(arrayOfByte1, 2)];
    this.c = y.a(arrayOfByte1, 6);
    this.d = y.a(arrayOfByte1, 8);
    if (arrayOfByte2.length == 0);
    for (this.e = ""; ; this.e = new String(arrayOfByte2))
    {
      int j = i & 0x4000;
      int k = 0;
      if (j != 0)
        k = 1;
      this.f = k;
      this.b = a(this.b);
      this.b = a(i);
      return;
      System.arraycopy(arrayOfByte1, 10, arrayOfByte2, 0, arrayOfByte2.length);
    }
  }

  public final byte[] c()
  {
    return e();
  }

  public Object clone()
  {
    try
    {
      b localb = (b)super.clone();
      localb.g = new CRC32();
      return localb;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }

  public final y d()
  {
    return f();
  }

  public final byte[] e()
  {
    byte[] arrayOfByte1 = new byte[-4 + f().b()];
    System.arraycopy(y.a(this.b), 0, arrayOfByte1, 0, 2);
    byte[] arrayOfByte2 = this.e.getBytes();
    System.arraycopy(x.a(arrayOfByte2.length), 0, arrayOfByte1, 2, 4);
    System.arraycopy(y.a(this.c), 0, arrayOfByte1, 6, 2);
    System.arraycopy(y.a(this.d), 0, arrayOfByte1, 8, 2);
    System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 10, arrayOfByte2.length);
    this.g.reset();
    this.g.update(arrayOfByte1);
    long l = this.g.getValue();
    byte[] arrayOfByte3 = new byte[4 + arrayOfByte1.length];
    System.arraycopy(x.a(l), 0, arrayOfByte3, 0, 4);
    System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 4, arrayOfByte1.length);
    return arrayOfByte3;
  }

  public final y f()
  {
    return new y(14 + this.e.getBytes().length);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.b
 * JD-Core Version:    0.5.3
 */