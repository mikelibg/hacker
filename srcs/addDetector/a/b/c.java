package a.b;

import a.b.a.e;
import a.b.a.f;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;

public final class c
{
  static int a = 0;
  static e b = new e();
  static a.b.a.c c = new a.b.a.c();
  static Class d;
  private static final String[] e = { "1.6" };
  private static String f = "org/slf4j/impl/StaticLoggerBinder.class";

  public static b a(Class paramClass)
  {
    return a(paramClass.getName());
  }

  public static b a(String paramString)
  {
    if (a == 0)
      a = 1;
    while (true)
    {
      Class localClass;
      label28: ClassLoader localClassLoader;
      Enumeration localEnumeration;
      label48: ArrayList localArrayList;
      try
      {
        if (d != null)
          break label158;
        localClass = b("a.b.c");
        d = localClass;
        localClassLoader = localClass.getClassLoader();
        if (localClassLoader != null)
          break label166;
        localEnumeration = ClassLoader.getSystemResources(f);
        localArrayList = new ArrayList();
        if (!(localEnumeration.hasMoreElements()))
          break label179;
        label158: label166: label179: localArrayList.add((URL)localEnumeration.nextElement());
      }
      catch (IOException localIOException)
      {
        f.a("Error getting resources from path", localIOException);
        while (true)
          try
          {
            do
            {
              a.b.b.c.a();
              a = 3;
              a();
              if (a == 3)
                b();
              switch (a)
              {
              default:
                throw new IllegalStateException("Unreachable code");
                localClass = d;
                break label28:
                localEnumeration = localClassLoader.getResources(f);
                break label48:
              case 3:
              case 4:
              case 2:
              case 1:
              }
            }
            while (localArrayList.size() <= 1);
            f.a("Class path contains multiple SLF4J bindings.");
            for (int i = 0; i < localArrayList.size(); ++i)
              f.a("Found binding in [" + localArrayList.get(i) + "]");
            f.a("See http://www.slf4j.org/codes.html#multiple_bindings for an explanation.");
          }
          catch (NoClassDefFoundError localNoClassDefFoundError)
          {
            String str2 = localNoClassDefFoundError.getMessage();
            if ((str2 != null) && (str2.indexOf("org/slf4j/impl/StaticLoggerBinder") != -1))
            {
              a = 4;
              f.a("Failed to load class \"org.slf4j.impl.StaticLoggerBinder\".");
              f.a("Defaulting to no-operation (NOP) logger implementation");
              f.a("See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.");
            }
            a(localNoClassDefFoundError);
            throw localNoClassDefFoundError;
          }
          catch (NoSuchMethodError localNoSuchMethodError)
          {
            String str1 = localNoSuchMethodError.getMessage();
            if ((str1 != null) && (str1.indexOf("org.slf4j.impl.StaticLoggerBinder.getSingleton()") != -1))
            {
              a = 2;
              f.a("slf4j-api 1.6.x (or later) is incompatible with this binding.");
              f.a("Your binding is version 1.5.5 or earlier.");
              f.a("Upgrade your binding to version 1.6.x. or 2.0.x");
            }
            throw localNoSuchMethodError;
          }
          catch (Exception localException)
          {
            a(localException);
            throw new IllegalStateException("Unexpected initialization failure", localException);
          }
        localObject = a.b.b.c.a().b();
        return ((a)localObject).a(paramString);
      }
      Object localObject = c;
      continue;
      throw new IllegalStateException("org.slf4j.LoggerFactory could not be successfully initialized. See also http://www.slf4j.org/codes.html#unsuccessfulInit");
      localObject = b;
    }
  }

  private static final void a()
  {
    List localList = b.a();
    if (localList.size() == 0)
      return;
    f.a("The following loggers will not work becasue they were created");
    f.a("during the default configuration phase of the underlying logging system.");
    f.a("See also http://www.slf4j.org/codes.html#substituteLogger");
    for (int i = 0; ; ++i)
    {
      if (i < localList.size());
      f.a((String)localList.get(i));
    }
  }

  private static void a(Throwable paramThrowable)
  {
    a = 2;
    f.a("Failed to instantiate SLF4J LoggerFactory", paramThrowable);
  }

  private static Class b(String paramString)
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

  private static final void b()
  {
    int i = 0;
    while (true)
    {
      int j;
      try
      {
        String str = a.b.b.c.a;
        j = 0;
        if (j < e.length)
          if (str.startsWith(e[j]))
          {
            i = 1;
            break label92:
          }
        if (i == 0)
        {
          f.a("The requested version " + str + " by your slf4j binding is not compatible with " + Arrays.asList(e).toString());
          f.a("See http://www.slf4j.org/codes.html#version_mismatch for further details.");
        }
        return;
      }
      catch (Throwable localThrowable)
      {
        f.a("Unexpected problem occured during version sanity check", localThrowable);
        return;
      }
      catch (NoSuchFieldError localNoSuchFieldError)
      {
        return;
      }
      label92: ++j;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.b.c
 * JD-Core Version:    0.5.3
 */