package com.lookout.a.a.b;

import com.lookout.a.c.n;
import java.util.LinkedList;
import java.util.List;

public abstract class d
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private List g = new LinkedList();
  private List h = new LinkedList();

  protected void b(n paramn)
  {
  }

  protected final void c(n paramn)
  {
    this.a = paramn.getAttributeValue(null, "name");
    this.b = paramn.getAttributeValue(null, "permission");
    this.c = paramn.getAttributeValue(null, "label");
    this.d = paramn.getAttributeValue(null, "icon");
    this.e = paramn.getAttributeValue(null, "exported");
    this.f = paramn.getAttributeValue(null, "enabled");
    int i = paramn.getDepth();
    int j = paramn.next();
    if ((j == 3) && (paramn.getDepth() == i))
      label76: return;
    switch (j)
    {
    default:
    case 2:
    }
    while (true)
    {
      j = paramn.next();
      break label76:
      String str = paramn.getName();
      if (str == "intent-filter")
        this.g.add(h.a(paramn));
      if (str == "meta-data")
        this.h.add(k.a(paramn));
      b(paramn);
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.a.b.d
 * JD-Core Version:    0.5.3
 */