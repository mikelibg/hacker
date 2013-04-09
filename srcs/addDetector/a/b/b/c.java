package a.b.b;

import a.b.a;
import a.b.a.f;

public final class c
{
  public static String a;
  static Class b;
  private static final c c = new c();
  private static final String d;
  private final a e = new b();

  static
  {
    a = "1.6";
    Class localClass;
    if (b == null)
    {
      localClass = a("a.b.b.b");
      b = localClass;
    }
    while (true)
    {
      d = localClass.getName();
      return;
      localClass = b;
    }
  }

  private c()
  {
    try
    {
      return;
    }
    catch (NoSuchFieldError localNoSuchFieldError)
    {
      f.a("This version of SLF4J requires log4j version 1.2.12 or later. See also http://www.slf4j.org/codes.html#log4j_version");
    }
  }

  public static final c a()
  {
    return c;
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

  public final a b()
  {
    return this.e;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.b.b.c
 * JD-Core Version:    0.5.3
 */