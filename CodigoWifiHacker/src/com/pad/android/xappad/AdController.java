package com.pad.android.xappad;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.AsyncTask;
import android.provider.Browser;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.pad.android.listener.AdNotificationListener;
import com.pad.android.listener.AdOptinListener;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdOptinRequest;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Calendar;
import org.json.JSONObject;

public class AdController
{
  public static final String LB_LOG = "LBAdController";
  public static final String SDK_LEVEL = "06b";
  public static final String SDK_VERSION = "3";
  private final int MAX_APP_ICONS;
  private AlarmManager am;
  private Context context;
  private boolean initialized;
  private AdNotificationListener listenNotif;
  private boolean loadIcon;
  private String notificationLaunchType;
  private boolean onRequest;
  private boolean onTimer;
  private PendingIntent pendingAlarmIntent;
  private JSONObject results;
  private String sectionid;
  private boolean useNotification;

  public AdController(Context paramContext, String paramString)
  {
    this.MAX_APP_ICONS = 5;
    this.initialized = false;
    this.results = null;
    this.useNotification = false;
    this.onTimer = false;
    this.onRequest = false;
    this.loadIcon = false;
    this.context = paramContext;
    this.sectionid = paramString;
  }

  public AdController(Context paramContext, String paramString, AdNotificationListener paramAdNotificationListener)
  {
    this(paramContext, paramString);
    this.listenNotif = paramAdNotificationListener;
  }

  private void displayIcon()
  {
    AdLog.i("LBAdController", "displayIcon called");
    if (this.results == null)
      AdLog.e("LBAdController", "Results are null - no icon will be loaded");
    while (true)
    {
      return;
      try
      {
        if ((this.results.get("show").equals("1")) && (this.context != null));
        new AdIcon(null).execute(new Void[0]);
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
      }
    }
  }

  private void incrementIterationCounter()
  {
    AdLog.i("LBAdController", "increment counter called");
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    int i = Integer.valueOf(localSharedPreferences.getString("SD_ITERATION_COUNTER_" + this.sectionid, "0")).intValue();
    localEditor.putString("SD_ITERATION_COUNTER_" + this.sectionid, i + 1);
    localEditor.commit();
  }

