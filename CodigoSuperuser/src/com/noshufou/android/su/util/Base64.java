package com.noshufou.android.su.util;

public class Base64
{
  private static final byte[] ALPHABET;
  private static final byte[] DECODABET;
  public static final boolean DECODE = 0;
  public static final boolean ENCODE = 1;
  private static final byte EQUALS_SIGN = 61;
  private static final byte EQUALS_SIGN_ENC = -1;
  private static final byte NEW_LINE = 10;
  private static final byte[] WEBSAFE_ALPHABET;
  private static final byte[] WEBSAFE_DECODABET;
  private static final byte WHITE_SPACE_ENC = -5;

  static
  {
    if (!(Base64.class.desiredAssertionStatus()));
    for (int i = 1; ; i = 0)
    {
      $assertionsDisabled = i;
      ALPHABET = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      WEBSAFE_ALPHABET = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      byte[] arrayOfByte1 = new byte[128];
      arrayOfByte1[0] = -9;
      arrayOfByte1[1] = -9;
      arrayOfByte1[2] = -9;
      arrayOfByte1[3] = -9;
      arrayOfByte1[4] = -9;
      arrayOfByte1[5] = -9;
      arrayOfByte1[6] = -9;
      arrayOfByte1[7] = -9;
      arrayOfByte1[8] = -9;
      arrayOfByte1[9] = -5;
      arrayOfByte1[10] = -5;
      arrayOfByte1[11] = -9;
      arrayOfByte1[12] = -9;
      arrayOfByte1[13] = -5;
      arrayOfByte1[14] = -9;
      arrayOfByte1[15] = -9;
      arrayOfByte1[16] = -9;
      arrayOfByte1[17] = -9;
      arrayOfByte1[18] = -9;
      arrayOfByte1[19] = -9;
      arrayOfByte1[20] = -9;
      arrayOfByte1[21] = -9;
      arrayOfByte1[22] = -9;
      arrayOfByte1[23] = -9;
      arrayOfByte1[24] = -9;
      arrayOfByte1[25] = -9;
      arrayOfByte1[26] = -9;
      arrayOfByte1[27] = -9;
      arrayOfByte1[28] = -9;
      arrayOfByte1[29] = -9;
      arrayOfByte1[30] = -9;
      arrayOfByte1[31] = -9;
      arrayOfByte1[32] = -5;
      arrayOfByte1[33] = -9;
      arrayOfByte1[34] = -9;
      arrayOfByte1[35] = -9;
      arrayOfByte1[36] = -9;
      arrayOfByte1[37] = -9;
      arrayOfByte1[38] = -9;
      arrayOfByte1[39] = -9;
      arrayOfByte1[40] = -9;
      arrayOfByte1[41] = -9;
      arrayOfByte1[42] = -9;
      arrayOfByte1[43] = 62;
      arrayOfByte1[44] = -9;
      arrayOfByte1[45] = -9;
      arrayOfByte1[46] = -9;
      arrayOfByte1[47] = 63;
      arrayOfByte1[48] = 52;
      arrayOfByte1[49] = 53;
      arrayOfByte1[50] = 54;
      arrayOfByte1[51] = 55;
      arrayOfByte1[52] = 56;
      arrayOfByte1[53] = 57;
      arrayOfByte1[54] = 58;
      arrayOfByte1[55] = 59;
      arrayOfByte1[56] = 60;
      arrayOfByte1[57] = 61;
      arrayOfByte1[58] = -9;
      arrayOfByte1[59] = -9;
      arrayOfByte1[60] = -9;
      arrayOfByte1[61] = -1;
      arrayOfByte1[62] = -9;
      arrayOfByte1[63] = -9;
      arrayOfByte1[64] = -9;
      arrayOfByte1[66] = 1;
      arrayOfByte1[67] = 2;
      arrayOfByte1[68] = 3;
      arrayOfByte1[69] = 4;
      arrayOfByte1[70] = 5;
      arrayOfByte1[71] = 6;
      arrayOfByte1[72] = 7;
      arrayOfByte1[73] = 8;
      arrayOfByte1[74] = 9;
      arrayOfByte1[75] = 10;
      arrayOfByte1[76] = 11;
      arrayOfByte1[77] = 12;
      arrayOfByte1[78] = 13;
      arrayOfByte1[79] = 14;
      arrayOfByte1[80] = 15;
      arrayOfByte1[81] = 16;
      arrayOfByte1[82] = 17;
      arrayOfByte1[83] = 18;
      arrayOfByte1[84] = 19;
      arrayOfByte1[85] = 20;
      arrayOfByte1[86] = 21;
      arrayOfByte1[87] = 22;
      arrayOfByte1[88] = 23;
      arrayOfByte1[89] = 24;
      arrayOfByte1[90] = 25;
      arrayOfByte1[91] = -9;
      arrayOfByte1[92] = -9;
      arrayOfByte1[93] = -9;
      arrayOfByte1[94] = -9;
      arrayOfByte1[95] = -9;
      arrayOfByte1[96] = -9;
      arrayOfByte1[97] = 26;
      arrayOfByte1[98] = 27;
      arrayOfByte1[99] = 28;
      arrayOfByte1[100] = 29;
      arrayOfByte1[101] = 30;
      arrayOfByte1[102] = 31;
      arrayOfByte1[103] = 32;
      arrayOfByte1[104] = 33;
      arrayOfByte1[105] = 34;
      arrayOfByte1[106] = 35;
      arrayOfByte1[107] = 36;
      arrayOfByte1[108] = 37;
      arrayOfByte1[109] = 38;
      arrayOfByte1[110] = 39;
      arrayOfByte1[111] = 40;
      arrayOfByte1[112] = 41;
      arrayOfByte1[113] = 42;
      arrayOfByte1[114] = 43;
      arrayOfByte1[115] = 44;
      arrayOfByte1[116] = 45;
      arrayOfByte1[117] = 46;
      arrayOfByte1[118] = 47;
      arrayOfByte1[119] = 48;
      arrayOfByte1[120] = 49;
      arrayOfByte1[121] = 50;
      arrayOfByte1[122] = 51;
      arrayOfByte1[123] = -9;
      arrayOfByte1[124] = -9;
      arrayOfByte1[125] = -9;
      arrayOfByte1[126] = -9;
      arrayOfByte1[127] = -9;
      DECODABET = arrayOfByte1;
      byte[] arrayOfByte2 = new byte[128];
      arrayOfByte2[0] = -9;
      arrayOfByte2[1] = -9;
      arrayOfByte2[2] = -9;
      arrayOfByte2[3] = -9;
      arrayOfByte2[4] = -9;
      arrayOfByte2[5] = -9;
      arrayOfByte2[6] = -9;
      arrayOfByte2[7] = -9;
      arrayOfByte2[8] = -9;
      arrayOfByte2[9] = -5;
      arrayOfByte2[10] = -5;
      arrayOfByte2[11] = -9;
      arrayOfByte2[12] = -9;
      arrayOfByte2[13] = -5;
      arrayOfByte2[14] = -9;
      arrayOfByte2[15] = -9;
      arrayOfByte2[16] = -9;
      arrayOfByte2[17] = -9;
      arrayOfByte2[18] = -9;
      arrayOfByte2[19] = -9;
      arrayOfByte2[20] = -9;
      arrayOfByte2[21] = -9;
      arrayOfByte2[22] = -9;
      arrayOfByte2[23] = -9;
      arrayOfByte2[24] = -9;
      arrayOfByte2[25] = -9;
      arrayOfByte2[26] = -9;
      arrayOfByte2[27] = -9;
      arrayOfByte2[28] = -9;
      arrayOfByte2[29] = -9;
      arrayOfByte2[30] = -9;
      arrayOfByte2[31] = -9;
      arrayOfByte2[32] = -5;
      arrayOfByte2[33] = -9;
      arrayOfByte2[34] = -9;
      arrayOfByte2[35] = -9;
      arrayOfByte2[36] = -9;
      arrayOfByte2[37] = -9;
      arrayOfByte2[38] = -9;
      arrayOfByte2[39] = -9;
      arrayOfByte2[40] = -9;
      arrayOfByte2[41] = -9;
      arrayOfByte2[42] = -9;
      arrayOfByte2[43] = -9;
      arrayOfByte2[44] = -9;
      arrayOfByte2[45] = 62;
      arrayOfByte2[46] = -9;
      arrayOfByte2[47] = -9;
      arrayOfByte2[48] = 52;
      arrayOfByte2[49] = 53;
      arrayOfByte2[50] = 54;
      arrayOfByte2[51] = 55;
      arrayOfByte2[52] = 56;
      arrayOfByte2[53] = 57;
      arrayOfByte2[54] = 58;
      arrayOfByte2[55] = 59;
      arrayOfByte2[56] = 60;
      arrayOfByte2[57] = 61;
      arrayOfByte2[58] = -9;
      arrayOfByte2[59] = -9;
      arrayOfByte2[60] = -9;
      arrayOfByte2[61] = -1;
      arrayOfByte2[62] = -9;
      arrayOfByte2[63] = -9;
      arrayOfByte2[64] = -9;
      arrayOfByte2[66] = 1;
      arrayOfByte2[67] = 2;
      arrayOfByte2[68] = 3;
      arrayOfByte2[69] = 4;
      arrayOfByte2[70] = 5;
      arrayOfByte2[71] = 6;
      arrayOfByte2[72] = 7;
      arrayOfByte2[73] = 8;
      arrayOfByte2[74] = 9;
      arrayOfByte2[75] = 10;
      arrayOfByte2[76] = 11;
      arrayOfByte2[77] = 12;
      arrayOfByte2[78] = 13;
      arrayOfByte2[79] = 14;
      arrayOfByte2[80] = 15;
      arrayOfByte2[81] = 16;
      arrayOfByte2[82] = 17;
      arrayOfByte2[83] = 18;
      arrayOfByte2[84] = 19;
      arrayOfByte2[85] = 20;
      arrayOfByte2[86] = 21;
      arrayOfByte2[87] = 22;
      arrayOfByte2[88] = 23;
      arrayOfByte2[89] = 24;
      arrayOfByte2[90] = 25;
      arrayOfByte2[91] = -9;
      arrayOfByte2[92] = -9;
      arrayOfByte2[93] = -9;
      arrayOfByte2[94] = -9;
      arrayOfByte2[95] = 63;
      arrayOfByte2[96] = -9;
      arrayOfByte2[97] = 26;
      arrayOfByte2[98] = 27;
      arrayOfByte2[99] = 28;
      arrayOfByte2[100] = 29;
      arrayOfByte2[101] = 30;
      arrayOfByte2[102] = 31;
      arrayOfByte2[103] = 32;
      arrayOfByte2[104] = 33;
      arrayOfByte2[105] = 34;
      arrayOfByte2[106] = 35;
      arrayOfByte2[107] = 36;
      arrayOfByte2[108] = 37;
      arrayOfByte2[109] = 38;
      arrayOfByte2[110] = 39;
      arrayOfByte2[111] = 40;
      arrayOfByte2[112] = 41;
      arrayOfByte2[113] = 42;
      arrayOfByte2[114] = 43;
      arrayOfByte2[115] = 44;
      arrayOfByte2[116] = 45;
      arrayOfByte2[117] = 46;
      arrayOfByte2[118] = 47;
      arrayOfByte2[119] = 48;
      arrayOfByte2[120] = 49;
      arrayOfByte2[121] = 50;
      arrayOfByte2[122] = 51;
      arrayOfByte2[123] = -9;
      arrayOfByte2[124] = -9;
      arrayOfByte2[125] = -9;
      arrayOfByte2[126] = -9;
      arrayOfByte2[127] = -9;
      WEBSAFE_DECODABET = arrayOfByte2;
      return;
    }
  }

