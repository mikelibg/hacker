package com.lookout.a.a.b;

import a.b.b;
import java.io.InputStream;
import java.util.LinkedList;
import java.util.List;

public class i
{
  private static final b a = a.b.c.a(i.class);
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private List h = new LinkedList();
  private List i = new LinkedList();
  private List j = new LinkedList();
  private List k = new LinkedList();
  private List l = new LinkedList();
  private List m = new LinkedList();
  private List n = new LinkedList();
  private List o = new LinkedList();
  private c p;
  private s q;
  private List r = new LinkedList();
  private int s;
  private int t;
  private int u;

  public i(InputStream paramInputStream)
  {
    try
    {
      a(paramInputStream);
      return;
    }
    catch (Exception localException)
    {
      throw new j(localException);
    }
  }

  private void a(InputStream paramInputStream)
  {
    com.lookout.a.c.n localn = new com.lookout.a.c.n();
    localn.setInput(paramInputStream, "UTF-8");
    int i1 = localn.next();
    if (i1 == 1)
      label20: return;
    switch (i1)
    {
    default:
    case 2:
    }
    label44: String str1;
    do
      while (true)
      {
        i1 = localn.next();
        break label20:
        str1 = localn.getName();
        if ("manifest".equals(str1))
        {
          this.b = localn.getAttributeValue(null, "package");
          this.e = localn.getAttributeValue(null, "sharedUserId");
          this.f = localn.getAttributeValue(null, "sharedUserLabel");
          this.c = localn.getAttributeValue(null, "versionCode");
          this.d = localn.getAttributeValue(null, "versionName");
          this.g = localn.getAttributeValue(null, "installLocation");
        }
        if ("application".equals(str1))
          this.p = c.a(localn);
        if ("instrumentation".equals(str1))
          this.h.add(g.a(localn));
        if ("permission".equals(str1))
          this.i.add(l.a(localn));
        if ("permission-group".equals(str1))
          this.j.add(m.a(localn));
        if ("permission-tree".equals(str1))
          this.k.add(n.a(localn));
        if ("uses-configuration".equals(str1))
          this.l.add(t.a(localn));
        if ("uses-feature".equals(str1))
          this.m.add(u.a(localn));
        if ("supports-screens".equals(str1))
          this.q = s.a(localn);
        if ("compatible-screens".equals(str1))
        {
          int i2 = localn.getDepth();
          int i3 = localn.next();
          label363: if ((i3 == 3) && (localn.getDepth() == i2))
            continue;
          switch (i3)
          {
          default:
          case 2:
          }
          while (true)
          {
            i3 = localn.next();
            break label363:
            if (localn.getName() != "screen")
              continue;
            this.r.add(q.a(localn));
          }
        }
        if ("uses-permission".equals(str1))
          this.n.add(localn.getAttributeValue(null, "name"));
        if (!("supports-gl-texture".equals(str1)))
          break;
        this.o.add(localn.getAttributeValue(null, "name"));
      }
    while (!("uses-sdk".equals(str1)));
    String str2 = localn.getAttributeValue(null, "minSdkVersion");
    if ((str2 != null) && (str2.length() > 0));
    String str3;
    try
    {
      this.s = Integer.parseInt(str2);
      str3 = localn.getAttributeValue(null, "targetSdkVersion");
      label567: if ((str3 == null) || (str3.length() <= 0));
    }
    catch (NumberFormatException localNumberFormatException3)
    {
      try
      {
        while (true)
        {
          this.u = Integer.parseInt(str3);
          String str4 = localn.getAttributeValue(null, "maxSdkVersion");
          if ((str4 != null) && (str4.length() > 0));
          try
          {
            this.t = Integer.parseInt(str4);
          }
          catch (NumberFormatException localNumberFormatException1)
          {
            a.b("Invalid targetSdkVersion " + str4);
          }
        }
        break label44:
        localNumberFormatException3 = localNumberFormatException3;
        a.b("Invalid minSdkVersion " + str2);
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        a.b("Invalid targetSdkVersion " + str3);
        break label567:
      }
    }
  }

  public final int a()
  {
    return this.s;
  }

  public final int b()
  {
    return this.u;
  }

  public final String c()
  {
    return this.b;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.a.b.i
 * JD-Core Version:    0.5.3
 */