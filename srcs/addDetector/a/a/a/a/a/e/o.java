package a.a.a.a.a.e;

import java.util.zip.ZipException;

public final class o extends ZipException
{
  private final p a;
  private final q b;

  public o(p paramp, q paramq)
  {
    super("unsupported feature " + paramp + " used in entry " + paramq.getName());
    this.a = paramp;
    this.b = paramq;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.o
 * JD-Core Version:    0.5.3
 */