  public static byte[] decode(String paramString)
    throws Base64DecoderException
  {
    byte[] arrayOfByte = paramString.getBytes();
    return decode(arrayOfByte, 0, arrayOfByte.length);
  }

  public static byte[] decode(byte[] paramArrayOfByte)
    throws Base64DecoderException
  {
    return decode(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static byte[] decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws Base64DecoderException
  {
    return decode(paramArrayOfByte, paramInt1, paramInt2, DECODABET);
  }

  public static byte[] decode(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
    throws Base64DecoderException
  {
    byte[] arrayOfByte1 = new byte[2 + paramInt2 * 3 / 4];
    int i = 0;
    byte[] arrayOfByte2 = new byte[4];
    int j = 0;
    int k = 0;
    label25: if (j >= paramInt2);
    int l;
    int i4;
    do
    {
      if (k == 0)
        break label374;
      if (k != 1)
        break label326;
      throw new Base64DecoderException("single trailing character at offset " + (paramInt2 - 1));
      l = (byte)(0x7F & paramArrayOfByte1[(j + paramInt1)]);
      int i1 = paramArrayOfByte2[l];
      if (i1 < -5)
        break label282;
      if (i1 < -1)
        break label380;
      if (l != 61)
        break label234;
      int i3 = paramInt2 - j;
      i4 = (byte)(0x7F & paramArrayOfByte1[(paramInt1 + paramInt2 - 1)]);
      if ((k == 0) || (k == 1))
        throw new Base64DecoderException("invalid padding byte '=' at byte offset " + j);
      if ((((k != 3) || (i3 <= 2))) && (((k != 4) || (i3 <= 1))))
        continue;
      throw new Base64DecoderException("padding byte '=' falsely signals end of encoded value at offset " + j);
    }
    while ((i4 == 61) || (i4 == 10));
    throw new Base64DecoderException("encoded value has invalid trailing byte");
    label234: int i2 = k + 1;
    arrayOfByte2[k] = l;
    if (i2 == 4)
      i += decode4to3(arrayOfByte2, 0, arrayOfByte1, i, paramArrayOfByte2);
    for (i2 = 0; ; i2 = k)
    {
      ++j;
      k = i2;
      break label25:
      label282: throw new Base64DecoderException("Bad Base64 input character at " + j + ": " + paramArrayOfByte1[(j + paramInt1)] + "(decimal)");
      label326: (k + 1);
      arrayOfByte2[k] = 61;
      i += decode4to3(arrayOfByte2, 0, arrayOfByte1, i, paramArrayOfByte2);
      while (true)
      {
        byte[] arrayOfByte3 = new byte[i];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte3, 0, i);
        label374: label380: return arrayOfByte3;
      }
    }
  }

  private static int decode4to3(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2, byte[] paramArrayOfByte3)
  {
    if (paramArrayOfByte1[(paramInt1 + 2)] == 61)
    {
      paramArrayOfByte2[paramInt2] = (byte)((paramArrayOfByte3[paramArrayOfByte1[paramInt1]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 1)]] << 24 >>> 12) >>> 16);
      return 1;
    }
    if (paramArrayOfByte1[(paramInt1 + 3)] == 61)
    {
      int j = paramArrayOfByte3[paramArrayOfByte1[paramInt1]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 1)]] << 24 >>> 12 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 2)]] << 24 >>> 18;
      paramArrayOfByte2[paramInt2] = (byte)(j >>> 16);
      paramArrayOfByte2[(paramInt2 + 1)] = (byte)(j >>> 8);
      return 2;
    }
    int i = paramArrayOfByte3[paramArrayOfByte1[paramInt1]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 1)]] << 24 >>> 12 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 2)]] << 24 >>> 18 | paramArrayOfByte3[paramArrayOfByte1[(paramInt1 + 3)]] << 24 >>> 24;
    paramArrayOfByte2[paramInt2] = (byte)(i >> 16);
    paramArrayOfByte2[(paramInt2 + 1)] = (byte)(i >> 8);
    paramArrayOfByte2[(paramInt2 + 2)] = (byte)i;
    return 3;
  }

  public static byte[] decodeWebSafe(String paramString)
    throws Base64DecoderException
  {
    byte[] arrayOfByte = paramString.getBytes();
    return decodeWebSafe(arrayOfByte, 0, arrayOfByte.length);
  }

  public static byte[] decodeWebSafe(byte[] paramArrayOfByte)
    throws Base64DecoderException
  {
    return decodeWebSafe(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static byte[] decodeWebSafe(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws Base64DecoderException
  {
    return decode(paramArrayOfByte, paramInt1, paramInt2, WEBSAFE_DECODABET);
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, ALPHABET, true);
  }

  public static String encode(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, boolean paramBoolean)
  {
    byte[] arrayOfByte = encode(paramArrayOfByte1, paramInt1, paramInt2, paramArrayOfByte2, 2147483647);
    for (int i = arrayOfByte.length; ; --i)
    {
      if ((paramBoolean) || (i <= 0));
      do
        return new String(arrayOfByte, 0, i);
      while (arrayOfByte[(i - 1)] != 61);
    }
  }

  public static byte[] encode(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int i = 4 * (paramInt2 + 2) / 3;
    byte[] arrayOfByte = new byte[i + i / paramInt3];
    int j = 0;
    int k = 0;
    int l = paramInt2 - 2;
    int i1 = 0;
    while (true)
    {
      if (j >= l)
      {
        if (j < paramInt2)
        {
          encode3to4(paramArrayOfByte1, j + paramInt1, paramInt2 - j, arrayOfByte, k, paramArrayOfByte2);
          if (i1 + 4 == paramInt3)
          {
            arrayOfByte[(k + 4)] = 10;
            ++k;
          }
          k += 4;
        }
        if (($assertionsDisabled) || (k == arrayOfByte.length))
          break;
        throw new AssertionError();
      }
      int i2 = paramArrayOfByte1[(j + paramInt1)] << 24 >>> 8 | paramArrayOfByte1[(paramInt1 + j + 1)] << 24 >>> 16 | paramArrayOfByte1[(paramInt1 + j + 2)] << 24 >>> 24;
      arrayOfByte[k] = paramArrayOfByte2[(i2 >>> 18)];
      arrayOfByte[(k + 1)] = paramArrayOfByte2[(0x3F & i2 >>> 12)];
      arrayOfByte[(k + 2)] = paramArrayOfByte2[(0x3F & i2 >>> 6)];
      arrayOfByte[(k + 3)] = paramArrayOfByte2[(i2 & 0x3F)];
      if ((i1 += 4) == paramInt3)
      {
        arrayOfByte[(k + 4)] = 10;
        ++k;
        i1 = 0;
      }
      j += 3;
      k += 4;
    }
    return arrayOfByte;
  }

  private static byte[] encode3to4(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3, byte[] paramArrayOfByte3)
  {
    int i;
    label15: int j;
    label33: int k;
    if (paramInt2 > 0)
    {
      i = paramArrayOfByte1[paramInt1] << 24 >>> 8;
      if (paramInt2 <= 1)
        break label100;
      j = paramArrayOfByte1[(paramInt1 + 1)] << 24 >>> 16;
      k = i | j;
      if (paramInt2 <= 2)
        break label106;
    }
    int i1;
    for (int l = paramArrayOfByte1[(paramInt1 + 2)] << 24 >>> 24; ; l = 0)
    {
      i1 = k | l;
      switch (paramInt2)
      {
      default:
        return paramArrayOfByte2;
        i = 0;
        break label15:
        label100: j = 0;
        label106: break label33:
      case 3:
      case 2:
      case 1:
      }
    }
    paramArrayOfByte2[paramInt3] = paramArrayOfByte3[(i1 >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = paramArrayOfByte3[(0x3F & i1 >>> 12)];
    paramArrayOfByte2[(paramInt3 + 2)] = paramArrayOfByte3[(0x3F & i1 >>> 6)];
    paramArrayOfByte2[(paramInt3 + 3)] = paramArrayOfByte3[(i1 & 0x3F)];
    return paramArrayOfByte2;
    paramArrayOfByte2[paramInt3] = paramArrayOfByte3[(i1 >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = paramArrayOfByte3[(0x3F & i1 >>> 12)];
    paramArrayOfByte2[(paramInt3 + 2)] = paramArrayOfByte3[(0x3F & i1 >>> 6)];
    paramArrayOfByte2[(paramInt3 + 3)] = 61;
    return paramArrayOfByte2;
    paramArrayOfByte2[paramInt3] = paramArrayOfByte3[(i1 >>> 18)];
    paramArrayOfByte2[(paramInt3 + 1)] = paramArrayOfByte3[(0x3F & i1 >>> 12)];
    paramArrayOfByte2[(paramInt3 + 2)] = 61;
    paramArrayOfByte2[(paramInt3 + 3)] = 61;
    return paramArrayOfByte2;
  }

  public static String encodeWebSafe(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, WEBSAFE_ALPHABET, paramBoolean);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.util.Base64
 * JD-Core Version:    0.5.3
 */