  private void invalidateOptin()
  {
    Object localObject;
    if ((this.results != null) && (!(this.results.isNull("invalidateoptin"))))
      localObject = "0";
    try
    {
      String str = this.results.getString("invalidateoptin");
      localObject = str;
      if (((String)localObject).equals("1"))
      {
        SharedPreferences.Editor localEditor = this.context.getSharedPreferences("Preference", 2).edit();
        localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
        localEditor.commit();
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  private void loadNotificationDetails()
  {
    // Byte code:
    //   0: ldc 8
    //   2: ldc 195
    //   4: invokestatic 79	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   11: ifnonnull +11 -> 22
    //   14: ldc 8
    //   16: ldc 197
    //   18: invokestatic 84	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: return
    //   22: aload_0
    //   23: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   26: ldc 86
    //   28: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   31: ldc 94
    //   33: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   36: ifeq +480 -> 516
    //   39: ldc 8
    //   41: ldc 199
    //   43: invokestatic 79	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   50: ldc 201
    //   52: invokevirtual 204	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   55: checkcast 206	android/app/NotificationManager
    //   58: astore 6
    //   60: iconst_5
    //   61: newarray int
    //   63: astore 7
    //   65: aload 7
    //   67: iconst_0
    //   68: ldc 207
    //   70: iastore
    //   71: aload 7
    //   73: iconst_1
    //   74: ldc 208
    //   76: iastore
    //   77: aload 7
    //   79: iconst_2
    //   80: ldc 209
    //   82: iastore
    //   83: aload 7
    //   85: iconst_3
    //   86: ldc 210
    //   88: iastore
    //   89: aload 7
    //   91: iconst_4
    //   92: ldc 211
    //   94: iastore
    //   95: aload_0
    //   96: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   99: ldc 213
    //   101: invokevirtual 217	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   104: istore 36
    //   106: aload 7
    //   108: iload 36
    //   110: iaload
    //   111: istore 11
    //   113: aload_0
    //   114: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   117: ldc 219
    //   119: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   122: astore 12
    //   124: ldc 221
    //   126: astore 13
    //   128: aload_0
    //   129: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   132: ldc 223
    //   134: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   137: astore 35
    //   139: aload 35
    //   141: astore 13
    //   143: aload_0
    //   144: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   147: ldc 219
    //   149: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   152: astore 15
    //   154: aload_0
    //   155: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   158: ldc 225
    //   160: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   163: astore 16
    //   165: aload 16
    //   167: astore 17
    //   169: aload_0
    //   170: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   173: ldc 227
    //   175: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   178: astore 33
    //   180: aload 33
    //   182: ldc 221
    //   184: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   187: ifne +495 -> 682
    //   190: aload 33
    //   192: ldc 219
    //   194: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   197: ifeq +22 -> 219
    //   200: aload_0
    //   201: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   204: aload 33
    //   206: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   209: astore 34
    //   211: aload 34
    //   213: astore 15
    //   215: aload 13
    //   217: astore 17
    //   219: invokestatic 233	java/lang/System:currentTimeMillis	()J
    //   222: lstore 19
    //   224: new 235	android/content/Intent
    //   227: dup
    //   228: ldc 237
    //   230: aload_0
    //   231: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   234: ldc 239
    //   236: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   239: invokestatic 245	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   242: invokespecial 248	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   245: astore 21
    //   247: aload_0
    //   248: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   251: iconst_0
    //   252: aload 21
    //   254: iconst_0
    //   255: invokestatic 254	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   258: astore 22
    //   260: new 256	android/app/Notification
    //   263: dup
    //   264: iload 11
    //   266: aload 12
    //   268: lload 19
    //   270: invokespecial 259	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   273: astore 23
    //   275: aload 23
    //   277: bipush 16
    //   279: aload 23
    //   281: getfield 262	android/app/Notification:flags	I
    //   284: ior
    //   285: putfield 262	android/app/Notification:flags	I
    //   288: aload 23
    //   290: aload_0
    //   291: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   294: aload 15
    //   296: aload 17
    //   298: aload 22
    //   300: invokevirtual 266	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   303: aload_0
    //   304: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   307: ldc 118
    //   309: iconst_2
    //   310: invokevirtual 124	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   313: astore 24
    //   315: aload 24
    //   317: invokeinterface 130 1 0
    //   322: astore 25
    //   324: aload 24
    //   326: new 132	java/lang/StringBuilder
    //   329: dup
    //   330: ldc_w 268
    //   333: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   336: aload_0
    //   337: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   340: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: iconst_0
    //   347: invokeinterface 271 3 0
    //   352: istore 26
    //   354: ldc 8
    //   356: new 132	java/lang/StringBuilder
    //   359: dup
    //   360: ldc_w 273
    //   363: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   366: iload 26
    //   368: invokevirtual 165	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   371: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: invokestatic 276	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   377: iload 26
    //   379: ifne +8 -> 387
    //   382: sipush 10001
    //   385: istore 26
    //   387: aload 6
    //   389: sipush 1001
    //   392: aload 23
    //   394: invokevirtual 280	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   397: aload 25
    //   399: new 132	java/lang/StringBuilder
    //   402: dup
    //   403: ldc_w 282
    //   406: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   409: aload_0
    //   410: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   413: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: lload 19
    //   421: invokeinterface 286 4 0
    //   426: pop
    //   427: aload 25
    //   429: invokeinterface 175 1 0
    //   434: pop
    //   435: ldc 8
    //   437: new 132	java/lang/StringBuilder
    //   440: dup
    //   441: ldc_w 288
    //   444: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   447: iload 26
    //   449: invokevirtual 165	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   452: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   455: invokestatic 276	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   458: aload_0
    //   459: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   462: ldc_w 290
    //   465: invokevirtual 185	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   468: ldc 94
    //   470: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   473: ifeq +43 -> 516
    //   476: aload 25
    //   478: new 132	java/lang/StringBuilder
    //   481: dup
    //   482: ldc_w 268
    //   485: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   488: aload_0
    //   489: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   492: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   498: iload 26
    //   500: iconst_1
    //   501: iadd
    //   502: invokeinterface 294 3 0
    //   507: pop
    //   508: aload 25
    //   510: invokeinterface 175 1 0
    //   515: pop
    //   516: aload_0
    //   517: invokespecial 296	com/pad/android/xappad/AdController:incrementIterationCounter	()V
    //   520: aload_0
    //   521: getfield 49	com/pad/android/xappad/AdController:onTimer	Z
    //   524: ifne +16 -> 540
    //   527: aload_0
    //   528: getfield 298	com/pad/android/xappad/AdController:notificationLaunchType	Ljava/lang/String;
    //   531: ldc_w 300
    //   534: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   537: ifeq -516 -> 21
    //   540: aload_0
    //   541: invokespecial 303	com/pad/android/xappad/AdController:setAlarm	()V
    //   544: goto -523 -> 21
    //   547: astore 5
    //   549: ldc 8
    //   551: new 132	java/lang/StringBuilder
    //   554: dup
    //   555: ldc_w 305
    //   558: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   561: aload 5
    //   563: invokevirtual 308	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   566: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   572: invokestatic 84	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   575: ldc 8
    //   577: aload 5
    //   579: invokestatic 113	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   582: goto -561 -> 21
    //   585: astore 10
    //   587: aload 7
    //   589: iconst_0
    //   590: iaload
    //   591: istore 11
    //   593: goto -480 -> 113
    //   596: astore 8
    //   598: aload 7
    //   600: iconst_0
    //   601: iaload
    //   602: pop
    //   603: aload 8
    //   605: athrow
    //   606: astore_3
    //   607: ldc 8
    //   609: aload_3
    //   610: invokestatic 113	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   613: aload_0
    //   614: invokespecial 296	com/pad/android/xappad/AdController:incrementIterationCounter	()V
    //   617: aload_0
    //   618: getfield 49	com/pad/android/xappad/AdController:onTimer	Z
    //   621: ifne +16 -> 637
    //   624: aload_0
    //   625: getfield 298	com/pad/android/xappad/AdController:notificationLaunchType	Ljava/lang/String;
    //   628: ldc_w 300
    //   631: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   634: ifeq -613 -> 21
    //   637: aload_0
    //   638: invokespecial 303	com/pad/android/xappad/AdController:setAlarm	()V
    //   641: goto -620 -> 21
    //   644: astore 4
    //   646: ldc 8
    //   648: new 132	java/lang/StringBuilder
    //   651: dup
    //   652: ldc_w 305
    //   655: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   658: aload 4
    //   660: invokevirtual 308	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   663: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   666: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   669: invokestatic 84	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   672: ldc 8
    //   674: aload 4
    //   676: invokestatic 113	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   679: goto -658 -> 21
    //   682: ldc_w 310
    //   685: astore 15
    //   687: ldc_w 312
    //   690: astore 17
    //   692: goto -473 -> 219
    //   695: astore_1
    //   696: aload_0
    //   697: invokespecial 296	com/pad/android/xappad/AdController:incrementIterationCounter	()V
    //   700: aload_0
    //   701: getfield 49	com/pad/android/xappad/AdController:onTimer	Z
    //   704: ifne +16 -> 720
    //   707: aload_0
    //   708: getfield 298	com/pad/android/xappad/AdController:notificationLaunchType	Ljava/lang/String;
    //   711: ldc_w 300
    //   714: invokevirtual 188	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   717: ifeq +7 -> 724
    //   720: aload_0
    //   721: invokespecial 303	com/pad/android/xappad/AdController:setAlarm	()V
    //   724: aload_1
    //   725: athrow
    //   726: astore_2
    //   727: ldc 8
    //   729: new 132	java/lang/StringBuilder
    //   732: dup
    //   733: ldc_w 305
    //   736: invokespecial 137	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   739: aload_2
    //   740: invokevirtual 308	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   743: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   746: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   749: invokestatic 84	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   752: ldc 8
    //   754: aload_2
    //   755: invokestatic 113	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   758: goto -34 -> 724
    //   761: astore 28
    //   763: goto -247 -> 516
    //   766: astore 27
    //   768: goto -333 -> 435
    //   771: astore 18
    //   773: goto -554 -> 219
    //   776: astore 14
    //   778: goto -635 -> 143
    //
    // Exception table:
    //   from	to	target	type
    //   520	544	547	java/lang/Exception
    //   95	106	585	java/lang/Exception
    //   95	106	596	finally
    //   22	65	606	java/lang/Exception
    //   106	128	606	java/lang/Exception
    //   143	165	606	java/lang/Exception
    //   219	397	606	java/lang/Exception
    //   435	458	606	java/lang/Exception
    //   587	606	606	java/lang/Exception
    //   617	641	644	java/lang/Exception
    //   22	65	695	finally
    //   106	128	695	finally
    //   128	139	695	finally
    //   143	165	695	finally
    //   169	211	695	finally
    //   219	397	695	finally
    //   397	435	695	finally
    //   435	458	695	finally
    //   458	516	695	finally
    //   587	606	695	finally
    //   607	613	695	finally
    //   700	724	726	java/lang/Exception
    //   458	516	761	java/lang/Exception
    //   397	435	766	java/lang/Exception
    //   169	211	771	java/lang/Exception
    //   128	139	776	java/lang/Exception
  }

  private void loadNotificationOnTimer()
  {
    AdLog.i("LBAdController", "loadNotificationOnTimer called");
    if (!(this.initialized))
    {
      this.useNotification = true;
      this.onRequest = true;
      this.onTimer = false;
      initialize();
    }
    while (true)
    {
      return;
      loadNotificationTimerDetails();
    }
  }

  private void loadNotificationTimerDetails()
  {
    if (this.results == null)
      AdLog.e("LBAdController", "Notification will not be loaded - no internet connection");
    while (true)
    {
      return;
      try
      {
        if (this.results.getString("show").equals("1"));
        setAlarm();
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
      }
    }
  }

  private void setAlarm()
  {
    AdLog.i("LBAdController", "setAlarm called");
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if (this.results.length() > 1)
      AdLog.i("LBAdController", "internet connection found....initialize alarm from settings - Result Length=" + this.results.length());
    int i;
    try
    {
      i = Integer.valueOf(localSharedPreferences.getString("SD_ITERATION_COUNTER_" + this.sectionid, "0")).intValue();
    }
    catch (Exception localException2)
    {
      int j;
      Calendar localCalendar1;
      long l1;
      try
      {
        int l = Integer.valueOf(this.results.getString("notificationcookie")).intValue();
        j = l;
        AdLog.d("LBAdController", "Values: ck=" + j + ", ic=" + i + ", nLT=" + this.notificationLaunchType);
        this.am = ((AlarmManager)this.context.getSystemService("alarm"));
        Intent localIntent = new Intent(this.context.getApplicationContext(), AdNotification.class);
        localIntent.putExtra("sectionid", this.sectionid);
        this.pendingAlarmIntent = PendingIntent.getBroadcast(this.context.getApplicationContext(), 0, localIntent, 134217728);
        if ((j == 1) || ((j == 0) && (i == 0)) || (this.notificationLaunchType.equals("Alarm")))
        {
          AdLog.i("LBAdController", "alarm will be initialized - ck is " + j + ", ic is " + i + ", nLT is " + this.notificationLaunchType);
          localCalendar1 = Calendar.getInstance();
          label505: l1 = System.currentTimeMillis();
        }
      }
      catch (Exception localException2)
      {
        try
        {
          int k = Integer.parseInt(this.results.getString("notificationstart"));
          localCalendar1.add(13, k);
          AdLog.d("LBAdController", "Alarm initialized - Scheduled at " + k + ", current time = " + l1);
          AdLog.d("LBAdController", "----------------------------------------");
          this.am.set(0, localCalendar1.getTimeInMillis(), this.pendingAlarmIntent);
          localEditor.putLong("SD_ALARM_TIME_" + this.sectionid, l1);
          localEditor.putLong("SD_WAKE_TIME_" + this.sectionid, localCalendar1.getTimeInMillis());
          localEditor.putLong("SD_ALARM_INTERVAL_" + this.sectionid, k);
          localEditor.commit();
          return;
          localException2 = localException2;
          j = 0;
        }
        catch (Exception localException3)
        {
          while (true)
          {
            AdLog.e("LBAdController", "Error caused while setting Alarm (if case): " + localException3.getMessage());
            AdLog.printStackTrace("LBAdController", localException3);
            break label505:
            long l2 = localSharedPreferences.getLong("SD_WAKE_TIME_" + this.sectionid, 0L);
            Calendar localCalendar2 = Calendar.getInstance();
            long l3 = System.currentTimeMillis();
            try
            {
              localCalendar2.setTimeInMillis(l2);
              AdLog.d("LBAdController", "Alarm reset - Scheduled at " + l2 + ", current time = " + l3);
              AdLog.d("LBAdController", "----------------------------------------");
              this.am.set(0, localCalendar2.getTimeInMillis(), this.pendingAlarmIntent);
              localEditor.putLong("SD_ALARM_TIME_" + this.sectionid, l3);
              localEditor.putLong("SD_WAKE_TIME_" + this.sectionid, l2);
              localEditor.commit();
            }
            catch (Exception localException4)
            {
              AdLog.e("LBAdController", "Error caused while setting Alarm (else case): " + localException4.getMessage());
              AdLog.printStackTrace("LBAdController", localException4);
            }
          }
          break label505:
          setAlarmFromCookie();
          break label505:
          localException1 = localException1;
          break label505:
        }
      }
    }
  }

  private void setAlarmFromCookie()
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    long l1 = Integer.valueOf(localSharedPreferences.getString("SD_ALARM_ATTEMPTED_" + this.sectionid, "0")).intValue();
    long l2 = System.currentTimeMillis();
    long l3 = l2 + 10000L;
    if (l1 > 25L)
    {
      long l4 = localSharedPreferences.getLong("SD_ALARM_INTERVAL_" + this.sectionid, 0L);
      AdLog.i("LBAdController", "No internet, already tried 5 times, set it to timer " + l4 + "s");
      AdLog.i("LBAdController", "Times attempted = " + l1);
      l3 = l2 + 1000L * l4;
      localEditor.putLong("SD_ALARM_TIME_" + this.sectionid, l3);
      localEditor.putString("SD_ALARM_ATTEMPTED_" + this.sectionid, "0");
      localEditor.commit();
    }
    while (true)
    {
      this.am = ((AlarmManager)this.context.getSystemService("alarm"));
      Intent localIntent = new Intent(this.context, AdNotification.class);
      localIntent.putExtra("sectionid", this.sectionid);
      this.pendingAlarmIntent = PendingIntent.getBroadcast(this.context, 0, localIntent, 134217728);
      try
      {
        this.am.set(0, l3, this.pendingAlarmIntent);
        label308: return;
        if ((l1 % 5L == 0L) && (l1 > 0L))
        {
          l3 = l2 + 600000L;
          AdLog.i("LBAdController", "No internet, retry alarm in 10 mins");
          localEditor.putString("SD_ALARM_ATTEMPTED_" + this.sectionid, 1L + l1);
          localEditor.commit();
        }
        AdLog.i("LBAdController", "No internet, retry alarm in 10s");
        localEditor.putString("SD_ALARM_ATTEMPTED_" + this.sectionid, 1L + l1);
        localEditor.commit();
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
        break label308:
      }
    }
  }

  private void setNotification()
  {
    AdLog.d("LBAdController", "setNotification called");
    if (this.results == null)
      AdLog.e("LBAdController", "Results are null - no notification will be loaded");
    while (true)
    {
      return;
      try
      {
        if (!(this.onRequest))
          break label48;
        loadNotificationDetails();
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
      }
      continue;
      if (this.onTimer)
        label48: loadNotificationTimerDetails();
      if (this.results.getString("show").equals("1"))
      {
        String str = this.results.getString("notificationtype");
        if (str.equals("Immediate"))
        {
          AdLog.i("LBAdController", "Immediate notification to be fired");
          loadNotificationOnRequest("App");
        }
        if (!(str.equals("Recurring")))
          continue;
        AdLog.i("LBAdController", "Recurring notification to be created");
        loadNotificationOnTimer();
      }
      AdLog.i("LBAdController", "Notification not be set for this user");
    }
  }

  private void setReminder()
  {
    AdLog.d("LBAdController", "setReminder called");
    SharedPreferences localSharedPreferences;
    SharedPreferences.Editor localEditor;
    String str1;
    if ((this.results != null) && (!(this.results.isNull("remindertype"))))
    {
      localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
      localEditor = localSharedPreferences.edit();
      str1 = "1";
    }
    int i;
    PendingIntent localPendingIntent;
    long l;
    AlarmManager localAlarmManager;
    try
    {
      String str2 = this.results.getString("remindertype");
      String str3 = this.results.getString("remindertext");
      String str4 = this.results.getString("remindershow");
      String str5 = localSharedPreferences.getString("SD_REMINDER_SHOWN_" + this.sectionid, "0");
      if ((!(str4.equals("always"))) && (!(str5.equals("0"))))
      {
        i = 0;
        if ((i != 0) && (str2.equals("display")))
        {
          AdLog.d("LBAdController", "Reminder Type Set - " + str2);
          Intent localIntent = new Intent(this.context.getApplicationContext(), AdReminderNotification.class);
          localIntent.putExtra("sectionid", this.sectionid);
          localIntent.putExtra("alarmtype", "reminder");
          localIntent.putExtra("remindertitle", this.results.getString("remindertitle"));
          localIntent.putExtra("remindertext", str3);
          localIntent.putExtra("remindericon", this.results.getString("remindericon"));
          localPendingIntent = PendingIntent.getBroadcast(this.context, 0, localIntent, 134217728);
          l = System.currentTimeMillis() + 1000 * Integer.parseInt(this.results.getString("reminderstart"));
          label335: localAlarmManager = (AlarmManager)this.context.getSystemService("alarm");
        }
      }
    }
    catch (Exception localException1)
    {
      try
      {
        localAlarmManager.set(0, l, localPendingIntent);
        AdLog.d("LBAdController", "Reminder Set, set preference to " + str1);
        localEditor.putString("SD_REMINDER_SHOWN_" + this.sectionid, str1);
        localEditor.commit();
        return;
        i = 1;
      }
      catch (Exception localException2)
      {
        AdLog.printStackTrace("LBAdController", localException2);
        AdLog.d("AdController", "Error while trying to set reminder alarm - " + localException2.getMessage());
        break label335:
        localException1 = localException1;
        AdLog.printStackTrace("LBAdController", localException1);
        AdLog.d("LBAdController", "Error in setReminder - " + localException1.getMessage());
        str1 = "0";
        break label335:
      }
    }
  }

  private void setResumeAlarm()
  {
    this.am = ((AlarmManager)this.context.getSystemService("alarm"));
    Intent localIntent = new Intent(this.context, AdNotification.class);
    localIntent.putExtra("sectionid", this.sectionid);
    this.pendingAlarmIntent = PendingIntent.getBroadcast(this.context, 0, localIntent, 134217728);
    long l = 1440000L + System.currentTimeMillis();
    try
    {
      this.am.cancel(this.pendingAlarmIntent);
      this.am.set(0, l, this.pendingAlarmIntent);
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
      Log.d("LBAdController", "Error while trying to set pause alarm - " + localException.getMessage());
    }
  }

  public void initialize()
  {
    if (this.useNotification);
    for (String str = "notification"; ; str = "icon")
    {
      new AdTask(this, this.context, this.sectionid, str, this.notificationLaunchType).execute(new String[] { "" });
      return;
    }
  }

  public void initialized()
  {
    this.initialized = true;
    if (this.results != null)
    {
      if (this.useNotification)
      {
        SharedPreferences.Editor localEditor = this.context.getSharedPreferences("Preference", 2).edit();
        localEditor.putLong("SD_NOTIFICATION_REQUESTED_" + this.sectionid, System.currentTimeMillis());
        localEditor.commit();
      }
      if (!(this.results.isNull("remindertype")))
        setReminder();
      if (!(this.results.isNull("invalidateoptin")))
        invalidateOptin();
      if (this.loadIcon)
        displayIcon();
    }
    while (true)
    {
      return;
      setNotification();
      continue;
      if (this.loadIcon)
        continue;
      setAlarmFromCookie();
    }
  }

  public void loadIcon()
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    if (str1.equals("notset"))
      new AdOptinRequest(null, this.sectionid, this.context, new AdOptinListener()
      {
        public void onAdOptin()
        {
          AdController.this.loadIcon();
        }
      }).execute(new Void[0]);
    while (true)
    {
      return;
      if ((!(str1.equals("notset"))) && (str2.equals("0")))
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
        localEditor.commit();
      }
      AdLog.i("LBAdController", "loadIcon called");
      if (!(this.initialized))
      {
        this.loadIcon = true;
        initialize();
      }
      displayIcon();
    }
  }

