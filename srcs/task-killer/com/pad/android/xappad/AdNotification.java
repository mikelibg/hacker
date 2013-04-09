package com.pad.android.xappad;

import android.content.BroadcastReceiver;

public class AdNotification extends BroadcastReceiver
{
  // ERROR //
  public void onReceive(android.content.Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 18	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   4: ldc 20
    //   6: invokevirtual 26	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_3
    //   10: new 28	com/pad/android/xappad/AdController
    //   13: dup
    //   14: aload_1
    //   15: aload_3
    //   16: invokespecial 31	com/pad/android/xappad/AdController:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   19: astore 4
    //   21: aload_1
    //   22: ldc 33
    //   24: iconst_2
    //   25: invokevirtual 39	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   28: new 41	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 43
    //   34: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_3
    //   38: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: ldc 56
    //   46: invokeinterface 61 3 0
    //   51: ldc 63
    //   53: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   56: ifne +104 -> 160
    //   59: aload_1
    //   60: invokestatic 75	com/pad/android/xappad/AdWakeLock:acquire	(Landroid/content/Context;)V
    //   63: ldc 77
    //   65: new 41	java/lang/StringBuilder
    //   68: dup
    //   69: ldc 79
    //   71: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: aload_3
    //   75: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 85	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: aload_3
    //   85: ldc 87
    //   87: invokevirtual 69	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   90: istore 7
    //   92: iload 7
    //   94: ifne +16 -> 110
    //   97: ldc2_w 88
    //   100: invokestatic 95	java/lang/Thread:sleep	(J)V
    //   103: aload 4
    //   105: ldc 97
    //   107: invokevirtual 100	com/pad/android/xappad/AdController:loadNotificationOnRequest	(Ljava/lang/String;)V
    //   110: invokestatic 103	com/pad/android/xappad/AdWakeLock:release	()V
    //   113: return
    //   114: astore 6
    //   116: ldc 77
    //   118: aload 6
    //   120: invokestatic 107	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   123: ldc 77
    //   125: new 41	java/lang/StringBuilder
    //   128: dup
    //   129: ldc 109
    //   131: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload 6
    //   136: invokevirtual 112	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   139: invokevirtual 50	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 54	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 115	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: invokestatic 103	com/pad/android/xappad/AdWakeLock:release	()V
    //   151: return
    //   152: astore 5
    //   154: invokestatic 103	com/pad/android/xappad/AdWakeLock:release	()V
    //   157: aload 5
    //   159: athrow
    //   160: aload 4
    //   162: invokevirtual 118	com/pad/android/xappad/AdController:setPauseAlarm	()V
    //   165: return
    //   166: astore 8
    //   168: goto -65 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   63	92	114	java/lang/Exception
    //   103	110	114	java/lang/Exception
    //   63	92	152	finally
    //   97	103	152	finally
    //   103	110	152	finally
    //   116	148	152	finally
    //   97	103	166	java/lang/Exception
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.xappad.AdNotification
 * JD-Core Version:    0.5.3
 */