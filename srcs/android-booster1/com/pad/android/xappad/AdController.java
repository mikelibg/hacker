package com.pad.android.xappad;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.pad.android.listener.AdNotificationListener;
import com.pad.android.listener.AdOptinListener;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdOptin;
import com.pad.android.util.AdRequest;
import java.util.Calendar;
import org.json.JSONObject;

public class AdController
{
  public static final String LB_LOG = "LBAdController";
  public static final String SDK_LEVEL = "06";
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

  // ERROR //
  private void displayIcon()
  {
    // Byte code:
    //   0: ldc 8
    //   2: ldc 67
    //   4: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   7: aload_0
    //   8: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   11: ifnonnull +11 -> 22
    //   14: ldc 8
    //   16: ldc 75
    //   18: invokestatic 78	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: return
    //   22: aload_0
    //   23: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   26: ldc 80
    //   28: invokevirtual 86	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   31: ldc 88
    //   33: invokevirtual 92	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   36: ifeq -15 -> 21
    //   39: aload_0
    //   40: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   43: ifnull -22 -> 21
    //   46: ldc 8
    //   48: ldc 94
    //   50: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   53: ldc 96
    //   55: astore_2
    //   56: aload_0
    //   57: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   60: ldc 98
    //   62: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   65: astore 23
    //   67: aload 23
    //   69: astore_2
    //   70: aload_0
    //   71: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   74: ldc 104
    //   76: iconst_2
    //   77: invokevirtual 110	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   80: astore 4
    //   82: aload 4
    //   84: new 112	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 114
    //   90: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_0
    //   94: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   97: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: iconst_0
    //   104: invokeinterface 131 3 0
    //   109: istore 5
    //   111: iload 5
    //   113: iconst_5
    //   114: if_icmpge +433 -> 547
    //   117: ldc 8
    //   119: ldc 133
    //   121: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   124: new 135	android/content/Intent
    //   127: dup
    //   128: ldc 137
    //   130: new 112	java/lang/StringBuilder
    //   133: dup
    //   134: aload_0
    //   135: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   138: ldc 139
    //   140: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   143: invokestatic 145	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   146: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload_0
    //   150: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   153: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   159: invokestatic 151	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   162: invokespecial 154	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   165: astore 6
    //   167: new 135	android/content/Intent
    //   170: dup
    //   171: invokespecial 155	android/content/Intent:<init>	()V
    //   174: astore 7
    //   176: aload 7
    //   178: ldc 157
    //   180: aload 6
    //   182: invokevirtual 161	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   185: pop
    //   186: aload 7
    //   188: ldc 163
    //   190: aload_2
    //   191: invokevirtual 166	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   194: pop
    //   195: new 168	java/net/URL
    //   198: dup
    //   199: aload_0
    //   200: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   203: ldc 170
    //   205: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   208: invokespecial 171	java/net/URL:<init>	(Ljava/lang/String;)V
    //   211: invokevirtual 175	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   214: checkcast 177	java/net/HttpURLConnection
    //   217: invokevirtual 181	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   220: invokestatic 187	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   223: astore 19
    //   225: aload_0
    //   226: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   229: ldc 189
    //   231: invokevirtual 192	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   234: checkcast 194	android/view/WindowManager
    //   237: invokeinterface 198 1 0
    //   242: new 200	android/util/DisplayMetrics
    //   245: dup
    //   246: invokespecial 201	android/util/DisplayMetrics:<init>	()V
    //   249: invokevirtual 207	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   252: aload 19
    //   254: sipush 240
    //   257: invokevirtual 213	android/graphics/Bitmap:setDensity	(I)V
    //   260: aload 19
    //   262: bipush 72
    //   264: bipush 72
    //   266: iconst_1
    //   267: invokestatic 217	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   270: astore 20
    //   272: aload 20
    //   274: ifnull +204 -> 478
    //   277: ldc 8
    //   279: ldc 219
    //   281: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: aload 7
    //   286: ldc 221
    //   288: aload 20
    //   290: invokevirtual 161	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   293: pop
    //   294: aload 7
    //   296: ldc 223
    //   298: invokevirtual 227	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   301: pop
    //   302: aload_0
    //   303: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   306: aload 7
    //   308: invokevirtual 231	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   311: aload 4
    //   313: invokeinterface 235 1 0
    //   318: astore 13
    //   320: aload 13
    //   322: new 112	java/lang/StringBuilder
    //   325: dup
    //   326: ldc 114
    //   328: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   331: aload_0
    //   332: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   335: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: iload 5
    //   343: iconst_1
    //   344: iadd
    //   345: invokeinterface 241 3 0
    //   350: pop
    //   351: aload 13
    //   353: invokeinterface 245 1 0
    //   358: pop
    //   359: new 247	android/content/ContentValues
    //   362: dup
    //   363: invokespecial 248	android/content/ContentValues:<init>	()V
    //   366: astore 16
    //   368: aload 16
    //   370: ldc 250
    //   372: aload_2
    //   373: invokevirtual 253	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   376: aload 16
    //   378: ldc 255
    //   380: new 112	java/lang/StringBuilder
    //   383: dup
    //   384: aload_0
    //   385: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   388: ldc 139
    //   390: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   393: invokestatic 145	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   396: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   399: aload_0
    //   400: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   403: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   409: invokevirtual 253	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   412: aload 16
    //   414: ldc_w 257
    //   417: iconst_1
    //   418: invokestatic 262	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   421: invokevirtual 265	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   424: aload_0
    //   425: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   428: invokevirtual 269	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   431: getstatic 275	android/provider/Browser:BOOKMARKS_URI	Landroid/net/Uri;
    //   434: aload 16
    //   436: invokevirtual 281	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   439: pop
    //   440: ldc 8
    //   442: ldc_w 283
    //   445: invokestatic 286	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   448: return
    //   449: astore 17
    //   451: ldc 8
    //   453: ldc_w 288
    //   456: invokestatic 78	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   459: return
    //   460: astore_1
    //   461: ldc 8
    //   463: aload_1
    //   464: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   467: return
    //   468: astore_3
    //   469: ldc 8
    //   471: aload_3
    //   472: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   475: goto -405 -> 70
    //   478: ldc 8
    //   480: ldc_w 294
    //   483: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   486: aload 7
    //   488: ldc_w 296
    //   491: aload_0
    //   492: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   495: ldc_w 297
    //   498: invokestatic 303	android/content/Intent$ShortcutIconResource:fromContext	(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;
    //   501: invokevirtual 161	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   504: pop
    //   505: goto -211 -> 294
    //   508: astore 10
    //   510: ldc 8
    //   512: ldc_w 305
    //   515: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   518: ldc 8
    //   520: aload 10
    //   522: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   525: aload 7
    //   527: ldc_w 296
    //   530: aload_0
    //   531: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   534: ldc_w 297
    //   537: invokestatic 303	android/content/Intent$ShortcutIconResource:fromContext	(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;
    //   540: invokevirtual 161	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    //   543: pop
    //   544: goto -250 -> 294
    //   547: ldc 8
    //   549: new 112	java/lang/StringBuilder
    //   552: dup
    //   553: ldc_w 307
    //   556: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   559: iload 5
    //   561: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   564: ldc_w 312
    //   567: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   570: iconst_5
    //   571: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   574: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   577: invokestatic 286	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   580: goto -221 -> 359
    //
    // Exception table:
    //   from	to	target	type
    //   424	448	449	java/lang/Exception
    //   22	53	460	java/lang/Exception
    //   70	111	460	java/lang/Exception
    //   117	195	460	java/lang/Exception
    //   294	359	460	java/lang/Exception
    //   359	424	460	java/lang/Exception
    //   451	459	460	java/lang/Exception
    //   469	475	460	java/lang/Exception
    //   510	544	460	java/lang/Exception
    //   547	580	460	java/lang/Exception
    //   56	67	468	java/lang/Exception
    //   195	272	508	java/lang/Exception
    //   277	294	508	java/lang/Exception
    //   478	505	508	java/lang/Exception
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
    //   2: ldc_w 349
    //   5: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   12: ifnonnull +12 -> 24
    //   15: ldc 8
    //   17: ldc_w 351
    //   20: invokestatic 78	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: return
    //   24: aload_0
    //   25: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   28: ldc 80
    //   30: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   33: ldc 88
    //   35: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   38: ifeq +497 -> 535
    //   41: ldc 8
    //   43: ldc_w 353
    //   46: invokestatic 73	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: aload_0
    //   50: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   53: ldc_w 355
    //   56: invokevirtual 192	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   59: checkcast 357	android/app/NotificationManager
    //   62: astore 6
    //   64: iconst_5
    //   65: newarray int
    //   67: astore 7
    //   69: aload 7
    //   71: iconst_0
    //   72: ldc_w 358
    //   75: iastore
    //   76: aload 7
    //   78: iconst_1
    //   79: ldc_w 359
    //   82: iastore
    //   83: aload 7
    //   85: iconst_2
    //   86: ldc_w 360
    //   89: iastore
    //   90: aload 7
    //   92: iconst_3
    //   93: ldc_w 361
    //   96: iastore
    //   97: aload 7
    //   99: iconst_4
    //   100: ldc_w 362
    //   103: iastore
    //   104: aload_0
    //   105: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   108: ldc_w 364
    //   111: invokevirtual 367	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   114: istore 36
    //   116: aload 7
    //   118: iload 36
    //   120: iaload
    //   121: istore 11
    //   123: aload_0
    //   124: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   127: ldc_w 369
    //   130: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   133: astore 12
    //   135: ldc_w 371
    //   138: astore 13
    //   140: aload_0
    //   141: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   144: ldc_w 373
    //   147: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   150: astore 35
    //   152: aload 35
    //   154: astore 13
    //   156: aload_0
    //   157: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   160: ldc_w 369
    //   163: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   166: astore 15
    //   168: aload_0
    //   169: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   172: ldc_w 375
    //   175: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   178: astore 16
    //   180: aload 16
    //   182: astore 17
    //   184: aload_0
    //   185: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   188: ldc_w 377
    //   191: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   194: astore 33
    //   196: aload 33
    //   198: ldc_w 371
    //   201: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   204: ifne +489 -> 693
    //   207: aload 33
    //   209: ldc_w 369
    //   212: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   215: ifeq +22 -> 237
    //   218: aload_0
    //   219: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   222: aload 33
    //   224: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   227: astore 34
    //   229: aload 34
    //   231: astore 15
    //   233: aload 13
    //   235: astore 17
    //   237: invokestatic 383	java/lang/System:currentTimeMillis	()J
    //   240: lstore 19
    //   242: new 135	android/content/Intent
    //   245: dup
    //   246: ldc 137
    //   248: aload_0
    //   249: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   252: ldc_w 385
    //   255: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   258: invokestatic 151	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   261: invokespecial 154	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   264: astore 21
    //   266: aload_0
    //   267: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   270: iconst_0
    //   271: aload 21
    //   273: iconst_0
    //   274: invokestatic 391	android/app/PendingIntent:getActivity	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   277: astore 22
    //   279: new 393	android/app/Notification
    //   282: dup
    //   283: iload 11
    //   285: aload 12
    //   287: lload 19
    //   289: invokespecial 396	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   292: astore 23
    //   294: aload 23
    //   296: bipush 16
    //   298: aload 23
    //   300: getfield 399	android/app/Notification:flags	I
    //   303: ior
    //   304: putfield 399	android/app/Notification:flags	I
    //   307: aload 23
    //   309: aload_0
    //   310: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   313: aload 15
    //   315: aload 17
    //   317: aload 22
    //   319: invokevirtual 403	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   322: aload_0
    //   323: getfield 55	com/pad/android/xappad/AdController:context	Landroid/content/Context;
    //   326: ldc 104
    //   328: iconst_2
    //   329: invokevirtual 110	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   332: astore 24
    //   334: aload 24
    //   336: invokeinterface 235 1 0
    //   341: astore 25
    //   343: aload 24
    //   345: new 112	java/lang/StringBuilder
    //   348: dup
    //   349: ldc_w 405
    //   352: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   355: aload_0
    //   356: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   359: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: iconst_0
    //   366: invokeinterface 131 3 0
    //   371: istore 26
    //   373: ldc 8
    //   375: new 112	java/lang/StringBuilder
    //   378: dup
    //   379: ldc_w 407
    //   382: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: iload 26
    //   387: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   390: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   393: invokestatic 286	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   396: iload 26
    //   398: ifne +8 -> 406
    //   401: sipush 10001
    //   404: istore 26
    //   406: aload 6
    //   408: sipush 1001
    //   411: aload 23
    //   413: invokevirtual 411	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   416: aload 25
    //   418: new 112	java/lang/StringBuilder
    //   421: dup
    //   422: ldc_w 413
    //   425: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   428: aload_0
    //   429: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   432: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   438: lload 19
    //   440: invokeinterface 417 4 0
    //   445: pop
    //   446: aload 25
    //   448: invokeinterface 245 1 0
    //   453: pop
    //   454: ldc 8
    //   456: new 112	java/lang/StringBuilder
    //   459: dup
    //   460: ldc_w 419
    //   463: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   466: iload 26
    //   468: invokevirtual 310	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   471: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   474: invokestatic 286	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   477: aload_0
    //   478: getfield 45	com/pad/android/xappad/AdController:results	Lorg/json/JSONObject;
    //   481: ldc_w 421
    //   484: invokevirtual 102	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   487: ldc 88
    //   489: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   492: ifeq +43 -> 535
    //   495: aload 25
    //   497: new 112	java/lang/StringBuilder
    //   500: dup
    //   501: ldc_w 405
    //   504: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   507: aload_0
    //   508: getfield 57	com/pad/android/xappad/AdController:sectionid	Ljava/lang/String;
    //   511: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   517: iload 26
    //   519: iconst_1
    //   520: iadd
    //   521: invokeinterface 241 3 0
    //   526: pop
    //   527: aload 25
    //   529: invokeinterface 245 1 0
    //   534: pop
    //   535: aload_0
    //   536: invokespecial 423	com/pad/android/xappad/AdController:incrementIterationCounter	()V
    //   539: aload_0
    //   540: getfield 49	com/pad/android/xappad/AdController:onTimer	Z
    //   543: ifne +16 -> 559
    //   546: aload_0
    //   547: getfield 425	com/pad/android/xappad/AdController:notificationLaunchType	Ljava/lang/String;
    //   550: ldc_w 427
    //   553: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   556: ifeq -533 -> 23
    //   559: aload_0
    //   560: invokespecial 430	com/pad/android/xappad/AdController:setAlarm	()V
    //   563: return
    //   564: astore 5
    //   566: ldc 8
    //   568: new 112	java/lang/StringBuilder
    //   571: dup
    //   572: ldc_w 432
    //   575: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   578: aload 5
    //   580: invokevirtual 435	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   583: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   589: invokestatic 78	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   592: ldc 8
    //   594: aload 5
    //   596: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   599: return
    //   600: astore 10
    //   602: aload 7
    //   604: iconst_0
    //   605: iaload
    //   606: istore 11
    //   608: goto -485 -> 123
    //   611: astore 8
    //   613: aload 7
    //   615: iconst_0
    //   616: iaload
    //   617: pop
    //   618: aload 8
    //   620: athrow
    //   621: astore_3
    //   622: ldc 8
    //   624: aload_3
    //   625: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   628: aload_0
    //   629: invokespecial 423	com/pad/android/xappad/AdController:incrementIterationCounter	()V
    //   632: aload_0
    //   633: getfield 49	com/pad/android/xappad/AdController:onTimer	Z
    //   636: ifne +16 -> 652
    //   639: aload_0
    //   640: getfield 425	com/pad/android/xappad/AdController:notificationLaunchType	Ljava/lang/String;
    //   643: ldc_w 427
    //   646: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   649: ifeq -626 -> 23
    //   652: aload_0
    //   653: invokespecial 430	com/pad/android/xappad/AdController:setAlarm	()V
    //   656: return
    //   657: astore 4
    //   659: ldc 8
    //   661: new 112	java/lang/StringBuilder
    //   664: dup
    //   665: ldc_w 432
    //   668: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   671: aload 4
    //   673: invokevirtual 435	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   676: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   682: invokestatic 78	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   685: ldc 8
    //   687: aload 4
    //   689: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   692: return
    //   693: ldc_w 437
    //   696: astore 15
    //   698: ldc_w 439
    //   701: astore 17
    //   703: goto -466 -> 237
    //   706: astore_1
    //   707: aload_0
    //   708: invokespecial 423	com/pad/android/xappad/AdController:incrementIterationCounter	()V
    //   711: aload_0
    //   712: getfield 49	com/pad/android/xappad/AdController:onTimer	Z
    //   715: ifne +16 -> 731
    //   718: aload_0
    //   719: getfield 425	com/pad/android/xappad/AdController:notificationLaunchType	Ljava/lang/String;
    //   722: ldc_w 427
    //   725: invokevirtual 342	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   728: ifeq +7 -> 735
    //   731: aload_0
    //   732: invokespecial 430	com/pad/android/xappad/AdController:setAlarm	()V
    //   735: aload_1
    //   736: athrow
    //   737: astore_2
    //   738: ldc 8
    //   740: new 112	java/lang/StringBuilder
    //   743: dup
    //   744: ldc_w 432
    //   747: invokespecial 117	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   750: aload_2
    //   751: invokevirtual 435	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   754: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: invokevirtual 125	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   760: invokestatic 78	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   763: ldc 8
    //   765: aload_2
    //   766: invokestatic 292	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   769: goto -34 -> 735
    //   772: astore 28
    //   774: goto -239 -> 535
    //   777: astore 27
    //   779: goto -325 -> 454
    //   782: astore 18
    //   784: goto -547 -> 237
    //   787: astore 14
    //   789: goto -633 -> 156
    //
    // Exception table:
    //   from	to	target	type
    //   539	559	564	java/lang/Exception
    //   559	563	564	java/lang/Exception
    //   104	116	600	java/lang/Exception
    //   104	116	611	finally
    //   24	69	621	java/lang/Exception
    //   116	123	621	java/lang/Exception
    //   123	135	621	java/lang/Exception
    //   156	180	621	java/lang/Exception
    //   237	396	621	java/lang/Exception
    //   406	416	621	java/lang/Exception
    //   454	477	621	java/lang/Exception
    //   602	608	621	java/lang/Exception
    //   613	621	621	java/lang/Exception
    //   632	652	657	java/lang/Exception
    //   652	656	657	java/lang/Exception
    //   24	69	706	finally
    //   116	123	706	finally
    //   123	135	706	finally
    //   140	152	706	finally
    //   156	180	706	finally
    //   184	229	706	finally
    //   237	396	706	finally
    //   406	416	706	finally
    //   416	454	706	finally
    //   454	477	706	finally
    //   477	535	706	finally
    //   602	608	706	finally
    //   613	621	706	finally
    //   622	628	706	finally
    //   711	731	737	java/lang/Exception
    //   731	735	737	java/lang/Exception
    //   477	535	772	java/lang/Exception
    //   416	454	777	java/lang/Exception
    //   184	229	782	java/lang/Exception
    //   140	152	787	java/lang/Exception
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
      return;
    }
    loadNotificationTimerDetails();
  }

  private void loadNotificationTimerDetails()
  {
    if (this.results == null)
    {
      AdLog.e("LBAdController", "Notification will not be loaded - no internet connection");
      return;
    }
    try
    {
      if (this.results.getString("show").equals("1"));
      setAlarm();
      return;
    }
    catch (Exception localException)
    {
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  private void setAlarm()
  {
    AdLog.i("LBAdController", "setAlarm called");
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    if (this.results.length() > 1)
      AdLog.i("LBAdController", "internet connection found....initialize alarm from settings - Result Length=" + this.results.length() + ", Results = " + this.results.toString());
    try
    {
      int i = Integer.valueOf(localSharedPreferences.getString("SD_ITERATION_COUNTER_" + this.sectionid, "0")).intValue();
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
          l1 = System.currentTimeMillis();
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
          AdLog.e("LBAdController", "Error caused while setting Alarm (if case): " + localException3.getMessage());
          AdLog.printStackTrace("LBAdController", localException3);
          return;
        }
      }
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
        return;
      }
      catch (Exception localException4)
      {
        AdLog.e("LBAdController", "Error caused while setting Alarm (else case): " + localException4.getMessage());
        AdLog.printStackTrace("LBAdController", localException4);
        return;
      }
      setAlarmFromCookie();
      return;
    }
    catch (Exception localException1)
    {
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
        return;
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
      }
    }
  }

  private void setNotification()
  {
    AdLog.d("LBAdController", "setNotification called");
    if (this.results == null)
      AdLog.e("LBAdController", "Results are null - no notification will be loaded");
    String str;
    do
    {
      return;
      try
      {
        if (this.onRequest)
        {
          loadNotificationDetails();
          return;
        }
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
        return;
      }
      if (this.onTimer)
      {
        loadNotificationTimerDetails();
        return;
      }
      if (!(this.results.getString("show").equals("1")))
        break label133;
      str = this.results.getString("notificationtype");
      if (!(str.equals("Immediate")))
        continue;
      AdLog.i("LBAdController", "Immediate notification to be fired");
      loadNotificationOnRequest("App");
      return;
    }
    while (!(str.equals("Recurring")));
    AdLog.i("LBAdController", "Recurring notification to be created");
    loadNotificationOnTimer();
    return;
    label133: AdLog.i("LBAdController", "Notification results - " + this.results.toString());
    AdLog.i("LBAdController", "Notification not be set for this user");
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
          label337: localAlarmManager = (AlarmManager)this.context.getSystemService("alarm");
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
        break label337:
        localException1 = localException1;
        AdLog.printStackTrace("LBAdController", localException1);
        AdLog.d("LBAdController", "Error in setReminder - " + localException1.getMessage());
        str1 = "0";
        break label337:
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
      new AdRequest(null, this, null, this.context, this.sectionid, str, this.notificationLaunchType).execute(new String[] { "" });
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
    do
    {
      return;
      setNotification();
      return;
    }
    while (this.loadIcon);
    setAlarmFromCookie();
  }

  public void loadIcon()
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    if (str1.equals("notset"))
    {
      AdOptin localAdOptin = new AdOptin(null, this);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = null;
      arrayOfObject[1] = this.sectionid;
      arrayOfObject[2] = this.context;
      arrayOfObject[3] = "icon";
      localAdOptin.execute(arrayOfObject);
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
    if (!(this.initialized))
    {
      this.loadIcon = true;
      initialize();
      return;
    }
    displayIcon();
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
      AdOptin localAdOptin = new AdOptin(null, this);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = null;
      arrayOfObject[1] = this.sectionid;
      arrayOfObject[2] = this.context;
      arrayOfObject[3] = "notification";
      localAdOptin.execute(arrayOfObject);
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
    while (this.initialized);
    this.useNotification = true;
    this.loadIcon = false;
    this.notificationLaunchType = "App";
    this.onTimer = false;
    this.onRequest = false;
    initialize();
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
        return;
      }
      loadNotificationDetails();
      return;
    }
    AdLog.e("LBAdController", "Illegal use of loadNotificationOnRequest. LaunchType used = " + paramString);
  }

  public void loadOptin(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    if (paramActivity == null)
      return;
    new AdOptin(null, null).execute(new Object[] { paramActivity, paramString, null, null, paramAdOptinListener });
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
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.xappad.AdController
 * JD-Core Version:    0.5.3
 */