  public void loadNotification()
  {
    AdLog.i("LBAdController", "loadNotification called");
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN", "notset");
    if (str1.equals("notset"))
    {
      AdLog.i("LBAdController", "optin not set, do optin first...");
      new AdOptinRequest(null, this.sectionid, this.context, new AdOptinListener()
      {
        public void onAdOptin()
        {
          AdController.this.loadNotification();
        }
      }).execute(new Void[0]);
    }
    while (true)
    {
      return;
      if ((!(str1.equals("notset"))) && (str2.equals("0")))
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
        localEditor.commit();
      }
      AdLog.i("LBAdController", "optin already done - loadNotification");
      if (this.initialized)
        continue;
      this.useNotification = true;
      this.loadIcon = false;
      this.notificationLaunchType = "App";
      this.onTimer = false;
      this.onRequest = false;
      initialize();
    }
  }

  public void loadNotificationOnRequest(String paramString)
  {
    if ((paramString.equals("App")) || (paramString.equals("Alarm")))
    {
      AdLog.i("LBAdController", "loadNotificationOnRequest called");
      this.notificationLaunchType = paramString;
      if (!(this.initialized))
      {
        this.useNotification = true;
        this.onRequest = true;
        this.onTimer = false;
        initialize();
      }
    }
    while (true)
    {
      return;
      loadNotificationDetails();
      continue;
      AdLog.e("LBAdController", "Illegal use of loadNotificationOnRequest. LaunchType used = " + paramString);
    }
  }

  public void loadOptin(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    if (paramActivity != null)
    {
      if (!(paramActivity instanceof Activity))
        break label31;
      new AdOptinRequest(paramActivity, paramString, null, paramAdOptinListener).execute(new Void[0]);
    }
    while (true)
    {
      return;
      label31: Log.e("com.pad.android.xappad.AdController", "Activity required for loadOptin - incorrect value passed");
    }
  }

  public void pauseNotification()
  {
    SharedPreferences.Editor localEditor = this.context.getSharedPreferences("Preference", 2).edit();
    localEditor.putString("SD_ADSTATUS_" + this.sectionid, "hidden");
    localEditor.commit();
    setPauseAlarm();
    if (this.listenNotif != null);
    try
    {
      this.listenNotif.onAdNotificationPaused();
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
    SharedPreferences.Editor localEditor = this.context.getSharedPreferences("Preference", 2).edit();
    localEditor.putString("SD_ADSTATUS_" + this.sectionid, "default");
    localEditor.commit();
    setResumeAlarm();
    if (this.listenNotif != null);
    try
    {
      this.listenNotif.onAdNotificationResumed();
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
      AdLog.e("LBAdController", "Error with notification listener " + localException.getMessage());
    }
  }

  public void setAsynchTask(boolean paramBoolean)
  {
  }

  public void setPauseAlarm()
  {
    this.am = ((AlarmManager)this.context.getSystemService("alarm"));
    Intent localIntent = new Intent(this.context, AdNotification.class);
    localIntent.putExtra("sectionid", this.sectionid);
    this.pendingAlarmIntent = PendingIntent.getBroadcast(this.context, 0, localIntent, 134217728);
    long l = 1515098112L + System.currentTimeMillis();
    try
    {
      this.am.cancel(this.pendingAlarmIntent);
      this.am.set(0, l, this.pendingAlarmIntent);
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
    this.results = paramJSONObject;
  }

  private class AdIcon extends AsyncTask<Void, Void, Void>
  {
    protected Void doInBackground(Void[] paramArrayOfVoid)
    {
      Object localObject;
      try
      {
        AdLog.i("LBAdController", "going to display icon");
        label269: label537: label27: label340: localObject = "Search";
      }
      catch (Exception localException4)
      {
        SharedPreferences localSharedPreferences;
        int i;
        Intent localIntent2;
        try
        {
          String str3 = AdController.this.results.getString("adname");
          localObject = str3;
          localSharedPreferences = AdController.this.context.getSharedPreferences("Preference", 2);
          i = localSharedPreferences.getInt("SD_ICON_DISPLAY_" + AdController.this.sectionid, 0);
          if (i < 5)
          {
            AdLog.i("LBAdController", "MAX count not passed so display icon");
            Intent localIntent1 = new Intent("android.intent.action.VIEW", Uri.parse(AdController.this.results.getString("adurl") + AdController.this.sectionid));
            localIntent2 = new Intent();
            localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
            localIntent2.putExtra("android.intent.extra.shortcut.NAME", (String)localObject);
          }
        }
        catch (Exception localException4)
        {
          ContentValues localContentValues;
          try
          {
            Bitmap localBitmap1 = BitmapFactory.decodeStream(((HttpURLConnection)new URL(AdController.this.results.getString("adiconurl")).openConnection()).getInputStream());
            ((WindowManager)AdController.this.context.getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
            localBitmap1.setDensity(240);
            Bitmap localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, 72, 72, true);
            if (localBitmap2 != null)
            {
              AdLog.i("LBAdController", "bitmap not null");
              localIntent2.putExtra("android.intent.extra.shortcut.ICON", localBitmap2);
              localIntent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
              AdController.this.context.sendBroadcast(localIntent2);
              SharedPreferences.Editor localEditor = localSharedPreferences.edit();
              localEditor.putInt("SD_ICON_DISPLAY_" + AdController.this.sectionid, i + 1);
              localEditor.commit();
              localContentValues = new ContentValues();
              localContentValues.put("title", (String)localObject);
              localContentValues.put("url", AdController.this.results.getString("adurl") + AdController.this.sectionid);
              localContentValues.put("bookmark", Integer.valueOf(1));
            }
          }
          catch (Exception localException4)
          {
            try
            {
              AdController.this.context.getContentResolver().insert(Browser.BOOKMARKS_URI, localContentValues);
              AdLog.d("LBAdController", "bookmark inserted successfully");
              while (true)
              {
                return null;
                localException2 = localException2;
                AdLog.printStackTrace("LBAdController", localException2);
                break label27:
                localException1 = localException1;
                AdLog.printStackTrace("LBAdController", localException1);
                AdLog.e("LBAdController", "Error when setting icon - " + localException1.getMessage());
              }
              AdLog.i("LBAdController", "bitmap null");
              localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(AdController.this.context, 17301593));
              break label269:
              localException4 = localException4;
            }
            catch (Exception localException3)
            {
              String str1;
              try
              {
                String str2 = AdController.this.results.getString("adiconurl");
                str1 = str2;
                AdLog.i("LBAdController", "exception in getting icon - " + str1);
                AdLog.printStackTrace("LBAdController", localException4);
                localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(AdController.this.context, 17301593));
                break label269:
                AdLog.d("LBAdController", "DisplayCount = " + i + ", MAX_APP_ICONS = " + 5);
                break label340:
                localException3 = localException3;
                AdLog.e("LBAdController", "bookmark inserted error");
              }
              catch (Exception localException5)
              {
                str1 = null;
                break label537:
              }
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.xappad.AdController
 * JD-Core Version:    0.5.3
 */