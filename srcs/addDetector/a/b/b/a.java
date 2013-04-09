package a.b.b;

import a.a.b.g;
import a.a.b.i;
import java.io.Serializable;

public final class a extends a.b.a.a
  implements a.b.c.a, Serializable
{
  static final String c;
  static Class e;
  final transient i a;
  final boolean d;

  static
  {
    Class localClass;
    if (e == null)
    {
      localClass = d("a.b.b.a");
      e = localClass;
    }
    while (true)
    {
      c = localClass.getName();
      return;
      localClass = e;
    }
  }

  a(i parami)
  {
    this.a = parami;
    this.b = parami.e();
    this.d = b();
  }

  private boolean b()
  {
    try
    {
      this.a.i();
      return true;
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
    }
    return false;
  }

  private static Class d(String paramString)
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

  public final void a(String paramString)
  {
    this.a.a(c, g.f, paramString);
  }

  public final void b(String paramString)
  {
    this.a.a(c, g.d, paramString);
  }

  public final void c(String paramString)
  {
    this.a.a(c, g.c, paramString);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.b.b.a
 * JD-Core Version:    0.5.3
 */