package a.a.b;

public class k
{
  public static final k l = new g(50000, "FATAL", 0);
  public static final k m = new g(40000, "ERROR", 3);
  public static final k n = new g(30000, "WARN", 4);
  public static final k o = new g(20000, "INFO", 6);
  public static final k p = new g(10000, "DEBUG", 7);
  transient int i;
  transient String j;
  transient int k;

  protected k()
  {
    this.i = 10000;
    this.j = "DEBUG";
    this.k = 7;
  }

  protected k(int paramInt1, String paramString, int paramInt2)
  {
    this.i = paramInt1;
    this.j = paramString;
    this.k = paramInt2;
  }

  public final boolean a(k paramk)
  {
    return (this.i >= paramk.i);
  }

  public boolean equals(Object paramObject)
  {
    boolean bool = paramObject instanceof k;
    int i1 = 0;
    if (bool)
    {
      k localk = (k)paramObject;
      int i2 = this.i;
      int i3 = localk.i;
      i1 = 0;
      if (i2 == i3)
        i1 = 1;
    }
    return i1;
  }

  public final String toString()
  {
    return this.j;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.k
 * JD-Core Version:    0.5.3
 */