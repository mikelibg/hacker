package com.pad.android.xappad;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;

public class AdNotification extends BroadcastReceiver
{
  NotificationManager nm;

  // ERROR //
  public void onReceive(android.content.Context paramContext, android.content.Intent paramIntent)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 20	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   4: ldc 22
    //   6: invokevirtual 28	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_3
    //   10: new 30	com/pad/android/xappad/AdController
    //   13: dup
    //   14: aload_1
    //   15: aload_3
    //   16: invokespecial 33	com/pad/android/xappad/AdController:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   19: astore 4
    //   21: aload_1
    //   22: ldc 35
    //   24: iconst_2
    //   25: invokevirtual 41	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   28: new 43	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 45
    //   34: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_3
    //   38: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: ldc 58
    //   46: invokeinterface 63 3 0
    //   51: ldc 65
    //   53: invokevirtual 71	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   56: ifne +106 -> 162
    //   59: aload_1
    //   60: invokestatic 77	com/pad/android/xappad/AdWakeLock:acquire	(Landroid/content/Context;)V
    //   63: ldc 79
    //   65: new 43	java/lang/StringBuilder
    //   68: dup
    //   69: ldc 81
    //   71: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: aload_3
    //   75: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 87	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: aload_3
    //   85: ldc 89
    //   87: invokevirtual 71	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   90: istore 7
    //   92: iload 7
    //   94: ifne +16 -> 110
    //   97: ldc2_w 90
    //   100: invokestatic 97	java/lang/Thread:sleep	(J)V
    //   103: aload 4
    //   105: ldc 99
    //   107: invokevirtual 102	com/pad/android/xappad/AdController:loadNotificationOnRequest	(Ljava/lang/String;)V
    //   110: invokestatic 105	com/pad/android/xappad/AdWakeLock:release	()V
    //   113: return
    //   114: astore 6
    //   116: ldc 79
    //   118: aload 6
    //   120: invokestatic 109	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   123: ldc 79
    //   125: new 43	java/lang/StringBuilder
    //   128: dup
    //   129: ldc 111
    //   131: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   134: aload 6
    //   136: invokevirtual 114	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   139: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: invokevirtual 56	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: invokestatic 117	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: invokestatic 105	com/pad/android/xappad/AdWakeLock:release	()V
    //   151: goto -38 -> 113
    //   154: astore 5
    //   156: invokestatic 105	com/pad/android/xappad/AdWakeLock:release	()V
    //   159: aload 5
    //   161: athrow
    //   162: aload 4
    //   164: invokevirtual 120	com/pad/android/xappad/AdController:setPauseAlarm	()V
    //   167: goto -54 -> 113
    //   170: astore 8
    //   172: goto -69 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   63	92	114	java/lang/Exception
    //   103	110	114	java/lang/Exception
    //   63	92	154	finally
    //   97	103	154	finally
    //   103	110	154	finally
    //   116	148	154	finally
    //   97	103	170	java/lang/Exception
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.xappad.AdNotification
 * JD-Core Version:    0.5.3
 */