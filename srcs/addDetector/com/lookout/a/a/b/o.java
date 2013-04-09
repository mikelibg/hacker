package com.lookout.a.a.b;

import com.lookout.a.c.n;
import java.util.LinkedList;
import java.util.List;

public final class o extends d
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private List i = new LinkedList();

  public static o a(n paramn)
  {
    o localo = new o();
    localo.a = paramn.getAttributeValue(null, "authorities");
    localo.b = paramn.getAttributeValue(null, "grantUriPermissions");
    localo.c = paramn.getAttributeValue(null, "initOrder");
    localo.d = paramn.getAttributeValue(null, "multiprocess");
    localo.e = paramn.getAttributeValue(null, "process");
    localo.f = paramn.getAttributeValue(null, "readPermission");
    localo.g = paramn.getAttributeValue(null, "syncable");
    localo.h = paramn.getAttributeValue(null, "writePermission");
    localo.c(paramn);
    return localo;
  }

  protected final void b(n paramn)
  {
    if (paramn.getName() != "grant-uri-permission")
      return;
    this.i.add(f.a(paramn));
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.a.a.b.o
 * JD-Core Version:    0.5.3
 */