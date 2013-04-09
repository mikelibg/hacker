package com.lookout.c;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class c
  implements k
{
  protected final a.b.b a = a.b.c.a(super.getClass().getName());
  private List b = new LinkedList();
  private List c = new LinkedList();
  private m d = new m();
  private HashMap e = new HashMap();
  private j f = new b();

  public final a a(l paraml)
  {
    return this.d.a(paraml);
  }

  public final void a(l paraml, f paramf)
  {
    this.d.a(paraml).add(paramf);
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((g)localIterator.next()).a(paraml, paramf);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.c.c
 * JD-Core Version:    0.5.3
 */