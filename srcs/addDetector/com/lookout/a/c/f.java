package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;

public class f
{
  protected n a;
  private int b;
  private String c;

  public f(n paramn)
  {
    this.a = paramn;
  }

  public void a(DataInputStream paramDataInputStream)
  {
    this.b = b.a(paramDataInputStream.readInt());
    int i = b.a(paramDataInputStream.readInt());
    if (i == -1)
      return;
    this.c = this.a.a().a(i);
  }

  public final int e()
  {
    return this.b;
  }

  public final String f()
  {
    return this.c;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.f
 * JD-Core Version:    0.5.3
 */