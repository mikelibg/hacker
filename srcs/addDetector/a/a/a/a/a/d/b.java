package a.a.a.a.a.d;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b extends a.a.a.a.a.c
{
  protected final d a;
  private boolean b;
  private long c;
  private long d;
  private byte[] e;
  private a f;

  public b(InputStream paramInputStream)
  {
    this(paramInputStream, 0);
  }

  private b(InputStream paramInputStream, byte paramByte)
  {
    this.a = new d(paramInputStream);
    this.e = null;
    this.b = false;
  }

  public static boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 1;
    if (paramInt < 265)
      i = 0;
    do
      return i;
    while (((a.a.a.a.b.a.a("", paramArrayOfByte, 257, 6)) && (a.a.a.a.b.a.a("00", paramArrayOfByte, 263, 2))) || ((a.a.a.a.b.a.a("ustar ", paramArrayOfByte, 257, 6)) && (((a.a.a.a.b.a.a("", paramArrayOfByte, 263, 2)) || (a.a.a.a.b.a.a("", paramArrayOfByte, 263, 2))))) || ((a.a.a.a.b.a.a("", paramArrayOfByte, 257, 6)) && (a.a.a.a.b.a.a("", paramArrayOfByte, 263, 2))));
    return false;
  }

  private byte[] c()
  {
    if (this.b);
    byte[] arrayOfByte;
    while (true)
    {
      return null;
      arrayOfByte = this.a.b();
      if (arrayOfByte != null)
        break;
      this.b = true;
      if (!(this.b))
        label26: return arrayOfByte;
    }
    int i = this.a.a();
    int j = 0;
    label45: int k;
    if (j < i)
    {
      int l = arrayOfByte[j];
      k = 0;
      if (l == 0);
    }
    while (true)
    {
      if (k != 0);
      this.b = true;
      break label26:
      ++j;
      break label45:
      k = 1;
    }
  }

  private void d()
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this, "UTF-8"));
    HashMap localHashMap = new HashMap();
    int i = 0;
    int j = 0;
    int k = localBufferedReader.read();
    StringBuffer localStringBuffer;
    if (k != -1)
    {
      ++i;
      if (k == 32)
      {
        localStringBuffer = new StringBuffer();
        label62: k = localBufferedReader.read();
        if (k == -1)
          break label444;
        ++i;
        if (k == 61)
        {
          String str3 = localStringBuffer.toString();
          char[] arrayOfChar = new char[j - i];
          int i1 = localBufferedReader.read(arrayOfChar);
          if (i1 != j - i)
            throw new IOException("Failed to read Paxheader. Expected " + (j - i) + " chars, read " + i1);
          localHashMap.put(str3, new String(arrayOfChar, 0, -1 + j - i));
        }
      }
    }
    for (int l = k; ; l = k)
    {
      if (l == -1);
      a();
      Iterator localIterator = localHashMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        String str1 = (String)localEntry.getKey();
        String str2 = (String)localEntry.getValue();
        if ("path".equals(str1))
        {
          this.f.a(str2);
          continue;
          localStringBuffer.append((char)k);
          break label62:
          j = j * 10 + k - 48;
        }
        if ("linkpath".equals(str1))
          this.f.b(str2);
        if ("gid".equals(str1))
          this.f.b(Integer.parseInt(str2));
        if ("gname".equals(str1))
          this.f.d(str2);
        if ("uid".equals(str1))
          this.f.a(Integer.parseInt(str2));
        if ("uname".equals(str1))
          this.f.c(str2);
        if (!("size".equals(str1)))
          continue;
        this.f.a(Long.parseLong(str2));
      }
      label444: return;
    }
  }

  private void e()
  {
    if (this.f.b());
    byte[] arrayOfByte;
    do
    {
      arrayOfByte = c();
      if (!(this.b))
        continue;
      this.f = null;
      return;
    }
    while (new c(arrayOfByte).a());
  }

  public final a.a.a.a.a.a a()
  {
    if (this.b);
    StringBuffer localStringBuffer;
    do
    {
      return null;
      if (this.f != null)
      {
        long l1 = this.c - this.d;
        while (l1 > 0L)
        {
          long l2 = skip(l1);
          if (l2 <= 0L)
            throw new RuntimeException("failed to skip current tar entry");
          l1 -= l2;
        }
        this.e = null;
      }
      byte[] arrayOfByte1 = c();
      if (this.b)
      {
        this.f = null;
        return null;
      }
      this.f = new a(arrayOfByte1);
      this.d = 0L;
      this.c = this.f.a();
      if (!(this.f.d()))
        break label230;
      localStringBuffer = new StringBuffer();
      byte[] arrayOfByte2 = new byte[256];
      while (true)
      {
        int i = read(arrayOfByte2);
        if (i < 0)
          break;
        localStringBuffer.append(new String(arrayOfByte2, 0, i));
      }
      a();
    }
    while (this.f == null);
    if ((localStringBuffer.length() > 0) && (localStringBuffer.charAt(-1 + localStringBuffer.length()) == 0))
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
    this.f.a(localStringBuffer.toString());
    if (this.f.e())
      label230: d();
    if (this.f.c())
      e();
    return this.f;
  }

  public final int available()
  {
    if (this.c - this.d > 2147483647L)
      return 2147483647;
    return (int)(this.c - this.d);
  }

  public final void close()
  {
    this.a.c();
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.d >= this.c)
      return -1;
    if (paramInt2 + this.d > this.c)
      paramInt2 = (int)(this.c - this.d);
    int l;
    label63: int j;
    int i;
    if (this.e != null)
      if (paramInt2 > this.e.length)
      {
        l = this.e.length;
        System.arraycopy(this.e, 0, paramArrayOfByte, paramInt1, l);
        if (l < this.e.length)
          break label171;
        this.e = null;
        j = l + 0;
        i = paramInt2 - l;
        paramInt1 += l;
      }
    while (true)
    {
      if (i > 0)
      {
        label107: byte[] arrayOfByte1 = this.a.b();
        if (arrayOfByte1 == null)
        {
          throw new IOException("unexpected EOF with " + i + " bytes unread. Occured at byte: " + b());
          l = paramInt2;
          break label63:
          label171: int i1 = this.e.length - l;
          byte[] arrayOfByte2 = new byte[i1];
          System.arraycopy(this.e, l, arrayOfByte2, 0, i1);
          this.e = arrayOfByte2;
        }
        a(arrayOfByte1.length);
        int k = arrayOfByte1.length;
        if (k > i)
        {
          System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, paramInt1, i);
          this.e = new byte[k - i];
          System.arraycopy(arrayOfByte1, i, this.e, 0, k - i);
          k = i;
        }
        while (true)
        {
          j += k;
          i -= k;
          paramInt1 += k;
          break label107:
          System.arraycopy(arrayOfByte1, 0, paramArrayOfByte, paramInt1, k);
        }
      }
      this.d += j;
      return j;
      i = paramInt2;
      j = 0;
    }
  }

  public final void reset()
  {
    monitorenter;
    monitorexit;
  }

  public final long skip(long paramLong)
  {
    byte[] arrayOfByte = new byte[8192];
    long l1 = paramLong;
    if (l1 > 0L)
    {
      label9: long l2;
      if (l1 > arrayOfByte.length)
        l2 = arrayOfByte.length;
      while (true)
      {
        int i = read(arrayOfByte, 0, (int)l2);
        if (i == -1)
          break;
        l1 -= i;
        break label9:
        l2 = l1;
      }
    }
    return (paramLong - l1);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.d.b
 * JD-Core Version:    0.5.3
 */