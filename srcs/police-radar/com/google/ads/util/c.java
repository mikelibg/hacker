package com.google.ads.util;

import java.io.UnsupportedEncodingException;

public class c
{
  static
  {
    if (!(c.class.desiredAssertionStatus()));
    for (int i = 1; ; i = 0)
    {
      a = i;
      return;
    }
  }

  public static byte[] a(String paramString)
  {
    return a(paramString.getBytes(), 0);
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    b localb = new b(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!(localb.a(paramArrayOfByte, paramInt1, paramInt2, true)))
      throw new IllegalArgumentException("bad base-64");
    if (localb.b == localb.a.length)
      return localb.a;
    byte[] arrayOfByte = new byte[localb.b];
    System.arraycopy(localb.a, 0, arrayOfByte, 0, localb.b);
    return arrayOfByte;
  }

  public static String b(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      String str = new String(c(paramArrayOfByte, paramInt), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  public static byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    c localc = new c(paramInt3, null);
    int i = 4 * paramInt2 / 3;
    label35: int j;
    if (localc.d)
    {
      if (paramInt2 % 3 > 0)
        i += 4;
      if ((localc.e) && (paramInt2 > 0))
      {
        j = 1 + (paramInt2 - 1) / 57;
        if (!(localc.f))
          break label167;
      }
    }
    for (int k = 2; ; k = 1)
    {
      i += k * j;
      localc.a = new byte[i];
      localc.a(paramArrayOfByte, paramInt1, paramInt2, true);
      if ((a) || (localc.b == i))
        break;
      throw new AssertionError();
      switch (paramInt2 % 3)
      {
      case 0:
      default:
        break;
      case 1:
        i += 2;
        break;
      case 2:
      }
      i += 3;
      label167: break label35:
    }
    return localc.a;
  }

  public static byte[] c(byte[] paramArrayOfByte, int paramInt)
  {
    return b(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }

  public static abstract class a
  {
    public byte[] a;
    public int b;
  }

  public static class b extends c.a
  {
    private static final int[] c = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    private static final int[] d = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    private int e;
    private int f;
    private final int[] g;

    public b(int paramInt, byte[] paramArrayOfByte)
    {
      this.a = paramArrayOfByte;
      if ((paramInt & 0x8) == 0);
      for (int[] arrayOfInt = c; ; arrayOfInt = d)
      {
        this.g = arrayOfInt;
        this.e = 0;
        this.f = 0;
        return;
      }
    }

    public boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (this.e == 6)
        return false;
      int i = paramInt2 + paramInt1;
      int j = this.e;
      int k = this.f;
      int l = 0;
      byte[] arrayOfByte = this.a;
      int[] arrayOfInt = this.g;
      int i1 = paramInt1;
      if (i1 < i)
        if (j == 0)
        {
          while (i1 + 4 <= i)
          {
            label46: k = arrayOfInt[(0xFF & paramArrayOfByte[i1])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 3)])];
            if (k < 0)
              break;
            arrayOfByte[(l + 2)] = (byte)k;
            arrayOfByte[(l + 1)] = (byte)(k >> 8);
            arrayOfByte[l] = (byte)(k >> 16);
            l += 3;
            i1 += 4;
          }
          if (i1 < i);
        }
      for (int i2 = k; ; i2 = k)
      {
        if (!(paramBoolean))
        {
          this.e = j;
          this.f = i2;
          this.b = l;
          return true;
          int i5 = i1 + 1;
          int i6 = arrayOfInt[(0xFF & paramArrayOfByte[i1])];
          switch (j)
          {
          default:
          case 0:
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          }
          do
          {
            do
              for (int i7 = j; ; i7 = j + 1)
              {
                while (true)
                {
                  j = i7;
                  i1 = i5;
                  break label46:
                  if (i6 >= 0)
                  {
                    i7 = j + 1;
                    k = i6;
                  }
                  if (i6 != -1);
                  this.e = 6;
                  return false;
                  if (i6 >= 0)
                  {
                    k = i6 | k << 6;
                    i7 = j + 1;
                  }
                  if (i6 != -1);
                  this.e = 6;
                  return false;
                  if (i6 >= 0)
                  {
                    k = i6 | k << 6;
                    i7 = j + 1;
                  }
                  if (i6 == -2)
                  {
                    int i8 = l + 1;
                    arrayOfByte[l] = (byte)(k >> 4);
                    i7 = 4;
                    l = i8;
                  }
                  if (i6 != -1);
                  this.e = 6;
                  return false;
                  if (i6 >= 0)
                  {
                    k = i6 | k << 6;
                    arrayOfByte[(l + 2)] = (byte)k;
                    arrayOfByte[(l + 1)] = (byte)(k >> 8);
                    arrayOfByte[l] = (byte)(k >> 16);
                    l += 3;
                    i7 = 0;
                  }
                  if (i6 != -2)
                    break;
                  arrayOfByte[(l + 1)] = (byte)(k >> 2);
                  arrayOfByte[l] = (byte)(k >> 10);
                  l += 2;
                  i7 = 5;
                }
                if (i6 != -1);
                this.e = 6;
                return false;
                if (i6 != -2)
                  break;
              }
            while (i6 == -1);
            this.e = 6;
            return false;
          }
          while (i6 == -1);
          this.e = 6;
          return false;
        }
        switch (j)
        {
        case 0:
        default:
        case 1:
        case 2:
        case 3:
          while (true)
          {
            this.e = j;
            this.b = l;
            return true;
            this.e = 6;
            return false;
            int i4 = l + 1;
            arrayOfByte[l] = (byte)(i2 >> 4);
            l = i4;
            continue;
            int i3 = l + 1;
            arrayOfByte[l] = (byte)(i2 >> 10);
            l = i3 + 1;
            arrayOfByte[i3] = (byte)(i2 >> 2);
          }
        case 4:
        }
        this.e = 6;
        return false;
      }
    }
  }

  public static class c extends c.a
  {
    private static final byte[] h;
    private static final byte[] i;
    public int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    private final byte[] j;
    private int k;
    private final byte[] l;

    static
    {
      if (!(c.class.desiredAssertionStatus()));
      for (int i1 = 1; ; i1 = 0)
      {
        g = i1;
        h = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        i = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        return;
      }
    }

    public c(int paramInt, byte[] paramArrayOfByte)
    {
      this.a = paramArrayOfByte;
      int i2;
      label20: int i3;
      label35: label47: byte[] arrayOfByte;
      if ((paramInt & 0x1) == 0)
      {
        i2 = i1;
        this.d = i2;
        if ((paramInt & 0x2) != 0)
          break label106;
        i3 = i1;
        this.e = i3;
        if ((paramInt & 0x4) == 0)
          break label112;
        this.f = i1;
        if ((paramInt & 0x8) != 0)
          break label117;
        arrayOfByte = h;
        label64: this.l = arrayOfByte;
        this.j = new byte[2];
        this.c = 0;
        if (!(this.e))
          break label125;
      }
      for (int i4 = 19; ; i4 = -1)
      {
        this.k = i4;
        return;
        i2 = 0;
        break label20:
        label106: i3 = 0;
        break label35:
        label112: i1 = 0;
        break label47:
        label117: arrayOfByte = i;
        label125: break label64:
      }
    }

    public boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      byte[] arrayOfByte1 = this.l;
      byte[] arrayOfByte2 = this.a;
      int i1 = this.k;
      int i2 = paramInt2 + paramInt1;
      int i3 = -1;
      int i5;
      label59: int i6;
      int i40;
      switch (this.c)
      {
      default:
        i5 = paramInt1;
        i6 = 0;
        if (i3 == -1)
          break label1235;
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i3 >> 18)];
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i3 >> 12)];
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i3 >> 6)];
        i6 = 4;
        arrayOfByte2[3] = arrayOfByte1[(i3 & 0x3F)];
        if (--i1 != 0)
          break label1235;
        if (!(this.f))
          break label1246;
        i40 = 5;
        arrayOfByte2[i6] = 13;
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        int i41 = i40 + 1;
        arrayOfByte2[i40] = 10;
        int i7 = 19;
        for (int i8 = i41; ; i8 = i6)
        {
          label174: int i38;
          if (i5 + 3 <= i2)
          {
            int i37 = (0xFF & paramArrayOfByte[i5]) << 16 | (0xFF & paramArrayOfByte[(i5 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i5 + 2)];
            arrayOfByte2[i8] = arrayOfByte1[(0x3F & i37 >> 18)];
            arrayOfByte2[(i8 + 1)] = arrayOfByte1[(0x3F & i37 >> 12)];
            arrayOfByte2[(i8 + 2)] = arrayOfByte1[(0x3F & i37 >> 6)];
            arrayOfByte2[(i8 + 3)] = arrayOfByte1[(i37 & 0x3F)];
            i5 += 3;
            i6 = i8 + 4;
            i1 = i7 - 1;
            if (i1 != 0)
              break label1235;
            if (!(this.f))
              break label1228;
            i38 = i6 + 1;
            arrayOfByte2[i6] = 13;
          }
          while (true)
          {
            int i39 = i38 + 1;
            arrayOfByte2[i38] = 10;
            i7 = 19;
            i8 = i39;
            break label174:
            i5 = paramInt1;
            break label59:
            if (paramInt1 + 2 <= i2);
            int i42 = (0xFF & this.j[0]) << 16;
            int i43 = paramInt1 + 1;
            int i44 = i42 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
            int i45 = i43 + 1;
            i3 = i44 | 0xFF & paramArrayOfByte[i43];
            this.c = 0;
            i5 = i45;
            break label59:
            if (paramInt1 + 1 <= i2);
            int i4 = (0xFF & this.j[0]) << 16 | (0xFF & this.j[1]) << 8;
            i5 = paramInt1 + 1;
            i3 = i4 | 0xFF & paramArrayOfByte[paramInt1];
            this.c = 0;
            break label59:
            label690: int i15;
            int i14;
            label770: int i18;
            label811: int i22;
            int i23;
            if (paramBoolean)
            {
              if (i5 - this.c == i2 - 1)
              {
                int i30;
                int i28;
                int i29;
                if (this.c > 0)
                {
                  byte[] arrayOfByte8 = this.j;
                  i30 = 1;
                  i28 = arrayOfByte8[0];
                  i29 = i5;
                }
                while (true)
                {
                  int i31 = (i28 & 0xFF) << 4;
                  this.c -= i30;
                  int i32 = i8 + 1;
                  arrayOfByte2[i8] = arrayOfByte1[(0x3F & i31 >> 6)];
                  int i33 = i32 + 1;
                  arrayOfByte2[i32] = arrayOfByte1[(i31 & 0x3F)];
                  if (this.d)
                  {
                    int i36 = i33 + 1;
                    arrayOfByte2[i33] = 61;
                    i33 = i36 + 1;
                    arrayOfByte2[i36] = 61;
                  }
                  if (this.e)
                  {
                    if (this.f)
                    {
                      int i35 = i33 + 1;
                      arrayOfByte2[i33] = 13;
                      i33 = i35;
                    }
                    int i34 = i33 + 1;
                    arrayOfByte2[i33] = 10;
                    i33 = i34;
                  }
                  i5 = i29;
                  i8 = i33;
                  if ((g) || (this.c == 0))
                    break label1069;
                  throw new AssertionError();
                  int i27 = i5 + 1;
                  i28 = paramArrayOfByte[i5];
                  i29 = i27;
                  i30 = 0;
                }
              }
              if (i5 - this.c == i2 - 2)
                if (this.c > 1)
                {
                  byte[] arrayOfByte7 = this.j;
                  i15 = 1;
                  i14 = arrayOfByte7[0];
                  int i16 = (i14 & 0xFF) << 10;
                  if (this.c <= 0)
                    break label995;
                  byte[] arrayOfByte6 = this.j;
                  int i26 = i15 + 1;
                  i18 = arrayOfByte6[i15];
                  i15 = i26;
                  int i19 = i16 | (i18 & 0xFF) << 2;
                  this.c -= i15;
                  int i20 = i8 + 1;
                  arrayOfByte2[i8] = arrayOfByte1[(0x3F & i19 >> 12)];
                  int i21 = i20 + 1;
                  arrayOfByte2[i20] = arrayOfByte1[(0x3F & i19 >> 6)];
                  i22 = i21 + 1;
                  arrayOfByte2[i21] = arrayOfByte1[(i19 & 0x3F)];
                  if (!(this.d))
                    break label1221;
                  i23 = i22 + 1;
                  arrayOfByte2[i22] = 61;
                }
            }
            while (true)
            {
              if (this.e)
              {
                if (this.f)
                {
                  int i25 = i23 + 1;
                  arrayOfByte2[i23] = 13;
                  i23 = i25;
                }
                int i24 = i23 + 1;
                arrayOfByte2[i23] = 10;
                i23 = i24;
              }
              i8 = i23;
              break label690:
              int i13 = i5 + 1;
              i14 = paramArrayOfByte[i5];
              i5 = i13;
              i15 = 0;
              break label770:
              label995: int i17 = i5 + 1;
              i18 = paramArrayOfByte[i5];
              i5 = i17;
              break label811:
              if ((this.e) && (i8 > 0) && (i7 != 19));
              int i12;
              if (this.f)
              {
                i12 = i8 + 1;
                arrayOfByte2[i8] = 13;
              }
              while (true)
              {
                i8 = i12 + 1;
                arrayOfByte2[i12] = 10;
                break label690:
                if ((!(g)) && (i5 != i2))
                {
                  label1069: throw new AssertionError();
                  if (i5 != i2 - 1)
                    break label1142;
                  byte[] arrayOfByte5 = this.j;
                  int i11 = this.c;
                  this.c = (i11 + 1);
                  arrayOfByte5[i11] = paramArrayOfByte[i5];
                }
                while (true)
                {
                  this.b = i8;
                  this.k = i7;
                  return true;
                  label1142: if (i5 != i2 - 2)
                    continue;
                  byte[] arrayOfByte3 = this.j;
                  int i9 = this.c;
                  this.c = (i9 + 1);
                  arrayOfByte3[i9] = paramArrayOfByte[i5];
                  byte[] arrayOfByte4 = this.j;
                  int i10 = this.c;
                  this.c = (i10 + 1);
                  arrayOfByte4[i10] = paramArrayOfByte[(i5 + 1)];
                }
                i12 = i8;
              }
              label1221: i23 = i22;
            }
            label1228: i38 = i6;
          }
          label1235: i7 = i1;
        }
        label1246: i40 = i6;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.google.ads.util.c
 * JD-Core Version:    0.5.3
 */