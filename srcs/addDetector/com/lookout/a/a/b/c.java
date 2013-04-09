package com.lookout.a.a.b;

import com.lookout.a.c.n;
import java.util.LinkedList;
import java.util.List;

public final class c
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;
  private String s;
  private List t = new LinkedList();
  private List u = new LinkedList();
  private List v = new LinkedList();
  private List w = new LinkedList();
  private List x = new LinkedList();
  private List y = new LinkedList();

  public static c a(n paramn)
  {
    c localc = new c();
    localc.a = paramn.getAttributeValue(null, "allowTaskReparenting");
    localc.b = paramn.getAttributeValue(null, "backupAgent");
    localc.c = paramn.getAttributeValue(null, "debuggable");
    localc.d = paramn.getAttributeValue(null, "description");
    localc.e = paramn.getAttributeValue(null, "enabled");
    localc.f = paramn.getAttributeValue(null, "hasCode");
    localc.g = paramn.getAttributeValue(null, "hardwareAccelerated");
    localc.h = paramn.getAttributeValue(null, "icon");
    localc.i = paramn.getAttributeValue(null, "killAfterRestore");
    localc.j = paramn.getAttributeValue(null, "label");
    localc.k = paramn.getAttributeValue(null, "logo");
    localc.l = paramn.getAttributeValue(null, "manageSpaceActivity");
    localc.m = paramn.getAttributeValue(null, "name");
    localc.n = paramn.getAttributeValue(null, "permission");
    localc.o = paramn.getAttributeValue(null, "persistent");
    localc.p = paramn.getAttributeValue(null, "process");
    localc.q = paramn.getAttributeValue(null, "restoreAnyVersion");
    localc.r = paramn.getAttributeValue(null, "taskAffinity");
    localc.s = paramn.getAttributeValue(null, "theme");
    int i1 = paramn.getDepth();
    int i2 = paramn.next();
    if ((i2 != 3) || (paramn.getDepth() != i1))
    {
      label227: switch (i2)
      {
      default:
      case 2:
      }
      while (true)
      {
        i2 = paramn.next();
        break label227:
        String str = paramn.getName();
        if ("activity".equals(str))
          localc.t.add(a.a(paramn));
        if ("activity-alias".equals(str))
          localc.u.add(b.a(paramn));
        if ("receiver".equals(str))
          localc.v.add(p.a(paramn));
        if ("provider".equals(str))
          localc.x.add(o.a(paramn));
        if ("service".equals(str))
          localc.w.add(r.a(paramn));
        if (!("uses-library".equals(str)))
          continue;
        localc.y.add(v.a(paramn));
      }
    }
    return localc;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.a.b.c
 * JD-Core Version:    0.5.3
 */