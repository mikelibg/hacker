package com.lookout.d.a.a;

public final class a extends d
{
  protected b a;
  protected c b;
  protected String c;
  protected f d;
  protected String e;
  protected String f;
  protected g g;
  protected String h;
  protected String i;
  protected String j;

  public a()
  {
    super(0L);
  }

  private a(long paramLong, b paramb, c paramc, String paramString1, f paramf, String paramString2, String paramString3)
  {
    super(paramLong);
    this.a = paramb;
    this.b = paramc;
    this.c = paramString1;
    this.d = paramf;
    this.e = paramString2;
    this.f = paramString3;
  }

  public a(long paramLong, b paramb, c paramc, String paramString1, g paramg, String paramString2, String paramString3, String paramString4, f paramf, String paramString5, String paramString6)
  {
    this(paramLong, paramb, paramc, paramString1, paramf, paramString5, paramString6);
    this.g = paramg;
    this.h = paramString2;
    this.i = paramString3;
    this.j = paramString4;
  }

  public final String a()
  {
    return this.c;
  }

  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof a) && (((a)paramObject).b() == b()));
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.d.a.a.a
 * JD-Core Version:    0.5.3
 */