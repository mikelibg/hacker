package a.a.b;

import a.a.b.b.d;
import a.a.b.d.f;
import a.a.b.d.h;
import a.a.b.d.i;
import java.util.Enumeration;
import java.util.ResourceBundle;
import java.util.Vector;

public class b
  implements a.a.b.d.a
{
  static Class h;
  private static final String i;
  protected String a;
  protected volatile g b;
  protected volatile b c;
  protected ResourceBundle d;
  protected h e;
  a.a.b.b.a f;
  protected boolean g = true;

  static
  {
    Class localClass;
    if (h == null)
    {
      localClass = a("a.a.b.b");
      h = localClass;
    }
    while (true)
    {
      i = localClass.getName();
      return;
      localClass = h;
    }
  }

  protected b(String paramString)
  {
    this.a = paramString;
  }

  private static Class a(String paramString)
  {
    try
    {
      Class localClass = Class.forName(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new NoClassDefFoundError(localClassNotFoundException.getMessage());
    }
  }

  public void a()
  {
    int j = 0;
    b localb = this;
    while (true)
    {
      if (localb != null)
        monitorenter;
      try
      {
        if (localb.f != null)
          j += localb.f.a();
        if (!(localb.g))
        {
          monitorexit;
          if (j == 0);
          return;
        }
        monitorexit;
      }
      finally
      {
        monitorexit;
      }
    }
  }

  public void a(a parama)
  {
    monitorenter;
    try
    {
      if (this.f == null)
        this.f = new a.a.b.b.a();
      this.f.a(parama);
      this.e.a();
      return;
    }
    finally
    {
      monitorexit;
    }
  }

  final void a(h paramh)
  {
    this.e = paramh;
  }

  public void a(g paramg)
  {
    this.b = paramg;
  }

  public void a(String paramString, k paramk, Object paramObject)
  {
    if (this.e.a(paramk.i));
    do
      return;
    while (!(paramk.a(d())));
    new i(paramString, this, paramk, paramObject);
    a();
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  void b()
  {
    monitorenter;
    a locala;
    try
    {
      Enumeration localEnumeration = c();
      do
      {
        if ((localEnumeration == null) || (!(localEnumeration.hasMoreElements())))
          break label51;
        locala = (a)localEnumeration.nextElement();
      }
      while (!(locala instanceof a.a.b.d.a));
    }
    finally
    {
      monitorexit;
    }
    label51: monitorexit;
  }

  public Enumeration c()
  {
    monitorenter;
    while (true)
    {
      Object localObject2;
      Enumeration localEnumeration;
      try
      {
        if (this.f == null)
        {
          d locald = d.a();
          localObject2 = locald;
          return localObject2;
        }
        localEnumeration = this.f.b();
      }
      finally
      {
        monitorexit;
      }
    }
  }

  public g d()
  {
    while (this != null)
    {
      if (this.b != null)
        return this.b;
      this = this.c;
    }
    return null;
  }

  public final String e()
  {
    return this.a;
  }

  public final g f()
  {
    return this.b;
  }

  public void g()
  {
    monitorenter;
    Vector localVector;
    Enumeration localEnumeration1;
    try
    {
      if (this.f == null)
        break label139;
      localVector = new Vector();
      localEnumeration1 = this.f.b();
      if ((localEnumeration1 == null) || (!(localEnumeration1.hasMoreElements())))
        break label57;
    }
    finally
    {
      monitorexit;
    }
    label57: this.f.c();
    Enumeration localEnumeration2 = localVector.elements();
    while (localEnumeration2.hasMoreElements())
    {
      if ((a)localEnumeration2.nextElement() == null)
        continue;
      if (this.e instanceof e)
        ((e)this.e).b();
      if (!(this.e instanceof f))
        continue;
    }
    this.f = null;
    label139: monitorexit;
  }

  public void h()
  {
    this.d = null;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.b
 * JD-Core Version:    0.5.3
 */