package com.lookout.d.a.a;

import java.util.HashMap;
import java.util.Map;

public final class g
{
  public static final g a;
  public static final g b;
  public static final g c;
  public static final g d;
  public static final g e;
  public static final g f;
  public static final g g;
  private static final Map h = new HashMap();
  private final String i;
  private final int j;

  static
  {
    a = a("security threat", 0);
    b = a("Malware", 1000);
    c = a("Trojan", 1001);
    d = a("Worm", 1002);
    e = a("Virus", 1003);
    f = a("Spyware", 2000);
    g = a("Spy", 2001);
  }

  private g(String paramString, int paramInt)
  {
    this.i = paramString;
    this.j = paramInt;
  }

  public static g a(String paramString, int paramInt)
  {
    if (h.containsKey(paramString))
      return ((g)h.get(paramString));
    g localg = new g(paramString, paramInt);
    h.put(paramString, localg);
    return localg;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    do
    {
      return true;
      if ((paramObject == null) || (paramObject.getClass() != super.getClass()))
        return false;
    }
    while (this.j == ((g)paramObject).j);
    return false;
  }

  public final int hashCode()
  {
    return this.j;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.d.a.a.g
 * JD-Core Version:    0.5.3
 */