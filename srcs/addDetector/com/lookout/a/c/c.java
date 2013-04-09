package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;

public class c extends f
{
  private String b;
  private String c;
  private short d;
  private short e;
  private short f;
  private short g;
  private short h;
  private short i;
  private a[] j;

  public c(n paramn)
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
    int k = b.a(paramDataInputStream.readInt());
    label33: int l;
    if (k != -1)
    {
      this.b = this.a.a().a(k);
      l = b.a(paramDataInputStream.readInt());
      if (l == -1)
        break label194;
    }
    for (this.c = this.a.a().a(l); ; this.c = "")
    {
      this.d = b.a(paramDataInputStream.readShort());
      this.e = b.a(paramDataInputStream.readShort());
      this.f = b.a(paramDataInputStream.readShort());
      this.g = b.a(paramDataInputStream.readShort());
      this.h = b.a(paramDataInputStream.readShort());
      this.i = b.a(paramDataInputStream.readShort());
      this.j = new a[this.f];
      for (int i1 = 0; ; ++i1)
      {
        if (i1 >= this.f)
          return;
        this.j[i1] = new a(this.a);
        this.j[i1].a(paramDataInputStream);
      }
      this.b = "";
      label194: break label33:
    }
  }

  public final String b()
  {
    return this.c;
  }

  public final short c()
  {
    return this.f;
  }

  public final a[] d()
  {
    return this.j;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.c
 * JD-Core Version:    0.5.3
 */