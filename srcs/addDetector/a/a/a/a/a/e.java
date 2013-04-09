package a.a.a.a.a;

import a.a.a.a.a.e.r;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class e
{
  public static c a(InputStream paramInputStream)
  {
    if (paramInputStream == null)
      throw new IllegalArgumentException("Stream must not be null.");
    if (!(paramInputStream.markSupported()))
      throw new IllegalArgumentException("Mark is not supported.");
    byte[] arrayOfByte1 = new byte[12];
    paramInputStream.mark(arrayOfByte1.length);
    int i;
    try
    {
      i = paramInputStream.read(arrayOfByte1);
      paramInputStream.reset();
      if (r.b(arrayOfByte1, i))
        return new r(paramInputStream);
      if (a.a.a.a.a.c.b.a(arrayOfByte1, i))
      {
        a.a.a.a.a.c.b localb = new a.a.a.a.a.c.b(paramInputStream);
        return localb;
      }
    }
    catch (IOException localIOException)
    {
      throw new b("Could not use reset and mark operations.", localIOException);
    }
    if (a.a.a.a.a.a.b.a(arrayOfByte1, i))
      return new a.a.a.a.a.a.b(paramInputStream);
    if (a.a.a.a.a.b.b.a(arrayOfByte1, i))
      return new a.a.a.a.a.b.b(paramInputStream);
    byte[] arrayOfByte2 = new byte[512];
    paramInputStream.mark(arrayOfByte2.length);
    int j = paramInputStream.read(arrayOfByte2);
    paramInputStream.reset();
    if (a.a.a.a.a.d.b.a(arrayOfByte2, j))
    {
      a.a.a.a.a.d.b localb1 = new a.a.a.a.a.d.b(paramInputStream);
      return localb1;
    }
    try
    {
      new a.a.a.a.a.d.b(new ByteArrayInputStream(arrayOfByte2)).a();
      a.a.a.a.a.d.b localb2 = new a.a.a.a.a.d.b(paramInputStream);
      return localb2;
    }
    catch (Exception localException)
    {
      throw new b("No Archiver found for the stream signature");
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.a.e
 * JD-Core Version:    0.5.3
 */