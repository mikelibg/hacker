package a.a.b.b;

import java.io.PrintStream;

public final class c
{
  protected static boolean a = false;
  private static boolean b = false;

  static
  {
    String str = e.a("log4j.debug");
    if (str == null)
      str = e.a("log4j.configDebug");
    if (str == null)
      return;
    a = e.a(str, true);
  }

  public static void a(String paramString)
  {
    if ((!(a)) || (b))
      return;
    System.out.println("log4j: " + paramString);
  }

  public static void a(String paramString, Throwable paramThrowable)
  {
    if ((!(a)) || (b))
      return;
    System.out.println("log4j: " + paramString);
    if (paramThrowable == null)
      return;
    paramThrowable.printStackTrace(System.out);
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static void b(String paramString)
  {
    if (b)
      return;
    System.err.println("log4j:ERROR " + paramString);
  }

  public static void b(String paramString, Throwable paramThrowable)
  {
    if (b);
    do
    {
      return;
      System.err.println("log4j:ERROR " + paramString);
    }
    while (paramThrowable == null);
    paramThrowable.printStackTrace();
  }

  public static void c(String paramString)
  {
    if (b)
      return;
    System.err.println("log4j:WARN " + paramString);
  }

  public static void c(String paramString, Throwable paramThrowable)
  {
    if (b);
    do
    {
      return;
      System.err.println("log4j:WARN " + paramString);
    }
    while (paramThrowable == null);
    paramThrowable.printStackTrace();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.b.c
 * JD-Core Version:    0.5.3
 */