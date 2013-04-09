package a.a.a.a.a.e;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.zip.CRC32;

public abstract class z
{
  private static final byte[] a = x.a(8448L);

  public static long a(int paramInt)
  {
    if (paramInt < 0)
      return (4294967296L + paramInt);
    return paramInt;
  }

  private static String a(a parama, byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (parama != null)
    {
      CRC32 localCRC32 = new CRC32();
      localCRC32.update(paramArrayOfByte);
      boolean bool = localCRC32.getValue() < parama.c_();
      localObject = null;
      if (bool);
    }
    try
    {
      String str = u.a.a(parama.b());
      localObject = str;
      return localObject;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  static void a(q paramq)
  {
    if (!(paramq.e().d()));
    for (int i = 1; i == 0; i = 0)
      throw new o(p.a, paramq);
    if (paramq.getMethod() != 0)
    {
      int k = paramq.getMethod();
      j = 0;
      if (k != 8)
        break label55;
    }
    int j = 1;
    if (j != 0)
      label55: return;
    throw new o(p.b, paramq);
  }

  static void a(q paramq, byte[] paramArrayOfByte)
  {
    l locall = (l)paramq.a(l.a);
    String str1 = paramq.getName();
    String str2 = a(locall, paramArrayOfByte);
    if ((str2 == null) || (str1.equals(str2)))
      return;
    paramq.a(str2);
  }

  public static byte[] a(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    int i = localCalendar.get(1);
    if (i < 1980)
      return a(a);
    int j = 1 + localCalendar.get(2);
    return x.a(i - 1980 << 25 | j << 21 | localCalendar.get(5) << 16 | localCalendar.get(11) << 11 | localCalendar.get(12) << 5 | localCalendar.get(13) >> 1);
  }

  static byte[] a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      byte[] arrayOfByte = new byte[paramArrayOfByte.length];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, arrayOfByte.length);
      return arrayOfByte;
    }
    return null;
  }

  public static long b(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, 1980 + (int)(0x7F & paramLong >> 25));
    localCalendar.set(2, -1 + (int)(0xF & paramLong >> 21));
    localCalendar.set(5, 0x1F & (int)(paramLong >> 16));
    localCalendar.set(11, 0x1F & (int)(paramLong >> 11));
    localCalendar.set(12, 0x3F & (int)(paramLong >> 5));
    localCalendar.set(13, 0x3E & (int)(paramLong << 1));
    return localCalendar.getTime().getTime();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e.z
 * JD-Core Version:    0.5.3
 */