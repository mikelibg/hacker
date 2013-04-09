package a.b.a;

import java.io.PrintStream;

public final class f
{
  public static final void a(String paramString)
  {
    System.err.println("SLF4J: " + paramString);
  }

  public static final void a(String paramString, Throwable paramThrowable)
  {
    System.err.println(paramString);
    System.err.println("Reported exception:");
    paramThrowable.printStackTrace();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.b.a.f
 * JD-Core Version:    0.5.3
 */