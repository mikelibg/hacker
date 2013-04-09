package a.a.b.d;

import a.a.b.b;
import a.a.b.k;
import java.io.Serializable;
import java.util.Hashtable;

public final class i
  implements Serializable
{
  static final Integer[] e;
  static final Class[] f;
  static final Hashtable g;
  private static long h = System.currentTimeMillis();
  public final transient String a;
  public final String b;
  public transient k c;
  public final long d;
  private transient b i;
  private boolean j = true;
  private boolean k = true;
  private transient Object l;

  static
  {
    e = new Integer[1];
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Integer.TYPE;
    f = arrayOfClass;
    g = new Hashtable(3);
  }

  public i(String paramString, b paramb, k paramk, Object paramObject)
  {
    this.a = paramString;
    this.i = paramb;
    this.b = paramb.e();
    this.c = paramk;
    this.l = paramObject;
    this.d = System.currentTimeMillis();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.d.i
 * JD-Core Version:    0.5.3
 */