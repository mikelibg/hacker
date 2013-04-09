package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;

public final class a
{
  private String a;
  private String b;
  private String c;
  private m d;
  private n e;

  public a(n paramn)
  {
    this.e = paramn;
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(DataInputStream paramDataInputStream)
  {
    int i = b.a(paramDataInputStream.readInt());
    label28: label56: int k;
    if (i != -1)
    {
      this.a = this.e.a().a(i);
      int j = b.a(paramDataInputStream.readInt());
      if (j == -1)
        break label120;
      this.b = this.e.a().a(j);
      k = b.a(paramDataInputStream.readInt());
      if (k == -1)
        break label129;
    }
    for (this.c = this.e.a().a(k); ; this.c = null)
    {
      this.d = new m(this.e);
      this.d.a(paramDataInputStream);
      return;
      this.a = "";
      break label28:
      label120: this.b = "";
      label129: break label56:
    }
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    if (this.c == null)
      return this.d.toString();
    return this.c;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.a
 * JD-Core Version:    0.5.3
 */