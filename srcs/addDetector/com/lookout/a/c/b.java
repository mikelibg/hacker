package com.lookout.a.c;

import java.io.DataInputStream;

public class b extends f
{
  private String b;
  private byte c;
  private int d;
  private int e;

  public b(n paramn)
  {
    super(paramn);
  }

  public final String a()
  {
    return this.b;
  }

  public final void a(DataInputStream paramDataInputStream)
  {
    super.a(paramDataInputStream);
    int i = com.lookout.e.b.a(paramDataInputStream.readInt());
    if (i == -1);
    for (this.b = ""; ; this.b = this.a.a().a(i))
    {
      this.e = com.lookout.e.b.a(paramDataInputStream.readShort());
      paramDataInputStream.skip(1L);
      this.c = paramDataInputStream.readByte();
      this.d = com.lookout.e.b.a(paramDataInputStream.readInt());
      return;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.b
 * JD-Core Version:    0.5.3
 */