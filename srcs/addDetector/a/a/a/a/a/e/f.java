package a.a.a.a.a.e;

public final class f
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;

  public static f a(byte[] paramArrayOfByte)
  {
    int i = 1;
    int j = y.a(paramArrayOfByte, 6);
    f localf = new f();
    int k;
    label27: int l;
    label44: int i1;
    if ((j & 0x8) != 0)
    {
      k = i;
      localf.b = k;
      if ((j & 0x800) == 0)
        break label95;
      l = i;
      localf.a = l;
      if ((j & 0x40) == 0)
        break label101;
      i1 = i;
      label60: localf.d = i1;
      if (i1 != 0)
        localf.c = i;
      if ((j & 0x1) == 0)
        break label107;
    }
    while (true)
    {
      localf.c = i;
      return localf;
      k = 0;
      break label27:
      label95: l = 0;
      break label44:
      label101: i1 = 0;
      break label60:
      label107: i = 0;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public final boolean a()
  {
    return this.a;
  }

  public final boolean b()
  {
    return this.b;
  }

  public final void c()
  {
    this.b = true;
  }

  public final boolean d()
  {
    return this.c;
  }

  public final byte[] e()
  {
    int i;
    label10: int j;
    label21: int k;
    if (this.b)
    {
      i = 8;
      if (!(this.a))
        break label73;
      j = 2048;
      k = j | i;
      if (!(this.c))
        break label78;
    }
    for (int l = 1; ; l = 0)
    {
      int i1 = l | k;
      boolean bool = this.d;
      int i2 = 0;
      if (bool)
        i2 = 64;
      return y.a(i1 | i2);
      i = 0;
      break label10:
      label73: j = 0;
      label78: break label21:
    }
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof f));
    f localf;
    do
    {
      return false;
      localf = (f)paramObject;
    }
    while ((localf.c != this.c) || (localf.d != this.d) || (localf.a != this.a) || (localf.b != this.b));
    return true;
  }

  public final int hashCode()
  {
    int i = 1;
    int j;
    label11: int l;
    label26: int i2;
    label45: int i3;
    if (this.c)
    {
      j = i;
      int k = j * 17;
      if (!(this.d))
        break label74;
      l = i;
      int i1 = 13 * (l + k);
      if (!(this.a))
        break label80;
      i2 = i;
      i3 = 7 * (i2 + i1);
      if (!(this.b))
        break label86;
    }
    while (true)
    {
      return (3 * (i3 + i));
      j = 0;
      break label11:
      label74: l = 0;
      break label26:
      label80: i2 = 0;
      break label45:
      label86: i = 0;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.f
 * JD-Core Version:    0.5.3
 */