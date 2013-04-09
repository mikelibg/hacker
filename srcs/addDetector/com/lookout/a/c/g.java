package com.lookout.a.c;

import com.lookout.e.b;
import java.io.DataInputStream;

public final class g
{
  private short a = 0;
  private short b = 0;
  private int c = 0;
  private int d;

  public final short a()
  {
    return this.a;
  }

  public final void a(DataInputStream paramDataInputStream)
  {
    this.d = paramDataInputStream.available();
    this.a = b.a(paramDataInputStream.readShort());
    this.b = b.a(paramDataInputStream.readShort());
    this.c = b.a(paramDataInputStream.readInt());
  }

  public final short b()
  {
    return this.b;
  }

  public final void b(DataInputStream paramDataInputStream)
  {
    int i = this.d - paramDataInputStream.available();
    if (i < this.b)
      paramDataInputStream.skip(this.b - i);
    do
      return;
    while (i <= this.b);
    throw new h(this);
  }

  public final int c()
  {
    return this.c;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.g
 * JD-Core Version:    0.5.3
 */