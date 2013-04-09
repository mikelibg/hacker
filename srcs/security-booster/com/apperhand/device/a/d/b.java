package com.apperhand.device.a.d;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class b
{
  private static final byte[] a = { 97, 110, 100, 114, 111, 105, 100, 46, 105, 110, 116, 101, 110, 116, 46, 98, 114, 111, 119, 115, 101, 114, 46, 83, 69, 84, 95, 72, 79, 77, 69, 80, 65, 71, 69 };

  public static String a(String paramString)
  {
    if ((paramString != null) && (!(paramString.equals(""))))
    {
      int i = paramString.indexOf("?");
      if (i > 0)
        paramString = paramString.substring(0, i);
    }
    return paramString;
  }

  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1 == null)
      return null;
    if (paramArrayOfByte2 == null)
      paramArrayOfByte2 = a;
    int i = paramArrayOfByte1.length;
    byte[] arrayOfByte = new byte[i];
    int j = paramArrayOfByte2.length;
    int k = 0;
    int l = 0;
    while (l < i)
    {
      if (k >= j)
        k = 0;
      arrayOfByte[l] = (byte)(paramArrayOfByte1[l] ^ paramArrayOfByte2[k]);
      ++l;
      ++k;
    }
    return arrayOfByte;
  }

  public static String b(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      localMessageDigest.reset();
      String str = a.a(localMessageDigest.digest(paramString.getBytes()), 2);
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return paramString;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.a.d.b
 * JD-Core Version:    0.5.3
 */