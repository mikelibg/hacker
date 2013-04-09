package com.lookout.a.a.b;

import com.lookout.a.c.n;
import java.util.LinkedList;
import java.util.List;

public final class h
{
  private List a = new LinkedList();
  private List b = new LinkedList();
  private List c = new LinkedList();
  private String d;
  private String e;
  private String f;

  public static h a(n paramn)
  {
    h localh = new h();
    localh.d = paramn.getAttributeValue(null, "icon");
    localh.e = paramn.getAttributeValue(null, "label");
    localh.f = paramn.getAttributeValue(null, "priority");
    int i = paramn.getDepth();
    int j = paramn.next();
    if ((j != 3) || (paramn.getDepth() != i))
    {
      label51: switch (j)
      {
      default:
      case 2:
      }
      while (true)
      {
        j = paramn.next();
        break label51:
        String str = paramn.getName();
        if (str == "action")
          localh.a.add(paramn.getAttributeValue(null, "name"));
        if (str == "category")
          localh.b.add(paramn.getAttributeValue(null, "name"));
        if (str != "data")
          continue;
        localh.c.add(e.a(paramn));
      }
    }
    return localh;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.a.b.h
 * JD-Core Version:    0.5.3
 */