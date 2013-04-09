package a.a.a.a.a.d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

final class d
{
  private InputStream a;
  private OutputStream b;
  private byte[] c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;

  public d(InputStream paramInputStream)
  {
    this.a = paramInputStream;
    this.b = null;
    this.f = 10240;
    this.g = 512;
    this.h = (this.f / this.g);
    this.c = new byte[this.f];
    if (this.a != null)
    {
      this.d = -1;
      this.e = this.h;
      return;
    }
    this.d = 0;
    this.e = 0;
  }

  private boolean d()
  {
    if (this.a == null)
      throw new IOException("reading from an output buffer");
    this.e = 0;
    int i = this.f;
    int j = 0;
    while (true)
    {
      long l;
      if (i > 0)
      {
        l = this.a.read(this.c, j, i);
        if (l != -1L)
          break label86;
        if (j == 0)
          return false;
        Arrays.fill(this.c, j, i + j, 0);
      }
      this.d = (1 + this.d);
      return true;
      label86: j = (int)(l + j);
      i = (int)(i - l);
    }
  }

  public final int a()
  {
    return this.g;
  }

  public final byte[] b()
  {
    if (this.a == null)
    {
      if (this.b == null)
        throw new IOException("input buffer is closed");
      throw new IOException("reading from an output buffer");
    }
    if ((this.e >= this.h) && (!(d())))
      return null;
    byte[] arrayOfByte = new byte[this.g];
    System.arraycopy(this.c, this.e * this.g, arrayOfByte, 0, this.g);
    this.e = (1 + this.e);
    return arrayOfByte;
  }

  public final void c()
  {
    if (this.b != null)
    {
      if (this.b == null)
        throw new IOException("writing to an input buffer");
      if (this.e > 0)
      {
        if (this.b == null)
          throw new IOException("writing to an input buffer");
        this.b.write(this.c, 0, this.f);
        this.b.flush();
        this.e = 0;
        this.d = (1 + this.d);
        Arrays.fill(this.c, 0);
      }
      if ((this.b != System.out) && (this.b != System.err))
      {
        this.b.close();
        this.b = null;
      }
    }
    do
      return;
    while (this.a == null);
    if (this.a != System.in)
      this.a.close();
    this.a = null;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.d.d
 * JD-Core Version:    0.5.3
 */