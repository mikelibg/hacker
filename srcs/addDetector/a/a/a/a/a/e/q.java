package a.a.a.a.a.e;

import a.a.a.a.a.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;

public class q extends ZipEntry
  implements a, Cloneable
{
  private int a;
  private int b;
  private int c;
  private long d;
  private LinkedHashMap e;
  private m f;
  private String g;
  private byte[] h;
  private f i;

  protected q()
  {
    this("");
  }

  public q(q paramq)
  {
    this(paramq);
    this.b = paramq.b;
    this.d = paramq.d;
    a(paramq.f());
  }

  private q(String paramString)
  {
    super(paramString);
    this.a = -1;
    this.b = 0;
    this.c = 0;
    this.d = 0L;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = new f();
    this.g = paramString;
  }

  private q(ZipEntry paramZipEntry)
  {
    super(paramZipEntry);
    this.a = -1;
    this.b = 0;
    this.c = 0;
    this.d = 0L;
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = new f();
    this.g = paramZipEntry.getName();
    byte[] arrayOfByte = paramZipEntry.getExtra();
    if (arrayOfByte != null)
      a(c.a(arrayOfByte, d.c));
    while (true)
    {
      setMethod(paramZipEntry.getMethod());
      return;
      g();
    }
  }

  private void a(w[] paramArrayOfw)
  {
    this.e = new LinkedHashMap();
    int j = 0;
    if (j < paramArrayOfw.length)
    {
      if (paramArrayOfw[j] instanceof m)
        label13: this.f = ((m)paramArrayOfw[j]);
      while (true)
      {
        ++j;
        break label13:
        this.e.put(paramArrayOfw[j].a(), paramArrayOfw[j]);
      }
    }
    g();
  }

  private w[] f()
  {
    if (this.e == null)
    {
      if (this.f == null)
        return new w[0];
      w[] arrayOfw = new w[1];
      arrayOfw[0] = this.f;
      return arrayOfw;
    }
    ArrayList localArrayList = new ArrayList(this.e.values());
    if (this.f != null)
      localArrayList.add(this.f);
    return ((w[])localArrayList.toArray(new w[0]));
  }

  private void g()
  {
    super.setExtra(c.a(f()));
  }

  private byte[] h()
  {
    byte[] arrayOfByte = getExtra();
    if (arrayOfByte != null)
      return arrayOfByte;
    return new byte[0];
  }

  public final int a()
  {
    return this.b;
  }

  public final w a(y paramy)
  {
    if (this.e != null)
      return ((w)this.e.get(paramy));
    return null;
  }

  protected final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(f paramf)
  {
    this.i = paramf;
  }

  protected final void a(String paramString)
  {
    this.g = paramString;
  }

  protected final void a(String paramString, byte[] paramArrayOfByte)
  {
    this.g = paramString;
    this.h = paramArrayOfByte;
  }

  public final long b()
  {
    return this.d;
  }

  public final int c()
  {
    return this.c;
  }

  public Object clone()
  {
    q localq = (q)super.clone();
    localq.b = this.b;
    localq.d = this.d;
    localq.a(f());
    return localq;
  }

  public final byte[] d()
  {
    return c.b(f());
  }

  public final f e()
  {
    return this.i;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    q localq;
    do
    {
      return true;
      if ((paramObject == null) || (super.getClass() != paramObject.getClass()))
        return false;
      localq = (q)paramObject;
      String str1 = getName();
      String str2 = localq.getName();
      if (str1 == null)
        if (str2 != null)
          return false;
      else if (!(str1.equals(str2)))
        return false;
      String str3 = getComment();
      String str4 = localq.getComment();
      if (str3 == null)
        if (str4 != null)
          return false;
      else if (!(str3.equals(str4)))
        return false;
    }
    while ((getTime() == localq.getTime()) && (this.b == localq.b) && (this.c == localq.c) && (this.d == localq.d) && (getMethod() == localq.getMethod()) && (getSize() == localq.getSize()) && (getCrc() == localq.getCrc()) && (getCompressedSize() == localq.getCompressedSize()) && (Arrays.equals(c.b(f()), c.b(localq.f()))) && (Arrays.equals(h(), localq.h())) && (this.i.equals(localq.i)));
    return false;
  }

  public int getMethod()
  {
    return this.a;
  }

  public String getName()
  {
    if (this.g == null)
      return super.getName();
    return this.g;
  }

  public int hashCode()
  {
    return getName().hashCode();
  }

  public boolean isDirectory()
  {
    return getName().endsWith("/");
  }

  public void setExtra(byte[] paramArrayOfByte)
  {
    while (true)
    {
      w[] arrayOfw;
      Object localObject;
      try
      {
        arrayOfw = c.a(paramArrayOfByte, d.c);
        if (this.e != null)
          break label208;
        a(arrayOfw);
        return;
        if (j >= arrayOfw.length)
          break label203;
        if (arrayOfw[j] instanceof m);
        w localw;
        for (localObject = this.f; ; localObject = a(arrayOfw[j].a()))
        {
          if (localObject != null)
            break label176;
          localw = arrayOfw[j];
          if (!(localw instanceof m))
            break;
          this.f = ((m)localw);
          g();
          break label214:
        }
        if (this.e == null)
          this.e = new LinkedHashMap();
        this.e.put(localw.a(), localw);
      }
      catch (ZipException localZipException)
      {
        throw new RuntimeException("Error parsing extra fields for entry: " + getName() + " - " + localZipException.getMessage(), localZipException);
      }
      label176: byte[] arrayOfByte = arrayOfw[j].e();
      ((w)localObject).a(arrayOfByte, 0, arrayOfByte.length);
      break label214:
      label203: g();
      return;
      label208: int j = 0;
      continue;
      label214: ++j;
    }
  }

  public void setMethod(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("ZIP compression method can not be negative: " + paramInt);
    this.a = paramInt;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.q
 * JD-Core Version:    0.5.3
 */