package com.lookout.a.c;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class i
{
  private Map a;

  public final String a(long paramLong)
  {
    int i = (int)(0xFFFF & paramLong);
    int j = (int)(0xFF & paramLong >> 24);
    int k = (int)(0xFF & paramLong >> 16);
    k localk = (k)this.a.get(Integer.valueOf(j));
    if (localk == null);
    for (List localList = null; localList == null; localList = (List)localk.a().get(Integer.valueOf(k)))
      return null;
    Iterator localIterator = localList.iterator();
    m localm;
    while (localIterator.hasNext())
    {
      j localj = (j)((l)localIterator.next()).a().get(Integer.valueOf(i));
      if (localj == null)
        continue;
      localm = localj.a();
      if (localm != null)
        return localm.toString();
    }
    return null;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.c.i
 * JD-Core Version:    0.5.3
 */