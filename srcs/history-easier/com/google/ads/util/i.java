package com.google.ads.util;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;

public abstract class i
{
  private static final Object a = new Object();
  private static int b = 0;
  private static HashMap<Class<?>, Integer> c = new HashMap();
  private final ArrayList<a<?>> d = new ArrayList();
  public final int m;

  public i()
  {
    synchronized (a)
    {
      int i = b;
      b = i + 1;
      this.m = i;
      Integer localInteger = (Integer)c.get(super.getClass());
      if (localInteger == null)
      {
        c.put(super.getClass(), Integer.valueOf(1));
        b.d("State created: " + toString());
        return;
      }
      c.put(super.getClass(), Integer.valueOf(1 + localInteger.intValue()));
    }
  }

  private void a(a<?> parama)
  {
    this.d.add(parama);
  }

  protected void finalize()
    throws Throwable
  {
    synchronized (a)
    {
      c.put(super.getClass(), Integer.valueOf(-1 + ((Integer)c.get(super.getClass())).intValue()));
      super.finalize();
      return;
    }
  }

  public String toString()
  {
    return super.getClass().getSimpleName() + "[" + this.m + "]";
  }

  public abstract class a<T>
  {
    protected T a;
    protected final String b;

    private a(String paramString)
    {
      this(i.this, paramString, null);
    }

    private a(T paramT)
    {
      this.b = paramT;
      i.a(i.this, this);
      Object localObject;
      this.a = localObject;
    }

    public String toString()
    {
      return i.this.toString() + "." + this.b + " = " + this.a;
    }
  }

  public final class b<T> extends i.a<T>
  {
    public b(T paramT)
    {
      super(i.this, paramT, localObject, null);
    }

    public T a()
    {
      return this.a;
    }

    public String toString()
    {
      return super.toString() + " (!)";
    }
  }

  public final class c<T> extends i.a<T>
  {
    private boolean e = false;

    public c(String paramString)
    {
      super(i.this, paramString, null);
    }

    public c(T paramT)
    {
      super(i.this, paramT, localObject, null);
    }

    public T a()
    {
      monitorenter;
      try
      {
        Object localObject2 = this.a;
        monitorexit;
        return localObject2;
      }
      finally
      {
        localObject1 = finally;
        monitorexit;
        throw localObject1;
      }
    }

    public void a(T paramT)
    {
      monitorenter;
      try
      {
        b.d("State changed - " + i.this.toString() + "." + this.b + ": '" + paramT + "' <-- '" + this.a + "'.");
        this.a = paramT;
        this.e = true;
        monitorexit;
        return;
      }
      finally
      {
        localObject = finally;
        monitorexit;
        throw localObject;
      }
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder().append(super.toString());
      if (this.e);
      for (String str = " (*)"; ; str = "")
        return str;
    }
  }

  public final class d<T> extends i.a<WeakReference<T>>
  {
    public d(T paramT)
    {
      super(i.this, paramT, new WeakReference(localObject), null);
    }

    public T a()
    {
      return ((WeakReference)this.a).get();
    }

    public String toString()
    {
      return i.this.toString() + "." + this.b + " = " + a() + " (?)";
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.ads.util.i
 * JD-Core Version:    0.5.3
 */