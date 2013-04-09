package a.a.a.a.a.a;

import a.a.a.a.a.c;
import java.io.IOException;
import java.io.InputStream;

public final class b extends c
{
  private final InputStream a;
  private long b = 0L;
  private boolean c;
  private a d = null;
  private byte[] e = null;
  private long f = -1L;

  public b(InputStream paramInputStream)
  {
    this.a = paramInputStream;
    this.c = false;
  }

  private static int a(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    String str = new String(paramArrayOfByte).trim();
    if ((str.length() == 0) && (paramBoolean))
      return 0;
    return Integer.parseInt(str, paramInt);
  }

  private static long a(byte[] paramArrayOfByte)
  {
    return Long.parseLong(new String(paramArrayOfByte).trim());
  }

  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramInt < 8);
    do
      return false;
    while ((paramArrayOfByte[0] != 33) || (paramArrayOfByte[1] != 60) || (paramArrayOfByte[2] != 97) || (paramArrayOfByte[3] != 114) || (paramArrayOfByte[4] != 99) || (paramArrayOfByte[5] != 104) || (paramArrayOfByte[6] != 62) || (paramArrayOfByte[7] != 10));
    return true;
  }

  private String b(int paramInt)
  {
    if (this.e == null)
      throw new IOException("Cannot process GNU long filename as no // record was found");
    for (int i = paramInt; i < this.e.length; ++i)
    {
      if (this.e[i] != 10)
        continue;
      if (this.e[(i - 1)] == 47);
      return a.a.a.a.b.a.a(this.e, paramInt, --i - paramInt);
    }
    throw new IOException("Failed to read entry: " + paramInt);
  }

  public final a.a.a.a.a.a a()
  {
    byte[] arrayOfByte2;
    byte[] arrayOfByte3;
    byte[] arrayOfByte4;
    byte[] arrayOfByte5;
    byte[] arrayOfByte6;
    while (true)
    {
      if (this.d != null)
      {
        long l1 = this.f + this.d.a();
        while (this.b < l1)
          if (read() == -1)
            return null;
        this.d = null;
      }
      if (this.b == 0L)
      {
        byte[] arrayOfByte9 = a.a.a.a.b.a.a("!<arch>\n");
        byte[] arrayOfByte10 = new byte[arrayOfByte9.length];
        if (read(arrayOfByte10) != arrayOfByte9.length)
          throw new IOException("failed to read header. Occured at byte: " + b());
        for (int l = 0; l < arrayOfByte9.length; ++l)
        {
          if (arrayOfByte9[l] == arrayOfByte10[l])
            continue;
          throw new IOException("invalid header " + a.a.a.a.b.a.a(arrayOfByte10));
        }
      }
      if ((this.b % 2L != 0L) && (read() < 0))
        return null;
      if (this.a.available() == 0)
        return null;
      byte[] arrayOfByte1 = new byte[16];
      arrayOfByte2 = new byte[12];
      arrayOfByte3 = new byte[6];
      arrayOfByte4 = new byte[6];
      arrayOfByte5 = new byte[8];
      arrayOfByte6 = new byte[10];
      read(arrayOfByte1);
      read(arrayOfByte2);
      read(arrayOfByte3);
      read(arrayOfByte4);
      read(arrayOfByte5);
      read(arrayOfByte6);
      byte[] arrayOfByte7 = a.a.a.a.b.a.a("`\n");
      byte[] arrayOfByte8 = new byte[arrayOfByte7.length];
      if (read(arrayOfByte8) != arrayOfByte7.length)
        throw new IOException("failed to read entry trailer. Occured at byte: " + b());
      for (int i = 0; i < arrayOfByte7.length; ++i)
      {
        if (arrayOfByte7[i] == arrayOfByte8[i])
          continue;
        throw new IOException("invalid entry trailer. not read the content? Occured at byte: " + b());
      }
      this.f = this.b;
      str = a.a.a.a.b.a.a(arrayOfByte1).trim();
      if (!(str.equals("//")))
        break;
      int j = a(arrayOfByte6, 10, false);
      this.e = new byte[j];
      int k = read(this.e, 0, j);
      if (k != j)
        throw new IOException("Failed to read complete // record: expected=" + j + " read=" + k);
      this.d = new a(str, j);
    }
    if (str.endsWith("/"));
    for (String str = str.substring(0, -1 + str.length()); ; str = b(Integer.parseInt(str.substring(1))))
      do
      {
        this.d = new a(str, a(arrayOfByte6), a(arrayOfByte3, 10, true), a(arrayOfByte4, 10, true), a(arrayOfByte5, 8, false), a(arrayOfByte2));
        return this.d;
      }
      while (!(str.matches("^/\\d+")));
  }

  public final void close()
  {
    if (!(this.c))
    {
      this.c = true;
      this.a.close();
    }
    this.d = null;
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.d != null)
    {
      long l2 = this.f + this.d.a();
      if ((paramInt2 <= 0) || (l2 <= this.b))
        break label95;
      paramInt2 = (int)Math.min(paramInt2, l2 - this.b);
    }
    int i = this.a.read(paramArrayOfByte, paramInt1, paramInt2);
    a(i);
    long l1 = this.b;
    if (i > 0);
    for (int j = i; ; j = 0)
    {
      this.b = (l1 + j);
      return i;
      label95: return -1;
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.a.b
 * JD-Core Version:    0.5.3
 */