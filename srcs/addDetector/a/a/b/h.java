package a.a.b;

import a.a.b.b.b;
import a.a.b.d.k;
import a.a.b.d.n;
import a.a.b.d.o;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.MalformedURLException;
import java.net.URL;

public final class h
{
  private static Object a = null;
  private static n b = new a.a.b.d.c(new e(new o(g.f)));

  static
  {
    String str1 = a.a.b.b.e.a("log4j.defaultInitOverride");
    if ((str1 == null) || ("false".equalsIgnoreCase(str1)))
    {
      String str2 = a.a.b.b.e.a("log4j.configuration");
      String str3 = a.a.b.b.e.a("log4j.configuratorClass");
      URL localURL;
      if (str2 == null)
      {
        localURL = b.a("log4j.xml");
        if (localURL == null)
          localURL = b.a("log4j.properties");
      }
      while (localURL != null)
      {
        a.a.b.b.c.a("Using URL [" + localURL + "] for automatic log4j configuration.");
        try
        {
          while (true)
          {
            a.a.b.b.e.a(localURL, str3, b());
            return;
            try
            {
              localURL = new URL(str2);
            }
            catch (MalformedURLException localMalformedURLException)
            {
              localURL = b.a(str2);
            }
          }
        }
        catch (NoClassDefFoundError localNoClassDefFoundError)
        {
          a.a.b.b.c.c("Error during default initialization", localNoClassDefFoundError);
          return;
        }
      }
      a.a.b.b.c.a("Could not find resource: [" + str2 + "].");
      return;
    }
    a.a.b.b.c.a("Default initialization of overridden by log4j.defaultInitOverrideproperty.");
  }

  public static i a()
  {
    return b().d();
  }

  public static i a(String paramString)
  {
    return b().a(paramString);
  }

  private static a.a.b.d.h b()
  {
    IllegalStateException localIllegalStateException;
    int i;
    if (b == null)
    {
      b = new a.a.b.d.c(new k());
      a = null;
      localIllegalStateException = new IllegalStateException("Class invariant violation");
      StringWriter localStringWriter = new StringWriter();
      localIllegalStateException.printStackTrace(new PrintWriter(localStringWriter));
      if (localStringWriter.toString().indexOf("org.apache.catalina.loader.WebappClassLoader.stop") == -1)
        break label91;
      i = 1;
      label72: if (i == 0)
        break label96;
      a.a.b.b.c.a("log4j called after unloading, see http://logging.apache.org/log4j/1.2/faq.html#unload.", localIllegalStateException);
    }
    while (true)
    {
      return b.a();
      label91: i = 0;
      break label72:
      label96: a.a.b.b.c.b("log4j called after unloading, see http://logging.apache.org/log4j/1.2/faq.html#unload.", localIllegalStateException);
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.h
 * JD-Core Version:    0.5.3
 */