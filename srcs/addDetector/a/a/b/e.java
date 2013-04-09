package a.a.b;

import a.a.b.d.h;
import a.a.b.d.p;
import a.a.b.d.q;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public final class e
  implements h, a.a.b.d.m, q
{
  Hashtable a = new Hashtable();
  i b;
  a.a.b.c.c c;
  int d;
  g e;
  boolean f = false;
  boolean g = false;
  private a.a.b.d.g h;
  private Vector i = new Vector(1);
  private p j = null;

  public e(i parami)
  {
    this.b = parami;
    a(g.h);
    this.b.a(this);
    this.c = new a.a.b.c.c();
    this.h = new d();
  }

  private final void a(i parami)
  {
    String str = parami.a;
    Object localObject;
    for (int k = str.lastIndexOf(46, -1 + str.length()); ; k = str.lastIndexOf(46, k - 1))
    {
      if (k < 0)
        break label180;
      c localc = new c(str.substring(0, k));
      localObject = this.a.get(localc);
      if (localObject != null)
        break;
      m localm = new m(parami);
      label75: this.a.put(localc, localm);
    }
    if (localObject instanceof b)
      parami.c = ((b)localObject);
    for (int l = 1; ; l = 0)
    {
      if (l == 0)
        parami.c = this.b;
      return;
      if (localObject instanceof m)
        ((m)localObject).addElement(parami);
      new IllegalStateException("unexpected object type " + localObject.getClass() + " in ht.").printStackTrace();
      label180: break label75:
    }
  }

  private Enumeration f()
  {
    Vector localVector = new Vector(this.a.size());
    Enumeration localEnumeration = this.a.elements();
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = localEnumeration.nextElement();
      if (!(localObject instanceof i))
        continue;
      localVector.addElement(localObject);
    }
    return localVector.elements();
  }

  public final i a(String paramString)
  {
    return a(paramString, this.h);
  }

  public final i a(String paramString, a.a.b.d.g paramg)
  {
    c localc = new c(paramString);
    Object localObject2;
    synchronized (this.a)
    {
      localObject2 = this.a.get(localc);
      if (localObject2 == null)
      {
        i locali1 = paramg.a(paramString);
        locali1.a(this);
        this.a.put(localc, locali1);
        a(locali1);
        return locali1;
      }
      if (!(localObject2 instanceof i))
        break label100;
      i locali4 = (i)localObject2;
      return locali4;
    }
    label100: i locali2;
    m localm;
    int k;
    if (localObject2 instanceof m)
    {
      locali2 = paramg.a(paramString);
      locali2.a(this);
      this.a.put(localc, locali2);
      localm = (m)localObject2;
      k = localm.size();
    }
    for (int l = 0; ; ++l)
      if (l < k)
      {
        i locali3 = (i)localm.elementAt(l);
        if (locali3.c.a.startsWith(locali2.a))
          continue;
        locali2.c = locali3.c;
        locali3.c = locali2;
      }
      else
      {
        a(locali2);
        monitorexit;
        return locali2;
        monitorexit;
        return null;
      }
  }

  public final void a()
  {
    if (this.i == null)
      return;
    int k = this.i.size();
    for (int l = 0; l < k; ++l)
      this.i.elementAt(l);
  }

  public final void a(b paramb)
  {
    if (this.f)
      return;
    a.a.b.b.c.c("No appenders could be found for logger (" + paramb.e() + ").");
    a.a.b.b.c.c("Please initialize the log4j system properly.");
    a.a.b.b.c.c("See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.");
    this.f = true;
  }

  public final void a(p paramp)
  {
    this.j = paramp;
  }

  public final void a(g paramg)
  {
    if (paramg == null)
      return;
    this.d = paramg.i;
    this.e = paramg;
  }

  public final void a(Class paramClass, a.a.b.c.b paramb)
  {
    this.c.a(paramClass, paramb);
  }

  public final boolean a(int paramInt)
  {
    return (this.d > paramInt);
  }

  final void b()
  {
    if (this.i == null)
      return;
    int k = this.i.size();
    for (int l = 0; l < k; ++l)
      this.i.elementAt(l);
  }

  public final g c()
  {
    return this.e;
  }

  public final i d()
  {
    return this.b;
  }

  public final void e()
  {
    this.b.a(g.f);
    this.b.h();
    a(g.h);
    i locali1;
    synchronized (this.a)
    {
      locali1 = this.b;
      locali1.b();
      synchronized (this.a)
      {
        Enumeration localEnumeration1 = f();
        if (!(localEnumeration1.hasMoreElements()))
          break label94;
        ((i)localEnumeration1.nextElement()).b();
      }
    }
    label94: locali1.g();
    Enumeration localEnumeration2 = f();
    while (localEnumeration2.hasMoreElements())
      ((i)localEnumeration2.nextElement()).g();
    monitorexit;
    Enumeration localEnumeration3 = f();
    while (localEnumeration3.hasMoreElements())
    {
      i locali2 = (i)localEnumeration3.nextElement();
      locali2.a(null);
      locali2.a(true);
      locali2.h();
    }
    monitorexit;
    this.c.a();
    this.j = null;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.e
 * JD-Core Version:    0.5.3
 */