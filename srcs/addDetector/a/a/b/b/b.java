package a.a.b.b;

import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;

public class b
{
  static Class a;
  static Class b;
  private static boolean c = true;
  private static boolean d = false;

  static
  {
    String str1 = e.a("java.version");
    if (str1 != null)
    {
      int i = str1.indexOf(46);
      if ((i != -1) && (str1.charAt(i + 1) != '1'))
        c = false;
    }
    String str2 = e.a("log4j.ignoreTCL");
    if (str2 == null)
      return;
    d = e.a(str2, true);
  }

  private static ClassLoader a()
  {
    try
    {
      if (b == null)
      {
        localClass = c("java.lang.Thread");
        b = localClass;
        Method localMethod = localClass.getMethod("getContextClassLoader", null);
        return ((ClassLoader)localMethod.invoke(Thread.currentThread(), null));
      }
      Class localClass = b;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    return null;
  }

  public static URL a(String paramString)
  {
    URL localURL1;
    try
    {
      if ((!(c)) && (!(d)))
      {
        ClassLoader localClassLoader2 = a();
        if (localClassLoader2 != null)
        {
          c.a("Trying to find [" + paramString + "] using context classloader " + localClassLoader2 + ".");
          URL localURL2 = localClassLoader2.getResource(paramString);
          if (localURL2 != null)
            return localURL2;
        }
      }
      if (a == null)
      {
        localClass = c("a.a.b.b.b");
        a = localClass;
        ClassLoader localClassLoader1 = localClass.getClassLoader();
        if (localClassLoader1 != null)
        {
          c.a("Trying to find [" + paramString + "] using " + localClassLoader1 + " class loader.");
          localURL1 = localClassLoader1.getResource(paramString);
          if (localURL1 != null)
            break label242;
        }
        label149: c.a("Trying to find [" + paramString + "] using ClassLoader.getSystemResource().");
        return ClassLoader.getSystemResource(paramString);
      }
      Class localClass = a;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      c.c("Caught Exception while in Loader.getResource. This may be innocuous.", localIllegalAccessException);
      break label149:
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getTargetException() instanceof InterruptedException) || (localInvocationTargetException.getTargetException() instanceof InterruptedIOException))
        Thread.currentThread().interrupt();
      c.c("Caught Exception while in Loader.getResource. This may be innocuous.", localInvocationTargetException);
      break label149:
    }
    catch (Throwable localThrowable)
    {
      c.c("Caught Exception while in Loader.getResource. This may be innocuous.", localThrowable);
      break label149:
    }
    label242: return localURL1;
  }

  public static Class b(String paramString)
  {
    if ((c) || (d))
      return Class.forName(paramString);
    try
    {
      Class localClass = a().loadClass(paramString);
      return localClass;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getTargetException() instanceof InterruptedException) || (localInvocationTargetException.getTargetException() instanceof InterruptedIOException))
        Thread.currentThread().interrupt();
      return Class.forName(paramString);
    }
    catch (Throwable localThrowable)
    {
    }
  }

  private static Class c(String paramString)
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
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.b.b
 * JD-Core Version:    0.5.3
 */