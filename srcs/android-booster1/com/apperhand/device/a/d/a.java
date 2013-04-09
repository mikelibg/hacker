package com.apperhand.device.a.d;

import java.io.UnsupportedEncodingException;

public class a
{
  static
  {
    if (!(a.class.desiredAssertionStatus()));
    for (int i = 1; ; i = 0)
    {
      a = i;
      return;
    }
  }

  public static String a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 1;
    while (true)
    {
      int j;
      c localc;
      int k;
      int l;
      int i1;
      try
      {
        j = paramArrayOfByte.length;
        localc = new c(paramInt, null);
        k = 4 * j / 3;
        if (localc.d)
        {
          if (j % 3 > 0)
            k += 4;
          if ((!(localc.e)) || (j <= 0))
            break label183;
          l = 1 + (j - 1) / 57;
          if (!(localc.f))
            break label190;
          i = 2;
          break label190:
          localc.a = new byte[i1];
          localc.a(paramArrayOfByte, 0, j, true);
          if ((a) || (localc.b == i1))
            break label164;
          throw new AssertionError();
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new AssertionError(localUnsupportedEncodingException);
      }
      switch (j % 3)
      {
      case 0:
        String str = new String(localc.a, "US-ASCII");
        return str;
        i1 = k;
        continue;
        i1 = k + i * l;
        break;
      default:
        break;
      case 1:
        label164: label183: label190: k += 2;
        break;
      case 2:
      }
      k += 3;
    }
  }

