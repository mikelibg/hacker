package com.apperhand.device.android.a;

import android.content.Context;

public final class d
  implements com.apperhand.device.a.a.d
{
  private Context a;

  public d(Context paramContext)
  {
    this.a = paramContext;
  }

  // ERROR //
  public final boolean a(com.apperhand.common.dto.Homepage paramHomepage)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: getfield 15	com/apperhand/device/android/a/d:a	Landroid/content/Context;
    //   6: pop
    //   7: invokestatic 23	com/apperhand/device/android/a/a/a$a:a	()Ljava/util/List;
    //   10: astore 5
    //   12: iconst_0
    //   13: istore_2
    //   14: aload 5
    //   16: ifnull +77 -> 93
    //   19: aload 5
    //   21: invokeinterface 29 1 0
    //   26: istore 6
    //   28: iconst_0
    //   29: istore_2
    //   30: iload 6
    //   32: ifle +61 -> 93
    //   35: aload 5
    //   37: invokeinterface 33 1 0
    //   42: astore 7
    //   44: aload 7
    //   46: invokeinterface 39 1 0
    //   51: ifeq +42 -> 93
    //   54: aload 7
    //   56: invokeinterface 43 1 0
    //   61: checkcast 45	com/apperhand/device/android/a/a/a
    //   64: astore 8
    //   66: aload 8
    //   68: aload_0
    //   69: getfield 15	com/apperhand/device/android/a/d:a	Landroid/content/Context;
    //   72: aload_1
    //   73: invokevirtual 48	com/apperhand/device/android/a/a/a:a	(Landroid/content/Context;Lcom/apperhand/common/dto/Homepage;)Z
    //   76: istore 10
    //   78: iload 10
    //   80: ifeq +20 -> 100
    //   83: iconst_1
    //   84: istore 11
    //   86: iload 11
    //   88: istore_2
    //   89: goto -45 -> 44
    //   92: astore_3
    //   93: iload_2
    //   94: ireturn
    //   95: astore 9
    //   97: goto -53 -> 44
    //   100: iload_2
    //   101: istore 11
    //   103: goto -17 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   2	12	92	java/lang/Throwable
    //   19	28	92	java/lang/Throwable
    //   35	44	92	java/lang/Throwable
    //   44	66	92	java/lang/Throwable
    //   66	78	95	java/lang/Throwable
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.d
 * JD-Core Version:    0.5.3
 */