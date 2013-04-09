package a.a.a.b;

import java.io.PrintStream;

public final class c
{
  public static final String A;
  public static final String B;
  public static final String C;
  public static final String D;
  public static final String E;
  public static final String F;
  public static final String G;
  public static final String H;
  public static final String I;
  public static final String J;
  public static final String K;
  public static final String L;
  public static final String M;
  public static final String N;
  public static final String O;
  public static final String P;
  public static final String Q;
  public static final float R;
  public static final int S;
  public static final boolean T;
  public static final boolean U;
  public static final boolean V;
  public static final boolean W;
  public static final boolean X;
  public static final boolean Y;
  public static final boolean Z;
  public static final String a = c("awt.toolkit");
  public static final boolean aa;
  public static final boolean ab;
  public static final boolean ac;
  public static final boolean ad;
  public static final boolean ae;
  public static final boolean af;
  public static final boolean ag;
  public static final boolean ah;
  public static final boolean ai;
  public static final boolean aj;
  public static final boolean ak;
  public static final boolean al;
  public static final boolean am;
  public static final boolean an;
  public static final boolean ao;
  public static final boolean ap;
  public static final boolean aq;
  public static final boolean ar;
  public static final boolean as;
  public static final String b = c("file.encoding");
  public static final String c = c("file.separator");
  public static final String d = c("java.awt.fonts");
  public static final String e = c("java.awt.graphicsenv");
  public static final String f = c("java.awt.headless");
  public static final String g = c("java.awt.printerjob");
  public static final String h = c("java.class.path");
  public static final String i = c("java.class.version");
  public static final String j = c("java.compiler");
  public static final String k = c("java.endorsed.dirs");
  public static final String l = c("java.ext.dirs");
  public static final String m = c("java.home");
  public static final String n = c("java.io.tmpdir");
  public static final String o = c("java.library.path");
  public static final String p = c("java.runtime.name");
  public static final String q = c("java.runtime.version");
  public static final String r = c("java.specification.name");
  public static final String s = c("java.specification.vendor");
  public static final String t = c("java.specification.version");
  public static final String u = c("java.util.prefs.PreferencesFactory");
  public static final String v = c("java.vendor");
  public static final String w = c("java.vendor.url");
  public static final String x = c("java.version");
  public static final String y = c("java.vm.info");
  public static final String z = c("java.vm.name");

  static
  {
    A = c("java.vm.specification.name");
    B = c("java.vm.specification.vendor");
    C = c("java.vm.specification.version");
    D = c("java.vm.vendor");
    E = c("java.vm.version");
    F = c("line.separator");
    G = c("os.arch");
    H = c("os.name");
    I = c("os.version");
    J = c("path.separator");
    String str1;
    label302: int i3;
    label355: String str2;
    if (c("user.country") == null)
    {
      str1 = c("user.region");
      K = str1;
      L = c("user.dir");
      M = c("user.home");
      N = c("user.language");
      O = c("user.name");
      P = c("user.timezone");
      if (x == null)
        break label746;
      i3 = 0;
      if (i3 >= x.length())
        break label746;
      int i4 = x.charAt(i3);
      if ((i4 < 48) || (i4 > 57))
        break label740;
      str2 = x.substring(i3);
      label399: Q = str2;
      R = a();
      S = b();
      T = a("1.1");
      U = a("1.2");
      V = a("1.3");
      W = a("1.4");
      X = a("1.5");
      Y = a("1.6");
      Z = a("1.7");
      aa = b("AIX");
      ab = b("HP-UX");
      ac = b("Irix");
      if ((!(b("Linux"))) && (!(b("LINUX"))))
        break label751;
    }
    for (int i1 = 1; ; i1 = 0)
    {
      ad = i1;
      ae = b("Mac");
      af = b("Mac OS X");
      ag = b("OS/2");
      ah = b("Solaris");
      ai = b("SunOS");
      if ((!(aa)) && (!(ab)) && (!(ac)) && (!(ad)) && (!(af)) && (!(ah)))
      {
        boolean bool = ai;
        i2 = 0;
        if (!(bool))
          break label624;
      }
      int i2 = 1;
      label624: aj = i2;
      ak = b("Windows");
      al = a("Windows", "5.0");
      am = a("Windows 9", "4.0");
      an = a("Windows 9", "4.1");
      ao = a("Windows", "4.9");
      ap = b("Windows NT");
      aq = a("Windows", "5.1");
      ar = a("Windows", "6.0");
      as = a("Windows", "6.1");
      return;
      str1 = c("user.country");
      break label302:
      label740: ++i3;
      break label355:
      label746: str2 = null;
      label751: break label399:
    }
  }

  private static float a()
  {
    if (Q == null)
      return 0.0F;
    String str = Q.substring(0, 3);
    if (Q.length() >= 5)
      str = str + Q.substring(4, 5);
    try
    {
      float f1 = Float.parseFloat(str);
      return f1;
    }
    catch (Exception localException)
    {
    }
    return 0.0F;
  }

  private static boolean a(String paramString)
  {
    if (Q == null)
      return false;
    return Q.startsWith(paramString);
  }

  private static boolean a(String paramString1, String paramString2)
  {
    if ((H == null) || (I == null));
    do
      return false;
    while ((!(H.startsWith(paramString1))) || (!(I.startsWith(paramString2))));
    return true;
  }

  private static int b()
  {
    if (Q == null)
      return 0;
    String str1 = Q.substring(0, 1);
    String str2 = str1 + Q.substring(2, 3);
    String str3;
    if (Q.length() >= 5)
      str3 = str2 + Q.substring(4, 5);
    while (true)
      try
      {
        int i1 = Integer.parseInt(str3);
        return i1;
        str3 = str2 + "0";
      }
      catch (Exception localException)
      {
      }
    return 0;
  }

  private static boolean b(String paramString)
  {
    if (H == null)
      return false;
    return H.startsWith(paramString);
  }

  private static String c(String paramString)
  {
    try
    {
      String str = System.getProperty(paramString);
      return str;
    }
    catch (SecurityException localSecurityException)
    {
      System.err.println("Caught a SecurityException reading the system property '" + paramString + "'; the SystemUtils property value will default to null.");
    }
    return null;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.b.c
 * JD-Core Version:    0.5.3
 */