  public static byte[] a(String paramString, int paramInt)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i = arrayOfByte1.length;
    b localb = new b(paramInt, new byte[i * 3 / 4]);
    if (!(localb.a(arrayOfByte1, 0, i, true)))
      throw new IllegalArgumentException("bad base-64");
    if (localb.b == localb.a.length)
      return localb.a;
    byte[] arrayOfByte2 = new byte[localb.b];
    System.arraycopy(localb.a, 0, arrayOfByte2, 0, localb.b);
    return arrayOfByte2;
  }

  static abstract class a
  {
    public byte[] a;
    public int b;
  }

  static final class b extends a.a
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

    public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (this.e == 6)
        return false;
      int i = paramInt2 + paramInt1;
      int j = this.e;
      int k = this.f;
      int l = 0;
      byte[] arrayOfByte = this.a;
      int[] arrayOfInt = this.g;
      int i1 = j;
      int i2 = paramInt1;
      if (i2 < i)
      {
        if (i1 == 0)
        {
          while (i2 + 4 <= i)
          {
            label50: k = arrayOfInt[(0xFF & paramArrayOfByte[i2])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i2 + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i2 + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i2 + 3)])];
            if (k < 0)
              break;
            arrayOfByte[(l + 2)] = (byte)k;
            arrayOfByte[(l + 1)] = (byte)(k >> 8);
            arrayOfByte[l] = (byte)(k >> 16);
            l += 3;
            i2 += 4;
          }
          if (i2 >= i)
            break label567;
        }
        int i6 = i2 + 1;
        int i7 = arrayOfInt[(0xFF & paramArrayOfByte[i2])];
        switch (i1)
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
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    i2 = i6;
                    break label50:
                    if (i7 < 0)
                      continue;
                    ++i1;
                    k = i7;
                    i2 = i6;
                    break label50:
                  }
                  while (i7 == -1);
                  this.e = 6;
                  return false;
                  if (i7 < 0)
                    continue;
                  k = i7 | k << 6;
                  ++i1;
                  i2 = i6;
                  break label50:
                }
                while (i7 == -1);
                this.e = 6;
                return false;
                if (i7 >= 0)
                {
                  k = i7 | k << 6;
                  ++i1;
                  i2 = i6;
                }
                if (i7 != -2)
                  continue;
                int i8 = l + 1;
                arrayOfByte[l] = (byte)(k >> 4);
                i1 = 4;
                l = i8;
                i2 = i6;
                break label50:
              }
              while (i7 == -1);
              this.e = 6;
              return false;
              if (i7 >= 0)
              {
                k = i7 | k << 6;
                arrayOfByte[(l + 2)] = (byte)k;
                arrayOfByte[(l + 1)] = (byte)(k >> 8);
                arrayOfByte[l] = (byte)(k >> 16);
                l += 3;
                i2 = i6;
                i1 = 0;
              }
              if (i7 != -2)
                continue;
              arrayOfByte[(l + 1)] = (byte)(k >> 2);
              arrayOfByte[l] = (byte)(k >> 10);
              l += 2;
              i1 = 5;
              i2 = i6;
              break label50:
            }
            while (i7 == -1);
            this.e = 6;
            return false;
            if (i7 != -2)
              continue;
            ++i1;
            i2 = i6;
            break label50:
          }
          while (i7 == -1);
          this.e = 6;
          return false;
        }
        while (i7 == -1);
        this.e = 6;
        return false;
      }
      label567: int i3 = k;
      if (!(paramBoolean))
      {
        this.e = i1;
        this.f = i3;
        this.b = l;
        return true;
      }
      switch (i1)
      {
      case 0:
      default:
      case 1:
      case 2:
      case 3:
        while (true)
        {
          this.e = i1;
          this.b = l;
          return true;
          this.e = 6;
          return false;
          int i5 = l + 1;
          arrayOfByte[l] = (byte)(i3 >> 4);
          l = i5;
          continue;
          int i4 = l + 1;
          arrayOfByte[l] = (byte)(i3 >> 10);
          l = i4 + 1;
          arrayOfByte[i4] = (byte)(i3 >> 2);
        }
      case 4:
      }
      this.e = 6;
      return false;
    }
  }

  static final class c extends a.a
  {
    private static final byte[] h;
    private static final byte[] i;
    int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    private final byte[] j;
    private int k;
    private final byte[] l;

    static
    {
      if (!(a.class.desiredAssertionStatus()));
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

    public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      byte[] arrayOfByte1 = this.l;
      byte[] arrayOfByte2 = this.a;
      int i1 = this.k;
      int i2 = paramInt2 + paramInt1;
      int i6;
      int i4;
      label58: int i40;
      int i41;
      int i8;
      int i7;
      switch (this.c)
      {
      default:
        i6 = -1;
        i4 = paramInt1;
        if (i6 == -1)
          break label1250;
        arrayOfByte2[0] = arrayOfByte1[(0x3F & i6 >> 18)];
        arrayOfByte2[1] = arrayOfByte1[(0x3F & i6 >> 12)];
        arrayOfByte2[2] = arrayOfByte1[(0x3F & i6 >> 6)];
        i40 = 4;
        arrayOfByte2[3] = arrayOfByte1[(i6 & 0x3F)];
        i41 = i1 - 1;
        if (i41 != 0)
          break label1239;
        if (this.f)
        {
          i40 = 5;
          arrayOfByte2[4] = 13;
        }
        i8 = i40 + 1;
        arrayOfByte2[i40] = 10;
        i7 = 19;
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        label168: int i37;
        int i38;
        int i39;
        if (i4 + 3 <= i2)
        {
          int i36 = (0xFF & paramArrayOfByte[i4]) << 16 | (0xFF & paramArrayOfByte[(i4 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i4 + 2)];
          arrayOfByte2[i8] = arrayOfByte1[(0x3F & i36 >> 18)];
          arrayOfByte2[(i8 + 1)] = arrayOfByte1[(0x3F & i36 >> 12)];
          arrayOfByte2[(i8 + 2)] = arrayOfByte1[(0x3F & i36 >> 6)];
          arrayOfByte2[(i8 + 3)] = arrayOfByte1[(i36 & 0x3F)];
          i4 += 3;
          i37 = i8 + 4;
          i38 = i7 - 1;
          if (i38 != 0)
            break label1228;
          if (!(this.f))
            break label1221;
          i39 = i37 + 1;
          arrayOfByte2[i37] = 13;
        }
        while (true)
        {
          i8 = i39 + 1;
          arrayOfByte2[i39] = 10;
          i7 = 19;
          break label168:
          i6 = -1;
          i4 = paramInt1;
          break label58:
          if (paramInt1 + 2 <= i2);
          int i42 = (0xFF & this.j[0]) << 16;
          int i43 = paramInt1 + 1;
          int i44 = i42 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
          int i45 = i43 + 1;
          int i46 = i44 | 0xFF & paramArrayOfByte[i43];
          this.c = 0;
          i6 = i46;
          i4 = i45;
          break label58:
          if (paramInt1 + 1 <= i2);
          int i3 = (0xFF & this.j[0]) << 16 | (0xFF & this.j[1]) << 8;
          i4 = paramInt1 + 1;
          int i5 = i3 | 0xFF & paramArrayOfByte[paramInt1];
          this.c = 0;
          i6 = i5;
          break label58:
          label683: int i15;
          int i14;
          label763: int i18;
          label804: int i22;
          int i23;
          if (paramBoolean)
          {
            if (i4 - this.c == i2 - 1)
            {
              int i29;
              int i28;
              if (this.c > 0)
              {
                byte[] arrayOfByte8 = this.j;
                i29 = 1;
                i28 = arrayOfByte8[0];
              }
              while (true)
              {
                int i30 = (i28 & 0xFF) << 4;
                this.c -= i29;
                int i31 = i8 + 1;
                arrayOfByte2[i8] = arrayOfByte1[(0x3F & i30 >> 6)];
                int i32 = i31 + 1;
                arrayOfByte2[i31] = arrayOfByte1[(i30 & 0x3F)];
                if (this.d)
                {
                  int i35 = i32 + 1;
                  arrayOfByte2[i32] = 61;
                  i32 = i35 + 1;
                  arrayOfByte2[i35] = 61;
                }
                if (this.e)
                {
                  if (this.f)
                  {
                    int i34 = i32 + 1;
                    arrayOfByte2[i32] = 13;
                    i32 = i34;
                  }
                  int i33 = i32 + 1;
                  arrayOfByte2[i32] = 10;
                  i32 = i33;
                }
                i8 = i32;
                if ((g) || (this.c == 0))
                  break label1062;
                throw new AssertionError();
                int i27 = i4 + 1;
                i28 = paramArrayOfByte[i4];
                i4 = i27;
                i29 = 0;
              }
            }
            if (i4 - this.c == i2 - 2)
              if (this.c > 1)
              {
                byte[] arrayOfByte7 = this.j;
                i15 = 1;
                i14 = arrayOfByte7[0];
                int i16 = (i14 & 0xFF) << 10;
                if (this.c <= 0)
                  break label988;
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
                  break label1214;
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
            break label683:
            int i13 = i4 + 1;
            i14 = paramArrayOfByte[i4];
            i4 = i13;
            i15 = 0;
            break label763:
            label988: int i17 = i4 + 1;
            i18 = paramArrayOfByte[i4];
            i4 = i17;
            break label804:
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
              break label683:
              if ((!(g)) && (i4 != i2))
              {
                label1062: throw new AssertionError();
                if (i4 != i2 - 1)
                  break label1135;
                byte[] arrayOfByte5 = this.j;
                int i11 = this.c;
                this.c = (i11 + 1);
                arrayOfByte5[i11] = paramArrayOfByte[i4];
              }
              while (true)
              {
                this.b = i8;
                this.k = i7;
                return true;
                label1135: if (i4 != i2 - 2)
                  continue;
                byte[] arrayOfByte3 = this.j;
                int i9 = this.c;
                this.c = (i9 + 1);
                arrayOfByte3[i9] = paramArrayOfByte[i4];
                byte[] arrayOfByte4 = this.j;
                int i10 = this.c;
                this.c = (i10 + 1);
                arrayOfByte4[i10] = paramArrayOfByte[(i4 + 1)];
              }
              i12 = i8;
            }
            label1214: i23 = i22;
          }
          label1221: i39 = i37;
        }
        label1228: i7 = i38;
        i8 = i37;
        continue;
        label1239: i7 = i41;
        i8 = i40;
        continue;
        label1250: i7 = i1;
        i8 = 0;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.apperhand.device.a.d.a
 * JD-Core Version:    0.5.3
 */