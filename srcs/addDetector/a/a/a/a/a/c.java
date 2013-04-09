package a.a.a.a.a;

import java.io.InputStream;

public abstract class c extends InputStream
{
  private byte[] a = new byte[1];
  private long b = 0L;

  public abstract a a();

  protected final void a(int paramInt)
  {
    a(paramInt);
  }

  protected final void a(long paramLong)
  {
    if (paramLong == -1L)
      return;
    this.b = (paramLong + this.b);
  }

  public final long b()
  {
    return this.b;
  }

  protected final void b(long paramLong)
  {
    this.b -= paramLong;
  }

  public int read()
  {
    if (read(this.a, 0, 1) == -1)
      return -1;
    return (0xFF & this.a[0]);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.c
 * JD-Core Version:    0.5.3
 */