package a.a.a.a.a.e;

import java.util.zip.ZipException;

public abstract class a
  implements w
{
  private long a;
  private byte[] b;
  private byte[] c;

  private void g()
  {
    if (this.b == null)
      return;
    this.c = new byte[5 + this.b.length];
    this.c[0] = 1;
    System.arraycopy(x.a(this.a), 0, this.c, 1, 4);
    System.arraycopy(this.b, 0, this.c, 5, this.b.length);
  }

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 5)
      throw new ZipException("UniCode path extra data must have at least 5 bytes.");
    int i = paramArrayOfByte[paramInt1];
    if (i != 1)
      throw new ZipException("Unsupported version [" + i + "] for UniCode path extra data.");
    this.a = x.a(paramArrayOfByte, paramInt1 + 1);
    this.b = new byte[paramInt2 - 5];
    System.arraycopy(paramArrayOfByte, paramInt1 + 5, this.b, 0, paramInt2 - 5);
    this.c = null;
  }

  public final byte[] b()
  {
    return this.b;
  }

  public final byte[] c()
  {
    if (this.c == null)
      g();
    return this.c;
  }

  public final long c_()
  {
    return this.a;
  }

  public final y d()
  {
    if (this.c == null)
      g();
    return new y(this.c.length);
  }

  public final byte[] e()
  {
    return c();
  }

  public final y f()
  {
    return d();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.a
 * JD-Core Version:    0.5.3
 */