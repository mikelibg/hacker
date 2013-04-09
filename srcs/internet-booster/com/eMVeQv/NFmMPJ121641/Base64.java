package com.eMVeQv.NFmMPJ121641;

class Base64
{
  private static final char[] map1;
  private static final byte[] map2;
  private static final String systemLineSeparator = System.getProperty("line.separator");

  static
  {
    map1 = new char[64];
    int i = 65;
    int i6;
    for (int j = 0; i <= 90; j = i6)
    {
      char[] arrayOfChar5 = map1;
      i6 = j + 1;
      arrayOfChar5[j] = i;
      i = (char)(i + 1);
    }
    int k = 97;
    while (k <= 122)
    {
      char[] arrayOfChar4 = map1;
      int i5 = j + 1;
      arrayOfChar4[j] = k;
      k = (char)(k + 1);
      j = i5;
    }
    int l = 48;
    while (l <= 57)
    {
      char[] arrayOfChar3 = map1;
      int i4 = j + 1;
      arrayOfChar3[j] = l;
      l = (char)(l + 1);
      j = i4;
    }
    char[] arrayOfChar1 = map1;
    int i1 = j + 1;
    arrayOfChar1[j] = '+';
    char[] arrayOfChar2 = map1;
    (i1 + 1);
    arrayOfChar2[i1] = '/';
    map2 = new byte[128];
    for (int i2 = 0; i2 < map2.length; ++i2)
      map2[i2] = -1;
    for (int i3 = 0; i3 < 64; ++i3)
      map2[map1[i3]] = (byte)i3;
  }

  public static byte[] decode(String paramString)
  {
    return decode(paramString.toCharArray());
  }

  public static byte[] decode(char[] paramArrayOfChar)
  {
    return decode(paramArrayOfChar, 0, paramArrayOfChar.length);
  }

  public static byte[] decode(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramInt2 % 4 != 0)
      throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    while ((paramInt2 > 0) && (paramArrayOfChar[(-1 + paramInt1 + paramInt2)] == '='))
      --paramInt2;
    int i = paramInt2 * 3 / 4;
    byte[] arrayOfByte = new byte[i];
    int j = paramInt1 + paramInt2;
    int k = 0;
    int l = paramInt1;
    label60: label114: int i7;
    label178: int i14;
    int i15;
    int i16;
    if (l < j)
    {
      int i1 = l + 1;
      int i2 = paramArrayOfChar[l];
      int i3 = i1 + 1;
      int i4 = paramArrayOfChar[i1];
      int i5;
      int i6;
      if (i3 < j)
      {
        int i18 = i3 + 1;
        i5 = paramArrayOfChar[i3];
        i3 = i18;
        if (i3 >= j)
          break label178;
        i7 = i3 + 1;
        i6 = paramArrayOfChar[i3];
      }
      while ((i2 > 127) || (i4 > 127) || (i5 > 127) || (i6 > 127))
      {
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
        i5 = 65;
        break label114:
        i6 = 65;
        i7 = i3;
      }
      int i8 = map2[i2];
      int i9 = map2[i4];
      int i10 = map2[i5];
      int i11 = map2[i6];
      if ((i8 < 0) || (i9 < 0) || (i10 < 0) || (i11 < 0))
        throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
      int i12 = i8 << 2 | i9 >>> 4;
      int i13 = (i9 & 0xF) << 4 | i10 >>> 2;
      i14 = i11 | (i10 & 0x3) << 6;
      i15 = k + 1;
      arrayOfByte[k] = (byte)i12;
      if (i15 >= i)
        break label363;
      i16 = i15 + 1;
      arrayOfByte[i15] = (byte)i13;
    }
    while (true)
    {
      int i17;
      if (i16 < i)
      {
        i17 = i16 + 1;
        arrayOfByte[i16] = (byte)i14;
      }
      while (true)
      {
        k = i17;
        l = i7;
        break label60:
        return arrayOfByte;
        i17 = i16;
      }
      label363: i16 = i15;
    }
  }

  public static byte[] decodeLines(String paramString)
  {
    char[] arrayOfChar = new char[paramString.length()];
    int i = 0;
    for (int j = 0; j < paramString.length(); ++j)
    {
      int k = paramString.charAt(j);
      if ((k == 32) || (k == 13) || (k == 10) || (k == 9))
        continue;
      int l = i + 1;
      arrayOfChar[i] = k;
      i = l;
    }
    return decode(arrayOfChar, 0, i);
  }

  public static String decodeString(String paramString)
  {
    return new String(decode(paramString));
  }

  public static char[] encode(byte[] paramArrayOfByte)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static char[] encode(byte[] paramArrayOfByte, int paramInt)
  {
    return encode(paramArrayOfByte, 0, paramInt);
  }

  public static char[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = (2 + paramInt2 * 4) / 3;
    char[] arrayOfChar = new char[4 * (paramInt2 + 2) / 3];
    int j = paramInt1 + paramInt2;
    int k = 0;
    int l = paramInt1;
    if (l < j)
    {
      label30: int i1 = l + 1;
      int i2 = 0xFF & paramArrayOfByte[l];
      int i3;
      int i4;
      label76: int i5;
      int i6;
      label99: int i10;
      int i13;
      label188: int i14;
      if (i1 < j)
      {
        i3 = i1 + 1;
        i4 = 0xFF & paramArrayOfByte[i1];
        if (i3 >= j)
          break label245;
        i5 = i3 + 1;
        i6 = 0xFF & paramArrayOfByte[i3];
        int i7 = i2 >>> 2;
        int i8 = (i2 & 0x3) << 4 | i4 >>> 4;
        int i9 = (i4 & 0xF) << 2 | i6 >>> 6;
        i10 = i6 & 0x3F;
        int i11 = k + 1;
        arrayOfChar[k] = map1[i7];
        int i12 = i11 + 1;
        arrayOfChar[i11] = map1[i8];
        if (i12 >= i)
          break label255;
        i13 = map1[i9];
        arrayOfChar[i12] = i13;
        i14 = i12 + 1;
        if (i14 >= i)
          break label262;
      }
      for (int i15 = map1[i10]; ; i15 = 61)
      {
        arrayOfChar[i14] = i15;
        k = i14 + 1;
        l = i5;
        break label30:
        i3 = i1;
        i4 = 0;
        break label76:
        label245: i5 = i3;
        i6 = 0;
        break label99:
        label255: i13 = 61;
        label262: break label188:
      }
    }
    return arrayOfChar;
  }

  public static String encodeLines(byte[] paramArrayOfByte)
  {
    return encodeLines(paramArrayOfByte, 0, paramArrayOfByte.length, 76, systemLineSeparator);
  }

  public static String encodeLines(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    int i = paramInt3 * 3 / 4;
    if (i <= 0)
      throw new IllegalArgumentException();
    int j = (-1 + paramInt2 + i) / i;
    StringBuilder localStringBuilder = new StringBuilder(4 * (paramInt2 + 2) / 3 + j * paramString.length());
    int k = 0;
    while (k < paramInt2)
    {
      int l = Math.min(paramInt2 - k, i);
      localStringBuilder.append(encode(paramArrayOfByte, paramInt1 + k, l));
      localStringBuilder.append(paramString);
      k += l;
    }
    return localStringBuilder.toString();
  }

  public static String encodeString(String paramString)
  {
    return new String(encode(paramString.getBytes()));
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.Base64
 * JD-Core Version:    0.5.3
 */