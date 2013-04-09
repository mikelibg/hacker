package com.apperhand.device.android.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.apperhand.device.a.d.d;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

public final class a
  implements d
{
  private static final a a = new a();
  private Map<String, String> b = new HashMap();
  private Map<String, String> c = new HashMap();
  private ReadWriteLock d = new ReentrantReadWriteLock();

  public static final a a()
  {
    return a;
  }

  // ERROR //
  public final String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 34	com/apperhand/device/android/c/a:d	Ljava/util/concurrent/locks/ReadWriteLock;
    //   4: invokeinterface 42 1 0
    //   9: astore 4
    //   11: aload 4
    //   13: invokeinterface 47 1 0
    //   18: aload_0
    //   19: getfield 27	com/apperhand/device/android/c/a:b	Ljava/util/Map;
    //   22: aload_1
    //   23: invokeinterface 53 2 0
    //   28: ifeq +30 -> 58
    //   31: aload_0
    //   32: getfield 27	com/apperhand/device/android/c/a:b	Ljava/util/Map;
    //   35: aload_1
    //   36: invokeinterface 57 2 0
    //   41: checkcast 59	java/lang/String
    //   44: astore 9
    //   46: aload 9
    //   48: astore_2
    //   49: aload 4
    //   51: invokeinterface 62 1 0
    //   56: aload_2
    //   57: areturn
    //   58: iload_3
    //   59: ifeq -10 -> 49
    //   62: aload_0
    //   63: getfield 34	com/apperhand/device/android/c/a:d	Ljava/util/concurrent/locks/ReadWriteLock;
    //   66: invokeinterface 42 1 0
    //   71: astore 6
    //   73: aload 6
    //   75: invokeinterface 47 1 0
    //   80: aload_0
    //   81: getfield 29	com/apperhand/device/android/c/a:c	Ljava/util/Map;
    //   84: ifnonnull +14 -> 98
    //   87: aload_0
    //   88: new 24	java/util/HashMap
    //   91: dup
    //   92: invokespecial 25	java/util/HashMap:<init>	()V
    //   95: putfield 29	com/apperhand/device/android/c/a:c	Ljava/util/Map;
    //   98: aload_0
    //   99: getfield 29	com/apperhand/device/android/c/a:c	Ljava/util/Map;
    //   102: aload_1
    //   103: aload_1
    //   104: invokeinterface 66 3 0
    //   109: pop
    //   110: aload 6
    //   112: invokeinterface 62 1 0
    //   117: goto -68 -> 49
    //   120: astore 5
    //   122: aload 4
    //   124: invokeinterface 62 1 0
    //   129: aload 5
    //   131: athrow
    //   132: astore 7
    //   134: aload 6
    //   136: invokeinterface 62 1 0
    //   141: aload 7
    //   143: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   18	46	120	finally
    //   62	80	120	finally
    //   110	117	120	finally
    //   134	144	120	finally
    //   80	98	132	finally
    //   98	110	132	finally
  }

  public final void a(Context paramContext)
  {
    Lock localLock = this.d.writeLock();
    localLock.lock();
    try
    {
      this.b = paramContext.getSharedPreferences("com.apperhand.parameters", 0).getAll();
      return;
    }
    finally
    {
      localLock.unlock();
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    Lock localLock = this.d.readLock();
    localLock.lock();
    try
    {
      if (this.b == null)
        this.b = new HashMap();
      this.b.put(paramString1, paramString2);
      localLock.unlock();
      if ((this.c != null) && (this.c.size() > 0));
      return true;
    }
    finally
    {
      localLock.unlock();
    }
  }

  public final Collection<String> b()
  {
    if (this.c != null)
      return this.c.values();
    return null;
  }

  public final void b(Context paramContext)
  {
    Lock localLock = this.d.writeLock();
    localLock.lock();
    SharedPreferences.Editor localEditor;
    String str;
    try
    {
      localEditor = paramContext.getSharedPreferences("com.apperhand.parameters", 0).edit();
      Iterator localIterator = this.b.keySet().iterator();
      if (!(localIterator.hasNext()))
        break label104;
      str = (String)localIterator.next();
    }
    finally
    {
      localLock.unlock();
    }
    label104: localEditor.commit();
    localLock.unlock();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.c.a
 * JD-Core Version:    0.5.3
 */