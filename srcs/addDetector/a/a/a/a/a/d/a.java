package a.a.a.a.a.d;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.Locale;

public final class a
  implements a.a.a.a.a.a
{
  private String a;
  private int b;
  private int c;
  private int d;
  private long e;
  private long f;
  private byte g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private int m;
  private int n;
  private boolean o;
  private long p;
  private File q;

  private a()
  {
    this.i = "";
    this.j = "00";
    this.a = "";
    this.h = "";
    String str = System.getProperty("user.name", "");
    if (str.length() > 31)
      str = str.substring(0, 31);
    this.c = 0;
    this.d = 0;
    this.k = str;
    this.l = "";
    this.q = null;
  }

  public a(byte[] paramArrayOfByte)
  {
    this.a = e.b(paramArrayOfByte, 0, 100);
    this.b = (int)e.a(paramArrayOfByte, 100, 8);
    this.c = (int)e.a(paramArrayOfByte, 108, 8);
    this.d = (int)e.a(paramArrayOfByte, 116, 8);
    this.e = e.a(paramArrayOfByte, 124, 12);
    this.f = e.a(paramArrayOfByte, 136, 12);
    this.g = paramArrayOfByte[156];
    this.h = e.b(paramArrayOfByte, 157, 100);
    this.i = e.b(paramArrayOfByte, 257, 6);
    this.j = e.b(paramArrayOfByte, 263, 2);
    this.k = e.b(paramArrayOfByte, 265, 32);
    this.l = e.b(paramArrayOfByte, 297, 32);
    this.m = (int)e.a(paramArrayOfByte, 329, 8);
    this.n = (int)e.a(paramArrayOfByte, 337, 8);
    ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte, 257, 6);
    int i1;
    label210: String str;
    if (localByteBuffer.compareTo(ByteBuffer.wrap("ustar ".getBytes())) == 0)
    {
      i1 = 2;
      switch (i1)
      {
      default:
        str = e.b(paramArrayOfByte, 345, 155);
        if (this.q == null)
          break label393;
      case 2:
      }
    }
    for (bool = this.q.isDirectory(); ; bool = false)
      do
      {
        if ((bool) && (!(this.a.endsWith("/"))))
          this.a += "/";
        if (str.length() > 0)
          this.a = str + "/" + this.a;
        return;
        if (localByteBuffer.compareTo(ByteBuffer.wrap("".getBytes())) == 0)
          i1 = 3;
        i1 = 0;
        break label210:
        this.o = e.a(paramArrayOfByte, 482);
        this.p = e.a(paramArrayOfByte, 483, 12);
        label393: return;
      }
      while ((this.g == 53) || (getName().endsWith("/")));
  }

  public final long a()
  {
    return this.e;
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(long paramLong)
  {
    if ((paramLong > 8589934591L) || (paramLong < 0L))
      throw new IllegalArgumentException("Size is out of range: " + paramLong);
    this.e = paramLong;
  }

  public final void a(String paramString)
  {
    String str1 = System.getProperty("os.name").toLowerCase(Locale.ENGLISH);
    if (str1 != null)
    {
      if (!(str1.startsWith("windows")))
        break label112;
      if (paramString.length() > 2)
      {
        int i2 = paramString.charAt(0);
        if ((paramString.charAt(1) != ':') || ((((i2 < 97) || (i2 > 122))) && (((i2 < 65) || (i2 > 90)))));
      }
    }
    String str2;
    label112: int i1;
    for (paramString = paramString.substring(2); ; paramString = paramString.substring(i1 + 1))
      do
      {
        do
          for (str2 = paramString.replace(File.separatorChar, '/'); ; str2 = str2.substring(1))
            if (!(str2.startsWith("/")))
              break label147;
        while (str1.indexOf("netware") < 0);
        i1 = paramString.indexOf(58);
      }
      while (i1 == -1);
    label147: this.a = str2;
  }

  public final void b(int paramInt)
  {
    this.d = paramInt;
  }

  public final void b(String paramString)
  {
    this.h = paramString;
  }

  public final boolean b()
  {
    return this.o;
  }

  public final void c(String paramString)
  {
    this.k = paramString;
  }

  public final boolean c()
  {
    return (this.g == 83);
  }

  public final void d(String paramString)
  {
    this.l = paramString;
  }

  public final boolean d()
  {
    return ((this.g == 76) && (this.a.toString().equals("././@LongLink")));
  }

  public final boolean e()
  {
    return ((this.g == 120) || (this.g == 88));
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (super.getClass() != paramObject.getClass()))
      return false;
    a locala = (a)paramObject;
    return getName().equals(locala.getName());
  }

  public final String getName()
  {
    return this.a.toString();
  }

  public final int hashCode()
  {
    return getName().hashCode();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.d.a
 * JD-Core Version:    0.5.3
 */