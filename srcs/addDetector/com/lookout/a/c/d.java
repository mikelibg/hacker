package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;

public final class d extends f
{
  private String b;
  private String c;

  public d(n paramn)
  {
    super(paramn);
  }

  public final void a(DataInputStream paramDataInputStream)
  {
    super.a(paramDataInputStream);
    int i = b.a(paramDataInputStream.readInt());
    if (i != -1);
    for (this.b = this.a.a().a(i); ; this.b = "")
    {
      int j = b.a(paramDataInputStream.readInt());
      if (j == -1)
        break;
      this.c = this.a.a().a(j);
      return;
    }
    this.c = "";
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.d
 * JD-Core Version:    0.5.3
 */