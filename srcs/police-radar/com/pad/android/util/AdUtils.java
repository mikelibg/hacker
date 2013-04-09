package com.pad.android.util;

import android.os.Bundle;

public class AdUtils
{
  public static String byteToHex(byte paramByte)
  {
    char[] arrayOfChar1 = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
    char[] arrayOfChar2 = new char[2];
    arrayOfChar2[0] = arrayOfChar1[(0xF & paramByte >> 4)];
    arrayOfChar2[1] = arrayOfChar1[(paramByte & 0xF)];
    return new String(arrayOfChar2);
  }

  public static String convert(String paramString)
  {
    while (true)
    {
      int i;
      try
      {
        byte[] arrayOfByte = paramString.getBytes();
        StringBuffer localStringBuffer = new StringBuffer();
        i = 0;
        if (i >= arrayOfByte.length)
          return new String(localStringBuffer.toString().getBytes(), "ISO-8859-1");
        if ((0x80 & arrayOfByte[i]) > 0)
        {
          localStringBuffer.append("%" + byteToHex(arrayOfByte[i]));
          break label97:
        }
        localStringBuffer.append((char)arrayOfByte[i]);
      }
      catch (Exception localException)
      {
        return null;
      }
      label97: ++i;
    }
  }

  public static String getData(String paramString, Bundle paramBundle)
  {
    return paramBundle.getString(paramString);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.pad.android.util.AdUtils
 * JD-Core Version:    0.5.3
 */