package a.a.a.a.a.b;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public final class b extends a.a.a.a.a.c
{
  private boolean a = false;
  private a b;
  private long c = 0L;
  private boolean d = false;
  private final byte[] e = new byte[4096];
  private long f = 0L;
  private final InputStream g;

  public b(InputStream paramInputStream)
  {
    this.g = paramInputStream;
  }

  private final int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0)
      throw new IndexOutOfBoundsException();
    int i = 0;
    while (i < paramInt2)
    {
      int j = this.g.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
      a(j);
      if (j < 0)
        throw new EOFException();
      i += j;
    }
    return i;
  }

  private long a(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt1];
    a(arrayOfByte, 0, arrayOfByte.length);
    return Long.parseLong(a.a.a.a.b.a.a(arrayOfByte), paramInt2);
  }

  private long a(int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte = new byte[paramInt];
    a(arrayOfByte, 0, arrayOfByte.length);
    return c.a(arrayOfByte, paramBoolean);
  }

  private a a(boolean paramBoolean)
  {
    if (paramBoolean);
    for (a locala = new a(2); ; locala = new a(1))
    {
      locala.g(a(8, 16));
      long l1 = a(8, 16);
      if (l1 != 0L)
        locala.h(l1);
      locala.n(a(8, 16));
      locala.f(a(8, 16));
      locala.i(a(8, 16));
      locala.m(a(8, 16));
      locala.e(a(8, 16));
      locala.c(a(8, 16));
      locala.d(a(8, 16));
      locala.k(a(8, 16));
      locala.l(a(8, 16));
      long l2 = a(8, 16);
      locala.a(a(8, 16));
      String str = c((int)l2);
      locala.a(str);
      if ((l1 != 0L) || (str.equals("TRAILER!!!")))
        break;
      throw new IOException("Mode 0 only allowed in the trailer. Found entry name: " + str + " Occured at byte: " + b());
    }
    b(locala.d());
    return locala;
  }

  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt < 6);
    do
    {
      do
      {
        return false;
        if ((paramArrayOfByte[0] == 113) && ((0xFF & paramArrayOfByte[1]) == 199))
          return true;
        if ((paramArrayOfByte[1] == 113) && ((0xFF & paramArrayOfByte[0]) == 199))
          return true;
      }
      while ((paramArrayOfByte[0] != 48) || (paramArrayOfByte[1] != 55) || (paramArrayOfByte[2] != 48) || (paramArrayOfByte[3] != 55) || (paramArrayOfByte[4] != 48));
      if (paramArrayOfByte[5] == 49)
        return true;
      if (paramArrayOfByte[5] == 50)
        return true;
    }
    while (paramArrayOfByte[5] != 55);
    return true;
  }

  private a b(boolean paramBoolean)
  {
    a locala = new a(8);
    locala.b(a(2, paramBoolean));
    locala.g(a(2, paramBoolean));
    long l1 = a(2, paramBoolean);
    if (l1 != 0L)
      locala.h(l1);
    locala.n(a(2, paramBoolean));
    locala.f(a(2, paramBoolean));
    locala.i(a(2, paramBoolean));
    locala.j(a(2, paramBoolean));
    locala.m(a(4, paramBoolean));
    long l2 = a(2, paramBoolean);
    locala.e(a(4, paramBoolean));
    String str = c((int)l2);
    locala.a(str);
    if ((l1 == 0L) && (!(str.equals("TRAILER!!!"))))
      throw new IOException("Mode 0 only allowed in the trailer. Found entry: " + str + "Occured at byte: " + b());
    b(locala.d());
    return locala;
  }

  private void b(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    if (paramInt <= 0)
      return;
    a(arrayOfByte, 0, paramInt);
  }

  private String c(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    a(arrayOfByte, 0, arrayOfByte.length);
    return new String(arrayOfByte, 0, -1 + arrayOfByte.length);
  }

  private void c()
  {
    if (!(this.a))
      return;
    throw new IOException("Stream closed");
  }

  public final a.a.a.a.a.a a()
  {
    c();
    if (this.b != null)
    {
      c();
      while (read(this.e, 0, this.e.length) != -1);
      this.d = true;
    }
    byte[] arrayOfByte1 = new byte[2];
    a(arrayOfByte1, 0, arrayOfByte1.length);
    if (c.a(arrayOfByte1, false) == 29127L);
    String str1;
    a locala;
    for (this.b = b(false); ; this.b = locala)
    {
      while (true)
      {
        this.c = 0L;
        this.d = false;
        this.f = 0L;
        if (!(this.b.getName().equals("TRAILER!!!")))
          break label498;
        this.d = true;
        return null;
        if (c.a(arrayOfByte1, true) == 29127L)
          this.b = b(true);
        byte[] arrayOfByte2 = new byte[4];
        a(arrayOfByte2, 0, arrayOfByte2.length);
        byte[] arrayOfByte3 = new byte[6];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, arrayOfByte1.length);
        System.arraycopy(arrayOfByte2, 0, arrayOfByte3, arrayOfByte1.length, arrayOfByte2.length);
        str1 = a.a.a.a.b.a.a(arrayOfByte3);
        if (str1.equals("070701"))
          this.b = a(false);
        if (!(str1.equals("070702")))
          break;
        this.b = a(true);
      }
      if (!(str1.equals("070707")))
        break;
      locala = new a(4);
      locala.b(a(6, 8));
      locala.g(a(6, 8));
      long l1 = a(6, 8);
      if (l1 != 0L)
        locala.h(l1);
      locala.n(a(6, 8));
      locala.f(a(6, 8));
      locala.i(a(6, 8));
      locala.j(a(6, 8));
      locala.m(a(11, 8));
      long l2 = a(6, 8);
      locala.e(a(11, 8));
      String str2 = c((int)l2);
      locala.a(str2);
      if ((l1 != 0L) || (str2.equals("TRAILER!!!")))
        continue;
      throw new IOException("Mode 0 only allowed in the trailer. Found entry: " + str2 + " Occured at byte: " + b());
    }
    throw new IOException("Unknown magic [" + str1 + "]. Occured at byte: " + b());
    label498: return this.b;
  }

  public final int available()
  {
    c();
    if (this.d)
      return 0;
    return 1;
  }

  public final void close()
  {
    if (this.a)
      return;
    this.g.close();
    this.a = true;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    c();
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 > paramArrayOfByte.length - paramInt2))
      throw new IndexOutOfBoundsException();
    if (paramInt2 == 0)
      return 0;
    if ((this.b == null) || (this.d))
      return -1;
    if (this.c == this.b.b())
    {
      b(this.b.e());
      this.d = true;
      if ((this.b.c() == 2) && (this.f != this.b.a()))
        throw new IOException("CRC Error. Occured at byte: " + b());
      return -1;
    }
    int i = (int)Math.min(paramInt2, this.b.b() - this.c);
    if (i < 0)
      return -1;
    int j = a(paramArrayOfByte, paramInt1, i);
    int k = this.b.c();
    for (int l = 0; (k == 2) && (l < j); ++l)
      this.f += (0xFF & paramArrayOfByte[l]);
    this.c += j;
    return j;
  }

  public final long skip(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("negative skip length");
    c();
    int i = (int)Math.min(paramLong, 2147483647L);
    int l;
    for (int j = 0; ; j = l + j)
    {
      if (j < i)
      {
        int k = i - j;
        if (k > this.e.length)
          k = this.e.length;
        l = read(this.e, 0, k);
        if (l != -1)
          continue;
        this.d = true;
      }
      return j;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.b.b
 * JD-Core Version:    0.5.3
 */