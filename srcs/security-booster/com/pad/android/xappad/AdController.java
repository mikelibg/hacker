package com.pad.android.xappad;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import android.widget.RemoteViews;
import com.pad.android.listener.AdNotificationListener;
import com.pad.android.listener.AdOptinListener;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdOptinRequest;
import java.util.Calendar;
import org.json.JSONObject;

public class AdController
{
  public static final String LB_LOG = "LBAdController";
  public static final String SDK_LEVEL = "00a";
  public static final String SDK_VERSION = "4";
  private AlarmManager a;
  private Context b;
  private String c;
  private String d;
  private boolean e;
  private AdNotificationListener f;
  private JSONObject g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private PendingIntent l;

  public AdController()
  {
    this.e = false;
    this.g = null;
    this.h = false;
    this.i = false;
    this.j = false;
    this.k = false;
  }

  public AdController(Context paramContext, String paramString)
  {
    this.e = false;
    this.g = null;
    this.h = false;
    this.i = false;
    this.j = false;
    this.k = false;
    this.b = paramContext;
    this.c = paramString;
  }

  public AdController(Context paramContext, String paramString, AdNotificationListener paramAdNotificationListener)
  {
    this(paramContext, paramString);
    this.f = paramAdNotificationListener;
  }

  private void a()
  {
    if (this.g == null)
    {
      AdLog.e("LBAdController", "Notification will not be loaded - no internet connection");
      return;
    }
    try
    {
      if (this.g.getString("show").equals("1"));
      c();
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  private boolean a(int paramInt, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, NotificationManager paramNotificationManager, PendingIntent paramPendingIntent, RemoteViews paramRemoteViews)
  {
    long l1 = System.currentTimeMillis();
    try
    {
      Notification localNotification = new Notification(paramInt, paramCharSequence1, l1);
      localNotification.flags = (0x10 | localNotification.flags);
      if (paramRemoteViews != null)
      {
        localNotification.contentIntent = paramPendingIntent;
        localNotification.contentView = paramRemoteViews;
        paramNotificationManager.notify(1001, localNotification);
        return true;
      }
      localNotification.setLatestEventInfo(this.b, paramCharSequence2, paramCharSequence3, paramPendingIntent);
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private void b()
  {
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    long l1 = Integer.valueOf(localSharedPreferences.getString("SD_ALARM_ATTEMPTED_" + this.c, "0")).intValue();
    long l2 = System.currentTimeMillis();
    long l3 = 10000L + l2;
    long l4;
    if (l1 > 25L)
    {
      long l6 = localSharedPreferences.getLong("SD_ALARM_INTERVAL_" + this.c, 0L);
      AdLog.i("LBAdController", "No internet, already tried 5 times, set it to timer " + l6 + "s");
      AdLog.i("LBAdController", "Times attempted = " + l1);
      long l7 = l2 + l6 * 1000L;
      localEditor.putLong("SD_ALARM_TIME_" + this.c, l7);
      localEditor.putString("SD_ALARM_ATTEMPTED_" + this.c, "0");
      localEditor.commit();
      l4 = l7;
    }
    while (true)
    {
      this.a = ((AlarmManager)this.b.getSystemService("alarm"));
      Intent localIntent = new Intent(this.b, AdNotification.class);
      localIntent.putExtra("sectionid", this.c);
      this.l = PendingIntent.getBroadcast(this.b, 0, localIntent, 134217728);
      try
      {
        this.a.set(0, l4, this.l);
        return;
        if ((l1 % 5L == 0L) && (l1 > 0L))
        {
          long l5 = 600000L + l2;
          AdLog.i("LBAdController", "No internet, retry alarm in 10 mins");
          localEditor.putString("SD_ALARM_ATTEMPTED_" + this.c, l1 + 1L);
          localEditor.commit();
          l4 = l5;
        }
        AdLog.i("LBAdController", "No internet, retry alarm in 10s");
        localEditor.putString("SD_ALARM_ATTEMPTED_" + this.c, l1 + 1L);
        localEditor.commit();
        l4 = l3;
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
      }
    }
  }

  private void c()
  {
    AdLog.i("LBAdController", "setAlarm called");
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if (this.g.length() > 1)
      AdLog.i("LBAdController", "internet connection found....initialize alarm from settings - Result Length=" + this.g.length());
    try
    {
      int i1 = Integer.valueOf(localSharedPreferences.getString("SD_ITERATION_COUNTER_" + this.c, "0")).intValue();
      int i2;
      Calendar localCalendar1;
      long l1;
      try
      {
        int i4 = Integer.valueOf(this.g.getString("notificationcookie")).intValue();
        i2 = i4;
        AdLog.d("LBAdController", "Values: ck=" + i2 + ", ic=" + i1 + ", nLT=" + this.d);
        this.a = ((AlarmManager)this.b.getSystemService("alarm"));
        Intent localIntent = new Intent(this.b.getApplicationContext(), AdNotification.class);
        localIntent.putExtra("sectionid", this.c);
        this.l = PendingIntent.getBroadcast(this.b.getApplicationContext(), 0, localIntent, 134217728);
        if ((i2 == 1) || ((i2 == 0) && (i1 == 0)) || (this.d.equals("Alarm")))
        {
          AdLog.i("LBAdController", "alarm will be initialized - ck is " + i2 + ", ic is " + i1 + ", nLT is " + this.d);
          localCalendar1 = Calendar.getInstance();
          l1 = System.currentTimeMillis();
        }
      }
      catch (Exception localException2)
      {
        try
        {
          int i3 = Integer.parseInt(this.g.getString("notificationstart"));
          localCalendar1.add(13, i3);
          AdLog.d("LBAdController", "Alarm initialized - Scheduled at " + i3 + ", current time = " + l1);
          AdLog.d("LBAdController", "----------------------------------------");
          this.a.set(0, localCalendar1.getTimeInMillis(), this.l);
          localEditor.putLong("SD_ALARM_TIME_" + this.c, l1);
          localEditor.putLong("SD_WAKE_TIME_" + this.c, localCalendar1.getTimeInMillis());
          localEditor.putLong("SD_ALARM_INTERVAL_" + this.c, i3);
          localEditor.commit();
          return;
          localException2 = localException2;
          i2 = 0;
        }
        catch (Exception localException3)
        {
          AdLog.e("LBAdController", "Error caused while setting Alarm (if case): " + localException3.getMessage());
          AdLog.printStackTrace("LBAdController", localException3);
          return;
        }
      }
      long l2 = localSharedPreferences.getLong("SD_WAKE_TIME_" + this.c, 0L);
      Calendar localCalendar2 = Calendar.getInstance();
      long l3 = System.currentTimeMillis();
      try
      {
        localCalendar2.setTimeInMillis(l2);
        AdLog.d("LBAdController", "Alarm reset - Scheduled at " + l2 + ", current time = " + l3);
        AdLog.d("LBAdController", "----------------------------------------");
        this.a.set(0, localCalendar2.getTimeInMillis(), this.l);
        localEditor.putLong("SD_ALARM_TIME_" + this.c, l3);
        localEditor.putLong("SD_WAKE_TIME_" + this.c, l2);
        localEditor.commit();
        return;
      }
      catch (Exception localException4)
      {
        AdLog.e("LBAdController", "Error caused while setting Alarm (else case): " + localException4.getMessage());
        AdLog.printStackTrace("LBAdController", localException4);
        return;
      }
      b();
      return;
    }
    catch (Exception localException1)
    {
    }
  }

  // ERROR //
  private void d()
  {
    // Byte code:
    //   0: ldc 8
    //   2: ldc_w 336
    //   5: invokestatic 190	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   12: ifnonnull +11 -> 23
    //   15: ldc 8
    //   17: ldc 63
    //   19: invokestatic 68	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   22: return
    //   23: aload_0
    //   24: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   27: ldc 70
    //   29: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   32: ldc 78
    //   34: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   37: ifeq +980 -> 1017
    //   40: ldc 8
    //   42: ldc_w 338
    //   45: invokestatic 190	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aload_0
    //   49: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   52: ldc_w 340
    //   55: invokevirtual 216	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   58: checkcast 115	android/app/NotificationManager
    //   61: astore 6
    //   63: iconst_5
    //   64: newarray int
    //   66: astore 7
    //   68: aload 7
    //   70: iconst_0
    //   71: ldc_w 341
    //   74: iastore
    //   75: aload 7
    //   77: iconst_1
    //   78: ldc_w 342
    //   81: iastore
    //   82: aload 7
    //   84: iconst_2
    //   85: ldc_w 343
    //   88: iastore
    //   89: aload 7
    //   91: iconst_3
    //   92: ldc_w 344
    //   95: iastore
    //   96: aload 7
    //   98: iconst_4
    //   99: ldc_w 345
    //   102: iastore
    //   103: aload_0
    //   104: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   107: ldc_w 347
    //   110: invokevirtual 350	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   113: istore 76
    //   115: aload 7
    //   117: iload 76
    //   119: iaload
    //   120: istore 10
    //   122: aload_0
    //   123: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   126: ldc_w 352
    //   129: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   132: astore 11
    //   134: ldc_w 354
    //   137: astore 12
    //   139: aload_0
    //   140: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   143: ldc_w 356
    //   146: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   149: astore 75
    //   151: aload 75
    //   153: astore 12
    //   155: aload_0
    //   156: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   159: ldc_w 352
    //   162: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   165: astore 14
    //   167: aload_0
    //   168: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   171: ldc_w 358
    //   174: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   177: astore 15
    //   179: aload_0
    //   180: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   183: ldc_w 360
    //   186: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   189: astore 73
    //   191: aload 73
    //   193: ldc_w 354
    //   196: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   199: ifne +957 -> 1156
    //   202: aload 73
    //   204: ldc_w 352
    //   207: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   210: ifeq +1394 -> 1604
    //   213: aload_0
    //   214: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   217: aload 73
    //   219: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   222: astore 74
    //   224: aload 74
    //   226: astore 17
    //   228: new 143	java/lang/StringBuilder
    //   231: dup
    //   232: aload_0
    //   233: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   236: invokevirtual 363	android/content/Context:getPackageName	()Ljava/lang/String;
    //   239: invokestatic 366	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   242: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   245: ldc_w 368
    //   248: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokestatic 374	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   257: astore 71
    //   259: aload 71
    //   261: ldc_w 376
    //   264: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   267: aload 71
    //   269: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   272: istore 72
    //   274: iload 72
    //   276: istore 10
    //   278: aload_0
    //   279: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   282: ldc_w 387
    //   285: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   288: astore 70
    //   290: aload 70
    //   292: astore 20
    //   294: new 222	android/content/Intent
    //   297: dup
    //   298: ldc_w 389
    //   301: aload_0
    //   302: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   305: ldc_w 391
    //   308: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   311: invokestatic 397	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   314: invokespecial 400	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   317: astore 21
    //   319: aload_0
    //   320: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   323: iconst_0
    //   324: aload 21
    //   326: iconst_0
    //   327: invokestatic 403	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   330: astore 22
    //   332: iconst_m1
    //   333: istore 23
    //   335: iconst_m1
    //   336: istore 24
    //   338: iconst_m1
    //   339: istore 25
    //   341: new 143	java/lang/StringBuilder
    //   344: dup
    //   345: aload_0
    //   346: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   349: invokevirtual 363	android/content/Context:getPackageName	()Ljava/lang/String;
    //   352: invokestatic 366	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   355: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   358: ldc_w 405
    //   361: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   367: invokestatic 374	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   370: astore 67
    //   372: aload 67
    //   374: ldc_w 407
    //   377: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   380: aload 67
    //   382: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   385: istore 23
    //   387: new 143	java/lang/StringBuilder
    //   390: dup
    //   391: aload_0
    //   392: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   395: invokevirtual 363	android/content/Context:getPackageName	()Ljava/lang/String;
    //   398: invokestatic 366	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   401: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   404: ldc_w 409
    //   407: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   413: invokestatic 374	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   416: astore 68
    //   418: aload 68
    //   420: ldc_w 411
    //   423: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   426: aload 68
    //   428: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   431: istore 24
    //   433: aload 68
    //   435: ldc_w 413
    //   438: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   441: aload 68
    //   443: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   446: istore 25
    //   448: aload 68
    //   450: ldc_w 415
    //   453: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   456: aload 68
    //   458: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   461: istore 69
    //   463: iload 23
    //   465: istore 27
    //   467: iload 25
    //   469: istore 28
    //   471: iload 69
    //   473: istore 29
    //   475: iload 24
    //   477: istore 30
    //   479: aload 20
    //   481: ldc_w 417
    //   484: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   487: istore 31
    //   489: iload 31
    //   491: ifeq +826 -> 1317
    //   494: iload 27
    //   496: iconst_m1
    //   497: if_icmpeq +820 -> 1317
    //   500: iload 30
    //   502: iconst_m1
    //   503: if_icmpeq +814 -> 1317
    //   506: iload 29
    //   508: iconst_m1
    //   509: if_icmpeq +808 -> 1317
    //   512: new 143	java/lang/StringBuilder
    //   515: dup
    //   516: aload_0
    //   517: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   520: invokevirtual 363	android/content/Context:getPackageName	()Ljava/lang/String;
    //   523: invokestatic 366	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   526: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   529: ldc_w 409
    //   532: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   535: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   538: invokestatic 374	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   541: astore 54
    //   543: aload 54
    //   545: ldc_w 419
    //   548: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   551: aload 54
    //   553: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   556: istore 55
    //   558: aload 54
    //   560: ldc_w 421
    //   563: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   566: aload 54
    //   568: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   571: istore 56
    //   573: aload 54
    //   575: ldc_w 423
    //   578: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   581: aload 54
    //   583: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   586: istore 57
    //   588: aload 54
    //   590: ldc_w 425
    //   593: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   596: aload 54
    //   598: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   601: istore 58
    //   603: iload 29
    //   605: iconst_m1
    //   606: if_icmpeq +661 -> 1267
    //   609: iload 55
    //   611: iconst_m1
    //   612: if_icmpeq +655 -> 1267
    //   615: iload 56
    //   617: iconst_m1
    //   618: if_icmpeq +649 -> 1267
    //   621: iload 57
    //   623: iconst_m1
    //   624: if_icmpeq +643 -> 1267
    //   627: iload 58
    //   629: iconst_m1
    //   630: if_icmpeq +637 -> 1267
    //   633: new 427	android/widget/RemoteViews
    //   636: dup
    //   637: aload_0
    //   638: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   641: invokevirtual 363	android/content/Context:getPackageName	()Ljava/lang/String;
    //   644: iload 27
    //   646: invokespecial 430	android/widget/RemoteViews:<init>	(Ljava/lang/String;I)V
    //   649: astore 60
    //   651: aload 60
    //   653: iload 30
    //   655: ldc_w 432
    //   658: aload_0
    //   659: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   662: ldc_w 434
    //   665: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   668: invokestatic 439	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   671: invokevirtual 443	android/widget/RemoteViews:setInt	(ILjava/lang/String;I)V
    //   674: aload 60
    //   676: iload 55
    //   678: aload_0
    //   679: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   682: ldc_w 445
    //   685: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   688: invokevirtual 449	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   691: aload 60
    //   693: iload 55
    //   695: aload_0
    //   696: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   699: ldc_w 451
    //   702: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   705: invokestatic 439	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   708: invokevirtual 454	android/widget/RemoteViews:setTextColor	(II)V
    //   711: aload 60
    //   713: iload 56
    //   715: aload_0
    //   716: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   719: ldc_w 456
    //   722: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   725: invokevirtual 449	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   728: aload 60
    //   730: iload 56
    //   732: aload_0
    //   733: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   736: ldc_w 458
    //   739: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   742: invokestatic 439	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   745: invokevirtual 454	android/widget/RemoteViews:setTextColor	(II)V
    //   748: aload 60
    //   750: iload 57
    //   752: aload_0
    //   753: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   756: ldc_w 460
    //   759: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   762: invokevirtual 449	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   765: aload 60
    //   767: iload 57
    //   769: aload_0
    //   770: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   773: ldc_w 462
    //   776: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   779: invokestatic 439	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   782: invokevirtual 454	android/widget/RemoteViews:setTextColor	(II)V
    //   785: aload 60
    //   787: iload 58
    //   789: aload_0
    //   790: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   793: ldc_w 464
    //   796: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   799: invokevirtual 449	android/widget/RemoteViews:setTextViewText	(ILjava/lang/CharSequence;)V
    //   802: aload 60
    //   804: iload 58
    //   806: aload_0
    //   807: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   810: ldc_w 466
    //   813: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   816: invokestatic 439	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   819: invokevirtual 454	android/widget/RemoteViews:setTextColor	(II)V
    //   822: iload 28
    //   824: iconst_m1
    //   825: if_icmpeq +11 -> 836
    //   828: aload 60
    //   830: iload 28
    //   832: iconst_4
    //   833: invokevirtual 469	android/widget/RemoteViews:setViewVisibility	(II)V
    //   836: aload_0
    //   837: iload 10
    //   839: aload 11
    //   841: aload 17
    //   843: aload 12
    //   845: aload 6
    //   847: aload 22
    //   849: aload 60
    //   851: invokespecial 126	com/pad/android/xappad/AdController:a	(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    //   854: istore 66
    //   856: iload 66
    //   858: istore 33
    //   860: iload 33
    //   862: ifeq +155 -> 1017
    //   865: aload_0
    //   866: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   869: ldc 129
    //   871: iconst_2
    //   872: invokevirtual 135	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   875: astore 34
    //   877: aload 34
    //   879: invokeinterface 141 1 0
    //   884: astore 35
    //   886: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   889: lstore 36
    //   891: aload 34
    //   893: new 143	java/lang/StringBuilder
    //   896: dup
    //   897: ldc_w 471
    //   900: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   903: aload_0
    //   904: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   907: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   910: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   913: iconst_0
    //   914: invokeinterface 474 3 0
    //   919: istore 38
    //   921: aload 35
    //   923: new 143	java/lang/StringBuilder
    //   926: dup
    //   927: ldc_w 476
    //   930: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   933: aload_0
    //   934: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   937: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   940: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   943: lload 36
    //   945: invokeinterface 202 4 0
    //   950: pop
    //   951: aload 35
    //   953: invokeinterface 210 1 0
    //   958: pop
    //   959: aload_0
    //   960: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   963: ldc_w 478
    //   966: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   969: ldc 78
    //   971: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   974: ifeq +43 -> 1017
    //   977: aload 35
    //   979: new 143	java/lang/StringBuilder
    //   982: dup
    //   983: ldc_w 471
    //   986: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   989: aload_0
    //   990: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   993: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   996: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   999: iload 38
    //   1001: iconst_1
    //   1002: iadd
    //   1003: invokeinterface 482 3 0
    //   1008: pop
    //   1009: aload 35
    //   1011: invokeinterface 210 1 0
    //   1016: pop
    //   1017: aload_0
    //   1018: invokespecial 484	com/pad/android/xappad/AdController:e	()V
    //   1021: aload_0
    //   1022: getfield 278	com/pad/android/xappad/AdController:d	Ljava/lang/String;
    //   1025: ldc_w 286
    //   1028: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1031: ifeq -1009 -> 22
    //   1034: aload_0
    //   1035: invokespecial 86	com/pad/android/xappad/AdController:c	()V
    //   1038: return
    //   1039: astore 5
    //   1041: ldc 8
    //   1043: new 143	java/lang/StringBuilder
    //   1046: dup
    //   1047: ldc_w 486
    //   1050: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1053: aload 5
    //   1055: invokevirtual 324	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1058: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1061: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1064: invokestatic 68	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1067: ldc 8
    //   1069: aload 5
    //   1071: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1074: return
    //   1075: astore 9
    //   1077: aload 7
    //   1079: iconst_0
    //   1080: iaload
    //   1081: istore 10
    //   1083: goto -961 -> 122
    //   1086: astore 8
    //   1088: aload 8
    //   1090: athrow
    //   1091: astore_3
    //   1092: ldc 8
    //   1094: aload_3
    //   1095: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1098: aload_0
    //   1099: invokespecial 484	com/pad/android/xappad/AdController:e	()V
    //   1102: aload_0
    //   1103: getfield 278	com/pad/android/xappad/AdController:d	Ljava/lang/String;
    //   1106: ldc_w 286
    //   1109: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1112: ifeq -1090 -> 22
    //   1115: aload_0
    //   1116: invokespecial 86	com/pad/android/xappad/AdController:c	()V
    //   1119: return
    //   1120: astore 4
    //   1122: ldc 8
    //   1124: new 143	java/lang/StringBuilder
    //   1127: dup
    //   1128: ldc_w 486
    //   1131: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1134: aload 4
    //   1136: invokevirtual 324	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1139: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1142: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1145: invokestatic 68	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1148: ldc 8
    //   1150: aload 4
    //   1152: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1155: return
    //   1156: ldc_w 488
    //   1159: astore 12
    //   1161: ldc_w 490
    //   1164: astore 17
    //   1166: goto -938 -> 228
    //   1169: astore 16
    //   1171: aload 15
    //   1173: astore 12
    //   1175: aload 14
    //   1177: astore 17
    //   1179: goto -951 -> 228
    //   1182: astore 18
    //   1184: ldc 8
    //   1186: new 143	java/lang/StringBuilder
    //   1189: dup
    //   1190: ldc_w 492
    //   1193: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1196: aload 18
    //   1198: invokevirtual 324	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1201: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1204: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1207: invokestatic 68	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1210: goto -932 -> 278
    //   1213: astore_1
    //   1214: aload_0
    //   1215: invokespecial 484	com/pad/android/xappad/AdController:e	()V
    //   1218: aload_0
    //   1219: getfield 278	com/pad/android/xappad/AdController:d	Ljava/lang/String;
    //   1222: ldc_w 286
    //   1225: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1228: ifeq +7 -> 1235
    //   1231: aload_0
    //   1232: invokespecial 86	com/pad/android/xappad/AdController:c	()V
    //   1235: aload_1
    //   1236: athrow
    //   1237: astore 19
    //   1239: ldc_w 494
    //   1242: astore 20
    //   1244: goto -950 -> 294
    //   1247: astore 26
    //   1249: iload 23
    //   1251: istore 27
    //   1253: iload 25
    //   1255: istore 28
    //   1257: iconst_m1
    //   1258: istore 29
    //   1260: iload 24
    //   1262: istore 30
    //   1264: goto -785 -> 479
    //   1267: aload_0
    //   1268: iload 10
    //   1270: aload 11
    //   1272: aload 17
    //   1274: aload 12
    //   1276: aload 6
    //   1278: aload 22
    //   1280: aconst_null
    //   1281: invokespecial 126	com/pad/android/xappad/AdController:a	(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    //   1284: istore 59
    //   1286: iload 59
    //   1288: istore 33
    //   1290: goto -430 -> 860
    //   1293: astore 53
    //   1295: aload_0
    //   1296: iload 10
    //   1298: aload 11
    //   1300: aload 17
    //   1302: aload 12
    //   1304: aload 6
    //   1306: aload 22
    //   1308: aconst_null
    //   1309: invokespecial 126	com/pad/android/xappad/AdController:a	(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    //   1312: istore 33
    //   1314: goto -454 -> 860
    //   1317: aload 20
    //   1319: ldc_w 496
    //   1322: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1325: ifeq +178 -> 1503
    //   1328: iload 27
    //   1330: iconst_m1
    //   1331: if_icmpeq +172 -> 1503
    //   1334: iload 28
    //   1336: iconst_m1
    //   1337: if_icmpeq +166 -> 1503
    //   1340: new 143	java/lang/StringBuilder
    //   1343: dup
    //   1344: aload_0
    //   1345: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   1348: invokevirtual 363	android/content/Context:getPackageName	()Ljava/lang/String;
    //   1351: invokestatic 366	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   1354: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1357: ldc_w 409
    //   1360: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1363: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1366: invokestatic 374	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   1369: astore 46
    //   1371: aload 46
    //   1373: ldc_w 498
    //   1376: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   1379: aload 46
    //   1381: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   1384: istore 47
    //   1386: aload 46
    //   1388: ldc_w 500
    //   1391: invokevirtual 380	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   1394: aload 46
    //   1396: invokevirtual 385	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   1399: istore 48
    //   1401: iload 28
    //   1403: iconst_m1
    //   1404: if_icmpeq +71 -> 1475
    //   1407: iload 47
    //   1409: iconst_m1
    //   1410: if_icmpeq +65 -> 1475
    //   1413: iload 48
    //   1415: iconst_m1
    //   1416: if_icmpeq +59 -> 1475
    //   1419: new 502	com/pad/android/xappad/d
    //   1422: dup
    //   1423: aload_0
    //   1424: iload 10
    //   1426: aload 11
    //   1428: aload 17
    //   1430: aload 12
    //   1432: aload 6
    //   1434: aload 22
    //   1436: invokespecial 505	com/pad/android/xappad/d:<init>	(Lcom/pad/android/xappad/AdController;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;)V
    //   1439: astore 50
    //   1441: iconst_1
    //   1442: anewarray 80	java/lang/String
    //   1445: astore 51
    //   1447: aload 51
    //   1449: iconst_0
    //   1450: aload_0
    //   1451: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   1454: ldc_w 507
    //   1457: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1460: aastore
    //   1461: aload 50
    //   1463: aload 51
    //   1465: invokevirtual 511	com/pad/android/xappad/d:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   1468: pop
    //   1469: iconst_0
    //   1470: istore 33
    //   1472: goto -612 -> 860
    //   1475: aload_0
    //   1476: iload 10
    //   1478: aload 11
    //   1480: aload 17
    //   1482: aload 12
    //   1484: aload 6
    //   1486: aload 22
    //   1488: aconst_null
    //   1489: invokespecial 126	com/pad/android/xappad/AdController:a	(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    //   1492: istore 49
    //   1494: iload 49
    //   1496: istore 33
    //   1498: goto -638 -> 860
    //   1501: astore 45
    //   1503: aload_0
    //   1504: iload 10
    //   1506: aload 11
    //   1508: aload 17
    //   1510: aload 12
    //   1512: aload 6
    //   1514: aload 22
    //   1516: aconst_null
    //   1517: invokespecial 126	com/pad/android/xappad/AdController:a	(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/NotificationManager;Landroid/app/PendingIntent;Landroid/widget/RemoteViews;)Z
    //   1520: istore 32
    //   1522: iload 32
    //   1524: istore 33
    //   1526: goto -666 -> 860
    //   1529: astore_2
    //   1530: ldc 8
    //   1532: new 143	java/lang/StringBuilder
    //   1535: dup
    //   1536: ldc_w 486
    //   1539: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1542: aload_2
    //   1543: invokevirtual 324	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1546: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1549: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1552: invokestatic 68	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   1555: ldc 8
    //   1557: aload_2
    //   1558: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   1561: goto -326 -> 1235
    //   1564: astore 40
    //   1566: goto -549 -> 1017
    //   1569: astore 39
    //   1571: goto -612 -> 959
    //   1574: astore 65
    //   1576: goto -754 -> 822
    //   1579: astore 64
    //   1581: goto -796 -> 785
    //   1584: astore 63
    //   1586: goto -838 -> 748
    //   1589: astore 62
    //   1591: goto -880 -> 711
    //   1594: astore 61
    //   1596: goto -922 -> 674
    //   1599: astore 13
    //   1601: goto -1446 -> 155
    //   1604: aload 15
    //   1606: astore 12
    //   1608: aload 14
    //   1610: astore 17
    //   1612: goto -1384 -> 228
    //
    // Exception table:
    //   from	to	target	type
    //   1021	1038	1039	java/lang/Exception
    //   103	115	1075	java/lang/Exception
    //   103	115	1086	finally
    //   23	68	1091	java/lang/Exception
    //   115	122	1091	java/lang/Exception
    //   122	134	1091	java/lang/Exception
    //   155	179	1091	java/lang/Exception
    //   294	332	1091	java/lang/Exception
    //   479	489	1091	java/lang/Exception
    //   865	921	1091	java/lang/Exception
    //   1077	1083	1091	java/lang/Exception
    //   1088	1091	1091	java/lang/Exception
    //   1184	1210	1091	java/lang/Exception
    //   1295	1314	1091	java/lang/Exception
    //   1317	1328	1091	java/lang/Exception
    //   1503	1522	1091	java/lang/Exception
    //   1102	1119	1120	java/lang/Exception
    //   179	224	1169	java/lang/Exception
    //   228	274	1182	java/lang/Exception
    //   23	68	1213	finally
    //   115	122	1213	finally
    //   122	134	1213	finally
    //   139	151	1213	finally
    //   155	179	1213	finally
    //   179	224	1213	finally
    //   228	274	1213	finally
    //   278	290	1213	finally
    //   294	332	1213	finally
    //   341	463	1213	finally
    //   479	489	1213	finally
    //   512	603	1213	finally
    //   633	651	1213	finally
    //   651	674	1213	finally
    //   674	691	1213	finally
    //   691	711	1213	finally
    //   711	728	1213	finally
    //   728	748	1213	finally
    //   748	765	1213	finally
    //   765	785	1213	finally
    //   785	802	1213	finally
    //   802	822	1213	finally
    //   828	836	1213	finally
    //   836	856	1213	finally
    //   865	921	1213	finally
    //   921	959	1213	finally
    //   959	1017	1213	finally
    //   1077	1083	1213	finally
    //   1088	1091	1213	finally
    //   1092	1098	1213	finally
    //   1184	1210	1213	finally
    //   1267	1286	1213	finally
    //   1295	1314	1213	finally
    //   1317	1328	1213	finally
    //   1340	1401	1213	finally
    //   1419	1469	1213	finally
    //   1475	1494	1213	finally
    //   1503	1522	1213	finally
    //   278	290	1237	java/lang/Exception
    //   341	463	1247	java/lang/Exception
    //   512	603	1293	java/lang/Exception
    //   633	651	1293	java/lang/Exception
    //   674	691	1293	java/lang/Exception
    //   711	728	1293	java/lang/Exception
    //   748	765	1293	java/lang/Exception
    //   785	802	1293	java/lang/Exception
    //   828	836	1293	java/lang/Exception
    //   836	856	1293	java/lang/Exception
    //   1267	1286	1293	java/lang/Exception
    //   1340	1401	1501	java/lang/Exception
    //   1419	1469	1501	java/lang/Exception
    //   1475	1494	1501	java/lang/Exception
    //   1218	1235	1529	java/lang/Exception
    //   959	1017	1564	java/lang/Exception
    //   921	959	1569	java/lang/Exception
    //   802	822	1574	java/lang/Exception
    //   765	785	1579	java/lang/Exception
    //   728	748	1584	java/lang/Exception
    //   691	711	1589	java/lang/Exception
    //   651	674	1594	java/lang/Exception
    //   139	151	1599	java/lang/Exception
  }

  private void e()
  {
    AdLog.i("LBAdController", "increment counter called");
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    int i1 = Integer.valueOf(localSharedPreferences.getString("SD_ITERATION_COUNTER_" + this.c, "0")).intValue();
    localEditor.putString("SD_ITERATION_COUNTER_" + this.c, i1 + 1);
    localEditor.commit();
  }

  private void f()
  {
    AdLog.i("LBAdController", "displayIcon called");
    if (this.g == null)
    {
      AdLog.e("LBAdController", "Results are null - no icon will be loaded");
      return;
    }
    try
    {
      if ((this.g.get("show").equals("1")) && (this.b != null));
      new c(this, 0).execute(new Void[0]);
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  public void initialize()
  {
    if (this.h);
    for (String str = "notification"; ; str = "icon")
    {
      new AdTask(this, this.b, this.c, str, this.d).execute(new String[] { "" });
      return;
    }
  }

  // ERROR //
  public void initialized()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 38	com/pad/android/xappad/AdController:e	Z
    //   5: aload_0
    //   6: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   9: ifnull +848 -> 857
    //   12: aload_0
    //   13: getfield 42	com/pad/android/xappad/AdController:h	Z
    //   16: ifeq +59 -> 75
    //   19: aload_0
    //   20: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   23: ldc 129
    //   25: iconst_2
    //   26: invokevirtual 135	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   29: invokeinterface 141 1 0
    //   34: astore 32
    //   36: aload 32
    //   38: new 143	java/lang/StringBuilder
    //   41: dup
    //   42: ldc_w 541
    //   45: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_0
    //   49: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   52: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   61: invokeinterface 202 4 0
    //   66: pop
    //   67: aload 32
    //   69: invokeinterface 210 1 0
    //   74: pop
    //   75: aload_0
    //   76: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   79: ldc_w 543
    //   82: invokevirtual 547	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   85: ifne +405 -> 490
    //   88: ldc 8
    //   90: ldc_w 549
    //   93: invokestatic 280	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: aload_0
    //   97: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   100: ifnull +390 -> 490
    //   103: aload_0
    //   104: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   107: ldc_w 543
    //   110: invokevirtual 547	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   113: ifne +377 -> 490
    //   116: aload_0
    //   117: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   120: ldc 129
    //   122: iconst_2
    //   123: invokevirtual 135	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   126: astore 9
    //   128: aload 9
    //   130: invokeinterface 141 1 0
    //   135: astore 10
    //   137: aload_0
    //   138: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   141: ldc_w 543
    //   144: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   147: astore 15
    //   149: aload_0
    //   150: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   153: ldc_w 551
    //   156: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   159: astore 16
    //   161: aload_0
    //   162: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   165: ldc_w 553
    //   168: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   171: astore 17
    //   173: aload 9
    //   175: new 143	java/lang/StringBuilder
    //   178: dup
    //   179: ldc_w 555
    //   182: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   189: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: ldc 158
    //   197: invokeinterface 161 3 0
    //   202: astore 18
    //   204: aload 17
    //   206: ldc_w 557
    //   209: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   212: ifne +389 -> 601
    //   215: aload 18
    //   217: ldc 158
    //   219: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   222: istore 31
    //   224: iconst_0
    //   225: istore 19
    //   227: iload 31
    //   229: ifne +372 -> 601
    //   232: iload 19
    //   234: ifeq +640 -> 874
    //   237: aload 15
    //   239: ldc_w 559
    //   242: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   245: ifeq +629 -> 874
    //   248: ldc 8
    //   250: new 143	java/lang/StringBuilder
    //   253: dup
    //   254: ldc_w 561
    //   257: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   260: aload 15
    //   262: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: invokestatic 280	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   271: new 222	android/content/Intent
    //   274: dup
    //   275: aload_0
    //   276: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   279: invokevirtual 284	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   282: ldc_w 563
    //   285: invokespecial 227	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   288: astore 20
    //   290: aload 20
    //   292: ldc 229
    //   294: aload_0
    //   295: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   298: invokevirtual 233	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   301: pop
    //   302: aload 20
    //   304: ldc_w 565
    //   307: ldc_w 567
    //   310: invokevirtual 233	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   313: pop
    //   314: aload 20
    //   316: ldc_w 569
    //   319: aload_0
    //   320: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   323: ldc_w 569
    //   326: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   329: invokevirtual 233	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   332: pop
    //   333: aload 20
    //   335: ldc_w 551
    //   338: aload 16
    //   340: invokevirtual 233	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   343: pop
    //   344: aload 20
    //   346: ldc_w 571
    //   349: aload_0
    //   350: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   353: ldc_w 571
    //   356: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   359: invokevirtual 233	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   362: pop
    //   363: aload_0
    //   364: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   367: iconst_0
    //   368: aload 20
    //   370: ldc 234
    //   372: invokestatic 240	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   375: astore 26
    //   377: invokestatic 97	java/lang/System:currentTimeMillis	()J
    //   380: sipush 1000
    //   383: aload_0
    //   384: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   387: ldc_w 573
    //   390: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   393: invokestatic 304	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   396: imul
    //   397: i2l
    //   398: ladd
    //   399: lstore 27
    //   401: aload_0
    //   402: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   405: ldc 212
    //   407: invokevirtual 216	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   410: checkcast 218	android/app/AlarmManager
    //   413: astore 29
    //   415: aload 29
    //   417: iconst_0
    //   418: lload 27
    //   420: aload 26
    //   422: invokevirtual 246	android/app/AlarmManager:set	(IJLandroid/app/PendingIntent;)V
    //   425: ldc 78
    //   427: astore 12
    //   429: ldc 8
    //   431: new 143	java/lang/StringBuilder
    //   434: dup
    //   435: ldc_w 575
    //   438: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   441: aload 12
    //   443: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   446: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   449: invokestatic 280	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   452: aload 10
    //   454: new 143	java/lang/StringBuilder
    //   457: dup
    //   458: ldc_w 555
    //   461: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   464: aload_0
    //   465: getfield 53	com/pad/android/xappad/AdController:c	Ljava/lang/String;
    //   468: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   474: aload 12
    //   476: invokeinterface 206 3 0
    //   481: pop
    //   482: aload 10
    //   484: invokeinterface 210 1 0
    //   489: pop
    //   490: aload_0
    //   491: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   494: ldc_w 577
    //   497: invokevirtual 547	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   500: ifne +89 -> 589
    //   503: aload_0
    //   504: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   507: ifnull +82 -> 589
    //   510: aload_0
    //   511: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   514: ldc_w 577
    //   517: invokevirtual 547	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   520: ifne +69 -> 589
    //   523: ldc 158
    //   525: astore_3
    //   526: aload_0
    //   527: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   530: ldc_w 577
    //   533: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   536: astore 8
    //   538: aload 8
    //   540: astore_3
    //   541: aload_3
    //   542: ldc 78
    //   544: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   547: ifeq +42 -> 589
    //   550: aload_0
    //   551: getfield 51	com/pad/android/xappad/AdController:b	Landroid/content/Context;
    //   554: ldc 129
    //   556: iconst_2
    //   557: invokevirtual 135	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   560: invokeinterface 141 1 0
    //   565: astore 5
    //   567: aload 5
    //   569: ldc_w 579
    //   572: ldc_w 581
    //   575: invokeinterface 206 3 0
    //   580: pop
    //   581: aload 5
    //   583: invokeinterface 210 1 0
    //   588: pop
    //   589: aload_0
    //   590: getfield 48	com/pad/android/xappad/AdController:k	Z
    //   593: ifeq +99 -> 692
    //   596: aload_0
    //   597: invokespecial 583	com/pad/android/xappad/AdController:f	()V
    //   600: return
    //   601: iconst_1
    //   602: istore 19
    //   604: goto -372 -> 232
    //   607: astore 30
    //   609: ldc 8
    //   611: aload 30
    //   613: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   616: ldc_w 585
    //   619: new 143	java/lang/StringBuilder
    //   622: dup
    //   623: ldc_w 587
    //   626: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   629: aload 30
    //   631: invokevirtual 324	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   634: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   637: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   640: invokestatic 280	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   643: ldc 78
    //   645: astore 12
    //   647: goto -218 -> 429
    //   650: astore 11
    //   652: ldc 8
    //   654: aload 11
    //   656: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   659: ldc 8
    //   661: new 143	java/lang/StringBuilder
    //   664: dup
    //   665: ldc_w 589
    //   668: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   671: aload 11
    //   673: invokevirtual 324	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   676: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   682: invokestatic 280	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   685: ldc 158
    //   687: astore 12
    //   689: goto -260 -> 429
    //   692: ldc 8
    //   694: ldc_w 591
    //   697: invokestatic 280	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   700: aload_0
    //   701: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   704: ifnonnull +12 -> 716
    //   707: ldc 8
    //   709: ldc_w 593
    //   712: invokestatic 68	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   715: return
    //   716: aload_0
    //   717: getfield 46	com/pad/android/xappad/AdController:j	Z
    //   720: ifeq +16 -> 736
    //   723: aload_0
    //   724: invokespecial 595	com/pad/android/xappad/AdController:d	()V
    //   727: return
    //   728: astore_1
    //   729: ldc 8
    //   731: aload_1
    //   732: invokestatic 90	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   735: return
    //   736: aload_0
    //   737: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   740: ldc 70
    //   742: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   745: ldc 78
    //   747: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   750: ifeq +98 -> 848
    //   753: aload_0
    //   754: getfield 40	com/pad/android/xappad/AdController:g	Lorg/json/JSONObject;
    //   757: ldc_w 597
    //   760: invokevirtual 76	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   763: astore_2
    //   764: aload_2
    //   765: ldc_w 599
    //   768: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   771: ifeq +19 -> 790
    //   774: ldc 8
    //   776: ldc_w 601
    //   779: invokestatic 190	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   782: aload_0
    //   783: ldc_w 603
    //   786: invokevirtual 606	com/pad/android/xappad/AdController:loadNotificationOnRequest	(Ljava/lang/String;)V
    //   789: return
    //   790: aload_2
    //   791: ldc_w 608
    //   794: invokevirtual 84	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   797: ifeq -197 -> 600
    //   800: ldc 8
    //   802: ldc_w 610
    //   805: invokestatic 190	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   808: ldc 8
    //   810: ldc_w 612
    //   813: invokestatic 190	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   816: aload_0
    //   817: getfield 38	com/pad/android/xappad/AdController:e	Z
    //   820: ifne +23 -> 843
    //   823: aload_0
    //   824: iconst_1
    //   825: putfield 42	com/pad/android/xappad/AdController:h	Z
    //   828: aload_0
    //   829: iconst_1
    //   830: putfield 46	com/pad/android/xappad/AdController:j	Z
    //   833: aload_0
    //   834: iconst_0
    //   835: putfield 44	com/pad/android/xappad/AdController:i	Z
    //   838: aload_0
    //   839: invokevirtual 614	com/pad/android/xappad/AdController:initialize	()V
    //   842: return
    //   843: aload_0
    //   844: invokespecial 616	com/pad/android/xappad/AdController:a	()V
    //   847: return
    //   848: ldc 8
    //   850: ldc_w 618
    //   853: invokestatic 190	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   856: return
    //   857: aload_0
    //   858: getfield 48	com/pad/android/xappad/AdController:k	Z
    //   861: ifne -261 -> 600
    //   864: aload_0
    //   865: invokespecial 334	com/pad/android/xappad/AdController:b	()V
    //   868: return
    //   869: astore 4
    //   871: goto -330 -> 541
    //   874: ldc 78
    //   876: astore 12
    //   878: goto -449 -> 429
    //
    // Exception table:
    //   from	to	target	type
    //   415	425	607	java/lang/Exception
    //   137	224	650	java/lang/Exception
    //   237	415	650	java/lang/Exception
    //   609	643	650	java/lang/Exception
    //   716	727	728	java/lang/Exception
    //   736	789	728	java/lang/Exception
    //   790	842	728	java/lang/Exception
    //   843	847	728	java/lang/Exception
    //   848	856	728	java/lang/Exception
    //   526	538	869	java/lang/Exception
  }

  public void loadIcon()
  {
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    if (str1.equals("notset"))
    {
      new AdOptinRequest(null, this.c, this.b, new b(this), "0").execute(new Void[0]);
      return;
    }
    if ((!(str1.equals("notset"))) && (str2.equals("0")))
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
      localEditor.commit();
      return;
    }
    AdLog.i("LBAdController", "loadIcon called");
    if (!(this.e))
    {
      this.k = true;
      initialize();
      return;
    }
    f();
  }

  public void loadNotification()
  {
    AdLog.i("LBAdController", "loadNotification called");
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN", "notset");
    if (str1.equals("notset"))
    {
      AdLog.i("LBAdController", "optin not set, do optin first...");
      new AdOptinRequest(null, this.c, this.b, new a(this), "0").execute(new Void[0]);
    }
    do
    {
      return;
      if ((!(str1.equals("notset"))) && (str2.equals("0")))
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
        localEditor.commit();
        return;
      }
      AdLog.i("LBAdController", "optin already done - loadNotification");
    }
    while (this.e);
    this.h = true;
    this.k = false;
    this.d = "App";
    this.i = false;
    this.j = false;
    initialize();
  }

  public void loadNotificationOnRequest(String paramString)
  {
    if ((paramString.equals("App")) || (paramString.equals("Alarm")))
    {
      AdLog.i("LBAdController", "loadNotificationOnRequest called");
      this.d = paramString;
      if (!(this.e))
      {
        this.h = true;
        this.j = true;
        this.i = false;
        initialize();
        return;
      }
      d();
      return;
    }
    AdLog.e("LBAdController", "Illegal use of loadNotificationOnRequest. LaunchType used = " + paramString);
  }

  public void loadOptin(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    if (paramActivity != null)
    {
      if (!(paramActivity instanceof Activity))
        break label33;
      new AdOptinRequest(paramActivity, paramString, null, paramAdOptinListener, "1").execute(new Void[0]);
    }
    return;
    label33: Log.e("com.pad.android.xappad.AdController", "Activity required for loadOptin - incorrect value passed");
  }

  public void pauseNotification()
  {
    SharedPreferences.Editor localEditor = this.b.getSharedPreferences("Preference", 2).edit();
    localEditor.putString("SD_ADSTATUS_" + this.c, "hidden");
    localEditor.commit();
    setPauseAlarm();
    if (this.f != null);
    try
    {
      this.f.onAdNotificationPaused();
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
      AdLog.e("LBAdController", "Error with notification listener " + localException.getMessage());
    }
  }

  public void resumeNotification()
  {
    SharedPreferences.Editor localEditor = this.b.getSharedPreferences("Preference", 2).edit();
    localEditor.putString("SD_ADSTATUS_" + this.c, "default");
    localEditor.commit();
    this.a = ((AlarmManager)this.b.getSystemService("alarm"));
    Intent localIntent = new Intent(this.b, AdNotification.class);
    localIntent.putExtra("sectionid", this.c);
    this.l = PendingIntent.getBroadcast(this.b, 0, localIntent, 134217728);
    long l1 = 1440000L + System.currentTimeMillis();
    try
    {
      this.a.cancel(this.l);
      this.a.set(0, l1, this.l);
      if (this.f == null);
    }
    catch (Exception localException1)
    {
      try
      {
        this.f.onAdNotificationResumed();
        return;
        localException1 = localException1;
        AdLog.printStackTrace("LBAdController", localException1);
        Log.d("LBAdController", "Error while trying to set pause alarm - " + localException1.getMessage());
      }
      catch (Exception localException2)
      {
        AdLog.printStackTrace("LBAdController", localException2);
        AdLog.e("LBAdController", "Error with notification listener " + localException2.getMessage());
      }
    }
  }

  public void setAsynchTask(boolean paramBoolean)
  {
  }

  public void setContext(Context paramContext)
  {
    this.b = paramContext;
  }

  public void setPauseAlarm()
  {
    this.a = ((AlarmManager)this.b.getSystemService("alarm"));
    Intent localIntent = new Intent(this.b, AdNotification.class);
    localIntent.putExtra("sectionid", this.c);
    this.l = PendingIntent.getBroadcast(this.b, 0, localIntent, 134217728);
    long l1 = 1515098112L + System.currentTimeMillis();
    try
    {
      this.a.cancel(this.l);
      this.a.set(0, l1, this.l);
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
      Log.d("LBAdController", "Error while trying to set pause alarm - " + localException.getMessage());
    }
  }

  public void setResults(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    this.g = paramJSONObject;
  }

  public void setSectionId(String paramString)
  {
    this.c = paramString;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.xappad.AdController
 * JD-Core Version:    0.5.3
 */