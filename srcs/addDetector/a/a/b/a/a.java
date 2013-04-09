package a.a.b.a;

import a.a.b.b.c;
import a.a.b.b.e;
import a.a.b.d.l;
import a.a.b.g;
import java.beans.BeanInfo;
import java.beans.FeatureDescriptor;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Properties;

public final class a
{
  static Class c;
  static Class d;
  static Class e;
  static Class f;
  protected Object a;
  protected PropertyDescriptor[] b;

  public a(Object paramObject)
  {
    this.a = paramObject;
  }

  private PropertyDescriptor a(String paramString)
  {
    PropertyDescriptor[] arrayOfPropertyDescriptor = this.b;
    int i = 0;
    if (arrayOfPropertyDescriptor == null);
    try
    {
      this.b = Introspector.getBeanInfo(this.a.getClass()).getPropertyDescriptors();
      label30: if (i >= this.b.length)
        break label118;
      if (!(paramString.equals(this.b[i].getName())))
        break label112;
      label112: return this.b[i];
    }
    catch (IntrospectionException localIntrospectionException)
    {
      c.b("Failed to introspect " + this.a + ": " + localIntrospectionException.getMessage());
      this.b = new PropertyDescriptor[0];
      i = 0;
      break label30:
      ++i;
    }
    label118: return null;
  }

  public static void a(Object paramObject, Properties paramProperties, String paramString)
  {
    new a(paramObject).a(paramProperties, paramString);
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

  public final void a()
  {
    if (!(this.a instanceof l))
      return;
    ((l)this.a).c();
  }

  public final void a(String paramString1, String paramString2)
  {
    if (paramString2 == null)
      return;
    String str1 = Introspector.decapitalize(paramString1);
    PropertyDescriptor localPropertyDescriptor = a(str1);
    if (localPropertyDescriptor == null)
    {
      c.c("No such property [" + str1 + "] in " + this.a.getClass().getName() + ".");
      return;
    }
    Method localMethod;
    try
    {
      localMethod = localPropertyDescriptor.getWriteMethod();
      if (localMethod == null)
        throw new b("No setter for property [" + str1 + "].");
    }
    catch (b localb)
    {
      c.c("Failed to set property [" + str1 + "] to value \"" + paramString2 + "\". ", localb.a);
      return;
    }
    Class[] arrayOfClass = localMethod.getParameterTypes();
    if (arrayOfClass.length != 1)
      throw new b("#params for setter != 1");
    Object localObject;
    String str2;
    label225: Class localClass4;
    label262: label334: label480: boolean bool2;
    do
    {
      Class localClass1;
      while (true)
      {
        try
        {
          localClass1 = arrayOfClass[0];
          localObject = null;
          Class localClass2;
          if (paramString2 != null)
          {
            str2 = paramString2.trim();
            if (d != null)
              break label262;
            localClass2 = b("java.lang.String");
            d = localClass2;
          }
          while (true)
          {
            boolean bool1 = localClass2.isAssignableFrom(localClass1);
            if (!(bool1))
              break;
            localObject = paramString2;
            if (localObject != null)
              break label544;
            throw new b("Conversion to type [" + arrayOfClass[0] + "] failed.");
            localClass2 = d;
          }
          if (!(Integer.TYPE.isAssignableFrom(localClass1)))
            break label334;
          localObject = new Integer(str2);
        }
        catch (Throwable localThrowable)
        {
          throw new b("Conversion to type [" + arrayOfClass[0] + "] failed. Reason: " + localThrowable);
        }
        if (Long.TYPE.isAssignableFrom(localClass1))
          localObject = new Long(str2);
        if (!(Boolean.TYPE.isAssignableFrom(localClass1)))
          break;
        if ("true".equalsIgnoreCase(str2))
          localObject = Boolean.TRUE;
        boolean bool3 = "false".equalsIgnoreCase(str2);
        localObject = null;
        if (!(bool3))
          continue;
        localObject = Boolean.FALSE;
      }
      Class localClass3;
      if (e == null)
      {
        localClass3 = b("a.a.b.k");
        e = localClass3;
      }
      while (localClass3.isAssignableFrom(localClass1))
      {
        localObject = e.a(str2, g.f);
        break label225:
        localClass3 = e;
      }
      if (f != null)
        break label528;
      localClass4 = b("a.a.b.d.d");
      f = localClass4;
      bool2 = localClass4.isAssignableFrom(localClass1);
      localObject = null;
    }
    while (!(bool2));
    Class localClass5;
    if (f == null)
    {
      localClass5 = b("a.a.b.d.d");
      f = localClass5;
    }
    while (true)
    {
      localObject = e.a(str2, localClass5, null);
      break label225:
      label528: localClass4 = f;
      break label480:
      localClass5 = f;
    }
    label544: c.a("Setting property [" + str1 + "] to [" + localObject + "].");
    try
    {
      localMethod.invoke(this.a, new Object[] { localObject });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new b(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getTargetException() instanceof InterruptedException) || (localInvocationTargetException.getTargetException() instanceof InterruptedIOException))
        Thread.currentThread().interrupt();
      throw new b(localInvocationTargetException);
    }
    catch (RuntimeException localRuntimeException)
    {
      throw new b(localRuntimeException);
    }
  }

  public final void a(Properties paramProperties, String paramString)
  {
    int i = paramString.length();
    Enumeration localEnumeration = paramProperties.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      label11: String str1 = (String)localEnumeration.nextElement();
      if ((!(str1.startsWith(paramString))) || (str1.indexOf(46, i + 1) > 0))
        continue;
      String str2 = e.a(str1, paramProperties);
      String str3 = str1.substring(i);
      if (((("layout".equals(str3)) || ("errorhandler".equals(str3)))) && (this.a instanceof a.a.b.a))
        continue;
      PropertyDescriptor localPropertyDescriptor = a(Introspector.decapitalize(str3));
      if (localPropertyDescriptor != null)
      {
        Class localClass;
        label138: l locall;
        if (c == null)
        {
          localClass = b("a.a.b.d.l");
          c = localClass;
          if ((!(localClass.isAssignableFrom(localPropertyDescriptor.getPropertyType()))) || (localPropertyDescriptor.getWriteMethod() == null))
            break label416;
          locall = (l)e.a(paramProperties, paramString + str3, localPropertyDescriptor.getPropertyType());
          new a(locall).a(paramProperties, paramString + str3 + ".");
        }
        try
        {
          localPropertyDescriptor.getWriteMethod().invoke(this.a, new Object[] { locall });
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          c.c("Failed to set property [" + str3 + "] to value \"" + str2 + "\". ", localIllegalAccessException);
          break label11:
          localClass = c;
          break label138:
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          if ((localInvocationTargetException.getTargetException() instanceof InterruptedException) || (localInvocationTargetException.getTargetException() instanceof InterruptedIOException))
            Thread.currentThread().interrupt();
          c.c("Failed to set property [" + str3 + "] to value \"" + str2 + "\". ", localInvocationTargetException);
        }
        catch (RuntimeException localRuntimeException)
        {
          c.c("Failed to set property [" + str3 + "] to value \"" + str2 + "\". ", localRuntimeException);
        }
      }
      label416: a(str3, str2);
    }
    a();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.a.a
 * JD-Core Version:    0.5.3
 */