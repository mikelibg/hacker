package com.millennialmedia.android;

import java.io.IOException;

public final class Base64
{
  public static byte[] decode(String paramString)
    throws IOException
  {
    if (paramString.length() % 4 != 0)
      throw new IOException();
    int i = 3 * paramString.length() / 4;
    label45: byte[] arrayOfByte1;
    if (paramString.charAt(-2 + paramString.length()) == '=')
    {
      i -= 2;
      arrayOfByte1 = new byte[i];
    }
    for (int j = 0; j * 4 < paramString.length(); ++j)
    {
      byte[] arrayOfByte2 = mapChars(paramString.substring(j * 4, 4 + j * 4));
      for (int k = 0; ; ++k)
      {
        if (k >= arrayOfByte2.length)
          break label129;
        arrayOfByte1[(k + j * 3)] = arrayOfByte2[k];
      }
      if (paramString.charAt(-1 + paramString.length()) == '=');
      --i;
      label129: break label45:
    }
    return arrayOfByte1;
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    byte[] arrayOfByte1 = new byte[3];
    for (int i = 0; i < paramArrayOfByte.length - (paramArrayOfByte.length % 3); i += 3)
    {
      arrayOfByte1[0] = paramArrayOfByte[i];
      arrayOfByte1[1] = paramArrayOfByte[(i + 1)];
      arrayOfByte1[2] = paramArrayOfByte[(i + 2)];
      localStringBuilder.append(mapBits(arrayOfByte1));
    }
    if (paramArrayOfByte.length % 3 == 1)
    {
      byte[] arrayOfByte3 = new byte[1];
      arrayOfByte3[0] = paramArrayOfByte[(-1 + paramArrayOfByte.length)];
      localStringBuilder.append(mapBits(arrayOfByte3));
    }
    while (true)
    {
      return localStringBuilder.toString();
      if (paramArrayOfByte.length % 3 != 2)
        continue;
      byte[] arrayOfByte2 = new byte[2];
      arrayOfByte2[0] = paramArrayOfByte[(-2 + paramArrayOfByte.length)];
      arrayOfByte2[1] = paramArrayOfByte[(-1 + paramArrayOfByte.length)];
      localStringBuilder.append(mapBits(arrayOfByte2));
    }
  }

  private static String mapBits(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    for (int j = 0; j < paramArrayOfByte.length; ++j)
      i = i << 8 | 0xFF & paramArrayOfByte[j];
    if (paramArrayOfByte.length == 2)
      i <<= 2;
    while (true)
    {
      for (int k = 6 * paramArrayOfByte.length; ; k -= 6)
      {
        if (k < 0)
          break label93;
        localStringBuilder.append(mapValue(0x3F & i >> k));
      }
      if (paramArrayOfByte.length != 1)
        continue;
      i <<= 4;
    }
    if (paramArrayOfByte.length == 2)
      label93: localStringBuilder.append('=');
    while (true)
    {
      return localStringBuilder.toString();
      if (paramArrayOfByte.length != 1)
        continue;
      localStringBuilder.append("==");
    }
  }

  private static int mapChar(char paramChar)
    throws IOException
  {
    if ((paramChar >= 'A') && (paramChar <= 'Z'));
    for (int i = paramChar - 'A'; ; i = 63)
    {
      while (true)
      {
        return i;
        if ((paramChar >= 'a') && (paramChar <= 'z'))
          i = 26 + paramChar - 'a';
        if ((paramChar >= '0') && (paramChar <= '9'))
          i = 52 + paramChar - '0';
        if (paramChar != '+')
          break;
        i = 62;
      }
      if (paramChar != '/')
        break;
    }
    throw new IOException();
  }

  private static byte[] mapChars(String paramString)
    throws IOException
  {
    int i = 0;
    int j = 0;
    label4: byte[] arrayOfByte;
    if ((j >= paramString.length()) || (paramString.charAt(j) == '='))
    {
      if (j != 2)
        break label64;
      arrayOfByte = new byte[1];
      arrayOfByte[0] = (byte)(0xFF & i >> 4);
    }
    while (true)
    {
      return arrayOfByte;
      i = i << 6 | mapChar(paramString.charAt(j));
      ++j;
      break label4:
      if (j == 3)
      {
        label64: arrayOfByte = new byte[2];
        arrayOfByte[1] = (byte)(0xFF & i >> 2);
        arrayOfByte[0] = (byte)(0xFF & i >> 10);
      }
      arrayOfByte = new byte[3];
      arrayOfByte[2] = (byte)(i & 0xFF);
      arrayOfByte[1] = (byte)(0xFF & i >> 8);
      arrayOfByte[0] = (byte)(0xFF & i >> 16);
    }
  }

  private static char mapValue(int paramInt)
  {
    if (paramInt < 26);
    for (int i = (char)(paramInt + 65); ; i = 47)
      while (true)
      {
        return i;
        if (paramInt < 52)
          i = (char)(97 + paramInt - 26);
        if (paramInt < 62)
          i = (char)(48 + paramInt - 52);
        if (paramInt != 62)
          break;
        i = 43;
      }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.Base64
 * JD-Core Version:    0.5.3
 */