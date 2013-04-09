package com.lookout.addetector;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public final class j extends l
{
  private Method a;

  public j()
  {
    try
    {
      this.a = ClassLoader.class.getDeclaredMethod("findClass", new Class[] { String.class });
      this.a.setAccessible(true);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      Log.e("AdNetworkScanner", "Unable to make findClass accessible", localSecurityException);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e("AdNetworkScanner", "Unable to make findClass accessible", localNoSuchMethodException);
    }
  }

  public final void a(com.lookout.c.l paraml, com.lookout.c.k paramk)
  {
    n localn;
    String str1;
    if (paraml instanceof n)
    {
      localn = (n)paraml;
      str1 = localn.a().packageName;
    }
    ClassLoader localClassLoader;
    try
    {
      localClassLoader = a().createPackageContext(str1, 3).getClassLoader();
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      int i;
      Object localObject;
      try
      {
        Iterator localIterator = b().iterator();
        while (true)
        {
          boolean bool = localIterator.hasNext();
          if (!(bool))
          {
            i = 1;
            String str2 = localn.a().applicationInfo.sourceDir;
            if ((i == 0) || (str2.startsWith("/data/app-private/")))
              a(localn, paramk);
            return;
          }
          m localm = (m)localIterator.next();
          try
          {
            Method localMethod = this.a;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = ((k)localm).b();
            if (localMethod.invoke(localClassLoader, arrayOfObject) != null);
            a(localm.a(), paraml, paramk);
          }
          catch (Exception localException)
          {
          }
        }
        localNameNotFoundException1 = localNameNotFoundException1;
        i = 0;
        localObject = localNameNotFoundException1;
        label173: Log.e("AdNetworkScanner", "Unable to createPackageContext for " + str1, (Throwable)localObject);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        localObject = localNameNotFoundException2;
        i = 1;
        break label173:
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.j
 * JD-Core Version:    0.5.3
 */