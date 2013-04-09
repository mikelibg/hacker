package com.lookout.e;

import a.a.a.a.a.c;
import java.io.EOFException;
import java.io.OutputStream;

public final class a
{
  public static int a(c paramc, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[8192];
    int i = 0;
    while (true)
    {
      int j = paramc.read(arrayOfByte);
      if (j <= 0)
        break;
      paramOutputStream.write(arrayOfByte, 0, j);
      i += j;
    }
    return i;
  }

  public static a.a.a.a.a.a a(c paramc, String paramString)
  {
    try
    {
      Object localObject = paramc.a();
      if (localObject == null)
        break label37;
      if (((a.a.a.a.a.a)localObject).getName().equals(paramString))
        return localObject;
      a.a.a.a.a.a locala = paramc.a();
      label37: localObject = locala;
    }
    catch (EOFException localEOFException)
    {
      throw new e("Missing entry: " + paramString);
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.e.a
 * JD-Core Version:    0.5.3
 */