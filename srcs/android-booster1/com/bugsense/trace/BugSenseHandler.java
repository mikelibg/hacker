package com.bugsense.trace;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.io.FilenameFilter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class BugSenseHandler
{
  private static Map<String, String> extraData;
  public static Context gContext;
  private static int sMinDelay;
  private static boolean sSetupCalled;
  private static ArrayList<String[]> sStackTraces = null;
  private static ActivityAsyncTask<Processor, Object, Object, Object> sTask;
  private static int sTimeout;
  private static boolean sVerbose = false;

  static
  {
    sMinDelay = 0;
    sTimeout = 1;
    sSetupCalled = false;
    gContext = null;
    extraData = new HashMap();
  }

  private static String CheckNetworkConnection(String paramString)
  {
    if (gContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", G.APP_PACKAGE) == 0)
    {
      NetworkInfo[] arrayOfNetworkInfo = ((ConnectivityManager)gContext.getSystemService("connectivity")).getAllNetworkInfo();
      int i = arrayOfNetworkInfo.length;
      str = "false";
      for (int j = 0; ; ++j)
      {
        if (j >= i)
          break label85;
        NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
        if ((!(localNetworkInfo.getTypeName().equalsIgnoreCase(paramString))) || (!(localNetworkInfo.isConnected())))
          continue;
        str = "true";
      }
    }
    String str = "not available [permissions]";
    label85: return str;
  }

  public static String[] ScreenProperties()
  {
    String[] arrayOfString = { "Not available", "Not available", "Not available", "Not available", "Not available" };
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    gContext.getPackageManager();
    Display localDisplay = ((WindowManager)gContext.getSystemService("window")).getDefaultDisplay();
    int i = localDisplay.getWidth();
    int j = localDisplay.getHeight();
    Log.i(G.TAG, Build.VERSION.RELEASE);
    int k = localDisplay.getOrientation();
    arrayOfString[0] = Integer.toString(i);
    arrayOfString[1] = Integer.toString(j);
    String str = "";
    switch (k)
    {
    default:
    case 0:
    case 2:
    case 3:
    case 1:
    }
    while (true)
    {
      arrayOfString[2] = str;
      localDisplay.getMetrics(localDisplayMetrics);
      arrayOfString[3] = Float.toString(localDisplayMetrics.xdpi);
      arrayOfString[4] = Float.toString(localDisplayMetrics.ydpi);
      return arrayOfString;
      str = "normal";
      continue;
      str = "180";
      continue;
      str = "270";
      continue;
      str = "90";
    }
  }

  public static void addExtra(String paramString1, String paramString2)
  {
    if (extraData == null)
      extraData = new HashMap();
    extraData.put(paramString1, paramString2);
  }

  public static void addExtras(HashMap<String, String> paramHashMap)
  {
    if (extraData == null)
      extraData = new HashMap();
    Iterator localIterator = paramHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      extraData.put(localEntry.getKey(), localEntry.getValue());
    }
  }

  private static boolean checkForRoot()
  {
    for (String str : new String[] { "/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/" })
      if (new File(str + "su").exists())
        return true;
    return false;
  }

  public static Map<String, String> getExtraData()
  {
    if (extraData == null)
      extraData = new HashMap();
    return extraData;
  }

  private static int getResId(String paramString, Context paramContext, Class<?> paramClass)
  {
    try
    {
      Field localField = paramClass.getDeclaredField(paramString);
      int i = localField.getInt(localField);
      return i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return -1;
  }

  // ERROR //
  private static ArrayList<String[]> getStackTraces()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_0
    //   2: getstatic 25	com/bugsense/trace/BugSenseHandler:sStackTraces	Ljava/util/ArrayList;
    //   5: ifnull +7 -> 12
    //   8: getstatic 25	com/bugsense/trace/BugSenseHandler:sStackTraces	Ljava/util/ArrayList;
    //   11: areturn
    //   12: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   15: new 235	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   22: ldc_w 279
    //   25: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: getstatic 282	com/bugsense/trace/G:FILES_PATH	Ljava/lang/String;
    //   31: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokestatic 285	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: new 233	java/io/File
    //   44: dup
    //   45: new 235	java/lang/StringBuilder
    //   48: dup
    //   49: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   52: getstatic 282	com/bugsense/trace/G:FILES_PATH	Ljava/lang/String;
    //   55: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc_w 287
    //   61: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokespecial 247	java/io/File:<init>	(Ljava/lang/String;)V
    //   70: astore_2
    //   71: aload_2
    //   72: invokevirtual 250	java/io/File:exists	()Z
    //   75: ifne +8 -> 83
    //   78: aload_2
    //   79: invokevirtual 290	java/io/File:mkdir	()Z
    //   82: pop
    //   83: aload_2
    //   84: new 292	com/bugsense/trace/BugSenseHandler$4
    //   87: dup
    //   88: invokespecial 293	com/bugsense/trace/BugSenseHandler$4:<init>	()V
    //   91: invokevirtual 297	java/io/File:list	(Ljava/io/FilenameFilter;)[Ljava/lang/String;
    //   94: astore_3
    //   95: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   98: new 235	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   105: ldc_w 299
    //   108: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload_3
    //   112: arraylength
    //   113: invokevirtual 302	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   116: ldc_w 304
    //   119: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokestatic 285	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   128: pop
    //   129: new 306	java/util/ArrayList
    //   132: dup
    //   133: invokespecial 307	java/util/ArrayList:<init>	()V
    //   136: putstatic 25	com/bugsense/trace/BugSenseHandler:sStackTraces	Ljava/util/ArrayList;
    //   139: iconst_0
    //   140: istore 9
    //   142: iload 9
    //   144: aload_3
    //   145: arraylength
    //   146: if_icmpge +13 -> 159
    //   149: getstatic 25	com/bugsense/trace/BugSenseHandler:sStackTraces	Ljava/util/ArrayList;
    //   152: invokevirtual 310	java/util/ArrayList:size	()I
    //   155: iconst_5
    //   156: if_icmplt +59 -> 215
    //   159: getstatic 25	com/bugsense/trace/BugSenseHandler:sStackTraces	Ljava/util/ArrayList;
    //   162: astore 10
    //   164: iload_0
    //   165: aload_3
    //   166: arraylength
    //   167: if_icmpge +394 -> 561
    //   170: new 233	java/io/File
    //   173: dup
    //   174: new 235	java/lang/StringBuilder
    //   177: dup
    //   178: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   181: getstatic 282	com/bugsense/trace/G:FILES_PATH	Ljava/lang/String;
    //   184: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: ldc_w 287
    //   190: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: aload_3
    //   194: iload_0
    //   195: aaload
    //   196: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokespecial 247	java/io/File:<init>	(Ljava/lang/String;)V
    //   205: invokevirtual 313	java/io/File:delete	()Z
    //   208: pop
    //   209: iinc 0 1
    //   212: goto -48 -> 164
    //   215: new 235	java/lang/StringBuilder
    //   218: dup
    //   219: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   222: getstatic 282	com/bugsense/trace/G:FILES_PATH	Ljava/lang/String;
    //   225: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: ldc_w 287
    //   231: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload_3
    //   235: iload 9
    //   237: aaload
    //   238: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: astore 14
    //   246: aload_3
    //   247: iload 9
    //   249: aaload
    //   250: ldc_w 315
    //   253: invokevirtual 319	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   256: iconst_0
    //   257: aaload
    //   258: astore 19
    //   260: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   263: new 235	java/lang/StringBuilder
    //   266: dup
    //   267: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   270: ldc_w 321
    //   273: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: aload 14
    //   278: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: ldc_w 323
    //   284: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: aload 19
    //   289: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: invokestatic 285	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   298: pop
    //   299: new 235	java/lang/StringBuilder
    //   302: dup
    //   303: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   306: astore 21
    //   308: new 325	java/io/BufferedReader
    //   311: dup
    //   312: new 327	java/io/FileReader
    //   315: dup
    //   316: aload 14
    //   318: invokespecial 328	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   321: invokespecial 331	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   324: astore 22
    //   326: aconst_null
    //   327: astore 23
    //   329: aconst_null
    //   330: astore 24
    //   332: aload 22
    //   334: invokevirtual 334	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   337: astore 26
    //   339: aload 26
    //   341: ifnull +68 -> 409
    //   344: aload 24
    //   346: ifnonnull +257 -> 603
    //   349: aload 26
    //   351: astore 24
    //   353: goto -21 -> 332
    //   356: aload 21
    //   358: aload 26
    //   360: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: pop
    //   364: aload 21
    //   366: ldc_w 336
    //   369: invokestatic 341	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   372: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: pop
    //   376: goto -44 -> 332
    //   379: astore 25
    //   381: aload 22
    //   383: invokevirtual 344	java/io/BufferedReader:close	()V
    //   386: aload 25
    //   388: athrow
    //   389: astore 17
    //   391: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   394: ldc_w 346
    //   397: aload 17
    //   399: invokestatic 350	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   402: pop
    //   403: iinc 9 1
    //   406: goto -264 -> 142
    //   409: aload 22
    //   411: invokevirtual 344	java/io/BufferedReader:close	()V
    //   414: aload 21
    //   416: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: astore 27
    //   421: getstatic 25	com/bugsense/trace/BugSenseHandler:sStackTraces	Ljava/util/ArrayList;
    //   424: iconst_4
    //   425: anewarray 87	java/lang/String
    //   428: dup
    //   429: iconst_0
    //   430: aload 19
    //   432: aastore
    //   433: dup
    //   434: iconst_1
    //   435: aload 24
    //   437: aastore
    //   438: dup
    //   439: iconst_2
    //   440: aload 23
    //   442: aastore
    //   443: dup
    //   444: iconst_3
    //   445: aload 27
    //   447: aastore
    //   448: invokevirtual 354	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   451: pop
    //   452: goto -49 -> 403
    //   455: astore 15
    //   457: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   460: ldc_w 346
    //   463: aload 15
    //   465: invokestatic 350	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   468: pop
    //   469: goto -66 -> 403
    //   472: astore 5
    //   474: iload_0
    //   475: aload_3
    //   476: arraylength
    //   477: if_icmpge +123 -> 600
    //   480: new 233	java/io/File
    //   483: dup
    //   484: new 235	java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   491: getstatic 282	com/bugsense/trace/G:FILES_PATH	Ljava/lang/String;
    //   494: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: ldc_w 287
    //   500: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: aload_3
    //   504: iload_0
    //   505: aaload
    //   506: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   509: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   512: invokespecial 247	java/io/File:<init>	(Ljava/lang/String;)V
    //   515: invokevirtual 313	java/io/File:delete	()Z
    //   518: pop
    //   519: iinc 0 1
    //   522: goto -48 -> 474
    //   525: astore 11
    //   527: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   530: new 235	java/lang/StringBuilder
    //   533: dup
    //   534: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   537: ldc_w 356
    //   540: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   543: aload_3
    //   544: iload_0
    //   545: aaload
    //   546: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   549: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   552: aload 11
    //   554: invokestatic 350	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   557: pop
    //   558: goto -349 -> 209
    //   561: aload 10
    //   563: areturn
    //   564: astore 6
    //   566: getstatic 126	com/bugsense/trace/G:TAG	Ljava/lang/String;
    //   569: new 235	java/lang/StringBuilder
    //   572: dup
    //   573: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   576: ldc_w 356
    //   579: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   582: aload_3
    //   583: iload_0
    //   584: aaload
    //   585: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: invokevirtual 244	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   591: aload 6
    //   593: invokestatic 350	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   596: pop
    //   597: goto -78 -> 519
    //   600: aload 5
    //   602: athrow
    //   603: aload 23
    //   605: ifnonnull -249 -> 356
    //   608: aload 26
    //   610: astore 23
    //   612: goto -280 -> 332
    //
    // Exception table:
    //   from	to	target	type
    //   332	339	379	finally
    //   356	376	379	finally
    //   246	326	389	java/io/FileNotFoundException
    //   381	389	389	java/io/FileNotFoundException
    //   409	452	389	java/io/FileNotFoundException
    //   246	326	455	java/io/IOException
    //   381	389	455	java/io/IOException
    //   409	452	455	java/io/IOException
    //   129	139	472	finally
    //   142	159	472	finally
    //   159	164	472	finally
    //   215	246	472	finally
    //   246	326	472	finally
    //   381	389	472	finally
    //   391	403	472	finally
    //   409	452	472	finally
    //   457	469	472	finally
    //   170	209	525	java/lang/Exception
    //   480	519	564	java/lang/Exception
  }

  private static boolean hasStrackTraces()
  {
    return (getStackTraces().size() > 0);
  }

  private static void installHandler()
  {
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    if ((localUncaughtExceptionHandler != null) && (sVerbose))
      Log.d(G.TAG, "current handler class=" + localUncaughtExceptionHandler.getClass().getName());
    if (localUncaughtExceptionHandler instanceof DefaultExceptionHandler)
      return;
    Thread.setDefaultUncaughtExceptionHandler(new DefaultExceptionHandler(localUncaughtExceptionHandler));
  }

  public static String isGPSOn()
  {
    if (gContext.getPackageManager().checkPermission("android.permission.ACCESS_FINE_LOCATION", G.APP_PACKAGE) == 0)
      if (!(((LocationManager)gContext.getSystemService("location")).isProviderEnabled("gps")))
        return "false";
    else
      return "not available [permissions]";
    return "true";
  }

  public static String isMobileNetworkOn()
  {
    return CheckNetworkConnection("MOBILE");
  }

  public static String isWifiOn()
  {
    return CheckNetworkConnection("WIFI");
  }

  public static void log(String paramString, Exception paramException)
  {
    log(paramString, new HashMap(), paramException);
  }

  public static void log(String paramString, Map<String, String> paramMap, Exception paramException)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    if (G.API_KEY == null)
    {
      Log.d(G.TAG, "Could not send: API KEY is missing");
      return;
    }
    Log.d(G.TAG, "Transmitting log data");
    try
    {
      paramException.printStackTrace(localPrintWriter);
      BugSense.submitError(gContext, 0, null, localStringWriter.toString(), "LOG_" + paramString, paramMap);
      return;
    }
    catch (Exception localException)
    {
      Log.d(G.TAG, "Failed to transmit log data:");
    }
  }

  private static void notifyContextGone()
  {
    if (sTask == null)
      return;
    sTask.connectTo(null);
  }

  public static boolean setup(Context paramContext, Processor paramProcessor, String paramString1, String paramString2)
  {
    G.API_KEY = paramString1;
    G.APPID = paramString2;
    gContext = paramContext;
    if (sSetupCalled)
    {
      if ((sTask != null) && (!(sTask.postProcessingDone())))
      {
        sTask.connectTo(null);
        sTask.connectTo(paramProcessor);
      }
      return false;
    }
    sSetupCalled = true;
    Log.i(G.TAG, "Registering default exceptions handler");
    G.FILES_PATH = paramContext.getFilesDir().getAbsolutePath();
    G.PHONE_MODEL = Build.MODEL;
    G.ANDROID_VERSION = Build.VERSION.RELEASE;
    G.HAS_ROOT = checkForRoot();
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      G.APP_VERSION = localPackageInfo.versionName;
      G.APP_PACKAGE = localPackageInfo.packageName;
      if (sVerbose)
      {
        Log.i(G.TAG, "TRACE_VERSION: " + G.TraceVersion);
        Log.d(G.TAG, "APP_VERSION: " + G.APP_VERSION);
        Log.d(G.TAG, "APP_PACKAGE: " + G.APP_PACKAGE);
        Log.d(G.TAG, "FILES_PATH: " + G.FILES_PATH);
        Log.d(G.TAG, "URL: " + G.URL);
      }
      getStackTraces();
      installHandler();
      paramProcessor.handlerInstalled();
      return submit(paramProcessor);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e(G.TAG, "Error collecting trace information", localNameNotFoundException);
    }
  }

  public static boolean setup(Context paramContext, String paramString1, String paramString2)
  {
    return setup(paramContext, new Processor()
    {
      public boolean beginSubmit()
      {
        return true;
      }

      public void handlerInstalled()
      {
      }

      public void submitDone()
      {
      }
    }
    , paramString1, paramString2);
  }

  public static void showUpgradeNotification(String paramString)
  {
    try
    {
      Context localContext = gContext;
      NotificationManager localNotificationManager = (NotificationManager)gContext.getSystemService("notification");
      JSONObject localJSONObject = new JSONObject(new JSONObject(paramString).getString("data"));
      String str = localJSONObject.getString("tickerText");
      long l = System.currentTimeMillis();
      Notification localNotification = new Notification(gContext.getResources().getIdentifier("icon", "drawable", gContext.getPackageName()), str, l);
      localNotification.flags = 16;
      localNotification.setLatestEventInfo(localContext, localJSONObject.getString("contentTitle"), localJSONObject.getString("contentText"), PendingIntent.getActivity(localContext, 0, new Intent("android.intent.action.VIEW", Uri.parse(localJSONObject.getString("url"))), 268435456));
      localNotificationManager.notify(1, localNotification);
      return;
    }
    catch (Exception localException)
    {
      Log.e(G.TAG, "Error starting", localException);
    }
  }

  private static boolean submit()
  {
    return submit(new Processor()
    {
      public boolean beginSubmit()
      {
        return true;
      }

      public void handlerInstalled()
      {
      }

      public void submitDone()
      {
      }
    });
  }

  private static boolean submit(Processor paramProcessor)
  {
    if (!(sSetupCalled))
      throw new RuntimeException("you need to call setup() first");
    boolean bool = hasStrackTraces();
    if ((bool) && (paramProcessor.beginSubmit()))
    {
      ArrayList localArrayList = sStackTraces;
      sStackTraces = null;
      sTask = new ActivityAsyncTask(paramProcessor, localArrayList)
      {
        private long mTimeStarted;

        protected Object doInBackground(Object[] paramArrayOfObject)
        {
          BugSenseHandler.access$000(this.val$tracesNowSubmitting);
          long l = BugSenseHandler.sMinDelay - (System.currentTimeMillis() - this.mTimeStarted);
          if (l > 0L);
          try
          {
            Thread.sleep(l);
            return null;
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }

        protected void onCancelled()
        {
          super.onCancelled();
        }

        protected void onPreExecute()
        {
          super.onPreExecute();
          this.mTimeStarted = System.currentTimeMillis();
        }

        protected void processPostExecute(Object paramObject)
        {
          ((BugSenseHandler.Processor)this.mWrapped).submitDone();
        }
      };
      sTask.execute(new Object[0]);
    }
    return bool;
  }

  private static void submitStackTraces(ArrayList<String[]> paramArrayList)
  {
    if (paramArrayList == null)
      return;
    int i = 0;
    while (true)
      try
      {
        if (i < paramArrayList.size());
        String[] arrayOfString = (String[])paramArrayList.get(i);
        arrayOfString[0];
        arrayOfString[1];
        arrayOfString[2];
        String str = arrayOfString[3];
        BugSense.submitError(gContext, sTimeout, null, str);
        ++i;
      }
      catch (Exception localException)
      {
        Log.e(G.TAG, "Error submitting trace", localException);
      }
  }

  public static abstract interface Processor
  {
    public abstract boolean beginSubmit();

    public abstract void handlerInstalled();

    public abstract void submitDone();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.bugsense.trace.BugSenseHandler
 * JD-Core Version:    0.5.3
 */