package a.a.a.a.a.e;

public final class n
  implements w
{
  private y a;
  private byte[] b;
  private byte[] c;

  public final y a()
  {
    return this.a;
  }

  public final void a(y paramy)
  {
    this.a = paramy;
  }

  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    this.b = z.a(arrayOfByte);
  }

  public final byte[] c()
  {
    if (this.c != null)
      return z.a(this.c);
    return z.a(this.b);
  }

  public final y d()
  {
    if (this.c != null)
      return new y(this.c.length);
    return f();
  }

  public final byte[] e()
  {
    return z.a(this.b);
  }

  public final y f()
  {
    return new y(this.b.length);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.n
 * JD-Core Version:    0.5.3
 */