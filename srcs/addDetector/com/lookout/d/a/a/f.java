package com.lookout.d.a.a;

import java.util.HashMap;
import java.util.Map;

public final class f
{
  public static final f a;
  public static final f b;
  public static final f c;
  public static final f d;
  public static final f e;
  public static final f f;
  public static final f g;
  public static final f h;
  private static final Map i = new HashMap();
  private final String j;
  private final int k;

  static
  {
    a = a("No action", 0);
    b = a("Monitor", 1);
    c = a("Alert", 2);
    d = a("Quarantine", 3);
    e = a("Remove", 4);
    f = a("Ignore", 100);
    g = a("Unignore", 101);
    h = a("IgnoredScan", 102);
  }

  private f(String paramString, int paramInt)
  {
    this.j = paramString;
    this.k = paramInt;
  }

  public static f a(String paramString, int paramInt)
  {
    if (i.containsKey(paramString))
      return ((f)i.get(paramString));
    f localf = new f(paramString, paramInt);
    i.put(paramString, localf);
    return localf;
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
    while (this.k == ((f)paramObject).k);
    return false;
  }

  public final int hashCode()
  {
    return this.k;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.d.a.a.f
 * JD-Core Version:    0.5.3
 */