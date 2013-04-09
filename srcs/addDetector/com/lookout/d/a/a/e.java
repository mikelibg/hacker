package com.lookout.d.a.a;

import java.util.HashMap;

public final class e
{
  private static e a = new e();
  private HashMap b = new HashMap();
  private HashMap c = ???.b;

  public static e a()
  {
    return a;
  }

  public final a a(long paramLong)
  {
    if (this.b.containsKey(Long.valueOf(paramLong)))
      return ((a)this.b.get(Long.valueOf(paramLong)));
    return null;
  }

  public final void a(a parama)
  {
    this.c.put(Long.valueOf(parama.b()), parama);
  }

  public final int b()
  {
    return this.b.size();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.d.a.a.e
 * JD-Core Version:    0.5.3
 */