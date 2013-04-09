package com.pad.android.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class AdEncryption
{
  private static final String KEY = "ciF6e+7Fd^21sd|0";

  public static String base64encode(byte[] paramArrayOfByte)
  {
    String str = "";
    int i = (3 - (paramArrayOfByte.length % 3)) % 3;
    byte[] arrayOfByte = zeroPad(i + paramArrayOfByte.length, paramArrayOfByte);
    for (int j = 0; ; j += 3)
    {
      if (j >= arrayOfByte.length)
        return str.substring(0, str.length() - i) + "==".substring(0, i);
      int k = ((0xFF & arrayOfByte[j]) << 16) + ((0xFF & arrayOfByte[(j + 1)]) << 8) + (0xFF & arrayOfByte[(j + 2)]);
      str = str + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(0x3F & k >> 18) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(0x3F & k >> 12) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(0x3F & k >> 6) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(k & 0x3F);
    }
  }

  private static String byteArrayToHexString(byte[] paramArrayOfByte)
    throws Exception
  {
    String str = "";
    for (int i = 0; ; ++i)
    {
      if (i >= paramArrayOfByte.length)
        return str;
      str = str + Integer.toString(256 + (0xFF & paramArrayOfByte[i]), 16).substring(1);
    }
  }

  public static String encrypt(String paramString)
  {
    String str1 = paramString + '\19';
    int i = str1.length();
    if (i % 16 != 0)
      str1 = str1 + repeat('\0', 16 - (i % 16));
    Object localObject1 = getRndIv().getBytes();
    Object localObject2 = xor("ciF6e+7Fd^21sd|0".getBytes(), localObject1);
    int j = localObject2.length;
    int k = 0;
    byte[] arrayOfByte5;
    int i8;
    if (j > 512)
    {
      arrayOfByte5 = new byte[512];
      i8 = 0;
      if (i8 < 512)
        break label135;
      localObject2 = arrayOfByte5;
    }
    while (true)
    {
      if (k >= i)
      {
        return replaceChars(base64encode(localObject1), "+/=", "-_~");
        label135: arrayOfByte5[i8] = localObject2[i8];
        ++i8;
      }
      byte[] arrayOfByte1 = pack(sha1(localObject2));
      int l = k + 16;
      String str2;
      label182: byte[] arrayOfByte2;
      byte[] arrayOfByte3;
      int i1;
      label207: int i2;
      label217: Object localObject3;
      int i3;
      label242: int i5;
      label257: byte[] arrayOfByte4;
      int i7;
      try
      {
        String str3 = str1.substring(k, l);
        str2 = str3;
        arrayOfByte2 = xor(str2.getBytes(), arrayOfByte1);
        arrayOfByte3 = new byte[localObject1.length + arrayOfByte2.length];
        i1 = 0;
        if (i1 < localObject1.length)
          break label331;
        i2 = 0;
        if (i2 < arrayOfByte2.length)
          break label346;
        localObject1 = arrayOfByte3;
        localObject3 = new byte[arrayOfByte2.length + localObject2.length];
        i3 = 0;
        int i4 = arrayOfByte2.length;
        if (i3 < i4)
          break label365;
        i5 = 0;
        int i6 = localObject2.length;
        if (i5 < i6)
          break label381;
        if (localObject3.length > 512)
        {
          arrayOfByte4 = new byte[512];
          i7 = 0;
          label288: if (i7 < 512)
            break label401;
          localObject3 = arrayOfByte4;
        }
        localObject2 = xor("ciF6e+7Fd^21sd|0".getBytes(), localObject3);
        label401: label331: label346: label365: label381: k += 16;
      }
      catch (Exception localException)
      {
        str2 = str1.substring(k);
        break label182:
        arrayOfByte3[i1] = localObject1[i1];
        ++i1;
        break label207:
        arrayOfByte3[(i2 + localObject1.length)] = arrayOfByte2[i2];
        ++i2;
        break label217:
        localObject3[i3] = arrayOfByte2[i3];
        ++i3;
        break label242:
        localObject3[(i5 + arrayOfByte2.length)] = localObject2[i5];
        ++i5;
        break label257:
        arrayOfByte4[i7] = localObject3[i7];
        ++i7;
        break label288:
      }
    }
  }

  private static String getRndIv()
  {
    String str1 = "";
    int j;
    for (int i = 16; ; i = j)
    {
      j = i - 1;
      if (i <= 0)
        return str1;
      int k = (int)(62.0D * Math.random());
      String str2 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".substring(k, k + 1);
      str1 = str1 + str2;
    }
  }

  private static byte[] pack(String paramString)
  {
    int i = paramString.length();
    Object localObject = new byte[1];
    int j = 0;
    if (j >= Math.ceil(i / 2))
      label11: return localObject;
    int k = j * 2;
    int l = 2 + j * 2;
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
        str1 = paramString.substring(j * 2, 1 + j * 2) + "0";
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

  private static String repeat(char paramChar, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; ++i)
    {
      if (i >= paramInt)
        return localStringBuilder.toString();
      localStringBuilder.append(paramChar);
    }
  }

  private static String replaceChars(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (paramString1.length() == 0) || (paramString2 == null) || (paramString2.length() == 0));
    int i;
    int j;
    StringBuffer localStringBuffer;
    int l;
    while (true)
    {
      return paramString1;
      if (paramString3 == null)
        paramString3 = "";
      i = 0;
      j = paramString3.length();
      int k = paramString1.length();
      localStringBuffer = new StringBuffer(k);
      l = 0;
      label59: if (l < k)
        break;
      if (i == 0)
        continue;
      paramString1 = localStringBuffer.toString();
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

  private static String sha1(byte[] paramArrayOfByte)
  {
    MessageDigest localMessageDigest1;
    try
    {
      MessageDigest localMessageDigest2 = MessageDigest.getInstance("SHA-1");
      label24: localMessageDigest1 = localMessageDigest2;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      String str1;
      try
      {
        String str2 = byteArrayToHexString(localMessageDigest1.digest(paramArrayOfByte));
        str1 = str2;
        return str1;
      }
      catch (Exception localException)
      {
        str1 = "";
        break label24:
        localNoSuchAlgorithmException = localNoSuchAlgorithmException;
        localMessageDigest1 = null;
      }
    }
  }

  private static byte[] xor(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    for (int i = 0; ; ++i)
    {
      if (i >= paramArrayOfByte1.length)
        return arrayOfByte;
      arrayOfByte[i] = (byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[(i % paramArrayOfByte2.length)]);
    }
  }

  private static byte[] zeroPad(int paramInt, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[paramInt];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    return arrayOfByte;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.util.AdEncryption
 * JD-Core Version:    0.5.3
 */