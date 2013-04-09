package com.lookout.d.a.a;

import java.util.HashMap;
import java.util.Map;

public final class c
{
  public static final c a;
  public static final c b;
  private static final Map c = new HashMap();
  private final String d;
  private final int e;

  static
  {
    a = a("Security", 1);
    b = a("Privacy", 2);
  }

  private c(String paramString, int paramInt)
  {
    this.d = paramString;
    this.e = paramInt;
  }

  public static c a(String paramString, int paramInt)
  {
    if (c.containsKey(paramString))
      return ((c)c.get(paramString));
    c localc = new c(paramString, paramInt);
    c.put(paramString, localc);
    return localc;
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
    while (this.e == ((c)paramObject).e);
    return false;
  }

  public final int hashCode()
  {
    return this.e;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.d.a.a.c
 * JD-Core Version:    0.5.3
 */