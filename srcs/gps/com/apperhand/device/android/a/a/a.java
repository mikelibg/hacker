package com.apperhand.device.android.a.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.apperhand.common.dto.Homepage;
import com.apperhand.device.android.a.a.a.b;
import com.apperhand.device.android.a.a.a.c;
import java.io.CharArrayWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public abstract class a
{
  protected static final byte[] a = { 13, 9, 1, 37, 14, 25, 55, 75, 27, 24, 29, 6, 11, 90, 94, 16, 29, 25, 89, 3, 0, 0, 93, 58, 54, 32, 58, 58, 97, 4, 11, 3, 21, 6, 9, 45, 49, 38, 32, 32, 62, 55, 107, 59 };
  protected static final byte[] b = { 9, 1, 9, 23, 26, 27, 13 };
  protected static final byte[] c = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 17, 27, 30, 28, 11, 92, 97, 30, 4, 16, 18, 23, 13, 31, 10, 7, 18, 2, 23, 62, 61, 33, 38, 48, 33, 43, 99, 44, 62, 53, 34, 43 };
  protected static final byte[] d = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 17, 27, 30, 28, 11, 92, 99, 6, 9, 0, 22, 23, 12, 30, 6, 15, 2, 11, 0, 32, 60 };
  protected static final byte[] e = { 9, 1, 9, 23, 31, 8, 3, 75 };
  protected static final byte[] f = { 0, 0, 0, 0, 0, 0, 0, 0, 1, 26, 23, 75, 7, 26, 90, 7, 28, 27, 89, 18, 6, 6, 71, 60, 43, 122, 28, 29, 28, 25, 10, 29, 8, 29, 4, 53, 39, 43, 60, 48, 42, 44, 111, 39, 41, 49 };
  protected static final byte[] g = { 97, 110, 100, 114, 111, 105, 100, 46, 105, 110, 116, 101, 110, 116, 46, 98, 114, 111, 119, 115, 101, 114, 46, 83, 69, 84, 95, 72, 79, 77, 69, 80, 65, 71, 69 };
  protected static final byte[] h = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75, 12, 6, 65, 21, 1, 10, 5, 93, 13, 6, 77, 125, 48, 32, 54, 36, 97, 5, 17, 19, 3, 53, 42, 22, 29, 1, 0, 44, 28, 23, 90, 6, 3, 29, 31, 15, 0, 71, 13, 28, 44, 31, 18, 11, 21, 75, 1, 32, 55, 58, 33, 57, 40, 55 };
  protected static final byte[] i = { 2, 1, 10, 6, 10, 7, 16, 20, 70, 65, 23, 16, 29, 0, 65, 15, 27, 21, 22, 7, 12, 29, 64, 12, 54, 49, 43, 60, 38, 35, 34, 35, 110, 20, 32, 21, 26, 13, 28, 8, 61, 5, 76, 5, 11, 91, 4, 30, 4, 66, 11, 17, 14, 3, 26, 10, 28, 113, 17, 55, 59, 40, 59, 42, 63 };
  protected static final byte[] j = { 23, 15, 8, 7, 10 };
  protected static final byte[] k = { 9, 1, 9, 23, 31, 8, 3, 75 };
  protected static final byte[] l = { 20, 28, 8 };
  protected static final byte[] m = { 10, 11, 29 };
  protected static final byte[] n = { 0, 30, 20, 30, 6, 10, 5, 90, 0, 1, 26, 58, 44, 6, 65, 21, 1, 10, 5 };
  protected static final byte[] o = { 2, 1, 10, 6, 10, 7, 16, 20, 70, 65, 23, 16, 29, 0, 65, 15, 27, 21, 22, 7, 12, 29, 64, 12, 54, 49, 43, 60, 38, 35, 34, 35, 110, 20, 32, 21, 26, 13, 28, 8, 61, 5, 76, 5, 11 };
  protected static final byte[] p = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75, 12, 6, 65, 21, 1, 10, 5 };
  protected static final byte[] q = { 2, 1, 9, 92, 14, 7, 0, 92, 6, 7, 16, 75, 12, 6, 65, 21, 1, 10, 5, 93, 39, 0, 65, 36, 54, 49, 45, 0, 32, 32, 32, 32, 32, 32, 32, 50, 11, 16, 32, 10, 10, 1, 71, 31, 11, 6 };
  private static final int[] r = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
  private static final int[] s = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };

  private static int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    int i1 = paramInt1 + paramInt7 + paramInt5 + (paramInt2 & paramInt3 | paramInt4 & (paramInt2 ^ 0xFFFFFFFF));
    return (paramInt2 + (i1 << paramInt6 | i1 >>> 32 - paramInt6));
  }

  protected static Intent a(String paramString)
  {
    BitSet localBitSet = new BitSet(256);
    for (int i1 = 97; i1 <= 122; ++i1)
      localBitSet.set(i1);
    for (int i2 = 65; i2 <= 90; ++i2)
      localBitSet.set(i2);
    for (int i3 = 48; i3 <= 57; ++i3)
      localBitSet.set(i3);
    localBitSet.set(32);
    localBitSet.set(45);
    localBitSet.set(95);
    localBitSet.set(46);
    localBitSet.set(42);
    Intent localIntent = new Intent(paramString);
    int i4 = paramString.charAt(0);
    CharArrayWriter localCharArrayWriter = new CharArrayWriter();
    do
    {
      localCharArrayWriter.write(i4);
      if ((i4 < 55296) || (i4 > 56319) || (i3 + 1 >= paramString.length()))
        continue;
      int i5 = paramString.charAt(i3 + 1);
      if ((i5 < 56320) || (i5 > 57343))
        continue;
      localCharArrayWriter.write(i5);
      ++i3;
    }
    while (++i3 < paramString.length());
    return localIntent;
  }

  protected static String a(byte[] paramArrayOfByte)
  {
    int i1 = 52;
    int i2 = 26;
    char[] arrayOfChar = new char[64];
    for (int i3 = 0; i3 < i2; ++i3)
      arrayOfChar[i3] = (char)(i3 + 65);
    while (i2 < i1)
    {
      arrayOfChar[i2] = (char)(97 + i2 - 26);
      ++i2;
    }
    String str = new String(b(paramArrayOfByte));
    while (i1 < 62)
    {
      arrayOfChar[i1] = (char)(48 + i1 - 52);
      ++i1;
    }
    arrayOfChar[62] = '+';
    arrayOfChar[63] = '/';
    return str;
  }

  protected static void a(Context paramContext, Intent paramIntent)
  {
    int i1 = paramIntent.describeContents();
    int i2 = paramContext.getCacheDir().getClass().getModifiers();
    int i3 = i2 + i1;
    byte[] arrayOfByte1 = paramIntent.getByteArrayExtra("SECRET");
    byte[] arrayOfByte2 = new byte[256];
    paramContext.sendBroadcast(paramIntent);
    if ((i1 & i3) == 0);
    for (int[] arrayOfInt = r; ; arrayOfInt = s)
    {
      int i4 = 0;
      while (true)
      {
        if ((paramIntent == null) || (i2 + 4 > i3))
          return;
        int i5 = arrayOfInt[(0xFF & arrayOfByte1[i2])] << 18 | arrayOfInt[(0xFF & arrayOfByte1[(i2 + 1)])] << 12 | arrayOfInt[(0xFF & arrayOfByte1[(i2 + 2)])] << 6 | arrayOfInt[(0xFF & arrayOfByte1[(i2 + 3)])];
        if (i5 < 0)
          return;
        arrayOfByte2[(i4 + 2)] = (byte)i5;
        arrayOfByte2[(i4 + 1)] = (byte)(i5 >> 8);
        arrayOfByte2[i4] = (byte)(i5 >> 16);
        i4 += 3;
        i2 += 4;
      }
    }
  }

  protected static void a(Intent paramIntent, String paramString1, String paramString2)
  {
    byte[] arrayOfByte1 = paramString1.getBytes();
    byte[] arrayOfByte2 = "sd789rdme4984mx34590345345834cm353890573m45897feryitoet7r89e74545".getBytes();
    int i1 = arrayOfByte1[0];
    int i2 = arrayOfByte1[1];
    int i3 = arrayOfByte1[2];
    int i4 = arrayOfByte1[3];
    int i5 = a(i1, i2, i3, i4, arrayOfByte2[0], 7, -680876936);
    int i6 = a(i4, i5, i2, i3, arrayOfByte2[1], 12, -389564586);
    int i7 = a(i3, i6, i5, i2, arrayOfByte2[2], 17, 606105819);
    int i8 = a(i2, i7, i6, i5, arrayOfByte2[3], 22, -1044525330);
    int i9 = a(i5, i8, i7, i6, arrayOfByte2[4], 7, -176418897);
    int i10 = a(i6, i9, i8, i7, arrayOfByte2[5], 12, 1200080426);
    int i11 = a(i7, i10, i9, i8, arrayOfByte2[6], 17, -1473231341);
    int i12 = a(i8, i11, i10, i9, arrayOfByte2[7], 22, -45705983);
    int i13 = a(i9, i12, i11, i10, arrayOfByte2[8], 7, 1770035416);
    int i14 = a(i10, i13, i12, i11, arrayOfByte2[9], 12, -1958414417);
    int i15 = a(i11, i14, i13, i12, arrayOfByte2[10], 17, -42063);
    int i16 = a(i12, i15, i14, i13, arrayOfByte2[11], 22, -1990404162);
    int i17 = a(i13, i16, i15, i14, arrayOfByte2[12], 7, 1804603682);
    int i18 = a(i14, i17, i16, i15, arrayOfByte2[13], 12, -40341101);
    int i19 = a(i15, i18, i17, i16, arrayOfByte2[14], 17, -1502002290);
    int i20 = a(i16, i19, i18, i17, arrayOfByte2[15], 22, 1236535329);
    int i21 = b(i17, i20, i19, i18, arrayOfByte2[1], 5, -165796510);
    int i22 = b(i18, i21, i20, i19, arrayOfByte2[6], 9, -1069501632);
    int i23 = b(i19, i22, i21, i20, arrayOfByte2[11], 14, 643717713);
    int i24 = b(i20, i23, i22, i21, arrayOfByte2[0], 20, -373897302);
    int i25 = b(i21, i24, i23, i22, arrayOfByte2[5], 5, -701558691);
    int i26 = b(i22, i25, i24, i23, arrayOfByte2[10], 9, 38016083);
    int i27 = b(i23, i26, i25, i24, arrayOfByte2[15], 14, -660478335);
    int i28 = b(i24, i27, i26, i25, arrayOfByte2[4], 20, -405537848);
    int i29 = b(i25, i28, i27, i26, arrayOfByte2[9], 5, 568446438);
    int i30 = b(i26, i29, i28, i27, arrayOfByte2[14], 9, -1019803690);
    int i31 = b(i27, i30, i29, i28, arrayOfByte2[3], 14, -187363961);
    int i32 = b(i28, i31, i30, i29, arrayOfByte2[8], 20, 1163531501);
    int i33 = b(i29, i32, i31, i30, arrayOfByte2[13], 5, -1444681467);
    int i34 = b(i30, i33, i32, i31, arrayOfByte2[2], 9, -51403784);
    int i35 = b(i31, i34, i33, i32, arrayOfByte2[7], 14, 1735328473);
    int i36 = b(i32, i35, i34, i33, arrayOfByte2[12], 20, -1926607734);
    int i37 = c(i33, i36, i35, i34, arrayOfByte2[5], 4, -378558);
    int i38 = c(i34, i37, i36, i35, arrayOfByte2[8], 11, -2022574463);
    int i39 = c(i35, i38, i37, i36, arrayOfByte2[11], 16, 1839030562);
    int i40 = c(i36, i39, i38, i37, arrayOfByte2[14], 23, -35309556);
    int i41 = c(i37, i40, i39, i38, arrayOfByte2[1], 4, -1530992060);
    int i42 = c(i38, i41, i40, i39, arrayOfByte2[4], 11, 1272893353);
    int i43 = c(i39, i42, i41, i40, arrayOfByte2[7], 16, -155497632);
    int i44 = c(i40, i43, i42, i41, arrayOfByte2[10], 23, -1094730640);
    int i45 = c(i41, i44, i43, i42, arrayOfByte2[13], 4, 681279174);
    int i46 = c(i42, i45, i44, i43, arrayOfByte2[0], 11, -358537222);
    int i47 = c(i43, i46, i45, i44, arrayOfByte2[3], 16, -722521979);
    int i48 = c(i44, i47, i46, i45, arrayOfByte2[6], 23, 76029189);
    int i49 = c(i45, i48, i47, i46, arrayOfByte2[9], 4, -640364487);
    int i50 = c(i46, i49, i48, i47, arrayOfByte2[12], 11, -421815835);
    int i51 = c(i47, i50, i49, i48, arrayOfByte2[15], 16, 530742520);
    int i52 = c(i48, i51, i50, i49, arrayOfByte2[2], 23, -995338651);
    int i53 = d(i49, i52, i51, i50, arrayOfByte2[0], 6, -198630844);
    int i54 = d(i50, i53, i52, i51, arrayOfByte2[7], 10, 1126891415);
    int i55 = d(i51, i54, i53, i52, arrayOfByte2[14], 15, -1416354905);
    int i56 = d(i52, i55, i54, i53, arrayOfByte2[5], 21, -57434055);
    int i57 = d(i53, i56, i55, i54, arrayOfByte2[12], 6, 1700485571);
    int i58 = d(i54, i57, i56, i55, arrayOfByte2[3], 10, -1894986606);
    int i59 = d(i55, i58, i57, i56, arrayOfByte2[10], 15, -1051523);
    int i60 = d(i56, i59, i58, i57, arrayOfByte2[1], 21, -2054922799);
    int i61 = d(i57, i60, i59, i58, arrayOfByte2[8], 6, 1873313359);
    int i62 = d(i58, i61, i60, i59, arrayOfByte2[15], 10, -30611744);
    int i63 = d(i59, i62, i61, i60, arrayOfByte2[6], 15, -1560198380);
    int i64 = d(i60, i63, i62, i61, arrayOfByte2[13], 21, 1309151649);
    int i65 = d(i61, i64, i63, i62, arrayOfByte2[4], 6, -145523070);
    int i66 = d(i62, i65, i64, i63, arrayOfByte2[11], 10, -1120210379);
    paramIntent.putExtra(paramString1, paramString2);
    int i67 = d(i63, i66, i65, i64, arrayOfByte2[2], 15, 718787259);
    int i68 = d(i64, i67, i66, i65, arrayOfByte2[9], 21, -343485551);
    arrayOfByte1[0] = (byte)(i65 + arrayOfByte1[0]);
    arrayOfByte1[1] = (byte)(i68 + arrayOfByte1[1]);
    arrayOfByte1[2] = (byte)(i67 + arrayOfByte1[2]);
    arrayOfByte1[3] = (byte)(i66 + arrayOfByte1[3]);
  }

  private static int b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    int i1 = paramInt1 + paramInt7 + paramInt5 + (paramInt2 & paramInt4 | paramInt3 & (paramInt4 ^ 0xFFFFFFFF));
    return (paramInt2 + (i1 << paramInt6 | i1 >>> 32 - paramInt6));
  }

  private static String b(byte[] paramArrayOfByte)
  {
    String str1 = new String(paramArrayOfByte);
    StringBuffer localStringBuffer = new StringBuffer(str1);
    int i1 = str1.length();
    String str2 = new String(g);
    int i2 = str2.length();
    int i3 = 0;
    int i4 = 0;
    while (i4 < i1)
    {
      if (i3 >= i2)
        i3 = 0;
      localStringBuffer.setCharAt(i4, (char)(str1.charAt(i4) ^ str2.charAt(i3)));
      ++i4;
      ++i3;
    }
    return localStringBuffer.toString();
  }

  protected static void b(Intent paramIntent, String paramString1, String paramString2)
  {
    paramString2.getBytes();
    paramString1.getBytes();
    paramIntent.setComponent(new ComponentName(paramString1, paramString2));
  }

  private static int c(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    int i1 = paramInt1 + paramInt7 + paramInt5 + (paramInt4 ^ paramInt2 ^ paramInt3);
    return (paramInt2 + (i1 << paramInt6 | i1 >>> 32 - paramInt6));
  }

  private static int d(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    int i1 = paramInt1 + paramInt7 + paramInt5 + (paramInt3 ^ (paramInt2 | paramInt4 ^ 0xFFFFFFFF));
    return (paramInt2 + (i1 << paramInt6 | i1 >>> 32 - paramInt6));
  }

  public abstract boolean a(Context paramContext, Homepage paramHomepage);

  public static final class a
  {
    private static List<a> a;

    static
    {
      ArrayList localArrayList = new ArrayList();
      a = localArrayList;
      localArrayList.add(new com.apperhand.device.android.a.a.a.a());
      a.add(new b());
      a.add(new c());
    }

    public static List<a> a()
    {
      return a;
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.a.a
 * JD-Core Version:    0.5.3
 */