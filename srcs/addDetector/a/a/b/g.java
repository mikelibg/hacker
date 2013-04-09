package a.a.b;

import java.io.Serializable;

public class g extends k
  implements Serializable
{
  public static final g a = new g(2147483647, "OFF", 0);
  public static final g b = new g(50000, "FATAL", 0);
  public static final g c = new g(40000, "ERROR", 3);
  public static final g d = new g(30000, "WARN", 4);
  public static final g e = new g(20000, "INFO", 6);
  public static final g f = new g(10000, "DEBUG", 7);
  public static final g g = new g(5000, "TRACE", 7);
  public static final g h = new g(-2147483648, "ALL", 7);

  protected g(int paramInt1, String paramString, int paramInt2)
  {
    super(paramInt1, paramString, paramInt2);
  }

  public static g a(String paramString, g paramg)
  {
    if (paramString == null);
    String str;
    do
    {
      return paramg;
      str = paramString.toUpperCase();
      if (str.equals("ALL"))
        return h;
      if (str.equals("DEBUG"))
        return f;
      if (str.equals("INFO"))
        return e;
      if (str.equals("WARN"))
        return d;
      if (str.equals("ERROR"))
        return c;
      if (str.equals("FATAL"))
        return b;
      if (str.equals("OFF"))
        return a;
      if (str.equals("TRACE"))
        return g;
    }
    while (!(str.equals("İNFO")));
    return e;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.b.g
 * JD-Core Version:    0.5.3
 */