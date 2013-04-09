package a.a.a.a.a.e;

import a.a.a.a.a.a;
import a.a.a.a.a.c;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;

public class r extends c
{
  private final t a;
  private final boolean b;
  private final InputStream c;
  private final Inflater d;
  private final CRC32 e;
  private final byte[] f;
  private q g;
  private boolean h;
  private boolean i;
  private int j;
  private long k;
  private long l;
  private int m;
  private boolean n;
  private ByteArrayInputStream o;
  private boolean p;

  public r(InputStream paramInputStream)
  {
    this(paramInputStream, "UTF8");
  }

  private r(InputStream paramInputStream, String paramString)
  {
    this(paramInputStream, paramString, 0);
  }

  private r(InputStream paramInputStream, String paramString, byte paramByte)
  {
    this.d = new Inflater(true);
    this.e = new CRC32();
    this.f = new byte[512];
    this.g = null;
    this.h = false;
    this.i = false;
    this.j = 0;
    this.k = 0L;
    this.l = 0L;
    this.m = 0;
    this.n = false;
    this.o = null;
    this.p = false;
    this.a = u.a(paramString);
    this.b = true;
    this.c = new PushbackInputStream(paramInputStream, this.f.length);
    this.p = false;
  }

  private void a(byte[] paramArrayOfByte)
  {
    int i1 = 0;
    while (i1 != paramArrayOfByte.length)
    {
      int i2 = this.c.read(paramArrayOfByte, i1, paramArrayOfByte.length - i1);
      i1 += i2;
      if (i2 == -1)
        throw new EOFException();
      a(i2);
    }
  }

  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    for (int i1 = 0; i1 < paramArrayOfByte2.length; ++i1)
      if (paramArrayOfByte1[i1] != paramArrayOfByte2[i1])
        return false;
    return true;
  }

  public static boolean b(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt < s.c.length);
    do
      return false;
    while ((!(a(paramArrayOfByte, s.c))) && (!(a(paramArrayOfByte, s.f))));
    return true;
  }

  private void d()
  {
    byte[] arrayOfByte = new byte[4];
    a(arrayOfByte);
    x localx = new x(arrayOfByte);
    if (x.c.equals(localx))
    {
      a(arrayOfByte);
      localx = new x(arrayOfByte);
    }
    this.g.setCrc(localx.b());
    a(arrayOfByte);
    this.g.setCompressedSize(new x(arrayOfByte).b());
    a(arrayOfByte);
    this.g.setSize(new x(arrayOfByte).b());
  }

  private void e()
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte1 = x.b.a();
    byte[] arrayOfByte2 = x.a.a();
    byte[] arrayOfByte3 = x.c.a();
    int i1 = 0;
    int i2 = 0;
    label36: int i3;
    while (true)
    {
      if (i2 != 0)
        break label419;
      i3 = this.c.read(this.f, i1, 512 - i1);
      if (i3 <= 0)
        throw new IOException("Truncated ZIP file");
      if (i3 + i1 >= 4)
        break;
      i1 += i3;
    }
    int i4 = 0;
    int i5 = 0;
    int i6 = i2;
    label106: int i11;
    int i8;
    if ((i6 == 0) && (i4 < i3 - 4))
      if ((this.f[i4] == arrayOfByte1[0]) && (this.f[(i4 + 1)] == arrayOfByte1[1]))
      {
        if ((((this.f[(i4 + 2)] != arrayOfByte1[2]) || (this.f[(i4 + 3)] != arrayOfByte1[3]))) && (((this.f[i4] != arrayOfByte2[2]) || (this.f[(i4 + 3)] != arrayOfByte2[3]))))
          break label284;
        i11 = -12 + i1 + i3 - i4;
        i8 = 1;
      }
    for (int i9 = i11; ; i9 = i5)
    {
      while (true)
      {
        if (i8 != 0)
        {
          ((PushbackInputStream)this.c).unread(this.f, i1 + i3 - i9, i9);
          localByteArrayOutputStream.write(this.f, 0, i4);
          d();
        }
        i5 = i9;
        i6 = i8;
        ++i4;
        break label106:
        label284: if ((this.f[(i4 + 2)] != arrayOfByte3[2]) || (this.f[(i4 + 3)] != arrayOfByte3[3]))
          break label442;
        int i10 = i1 + i3 - i4;
        i8 = 1;
        i9 = i10;
      }
      if (i6 == 0)
        if (i1 + i3 > 15)
        {
          localByteArrayOutputStream.write(this.f, 0, -15 + i1 + i3);
          System.arraycopy(this.f, -15 + i1 + i3, this.f, 0, 15);
          i1 = 15;
          i2 = i6;
        }
      for (int i7 = i1 + i3; ; i7 = i1)
      {
        i2 = i6;
        i1 = i7;
        break label36:
        label419: this.o = new ByteArrayInputStream(localByteArrayOutputStream.toByteArray());
        return;
      }
      label442: i8 = i6;
    }
  }

  public a a()
  {
    return c();
  }

  public final q c()
  {
    if ((this.h) || (this.i))
      return null;
    long l2;
    if (this.g != null)
    {
      if (this.h)
        throw new IOException("The stream is closed");
      if (this.g != null)
      {
        if ((this.l <= this.g.getCompressedSize()) && (!(this.n)))
        {
          long l3 = this.g.getCompressedSize() - this.l;
          while (true)
          {
            if (l3 <= 0L)
              break label247;
            long l4 = this.c.read(this.f, 0, (int)Math.min(this.f.length, l3));
            if (l4 < 0L)
              throw new EOFException("Truncated ZIP entry: " + this.g.getName());
            a(l4);
            l3 -= l4;
          }
        }
        skip(9223372036854775807L);
        if (this.g.getMethod() != 8)
          break label345;
        l2 = z.a(this.d.getTotalIn());
      }
    }
    label247: byte[] arrayOfByte1;
    x localx;
    while (true)
    {
      int i4 = (int)(this.l - l2);
      if (i4 > 0)
      {
        ((PushbackInputStream)this.c).unread(this.f, this.m - i4, i4);
        b(i4);
      }
      if ((this.o == null) && (this.n))
        d();
      this.d.reset();
      this.l = 0L;
      this.k = 0L;
      this.m = 0;
      this.j = 0;
      this.e.reset();
      this.g = null;
      this.o = null;
      arrayOfByte1 = new byte[30];
      try
      {
        a(arrayOfByte1);
        localx = new x(arrayOfByte1);
        if (!(localx.equals(x.a)))
          break label357;
        this.i = true;
        return null;
        label345: l2 = this.k;
      }
      catch (EOFException localEOFException)
      {
        return null;
      }
    }
    if (!(localx.equals(x.b)))
      label357: return null;
    this.g = new q();
    int i1 = y.a(arrayOfByte1, 4);
    this.g.a(0xF & i1 >> 8);
    f localf = f.a(arrayOfByte1);
    boolean bool = localf.a();
    if (bool);
    for (t localt = u.a; ; localt = this.a)
    {
      this.n = localf.b();
      this.g.a(localf);
      this.g.setMethod(y.a(arrayOfByte1, 8));
      long l1 = z.b(x.a(arrayOfByte1, 10));
      this.g.setTime(l1);
      if (!(this.n))
      {
        this.g.setCrc(x.a(arrayOfByte1, 14));
        this.g.setCompressedSize(x.a(arrayOfByte1, 18));
        this.g.setSize(x.a(arrayOfByte1, 22));
      }
      int i2 = y.a(arrayOfByte1, 26);
      int i3 = y.a(arrayOfByte1, 28);
      byte[] arrayOfByte2 = new byte[i2];
      a(arrayOfByte2);
      this.g.a(localt.a(arrayOfByte2), arrayOfByte2);
      byte[] arrayOfByte3 = new byte[i3];
      a(arrayOfByte3);
      this.g.setExtra(arrayOfByte3);
      if ((!(bool)) && (this.b))
        z.a(this.g, arrayOfByte2);
      return this.g;
    }
  }

  public void close()
  {
    if (this.h)
      return;
    this.h = true;
    this.c.close();
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.h)
      throw new IOException("The stream is closed");
    if ((this.d.finished()) || (this.g == null))
      return -1;
    if ((paramInt1 <= paramArrayOfByte.length) && (paramInt2 >= 0) && (paramInt1 >= 0) && (paramArrayOfByte.length - paramInt1 >= paramInt2))
    {
      z.a(this.g);
      q localq = this.g;
      if ((this.p) || (!(localq.e().b())) || (localq.getMethod() == 8));
      for (int i1 = 1; i1 == 0; i1 = 0)
        throw new o(p.c, this.g);
      if (this.g.getMethod() == 0)
      {
        if (this.n)
        {
          if (this.o == null)
            e();
          return this.o.read(paramArrayOfByte, paramInt1, paramInt2);
        }
        long l1 = this.g.getSize();
        if (this.k >= l1)
          return -1;
        if (this.j >= this.m)
        {
          this.j = 0;
          int i4 = this.c.read(this.f);
          this.m = i4;
          if (i4 == -1)
            return -1;
          a(this.m);
          this.l += this.m;
        }
        if (paramInt2 > this.m)
          paramInt2 = this.m - this.j;
        if (l1 - this.k < paramInt2)
          paramInt2 = (int)(l1 - this.k);
        System.arraycopy(this.f, this.j, paramArrayOfByte, paramInt1, paramInt2);
        this.j = (paramInt2 + this.j);
        this.k += paramInt2;
        this.e.update(paramArrayOfByte, paramInt1, paramInt2);
        return paramInt2;
      }
      if (this.d.needsInput())
      {
        if (this.h)
          throw new IOException("The stream is closed");
        int i3 = this.c.read(this.f);
        this.m = i3;
        if (i3 > 0)
        {
          a(this.m);
          this.d.setInput(this.f, 0, this.m);
        }
        if (this.m > 0)
          this.l += this.m;
      }
      int i2;
      try
      {
        i2 = this.d.inflate(paramArrayOfByte, paramInt1, paramInt2);
        if (i2 != 0)
          break label498;
        if (this.d.finished())
          return -1;
      }
      catch (DataFormatException localDataFormatException)
      {
        throw new ZipException(localDataFormatException.getMessage());
      }
      if (this.m == -1)
        throw new IOException("Truncated ZIP file");
      label498: this.e.update(paramArrayOfByte, paramInt1, i2);
      return i2;
    }
    throw new ArrayIndexOutOfBoundsException();
  }

  public long skip(long paramLong)
  {
    long l1 = 0L;
    if (paramLong >= l1)
    {
      byte[] arrayOfByte = new byte[1024];
      while (l1 < paramLong)
      {
        long l2 = paramLong - l1;
        if (arrayOfByte.length > l2);
        int i1;
        while (true)
        {
          i1 = read(arrayOfByte, 0, (int)l2);
          if (i1 != -1)
            break;
          return l1;
          l2 = arrayOfByte.length;
        }
        l1 += i1;
      }
      return l1;
    }
    throw new IllegalArgumentException();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.r
 * JD-Core Version:    0.5.3
 */