package a.a.b;

import a.a.b.d.h;

public class i extends b
{
  static Class i;
  private static final String j;

  static
  {
    Class localClass;
    if (i == null)
    {
      localClass = a("a.a.b.i");
      i = localClass;
    }
    while (true)
    {
      j = localClass.getName();
      return;
      localClass = i;
    }
  }

  protected i(String paramString)
  {
    super(paramString);
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

  public boolean i()
  {
    if (this.e.a(5000))
      return false;
    return g.g.a(super.d());
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.i
 * JD-Core Version:    0.5.3
 */