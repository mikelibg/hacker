package a.a.b.b;

import a.a.b.d.h;
import a.a.b.g;
import a.a.b.l;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.Properties;

public final class e
{
  static String a = "${";
  static char b = '}';
  static int c = 2;
  static int d = 1;
  static Class e;
  static Class f;
  static Class g;

  public static g a(String paramString, g paramg)
  {
    if (paramString == null)
      return paramg;
    String str1 = paramString.trim();
    int i = str1.indexOf(35);
    if (i == -1)
    {
      if ("NULL".equalsIgnoreCase(str1))
        return null;
      return g.a(str1, paramg);
    }
    String str2 = str1.substring(i + 1);
    String str3 = str1.substring(0, i);
    if ("NULL".equalsIgnoreCase(str3))
      return null;
    c.a("toLevel:class=[" + str2 + "]:pri=[" + str3 + "]");
    try
    {
      Class localClass1 = b.b(str2);
      Class[] arrayOfClass = new Class[2];
      Class localClass2;
      if (e == null)
      {
        localClass2 = b("java.lang.String");
        e = localClass2;
      }
      while (true)
      {
        arrayOfClass[0] = localClass2;
        if (f != null)
          break;
        localClass3 = b("a.a.b.g");
        f = localClass3;
        arrayOfClass[1] = localClass3;
        return ((g)localClass1.getMethod("toLevel", arrayOfClass).invoke(null, new Object[] { str3, paramg }));
        localClass2 = e;
      }
      Class localClass3 = f;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      c.c("custom level class [" + str2 + "] not found.");
      return paramg;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      c.c("custom level class [" + str2 + "] does not have a class function toLevel(String, Level)", localNoSuchMethodException);
      return paramg;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getTargetException() instanceof InterruptedException) || (localInvocationTargetException.getTargetException() instanceof InterruptedIOException))
        Thread.currentThread().interrupt();
      c.c("custom level class [" + str2 + "] could not be instantiated", localInvocationTargetException);
      return paramg;
    }
    catch (ClassCastException localClassCastException)
    {
      c.c("class [" + str2 + "] is not a subclass of org.apache.log4j.Level", localClassCastException);
      return paramg;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      c.c("class [" + str2 + "] cannot be instantiated due to access restrictions", localIllegalAccessException);
      return paramg;
    }
    catch (RuntimeException localRuntimeException)
    {
      c.c("class [" + str2 + "], level [" + str3 + "] conversion failed.", localRuntimeException);
    }
    return paramg;
  }

  public static Object a(String paramString, Class paramClass, Object paramObject)
  {
    if (paramString != null)
      try
      {
        Class localClass = b.b(paramString);
        if (!(paramClass.isAssignableFrom(localClass)))
        {
          c.b("A \"" + paramString + "\" object is not assignable to a \"" + paramClass.getName() + "\" variable.");
          c.b("The class \"" + paramClass.getName() + "\" was loaded by ");
          c.b("[" + paramClass.getClassLoader() + "] whereas object of type ");
          c.b("\"" + localClass.getName() + "\" was loaded by [" + localClass.getClassLoader() + "].");
          return paramObject;
        }
        Object localObject = localClass.newInstance();
        return localObject;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        c.b("Could not instantiate class [" + paramString + "].", localClassNotFoundException);
        return paramObject;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        c.b("Could not instantiate class [" + paramString + "].", localIllegalAccessException);
        return paramObject;
      }
      catch (InstantiationException localInstantiationException)
      {
        c.b("Could not instantiate class [" + paramString + "].", localInstantiationException);
        return paramObject;
      }
      catch (RuntimeException localRuntimeException)
      {
        c.b("Could not instantiate class [" + paramString + "].", localRuntimeException);
      }
    return paramObject;
  }

  public static Object a(Properties paramProperties, String paramString, Class paramClass)
  {
    String str = a(paramString, paramProperties);
    if (str == null)
    {
      c.b("Could not find value for key " + paramString);
      return null;
    }
    return a(str.trim(), paramClass, null);
  }

  public static String a(String paramString)
  {
    try
    {
      String str = System.getProperty(paramString, null);
      return str;
    }
    catch (Throwable localThrowable)
    {
      c.a("Was not allowed to read system property \"" + paramString + "\".");
    }
    return null;
  }

  public static String a(String paramString, Properties paramProperties)
  {
    String str1 = paramProperties.getProperty(paramString);
    if (str1 == null)
      return null;
    try
    {
      String str2 = b(str1, paramProperties);
      return str2;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      c.b("Bad option value [" + str1 + "].", localIllegalArgumentException);
    }
    return str1;
  }

  public static void a(URL paramURL, String paramString, h paramh)
  {
    String str = paramURL.getFile();
    if ((paramString == null) && (str != null) && (str.endsWith(".xml")))
      paramString = "org.apache.log4j.xml.DOMConfigurator";
    if (paramString != null)
    {
      c.a("Preferred configurator class: " + paramString);
      Class localClass;
      if (g == null)
      {
        localClass = b("a.a.b.d.b");
        g = localClass;
      }
      while (true)
      {
        localObject = (a.a.b.d.b)a(paramString, localClass, null);
        if (localObject != null)
          break label126;
        c.b("Could not instantiate configurator [" + paramString + "].");
        return;
        localClass = g;
      }
    }
    Object localObject = new l();
    label126: ((a.a.b.d.b)localObject).a(paramURL, paramh);
  }

  public static boolean a(String paramString, boolean paramBoolean)
  {
    if (paramString == null);
    String str;
    do
    {
      return paramBoolean;
      str = paramString.trim();
      if ("true".equalsIgnoreCase(str))
        return true;
    }
    while (!("false".equalsIgnoreCase(str)));
    return false;
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

  private static String b(String paramString, Properties paramProperties)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int k;
    for (int i = 0; ; i = k + d)
    {
      int j = paramString.indexOf(a, i);
      if (j == -1)
      {
        if (i == 0)
          return paramString;
        localStringBuffer.append(paramString.substring(i, paramString.length()));
        return localStringBuffer.toString();
      }
      localStringBuffer.append(paramString.substring(i, j));
      k = paramString.indexOf(b, j);
      if (k == -1)
        throw new IllegalArgumentException("\"" + paramString + "\" has no closing brace. Opening brace at position " + j + '.');
      String str1 = paramString.substring(j + c, k);
      String str2 = a(str1);
      if ((str2 == null) && (paramProperties != null))
        str2 = paramProperties.getProperty(str1);
      if (str2 == null)
        continue;
      localStringBuffer.append(b(str2, paramProperties));
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.b.e
 * JD-Core Version:    0.5.3
 */