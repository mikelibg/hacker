package a.a.a.a.b;

import java.io.UnsupportedEncodingException;

public final class a
{
  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      String str = new String(paramArrayOfByte, "ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException(localUnsupportedEncodingException);
    }
  }

  public static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      String str = new String(paramArrayOfByte, paramInt1, paramInt2, "ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException(localUnsupportedEncodingException);
    }
  }

  public static boolean a(String paramString, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("ASCII");
      return a(arrayOfByte, arrayOfByte.length, paramArrayOfByte, paramInt1, paramInt2);
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException(localUnsupportedEncodingException);
    }
  }

  private static boolean a(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, int paramInt3)
  {
    int i;
    if (paramInt1 < paramInt3)
      i = paramInt1;
    for (int j = 0; j < i; ++j)
      if (paramArrayOfByte1[(j + 0)] != paramArrayOfByte2[(paramInt2 + j)])
      {
        return false;
        i = paramInt3;
      }
    return (paramInt1 == paramInt3);
  }

  public static byte[] a(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("ASCII");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new RuntimeException(localUnsupportedEncodingException);
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     a.a.a.a.b.a
 * JD-Core Version:    0.5.3
 */