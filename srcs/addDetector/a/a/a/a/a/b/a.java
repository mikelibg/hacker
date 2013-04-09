package a.a.a.a.a.b;

public final class a
  implements a.a.a.a.a.a
{
  private final short a;
  private final int b;
  private final int c;
  private long d = 0L;
  private long e = 0L;
  private long f = 0L;
  private long g = 0L;
  private long h = 0L;
  private long i = 0L;
  private long j = 0L;
  private long k = 0L;
  private String l;
  private long m = 0L;
  private long n = 0L;
  private long o = 0L;
  private long p = 0L;

  public a(short paramShort)
  {
    switch (paramShort)
    {
    case 3:
    case 5:
    case 6:
    case 7:
    default:
      throw new IllegalArgumentException("Unknown header type");
    case 1:
      this.b = 110;
    case 2:
    case 4:
    case 8:
    }
    for (this.c = 4; ; this.c = 2)
    {
      while (true)
      {
        this.a = paramShort;
        return;
        this.b = 110;
        this.c = 4;
        continue;
        this.b = 76;
        this.c = 0;
      }
      this.b = 26;
    }
  }

  private void f()
  {
    if ((0x3 & this.a) != 0)
      return;
    throw new UnsupportedOperationException();
  }

  private void g()
  {
    if ((0xC & this.a) != 0)
      return;
    throw new UnsupportedOperationException();
  }

  public final long a()
  {
    f();
    return this.d;
  }

  public final void a(long paramLong)
  {
    f();
    this.d = paramLong;
  }

  public final void a(String paramString)
  {
    this.l = paramString;
  }

  public final long b()
  {
    return this.e;
  }

  public final void b(long paramLong)
  {
    g();
    this.i = paramLong;
  }

  public final short c()
  {
    return this.a;
  }

  public final void c(long paramLong)
  {
    f();
    this.h = paramLong;
  }

  public final int d()
  {
    if (this.c == 0);
    int i1;
    do
    {
      return 0;
      i1 = (1 + this.b + this.l.length()) % this.c;
    }
    while (i1 <= 0);
    return (this.c - i1);
  }

  public final void d(long paramLong)
  {
    f();
    this.i = paramLong;
  }

  public final int e()
  {
    if (this.c == 0);
    int i1;
    do
    {
      return 0;
      i1 = (int)(this.e % this.c);
    }
    while (i1 <= 0);
    return (this.c - i1);
  }

  public final void e(long paramLong)
  {
    if ((paramLong < 0L) || (paramLong > 4294967295L))
      throw new IllegalArgumentException("invalid entry size <" + paramLong + ">");
    this.e = paramLong;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    a locala;
    do
    {
      do
      {
        return true;
        if ((paramObject == null) || (super.getClass() != paramObject.getClass()))
          return false;
        locala = (a)paramObject;
        if (this.l != null)
          break label45;
      }
      while (locala.l == null);
      label45: return false;
    }
    while (this.l.equals(locala.l));
    return false;
  }

  public final void f(long paramLong)
  {
    this.f = paramLong;
  }

  public final void g(long paramLong)
  {
    this.g = paramLong;
  }

  public final String getName()
  {
    return this.l;
  }

  public final void h(long paramLong)
  {
    long l1 = 0xF000 & paramLong;
    switch ((int)l1)
    {
    default:
      throw new IllegalArgumentException("Unknown mode. Full: " + Long.toHexString(paramLong) + " Masked: " + Long.toHexString(l1));
    case 4096:
    case 8192:
    case 16384:
    case 24576:
    case 32768:
    case 36864:
    case 40960:
    case 49152:
    }
    this.j = paramLong;
  }

  public final int hashCode()
  {
    if (this.l == null);
    for (int i1 = 0; ; i1 = this.l.hashCode())
      return (i1 + 31);
  }

  public final void i(long paramLong)
  {
    this.m = paramLong;
  }

  public final void j(long paramLong)
  {
    g();
    this.o = paramLong;
  }

  public final void k(long paramLong)
  {
    f();
    this.n = paramLong;
  }

  public final void l(long paramLong)
  {
    f();
    this.o = paramLong;
  }

  public final void m(long paramLong)
  {
    this.k = paramLong;
  }

  public final void n(long paramLong)
  {
    this.p = paramLong;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.b.a
 * JD-Core Version:    0.5.3
 */