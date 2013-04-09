package com.pad.android.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class AdEncryption
{
  private static String a()
  {
    int i = 16;
    String str1 = "";
    while (true)
    {
      int j = i - 1;
      if (i <= 0)
        return str1;
      int k = (int)(62.0D * Math.random());
      String str2 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".substring(k, k + 1);
      str1 = str1 + str2;
      i = j;
    }
  }

  private static String a(char paramChar, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; ++i)
    {
      if (i >= paramInt)
        return localStringBuilder.toString();
      localStringBuilder.append('\0');
    }
  }

  private static String a(String paramString1, String paramString2, String paramString3)
  {
    int i = 0;
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString2 == null) || (paramString2.length() == 0));
    int j;
    StringBuffer localStringBuffer;
    int l;
    while (true)
    {
      return paramString1;
      if (paramString3 == null)
        paramString3 = "";
      j = paramString3.length();
      int k = paramString1.length();
      localStringBuffer = new StringBuffer(k);
      l = 0;
      label59: if (l < k)
        break;
      if (i != 0)
        return localStringBuffer.toString();
    }
    char c = paramString1.charAt(l);
    int i1 = paramString2.indexOf(c);
    if (i1 >= 0)
    {
      i = 1;
      if (i1 < j)
        localStringBuffer.append(paramString3.charAt(i1));
    }
    while (true)
    {
      ++l;
      break label59:
      localStringBuffer.append(c);
    }
  }

  private static String a(byte[] paramArrayOfByte)
  {
    MessageDigest localMessageDigest1;
    try
    {
      MessageDigest localMessageDigest2 = MessageDigest.getInstance("SHA-1");
      localMessageDigest1 = localMessageDigest2;
      try
      {
        byte[] arrayOfByte = localMessageDigest1.digest(paramArrayOfByte);
        Object localObject = "";
        int i = 0;
        if (i >= arrayOfByte.length)
          return localObject;
        String str = localObject + Integer.toString(256 + (0xFF & arrayOfByte[i]), 16).substring(1);
        ++i;
        localObject = str;
      }
      catch (Exception localException)
      {
        return "";
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localMessageDigest1 = null;
    }
  }

  private static byte[] a(String paramString)
  {
    int i = paramString.length();
    Object localObject = new byte[1];
    int j = 0;
    if (j >= Math.ceil(i / 2))
      label11: return localObject;
    int k = j << 1;
    int l = 2 + (j << 1);
    String str1;
    int i1;
    try
    {
      String str2 = paramString.substring(k, l);
      str1 = str2;
      i1 = (byte)Integer.parseInt(str1, 16);
    }
    catch (Exception localException1)
    {
      try
      {
        localObject[j] = i1;
        ++j;
        break label11:
        localException1 = localException1;
        str1 = paramString.substring(j << 1, 1 + (j << 1)) + "0";
      }
      catch (Exception localException2)
      {
        byte[] arrayOfByte = new byte[1 + localObject.length];
        for (int i2 = 0; ; ++i2)
        {
          if (i2 >= localObject.length)
          {
            arrayOfByte[(-1 + arrayOfByte.length)] = i1;
            localObject = arrayOfByte;
          }
          arrayOfByte[i2] = localObject[i2];
        }
      }
    }
  }

  private static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    for (int i = 0; ; ++i)
    {
      if (i >= paramArrayOfByte1.length)
        return arrayOfByte;
      arrayOfByte[i] = (byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[(i % paramArrayOfByte2.length)]);
    }
  }

  public static String base64encode(byte[] paramArrayOfByte)
  {
    int i = (3 - (paramArrayOfByte.length % 3)) % 3;
    byte[] arrayOfByte = new byte[i + paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    String str = "";
    for (int j = 0; ; j += 3)
    {
      if (j >= arrayOfByte.length)
        return str.substring(0, str.length() - i) + "==".substring(0, i);
      int k = ((0xFF & arrayOfByte[j]) << 16) + ((0xFF & arrayOfByte[(j + 1)]) << 8) + (0xFF & arrayOfByte[(j + 2)]);
      str = str + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(0x3F & k >> 18) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(0x3F & k >> 12) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(0x3F & k >> 6) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(k & 0x3F);
    }
  }

  public static String encrypt(String paramString)
  {
    String str1 = paramString + '\19';
    int i = str1.length();
    if (i % 16 != 0)
      str1 = str1 + a('\0', 16 - (i % 16));
    byte[] arrayOfByte1 = a().getBytes();
    byte[] arrayOfByte2 = a("ciF6e+7Fd^21sd|0".getBytes(), arrayOfByte1);
    byte[] arrayOfByte9;
    int i6;
    Object localObject2;
    int j;
    Object localObject1;
    if (arrayOfByte2.length > 512)
    {
      arrayOfByte9 = new byte[512];
      i6 = 0;
      if (i6 >= 512)
      {
        localObject2 = arrayOfByte1;
        j = 0;
        localObject1 = arrayOfByte9;
      }
    }
    while (true)
    {
      if (j >= i)
      {
        return a(base64encode(localObject2), "+/=", "-_~");
        arrayOfByte9[i6] = arrayOfByte2[i6];
        ++i6;
      }
      byte[] arrayOfByte3 = a(a(localObject1));
      int k = j + 16;
      String str2;
      label182: byte[] arrayOfByte4;
      byte[] arrayOfByte5;
      int l;
      label208: int i1;
      label219: byte[] arrayOfByte6;
      int i2;
      label241: int i3;
      label252: byte[] arrayOfByte7;
      int i5;
      try
      {
        String str3 = str1.substring(j, k);
        str2 = str3;
        arrayOfByte4 = a(str2.getBytes(), arrayOfByte3);
        arrayOfByte5 = new byte[localObject2.length + arrayOfByte4.length];
        l = 0;
        if (l < localObject2.length)
          break label334;
        i1 = 0;
        if (i1 < arrayOfByte4.length)
          break label350;
        arrayOfByte6 = new byte[arrayOfByte4.length + localObject1.length];
        i2 = 0;
        if (i2 < arrayOfByte4.length)
          break label370;
        i3 = 0;
        if (i3 < localObject1.length)
          break label386;
        if (arrayOfByte6.length <= 512)
          break label422;
        arrayOfByte7 = new byte[512];
        i5 = 0;
        label279: if (i5 < 512)
          break label406;
        label287: byte[] arrayOfByte8 = a("ciF6e+7Fd^21sd|0".getBytes(), arrayOfByte7);
        int i4 = j + 16;
        localObject1 = arrayOfByte8;
        j = i4;
        label386: label406: label422: label334: label350: label370: localObject2 = arrayOfByte5;
      }
      catch (Exception localException)
      {
        str2 = str1.substring(j);
        break label182:
        arrayOfByte5[l] = localObject2[l];
        ++l;
        break label208:
        arrayOfByte5[(i1 + localObject2.length)] = arrayOfByte4[i1];
        ++i1;
        break label219:
        arrayOfByte6[i2] = arrayOfByte4[i2];
        ++i2;
        break label241:
        arrayOfByte6[(i3 + arrayOfByte4.length)] = localObject1[i3];
        ++i3;
        break label252:
        arrayOfByte7[i5] = arrayOfByte6[i5];
        ++i5;
        break label279:
        arrayOfByte7 = arrayOfByte6;
        break label287:
        localObject1 = arrayOfByte2;
        localObject2 = arrayOfByte1;
        j = 0;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdEncryption
 * JD-Core Version:    0.5.3
 */