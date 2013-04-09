package com.lookout.e;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class d
{
  public static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public static void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.e.d
 * JD-Core Version:    0.5.3
 */