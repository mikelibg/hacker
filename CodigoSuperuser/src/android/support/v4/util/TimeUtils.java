package android.support.v4.util;

import java.io.PrintWriter;

public class TimeUtils
{
  public static final int HUNDRED_DAY_FIELD_LEN = 19;
  private static final int SECONDS_PER_DAY = 86400;
  private static final int SECONDS_PER_HOUR = 3600;
  private static final int SECONDS_PER_MINUTE = 60;
  private static char[] sFormatStr;
  private static final Object sFormatSync = new Object();

  static
  {
    sFormatStr = new char[24];
  }

  private static int accumField(int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if ((paramInt1 > 99) || ((paramBoolean) && (paramInt3 >= 3)))
      return (paramInt2 + 3);
    if ((paramInt1 > 9) || ((paramBoolean) && (paramInt3 >= 2)))
      return (paramInt2 + 2);
    if ((paramBoolean) || (paramInt1 > 0))
      return (paramInt2 + 1);
    return 0;
  }

  public static void formatDuration(long paramLong1, long paramLong2, PrintWriter paramPrintWriter)
  {
    if (paramLong1 == 0L)
    {
      paramPrintWriter.print("--");
      return;
    }
    formatDuration(paramLong1 - paramLong2, paramPrintWriter, 0);
  }

  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter)
  {
    formatDuration(paramLong, paramPrintWriter, 0);
  }

  public static void formatDuration(long paramLong, PrintWriter paramPrintWriter, int paramInt)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked(paramLong, paramInt);
      paramPrintWriter.print(new String(sFormatStr, 0, i));
      return;
    }
  }

  public static void formatDuration(long paramLong, StringBuilder paramStringBuilder)
  {
    synchronized (sFormatSync)
    {
      int i = formatDurationLocked(paramLong, 0);
      paramStringBuilder.append(sFormatStr, 0, i);
      return;
    }
  }

  private static int formatDurationLocked(long paramLong, int paramInt)
  {
    if (sFormatStr.length < paramInt)
      sFormatStr = new char[paramInt];
    char[] arrayOfChar = sFormatStr;
    if (paramLong == 0L)
    {
      int i24 = paramInt - 1;
      while (true)
      {
        if (i24 >= 0)
        {
          arrayOfChar[0] = '0';
          return (0 + 1);
        }
        arrayOfChar[0] = ' ';
      }
    }
    int i;
    label61: int j;
    int i6;
    boolean bool4;
    label202: boolean bool5;
    label224: boolean bool6;
    label246: int i22;
    label268: int i23;
    label284: int i8;
    label309: boolean bool1;
    label333: int i10;
    label341: boolean bool2;
    label367: int i12;
    label375: boolean bool3;
    label401: int i14;
    label409: int i15;
    if (paramLong > 0L)
    {
      i = 43;
      j = (int)(paramLong % 1000L);
      int k = (int)Math.floor(paramLong / 1000L);
      int l = k;
      int i1 = 0;
      if (l > 86400)
      {
        i1 = k / 86400;
        k -= 86400 * i1;
      }
      int i2 = k;
      int i3 = 0;
      if (i2 > 3600)
      {
        i3 = k / 3600;
        k -= i3 * 3600;
      }
      int i4 = k;
      int i5 = 0;
      if (i4 > 60)
      {
        i5 = k / 60;
        k -= i5 * 60;
      }
      i6 = 0;
      if (paramInt != 0)
      {
        int i18 = accumField(i1, 1, false, 0);
        if (i18 <= 0)
          break label476;
        bool4 = true;
        int i19 = i18 + accumField(i3, 1, bool4, 2);
        if (i19 <= 0)
          break label482;
        bool5 = true;
        int i20 = i19 + accumField(i5, 1, bool5, 2);
        if (i20 <= 0)
          break label488;
        bool6 = true;
        int i21 = i20 + accumField(k, 1, bool6, 2);
        if (i21 <= 0)
          break label494;
        i22 = 3;
        i23 = i21 + 1 + accumField(j, 2, true, i22);
        if (i23 < paramInt)
          break label500;
      }
      arrayOfChar[i6] = i;
      int i7 = i6 + 1;
      if (paramInt == 0)
        break label515;
      i8 = 1;
      int i9 = printField(arrayOfChar, i1, 'd', i7, false, 0);
      if (i9 == i7)
        break label521;
      bool1 = true;
      if (i8 == 0)
        break label527;
      i10 = 2;
      int i11 = printField(arrayOfChar, i3, 'h', i9, bool1, i10);
      if (i11 == i7)
        break label533;
      bool2 = true;
      if (i8 == 0)
        break label539;
      i12 = 2;
      int i13 = printField(arrayOfChar, i5, 'm', i11, bool2, i12);
      if (i13 == i7)
        break label545;
      bool3 = true;
      if (i8 == 0)
        break label551;
      i14 = 2;
      i15 = printField(arrayOfChar, k, 's', i13, bool3, i14);
      if ((i8 == 0) || (i15 == i7))
        break label557;
    }
    for (int i16 = 3; ; i16 = 0)
    {
      int i17 = printField(arrayOfChar, j, 'm', i15, true, i16);
      arrayOfChar[i17] = 's';
      return (i17 + 1);
      i = 45;
      paramLong = -paramLong;
      break label61:
      label476: bool4 = false;
      break label202:
      label482: bool5 = false;
      break label224:
      label488: bool6 = false;
      break label246:
      label494: i22 = 0;
      break label268:
      label500: arrayOfChar[i6] = ' ';
      ++i6;
      ++i23;
      break label284:
      label515: i8 = 0;
      break label309:
      label521: bool1 = false;
      break label333:
      label527: i10 = 0;
      break label341:
      label533: bool2 = false;
      break label367:
      label539: i12 = 0;
      break label375:
      label545: bool3 = false;
      break label401:
      label551: i14 = 0;
      label557: break label409:
    }
  }

  private static int printField(char[] paramArrayOfChar, int paramInt1, char paramChar, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if ((paramBoolean) || (paramInt1 > 0))
    {
      int i = paramInt2;
      if (((paramBoolean) && (paramInt3 >= 3)) || (paramInt1 > 99))
      {
        int l = paramInt1 / 100;
        paramArrayOfChar[paramInt2] = (char)(l + 48);
        ++paramInt2;
        paramInt1 -= l * 100;
      }
      if (((paramBoolean) && (paramInt3 >= 2)) || (paramInt1 > 9) || (i != paramInt2))
      {
        int j = paramInt1 / 10;
        paramArrayOfChar[paramInt2] = (char)(j + 48);
        ++paramInt2;
        paramInt1 -= j * 10;
      }
      paramArrayOfChar[paramInt2] = (char)(paramInt1 + 48);
      int k = paramInt2 + 1;
      paramArrayOfChar[k] = paramChar;
      paramInt2 = k + 1;
    }
    return paramInt2;
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.util.TimeUtils
 * JD-Core Version:    0.5.3
 */