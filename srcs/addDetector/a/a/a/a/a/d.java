package a.a.a.a.a;

import java.io.OutputStream;

public abstract class d extends OutputStream
{
  private final byte[] a;
  private long b;

  protected final void a(int paramInt)
  {
    long l = paramInt;
    if (l == -1L)
      return;
    this.b = (l + this.b);
  }

  public void write(int paramInt)
  {
    this.a[0] = (byte)(paramInt & 0xFF);
    write(this.a, 0, 1);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.d
 * JD-Core Version:    0.5.3
 */