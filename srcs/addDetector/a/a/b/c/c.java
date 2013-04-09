package a.a.b.c;

import a.a.b.b.e;
import a.a.b.d.m;
import java.util.Hashtable;

public final class c
{
  static b b = new a();
  static Class c;
  Hashtable a = new Hashtable();

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

  public static void a(m paramm, String paramString1, String paramString2)
  {
    a.a.b.b.c.a("Rendering class: [" + paramString2 + "], Rendered class: [" + paramString1 + "].");
    Class localClass;
    if (c == null)
    {
      localClass = a("a.a.b.c.b");
      c = localClass;
    }
    b localb;
    while (true)
    {
      localb = (b)e.a(paramString2, localClass, null);
      if (localb != null)
        break;
      a.a.b.b.c.b("Could not instantiate renderer [" + paramString2 + "].");
      return;
      localClass = c;
    }
    try
    {
      paramm.a(a.a.b.b.b.b(paramString1), localb);
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      a.a.b.b.c.b("Could not find class [" + paramString1 + "].", localClassNotFoundException);
    }
  }

  public final void a()
  {
    this.a.clear();
  }

  public final void a(Class paramClass, b paramb)
  {
    this.a.put(paramClass, paramb);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.c.c
 * JD-Core Version:    0.5.3
 */