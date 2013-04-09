package com.lookout.addetector;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import com.lookout.c.f;
import com.lookout.c.h;
import com.lookout.c.i;
import com.lookout.c.k;
import com.lookout.e.e;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class l
  implements h
{
  private ArrayList a = new ArrayList();
  private Context b;

  private static com.lookout.a.b.a.m a(String paramString)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramString.replace('.', '/');
    return new com.lookout.a.b.a.m(String.format("L%s;", arrayOfObject));
  }

  // ERROR //
  private File a(com.lookout.a.a.a.a parama)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 43	com/lookout/a/a/a/a:a	()La/a/a/a/a/c;
    //   4: astore_2
    //   5: aload_2
    //   6: ldc 45
    //   8: invokestatic 50	com/lookout/e/a:a	(La/a/a/a/a/c;Ljava/lang/String;)La/a/a/a/a/a;
    //   11: astore 4
    //   13: aload 4
    //   15: ifnonnull +9 -> 24
    //   18: aload_2
    //   19: invokestatic 55	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   22: aconst_null
    //   23: areturn
    //   24: aload_0
    //   25: getfield 57	com/lookout/addetector/l:b	Landroid/content/Context;
    //   28: ldc 59
    //   30: iconst_0
    //   31: invokevirtual 65	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   34: astore 8
    //   36: aload 8
    //   38: astore 6
    //   40: aload_2
    //   41: aload 6
    //   43: invokestatic 68	com/lookout/e/a:a	(La/a/a/a/a/c;Ljava/io/OutputStream;)I
    //   46: pop
    //   47: aload 6
    //   49: invokestatic 71	com/lookout/e/d:a	(Ljava/io/OutputStream;)V
    //   52: aload_0
    //   53: getfield 57	com/lookout/addetector/l:b	Landroid/content/Context;
    //   56: ldc 59
    //   58: invokevirtual 75	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   61: astore 10
    //   63: aload_2
    //   64: invokestatic 55	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   67: aload 10
    //   69: areturn
    //   70: astore 5
    //   72: aconst_null
    //   73: astore 6
    //   75: aload 5
    //   77: astore 7
    //   79: aload 6
    //   81: invokestatic 71	com/lookout/e/d:a	(Ljava/io/OutputStream;)V
    //   84: aload 7
    //   86: athrow
    //   87: astore_3
    //   88: aload_2
    //   89: invokestatic 55	com/lookout/e/d:a	(Ljava/io/InputStream;)V
    //   92: aload_3
    //   93: athrow
    //   94: astore 7
    //   96: goto -17 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   24	36	70	finally
    //   5	13	87	finally
    //   47	63	87	finally
    //   79	87	87	finally
    //   40	47	94	finally
  }

  private void a(com.lookout.a.b.a.m paramm, com.lookout.c.l paraml, k paramk)
  {
    Iterator localIterator = this.a.iterator();
    while (true)
    {
      if (!(localIterator.hasNext()))
        return;
      m localm = (m)localIterator.next();
      if (!(localm.a(paramm)))
        continue;
      a(localm.a(), paraml, paramk);
    }
  }

  protected static void a(List paramList, com.lookout.c.l paraml, k paramk)
  {
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!(localIterator.hasNext()))
        return;
      f localf = (f)localIterator.next();
      if (localf instanceof i)
        localf = ((i)localf).a();
      localf.a(com.lookout.a.b.b.a.class);
      paramk.a(paraml, localf);
    }
  }

  private boolean a(com.lookout.a.a.a.a parama, k paramk)
  {
    System.currentTimeMillis();
    try
    {
      new y(a(parama)).a(parama, this.a, paramk);
      return true;
    }
    catch (e locale)
    {
      return false;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace(System.err);
      return false;
    }
    finally
    {
      c();
    }
  }

  private void c()
  {
    this.b.deleteFile("_xed.sessalc_");
  }

  protected final Context a()
  {
    return this.b;
  }

  public final void a(Context paramContext)
  {
    this.b = paramContext;
  }

  protected final void a(n paramn, k paramk)
  {
    int i = 0;
    PackageInfo localPackageInfo = paramn.a();
    ActivityInfo[] arrayOfActivityInfo2;
    int i4;
    if (localPackageInfo.activities != null)
    {
      arrayOfActivityInfo2 = localPackageInfo.activities;
      int i3 = arrayOfActivityInfo2.length;
      i4 = 0;
      label31: if (i4 < i3)
        break label125;
    }
    ActivityInfo[] arrayOfActivityInfo1;
    int i2;
    if (localPackageInfo.receivers != null)
    {
      arrayOfActivityInfo1 = localPackageInfo.receivers;
      int i1 = arrayOfActivityInfo1.length;
      i2 = 0;
      label61: if (i2 < i1)
        break label148;
    }
    ServiceInfo[] arrayOfServiceInfo;
    int l;
    if (localPackageInfo.services != null)
    {
      arrayOfServiceInfo = localPackageInfo.services;
      int k = arrayOfServiceInfo.length;
      l = 0;
      if (l < k)
        break label171;
    }
    ProviderInfo[] arrayOfProviderInfo;
    int j;
    if (localPackageInfo.providers != null)
    {
      arrayOfProviderInfo = localPackageInfo.providers;
      j = arrayOfProviderInfo.length;
    }
    while (true)
    {
      if (i >= j)
      {
        return;
        label125: a(a(arrayOfActivityInfo2[i4].name), paramn, paramk);
        ++i4;
        break label31:
        label148: a(a(arrayOfActivityInfo1[i2].name), paramn, paramk);
        ++i2;
        break label61:
        label171: a(a(arrayOfServiceInfo[l].name), paramn, paramk);
        ++l;
      }
      a(a(arrayOfProviderInfo[i].name), paramn, paramk);
      ++i;
    }
  }

  public void a(com.lookout.c.l paraml, k paramk)
  {
    n localn;
    com.lookout.a.a.a.a locala;
    if (paraml instanceof n)
    {
      localn = (n)paraml;
      if (!(new File(localn.a().applicationInfo.publicSourceDir).canRead()))
        break label117;
      locala = null;
    }
    while (true)
    {
      try
      {
        locala = localn.a_();
        boolean bool2 = a(locala, paramk);
        bool1 = bool2;
        if (locala != null)
          locala.b();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        if (locala == null)
          break label117;
      }
      finally
      {
        if (locala != null)
          locala.b();
      }
      label117: boolean bool1 = false;
    }
  }

  public final List b()
  {
    return this.a;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.l
 * JD-Core Version:    0.5.3
 */