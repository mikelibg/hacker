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

public final class a  implements d
{
  private static final a a = new a();
  private Map<String, String> b = new HashMap();
  private Map<String, String> c = new HashMap();
  private ReadWriteLock d = new ReentrantReadWriteLock();

  public static final a a()
  {
    return a;
  }
  
  //Se le pasa
  //("SEARCH_URL", "http://www.searchmobileonline.com/{$CATEGORY$}?sourceid=7&q={$QUERY$}");
  //Pista falsa?¿? no hay return 
  public final String a(String paramString1, String paramString2)
  {
    Lock localLock1 = this.d.readLock();
    localLock1.lock();
    String str;
    Lock localLock2;
    try
    {
      if (this.b.containsKey(paramString1))
      {
        str = (String)this.b.get(paramString1);
        localLock1.unlock();
      }
      localLock2.lock();
    }
    finally
    {
      try
      {
        if (this.c == null)
          this.c = new HashMap();
        this.c.put(paramString1, paramString1);
        localLock2.unlock();
        str = paramString2;
      }
      finally
      {
        localLock2.unlock();
      }
      localLock1.unlock();
    }
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

  public final Collection<String> b()
  {
    if (this.c != null);
    for (Collection localCollection = this.c.values(); ; localCollection = null)
      return localCollection;
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

  public final boolean b(String paramString1, String paramString2)
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
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.android.c.a
 * JD-Core Version:    0.5.3
 */