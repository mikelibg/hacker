package com.millennialmedia.android;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteException;
import android.location.Location;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StatFs;
import android.os.Vibrator;
import android.util.Log;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;

class MMAdViewController
{
  private static String cachedVideoList;
  private static boolean cachedVideoListLoaded;
  private static HashSet cachedVideoSet;
  private static final HashMap<Long, MMAdViewController> controllers = new HashMap();
  private WeakReference<MMAdView> adViewRef;
  private boolean appPaused;
  private Handler cacheHandler = new Handler(Looper.getMainLooper());
  boolean canAccelerate;
  private String fetchedBaseUrlLaunch;
  private String fetchedBaseUrlTransition;
  private String fetchedContentLaunch;
  private String fetchedContentTransition;
  private long fetchedTimeLaunch;
  private long fetchedTimeTransition;
  private Handler handler;
  String nextUrl;
  String overlayTitle;
  String overlayTransition;
  private boolean paused = true;
  private boolean refreshTimerOn;
  boolean requestInProgress;
  private Runnable runnable = new Runnable()
  {
    public void run()
    {
      MMAdViewController.this.chooseCachedAdOrAdCall(false);
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        return;
        MMAdViewController.this.handler.postDelayed(this, 1000 * localMMAdView.refreshInterval);
      }
    }
  };
  boolean shouldEnableBottomBar;
  boolean shouldLaunchToOverlay;
  boolean shouldMakeOverlayTransparent;
  int shouldResizeOverlay;
  boolean shouldShowBottomBar;
  boolean shouldShowTitlebar;
  private long timeRemaining;
  private long timeResumed;
  long transitionTime;
  private String urlString;
  private String useragent;
  private WebView webView;

  private MMAdViewController(MMAdView paramMMAdView)
  {
    resetAdViewSettings();
    this.adViewRef = new WeakReference(paramMMAdView);
    this.webView = new WebView(paramMMAdView.getContext().getApplicationContext());
    this.webView.getSettings().setJavaScriptEnabled(true);
    this.webView.getSettings().setCacheMode(2);
    this.webView.setBackgroundColor(0);
    this.webView.setWillNotDraw(false);
    this.webView.addJavascriptInterface(new MMJSInterface(null), "interface");
    this.webView.setId(15063);
    this.useragent = this.webView.getSettings().getUserAgentString() + Build.MODEL;
  }

  // ERROR //
  private void DownloadLastAd(MMAdView paramMMAdView, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   4: ldc 172
    //   6: iconst_0
    //   7: invokevirtual 176	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   10: ldc 178
    //   12: aconst_null
    //   13: invokeinterface 184 3 0
    //   18: astore_3
    //   19: aconst_null
    //   20: astore 4
    //   22: new 147	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   29: ldc 186
    //   31: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: aload_3
    //   35: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   44: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   47: dup
    //   48: aload_1
    //   49: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   52: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   55: astore 5
    //   57: aload 5
    //   59: aload_3
    //   60: invokevirtual 199	com/millennialmedia/android/AdDatabaseHelper:getVideoAd	(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    //   63: astore 12
    //   65: aload 12
    //   67: astore 8
    //   69: aload 5
    //   71: ifnull +121 -> 192
    //   74: aload 5
    //   76: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   79: aload 8
    //   81: ifnull +80 -> 161
    //   84: aload_0
    //   85: aload_1
    //   86: invokespecial 205	com/millennialmedia/android/MMAdViewController:adIsCaching	(Lcom/millennialmedia/android/MMAdView;)V
    //   89: ldc 207
    //   91: ldc 209
    //   93: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   96: pop
    //   97: aload 8
    //   99: astore 10
    //   101: aload_0
    //   102: getfield 74	com/millennialmedia/android/MMAdViewController:cacheHandler	Landroid/os/Handler;
    //   105: new 217	com/millennialmedia/android/MMAdViewController$7
    //   108: dup
    //   109: aload_0
    //   110: aload 10
    //   112: invokespecial 220	com/millennialmedia/android/MMAdViewController$7:<init>	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V
    //   115: invokevirtual 224	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   118: pop
    //   119: return
    //   120: astore 6
    //   122: aload 6
    //   124: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   127: aconst_null
    //   128: astore 8
    //   130: aload 4
    //   132: ifnull -53 -> 79
    //   135: aload 4
    //   137: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   140: aconst_null
    //   141: astore 8
    //   143: goto -64 -> 79
    //   146: astore 7
    //   148: aload 4
    //   150: ifnull +8 -> 158
    //   153: aload 4
    //   155: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   158: aload 7
    //   160: athrow
    //   161: ldc 229
    //   163: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   166: aload_0
    //   167: iload_2
    //   168: invokespecial 235	com/millennialmedia/android/MMAdViewController:getNextAd	(Z)V
    //   171: goto -52 -> 119
    //   174: astore 7
    //   176: aload 5
    //   178: astore 4
    //   180: goto -32 -> 148
    //   183: astore 6
    //   185: aload 5
    //   187: astore 4
    //   189: goto -67 -> 122
    //   192: goto -113 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   44	57	120	android/database/sqlite/SQLiteException
    //   44	57	146	finally
    //   122	127	146	finally
    //   57	65	174	finally
    //   57	65	183	android/database/sqlite/SQLiteException
  }

  private void adDoneCaching(MMAdView paramMMAdView, boolean paramBoolean)
  {
    if ((paramMMAdView != null) && (paramMMAdView.listener != null));
    try
    {
      paramMMAdView.listener.MMAdCachingCompleted(paramMMAdView, paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException);
    }
  }

  private void adFailed(MMAdView paramMMAdView)
  {
    if ((paramMMAdView != null) && (paramMMAdView.listener != null));
    try
    {
      paramMMAdView.listener.MMAdFailed(paramMMAdView);
      return;
    }
    catch (Exception localException)
    {
      Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException);
    }
  }

  private void adIsCaching(MMAdView paramMMAdView)
  {
    if ((paramMMAdView != null) && (paramMMAdView.listener != null));
    try
    {
      paramMMAdView.listener.MMAdRequestIsCaching(paramMMAdView);
      return;
    }
    catch (Exception localException)
    {
      Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException);
    }
  }

  private void adSuccess(MMAdView paramMMAdView)
  {
    if ((paramMMAdView != null) && (paramMMAdView.listener != null));
    try
    {
      paramMMAdView.listener.MMAdReturned(paramMMAdView);
      return;
    }
    catch (Exception localException)
    {
      Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException);
    }
  }

  static void assignAdViewController(MMAdView paramMMAdView)
  {
    monitorenter;
    int i = 1;
    try
    {
      MMAdViewController localMMAdViewController1 = paramMMAdView.controller;
      if (localMMAdViewController1 != null)
        label14: return;
      if (paramMMAdView.getId() != -1)
        break label44;
    }
    finally
    {
      monitorexit;
    }
    label44: MMAdViewController localMMAdViewController2 = (MMAdViewController)controllers.get(paramMMAdView.adViewId);
    if (localMMAdViewController2 == null)
    {
      localMMAdViewController2 = new MMAdViewController(paramMMAdView);
      controllers.put(paramMMAdView.adViewId, localMMAdViewController2);
      i = 0;
    }
    localMMAdViewController2.adViewRef = new WeakReference(paramMMAdView);
    paramMMAdView.controller = localMMAdViewController2;
    if (localMMAdViewController2.webView.getParent() != null)
      ((ViewGroup)localMMAdViewController2.webView.getParent()).removeView(localMMAdViewController2.webView);
    paramMMAdView.addView(localMMAdViewController2.webView, new ViewGroup.LayoutParams(-1, -1));
    if ((paramMMAdView.refreshInterval >= 0) && (paramMMAdView.refreshInterval < 15))
    {
      localMMAdViewController2.refreshTimerOn = false;
      MMAdViewSDK.Log.d("Refresh interval is " + paramMMAdView.refreshInterval + ". Change to at least 15 to refresh ads.");
    }
    while (true)
    {
      if ((paramMMAdView.refreshInterval >= 0) && (i == 0));
      localMMAdViewController2.chooseCachedAdOrAdCall(false);
      break label14:
      if (paramMMAdView.refreshInterval < 0)
      {
        localMMAdViewController2.refreshTimerOn = false;
        MMAdViewSDK.Log.d("Automatic ad fetching is off with " + paramMMAdView.refreshInterval + ". You must manually call for ads.");
      }
      localMMAdViewController2.refreshTimerOn = true;
      localMMAdViewController2.resumeTimer(false);
    }
  }

  static void cachedVideoWasAdded(Context paramContext, String paramString)
  {
    monitorenter;
    if (paramString != null);
    try
    {
      if (!(cachedVideoListLoaded))
        getCachedVideoList(paramContext);
      if (cachedVideoSet == null)
        cachedVideoSet = new HashSet();
      cachedVideoSet.add(paramString);
      cachedVideoList = null;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  static void cachedVideoWasRemoved(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      if (!(cachedVideoListLoaded))
        getCachedVideoList(paramContext);
      if (cachedVideoSet != null)
      {
        cachedVideoSet.remove(paramString);
        cachedVideoList = null;
      }
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  private static boolean checkForAdNotDownloaded(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
    boolean bool = localSharedPreferences.getBoolean("pendingDownload", false);
    MMAdViewSDK.Log.v("Pending download?: " + bool);
    if (localSharedPreferences.getInt("downloadAttempts", 0) >= 3)
    {
      MMAdViewSDK.Log.v("Cached ad download failed too many times. Purging it from the database.");
      deleteAd(paramContext, localSharedPreferences.getString("lastDownloadedAdName", null));
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putInt("downloadAttempts", 0);
      localEditor.commit();
      bool = false;
    }
    return bool;
  }

  // ERROR //
  private static boolean checkIfAdExistsInDb(String paramString, MMAdView paramMMAdView)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_0
    //   3: istore_3
    //   4: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   7: dup
    //   8: aload_1
    //   9: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   12: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   15: astore 4
    //   17: aload 4
    //   19: aload_0
    //   20: invokevirtual 487	com/millennialmedia/android/AdDatabaseHelper:checkIfAdExists	(Ljava/lang/String;)Z
    //   23: istore_3
    //   24: new 147	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 489
    //   34: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_0
    //   38: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: ldc_w 491
    //   44: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: iload_3
    //   48: invokevirtual 458	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   51: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   57: aload 4
    //   59: ifnull +57 -> 116
    //   62: aload 4
    //   64: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   67: iload_3
    //   68: ireturn
    //   69: astore 5
    //   71: aload 5
    //   73: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   76: aload_2
    //   77: ifnull -10 -> 67
    //   80: aload_2
    //   81: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   84: goto -17 -> 67
    //   87: astore 6
    //   89: aload_2
    //   90: ifnull +7 -> 97
    //   93: aload_2
    //   94: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   97: aload 6
    //   99: athrow
    //   100: astore 6
    //   102: aload 4
    //   104: astore_2
    //   105: goto -16 -> 89
    //   108: astore 5
    //   110: aload 4
    //   112: astore_2
    //   113: goto -42 -> 71
    //   116: goto -49 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   4	17	69	android/database/sqlite/SQLiteException
    //   4	17	87	finally
    //   71	76	87	finally
    //   17	57	100	finally
    //   17	57	108	android/database/sqlite/SQLiteException
  }

  private static boolean checkIfAdExistsInFilesystem(Context paramContext, String paramString, VideoAd paramVideoAd)
  {
    Object localObject = null;
    AdDatabaseHelper localAdDatabaseHelper;
    try
    {
      localAdDatabaseHelper = new AdDatabaseHelper(paramContext);
    }
    catch (SQLiteException localSQLiteException2)
    {
      try
      {
        int i = 1 + localAdDatabaseHelper.getButtonCountForAd(paramString);
        boolean bool2 = localAdDatabaseHelper.isAdOnSDCard(paramString);
        localAdDatabaseHelper.close();
        if ((bool2) && (Environment.getExternalStorageState().equals("mounted")));
        for (File localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + paramString); ; localFile1 = new File(paramContext.getCacheDir() + "/" + paramString))
        {
          boolean bool3 = localFile1.exists();
          bool4 = false;
          if (bool3)
          {
            String[] arrayOfString = localFile1.list();
            bool4 = false;
            if (arrayOfString != null)
            {
              int j = arrayOfString.length;
              bool4 = false;
              if (j >= i)
                bool4 = true;
            }
          }
          if ((bool4) && (paramVideoAd != null))
          {
            if (paramVideoAd.contentLength <= 0L)
              break;
            File localFile2 = new File(localFile1, "video.dat");
            if ((localFile2.exists()) && (localFile2.length() == paramVideoAd.contentLength))
              break;
            bool4 = false;
          }
          MMAdViewSDK.Log.v("Last ad " + paramString + " in filesystem?: " + bool4);
          for (boolean bool1 = bool4; ; bool1 = false)
          {
            return bool1;
            localSQLiteException1 = localSQLiteException1;
            label249: localSQLiteException1.printStackTrace();
            if (localObject != null)
              localObject.close();
            Log.e("4.5.1-12.2.2.a", "SQL check error. Ad filesys check cannot be completed.");
          }
        }
        Iterator localIterator = paramVideoAd.buttons.iterator();
        VideoImage localVideoImage;
        File localFile3;
        do
        {
          do
          {
            if (localIterator.hasNext());
            localVideoImage = (VideoImage)localIterator.next();
          }
          while (localVideoImage.contentLength <= 0L);
          localFile3 = new File(localFile1, localVideoImage.getImageName());
        }
        while ((localFile3.exists()) && (localFile3.length() == localVideoImage.contentLength));
        boolean bool4 = false;
      }
      catch (SQLiteException localSQLiteException2)
      {
        localObject = localAdDatabaseHelper;
        break label249:
      }
    }
  }

  // ERROR //
  private boolean checkIfExpired(String paramString, MMAdView paramMMAdView)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   5: dup
    //   6: aload_2
    //   7: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   10: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   13: astore 4
    //   15: aload 4
    //   17: aload_1
    //   18: invokevirtual 586	com/millennialmedia/android/AdDatabaseHelper:isAdExpired	(Ljava/lang/String;)Z
    //   21: istore 8
    //   23: iload 8
    //   25: istore 7
    //   27: aload 4
    //   29: ifnull +64 -> 93
    //   32: aload 4
    //   34: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   37: iload 7
    //   39: ireturn
    //   40: astore 5
    //   42: aload 5
    //   44: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   47: iconst_0
    //   48: istore 7
    //   50: aload_3
    //   51: ifnull -14 -> 37
    //   54: aload_3
    //   55: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   58: iconst_0
    //   59: istore 7
    //   61: goto -24 -> 37
    //   64: astore 6
    //   66: aload_3
    //   67: ifnull +7 -> 74
    //   70: aload_3
    //   71: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   74: aload 6
    //   76: athrow
    //   77: astore 6
    //   79: aload 4
    //   81: astore_3
    //   82: goto -16 -> 66
    //   85: astore 5
    //   87: aload 4
    //   89: astore_3
    //   90: goto -48 -> 42
    //   93: goto -56 -> 37
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	40	android/database/sqlite/SQLiteException
    //   2	15	64	finally
    //   42	47	64	finally
    //   15	23	77	finally
    //   15	23	85	android/database/sqlite/SQLiteException
  }

  // ERROR //
  private static void cleanUpExpiredAds(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 591	com/millennialmedia/android/AdDatabaseHelper:getAllExpiredAds	()Ljava/util/List;
    //   15: astore 5
    //   17: aload 5
    //   19: ifnull +56 -> 75
    //   22: aload 5
    //   24: invokeinterface 596 1 0
    //   29: ifle +46 -> 75
    //   32: ldc_w 598
    //   35: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   38: iconst_0
    //   39: istore 6
    //   41: iload 6
    //   43: aload 5
    //   45: invokeinterface 596 1 0
    //   50: if_icmpge +25 -> 75
    //   53: aload_0
    //   54: aload 5
    //   56: iload 6
    //   58: invokeinterface 601 2 0
    //   63: checkcast 507	java/lang/String
    //   66: invokestatic 469	com/millennialmedia/android/MMAdViewController:deleteAd	(Landroid/content/Context;Ljava/lang/String;)V
    //   69: iinc 6 1
    //   72: goto -31 -> 41
    //   75: aload_2
    //   76: ifnull +50 -> 126
    //   79: aload_2
    //   80: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   83: return
    //   84: astore_3
    //   85: aload_3
    //   86: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   89: aload_1
    //   90: ifnull -7 -> 83
    //   93: aload_1
    //   94: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   97: goto -14 -> 83
    //   100: astore 4
    //   102: aload_1
    //   103: ifnull +7 -> 110
    //   106: aload_1
    //   107: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   110: aload 4
    //   112: athrow
    //   113: astore 4
    //   115: aload_2
    //   116: astore_1
    //   117: goto -15 -> 102
    //   120: astore_3
    //   121: aload_2
    //   122: astore_1
    //   123: goto -38 -> 85
    //   126: goto -43 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	84	android/database/sqlite/SQLiteException
    //   2	11	100	finally
    //   85	89	100	finally
    //   11	69	113	finally
    //   11	69	120	android/database/sqlite/SQLiteException
  }

  static void deleteAd(Context paramContext, String paramString)
  {
    Object localObject = null;
    boolean bool = false;
    String str = null;
    if (paramString == null)
      label11: return;
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      File localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + paramString);
      if (localFile1.exists())
      {
        File[] arrayOfFile2 = localFile1.listFiles();
        MMAdViewSDK.Log.v("Ad directory file count: " + arrayOfFile2.length);
        for (int j = 0; j < arrayOfFile2.length; ++j)
          arrayOfFile2[j].delete();
        localFile1.delete();
        MMAdViewSDK.Log.v(paramString + " directory and files deleted");
      }
    }
    File localFile2 = new File(paramContext.getCacheDir() + "/" + paramString);
    if (localFile2.exists())
    {
      File[] arrayOfFile1 = localFile2.listFiles();
      MMAdViewSDK.Log.v("Ad directory file count: " + arrayOfFile1.length);
      for (int i = 0; i < arrayOfFile1.length; ++i)
        arrayOfFile1[i].delete();
      localFile2.delete();
      MMAdViewSDK.Log.v(paramString + " directory and files deleted");
    }
    AdDatabaseHelper localAdDatabaseHelper;
    try
    {
      localAdDatabaseHelper = new AdDatabaseHelper(paramContext);
    }
    catch (SQLiteException localSQLiteException2)
    {
      try
      {
        str = localAdDatabaseHelper.getCachedAdAcid(paramString);
        bool = localAdDatabaseHelper.purgeAdFromDb(paramString);
        localAdDatabaseHelper.close();
        if (str != null)
          cachedVideoWasRemoved(paramContext, str);
        MMAdViewSDK.Log.v("Ad deleted from database: " + paramString + " with succuess? " + bool);
        break label11:
        localSQLiteException2 = localSQLiteException2;
        if (localObject != null)
          label379: localObject.close();
        Log.e("MillennialMediaSDK", "SQL error. Ad could not be purged from the database.");
      }
      catch (SQLiteException localSQLiteException1)
      {
        localObject = localAdDatabaseHelper;
        break label379:
      }
    }
  }

  // ERROR //
  static boolean downloadComponent(String paramString1, String paramString2, File paramFile)
  {
    // Byte code:
    //   0: new 512	java/io/File
    //   3: dup
    //   4: aload_2
    //   5: aload_1
    //   6: invokespecial 542	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   9: astore_3
    //   10: new 147	java/lang/StringBuilder
    //   13: dup
    //   14: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   17: ldc_w 634
    //   20: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_1
    //   24: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc_w 636
    //   30: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_0
    //   34: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   43: aload_3
    //   44: invokevirtual 528	java/io/File:exists	()Z
    //   47: ifeq +41 -> 88
    //   50: aload_3
    //   51: invokevirtual 546	java/io/File:length	()J
    //   54: lconst_0
    //   55: lcmp
    //   56: ifle +32 -> 88
    //   59: new 147	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   66: aload_1
    //   67: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc_w 638
    //   73: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
    //   82: iconst_1
    //   83: istore 10
    //   85: iload 10
    //   87: ireturn
    //   88: new 640	java/net/URL
    //   91: dup
    //   92: aload_0
    //   93: invokespecial 641	java/net/URL:<init>	(Ljava/lang/String;)V
    //   96: astore 4
    //   98: ldc2_w 642
    //   101: lstore 5
    //   103: iconst_0
    //   104: invokestatic 648	java/net/HttpURLConnection:setFollowRedirects	(Z)V
    //   107: aload 4
    //   109: invokevirtual 652	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   112: checkcast 645	java/net/HttpURLConnection
    //   115: astore 11
    //   117: aload 11
    //   119: ldc_w 654
    //   122: invokevirtual 657	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   125: aload 11
    //   127: invokevirtual 660	java/net/HttpURLConnection:connect	()V
    //   130: aload 11
    //   132: invokevirtual 664	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   135: astore 12
    //   137: aload 11
    //   139: ldc_w 666
    //   142: invokevirtual 669	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   145: astore 13
    //   147: aload 13
    //   149: ifnull +10 -> 159
    //   152: aload 13
    //   154: invokestatic 675	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   157: lstore 5
    //   159: aload 12
    //   161: ifnonnull +35 -> 196
    //   164: ldc 207
    //   166: new 147	java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   173: ldc_w 677
    //   176: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_1
    //   180: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   189: pop
    //   190: iconst_0
    //   191: istore 10
    //   193: goto -108 -> 85
    //   196: new 679	java/io/FileOutputStream
    //   199: dup
    //   200: aload_3
    //   201: invokespecial 682	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   204: astore 14
    //   206: sipush 1024
    //   209: newarray byte
    //   211: astore 15
    //   213: aload 12
    //   215: aload 15
    //   217: invokevirtual 688	java/io/InputStream:read	([B)I
    //   220: istore 16
    //   222: iload 16
    //   224: ifgt +46 -> 270
    //   227: aload 12
    //   229: invokevirtual 689	java/io/InputStream:close	()V
    //   232: aload 14
    //   234: invokevirtual 690	java/io/FileOutputStream:close	()V
    //   237: aload_3
    //   238: ifnull +87 -> 325
    //   241: aload_3
    //   242: invokevirtual 546	java/io/File:length	()J
    //   245: lstore 22
    //   247: lload 22
    //   249: lload 5
    //   251: lcmp
    //   252: ifeq +12 -> 264
    //   255: lload 5
    //   257: ldc2_w 642
    //   260: lcmp
    //   261: ifne +120 -> 381
    //   264: iconst_1
    //   265: istore 10
    //   267: goto -182 -> 85
    //   270: aload 14
    //   272: aload 15
    //   274: iconst_0
    //   275: iload 16
    //   277: invokevirtual 694	java/io/FileOutputStream:write	([BII)V
    //   280: goto -67 -> 213
    //   283: astore 7
    //   285: ldc 207
    //   287: new 147	java/lang/StringBuilder
    //   290: dup
    //   291: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   294: ldc_w 696
    //   297: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: aload_1
    //   301: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: ldc_w 698
    //   307: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: aload 7
    //   312: invokevirtual 701	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   315: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   321: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   324: pop
    //   325: aload_3
    //   326: invokevirtual 610	java/io/File:delete	()Z
    //   329: pop
    //   330: iconst_0
    //   331: istore 10
    //   333: goto -248 -> 85
    //   336: astore 17
    //   338: ldc 207
    //   340: new 147	java/lang/StringBuilder
    //   343: dup
    //   344: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   347: ldc_w 703
    //   350: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: aload 17
    //   355: invokevirtual 704	java/io/IOException:getMessage	()Ljava/lang/String;
    //   358: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: aload 17
    //   366: invokestatic 706	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   369: pop
    //   370: aload_3
    //   371: invokevirtual 610	java/io/File:delete	()Z
    //   374: pop
    //   375: iconst_0
    //   376: istore 10
    //   378: goto -293 -> 85
    //   381: ldc 207
    //   383: ldc_w 708
    //   386: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   389: pop
    //   390: goto -65 -> 325
    //   393: astore 20
    //   395: ldc 207
    //   397: new 147	java/lang/StringBuilder
    //   400: dup
    //   401: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   404: ldc_w 696
    //   407: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: aload_1
    //   411: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: ldc_w 698
    //   417: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: aload 20
    //   422: invokevirtual 709	java/lang/SecurityException:getMessage	()Ljava/lang/String;
    //   425: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   431: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   434: pop
    //   435: goto -110 -> 325
    //
    // Exception table:
    //   from	to	target	type
    //   88	222	283	java/lang/Exception
    //   227	237	283	java/lang/Exception
    //   241	247	283	java/lang/Exception
    //   270	280	283	java/lang/Exception
    //   338	375	283	java/lang/Exception
    //   381	390	283	java/lang/Exception
    //   395	435	283	java/lang/Exception
    //   227	237	336	java/io/IOException
    //   241	247	393	java/lang/SecurityException
    //   381	390	393	java/lang/SecurityException
  }

  private static boolean freeMemoryOnDisk(MMAdView paramMMAdView)
  {
    int i = 1;
    try
    {
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        File localFile1 = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache");
        if (localFile1.exists())
        {
          if (localFile1.length() >= 12582912L)
            break label141;
          break label139:
        }
      }
      File localFile2 = paramMMAdView.getContext().getCacheDir();
      if (localFile2 == null)
        break label137;
      long l = localFile2.length();
      Log.i("MillennialMediaSDK", "Cache: " + l);
      label137: if (l >= 12582912L)
        i = 0;
    }
    catch (Exception localException)
    {
      i = 0;
    }
    while (true)
    {
      label139: return i;
      label141: i = 0;
    }
  }

  private String getAdType(String paramString)
  {
    if (paramString != null)
      if (!(paramString.equals("MMBannerAdTop")));
    for (String str = "&adtype=" + "MMBannerAdTop"; ; str = "&adtype=" + "MMBannerAdTop")
    {
      while (true)
      {
        return str;
        if (paramString.equals("MMBannerAdBottom"))
          str = "&adtype=" + "MMBannerAdBottom";
        if (paramString.equals("MMBannerAdRectangle"))
          str = "&adtype=" + "MMBannerAdRectangle";
        if (paramString.equals("MMFullScreenAdLaunch"))
          str = "&adtype=" + "MMFullScreenAdLaunch";
        if (!(paramString.equals("MMFullScreenAdTransition")))
          break;
        str = "&adtype=" + "MMFullScreenAdTransition";
      }
      Log.e("MillennialMediaSDK", "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS (" + paramString + ") **********");
      Log.e("MillennialMediaSDK", "******* SDK DEFAULTED TO MMBannerAdTop. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********");
    }
  }

  // ERROR //
  static String getCachedVideoList(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 441	com/millennialmedia/android/MMAdViewController:cachedVideoList	Ljava/lang/String;
    //   6: ifnonnull +421 -> 427
    //   9: getstatic 426	com/millennialmedia/android/MMAdViewController:cachedVideoListLoaded	Z
    //   12: istore_3
    //   13: iload_3
    //   14: ifne +265 -> 279
    //   17: aconst_null
    //   18: astore 9
    //   20: new 434	java/util/HashSet
    //   23: dup
    //   24: invokespecial 435	java/util/HashSet:<init>	()V
    //   27: putstatic 432	com/millennialmedia/android/MMAdViewController:cachedVideoSet	Ljava/util/HashSet;
    //   30: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   33: dup
    //   34: aload_0
    //   35: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   38: astore 12
    //   40: invokestatic 503	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   43: ldc_w 505
    //   46: invokevirtual 510	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   49: ifeq +129 -> 178
    //   52: new 512	java/io/File
    //   55: dup
    //   56: new 147	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   63: invokestatic 516	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   66: invokevirtual 519	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   69: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc_w 521
    //   75: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: ldc_w 523
    //   81: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokespecial 525	java/io/File:<init>	(Ljava/lang/String;)V
    //   90: astore 14
    //   92: aload 14
    //   94: invokevirtual 528	java/io/File:exists	()Z
    //   97: ifeq +173 -> 270
    //   100: aload 14
    //   102: invokevirtual 605	java/io/File:listFiles	()[Ljava/io/File;
    //   105: astore 15
    //   107: iconst_0
    //   108: istore 16
    //   110: iload 16
    //   112: aload 15
    //   114: arraylength
    //   115: if_icmpge +155 -> 270
    //   118: aload 12
    //   120: aload 15
    //   122: iload 16
    //   124: aaload
    //   125: invokevirtual 739	java/io/File:getName	()Ljava/lang/String;
    //   128: invokevirtual 199	com/millennialmedia/android/AdDatabaseHelper:getVideoAd	(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    //   131: astore 17
    //   133: aload 17
    //   135: ifnull +308 -> 443
    //   138: aload 17
    //   140: getfield 742	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   143: ifnull +300 -> 443
    //   146: aload_0
    //   147: aload 15
    //   149: iload 16
    //   151: aaload
    //   152: invokevirtual 739	java/io/File:getName	()Ljava/lang/String;
    //   155: aload 17
    //   157: invokestatic 278	com/millennialmedia/android/MMAdViewController:checkIfAdExistsInFilesystem	(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    //   160: ifeq +283 -> 443
    //   163: getstatic 432	com/millennialmedia/android/MMAdViewController:cachedVideoSet	Ljava/util/HashSet;
    //   166: aload 17
    //   168: getfield 742	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   171: invokevirtual 439	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   174: pop
    //   175: goto +268 -> 443
    //   178: aload_0
    //   179: invokevirtual 555	android/content/Context:getCacheDir	()Ljava/io/File;
    //   182: astore 19
    //   184: aload 19
    //   186: invokevirtual 528	java/io/File:exists	()Z
    //   189: ifeq +81 -> 270
    //   192: aload 19
    //   194: invokevirtual 605	java/io/File:listFiles	()[Ljava/io/File;
    //   197: astore 20
    //   199: iconst_0
    //   200: istore 21
    //   202: iload 21
    //   204: aload 20
    //   206: arraylength
    //   207: if_icmpge +63 -> 270
    //   210: aload 12
    //   212: aload 20
    //   214: iload 21
    //   216: aaload
    //   217: invokevirtual 739	java/io/File:getName	()Ljava/lang/String;
    //   220: invokevirtual 199	com/millennialmedia/android/AdDatabaseHelper:getVideoAd	(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    //   223: astore 22
    //   225: aload 22
    //   227: ifnull +222 -> 449
    //   230: aload 22
    //   232: getfield 742	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   235: ifnull +214 -> 449
    //   238: aload_0
    //   239: aload 20
    //   241: iload 21
    //   243: aaload
    //   244: invokevirtual 739	java/io/File:getName	()Ljava/lang/String;
    //   247: aload 22
    //   249: invokestatic 278	com/millennialmedia/android/MMAdViewController:checkIfAdExistsInFilesystem	(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    //   252: ifeq +197 -> 449
    //   255: getstatic 432	com/millennialmedia/android/MMAdViewController:cachedVideoSet	Ljava/util/HashSet;
    //   258: aload 22
    //   260: getfield 742	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   263: invokevirtual 439	java/util/HashSet:add	(Ljava/lang/Object;)Z
    //   266: pop
    //   267: goto +182 -> 449
    //   270: aload 12
    //   272: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   275: iconst_1
    //   276: putstatic 426	com/millennialmedia/android/MMAdViewController:cachedVideoListLoaded	Z
    //   279: getstatic 432	com/millennialmedia/android/MMAdViewController:cachedVideoSet	Ljava/util/HashSet;
    //   282: ifnull +145 -> 427
    //   285: getstatic 432	com/millennialmedia/android/MMAdViewController:cachedVideoSet	Ljava/util/HashSet;
    //   288: invokevirtual 743	java/util/HashSet:size	()I
    //   291: ifle +136 -> 427
    //   294: new 147	java/lang/StringBuilder
    //   297: dup
    //   298: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   301: astore 4
    //   303: getstatic 432	com/millennialmedia/android/MMAdViewController:cachedVideoSet	Ljava/util/HashSet;
    //   306: invokevirtual 744	java/util/HashSet:iterator	()Ljava/util/Iterator;
    //   309: astore 5
    //   311: aload 5
    //   313: invokeinterface 573 1 0
    //   318: ifeq +101 -> 419
    //   321: aload 5
    //   323: invokeinterface 577 1 0
    //   328: astore 6
    //   330: aload 4
    //   332: invokevirtual 746	java/lang/StringBuilder:length	()I
    //   335: ifle +70 -> 405
    //   338: aload 4
    //   340: new 147	java/lang/StringBuilder
    //   343: dup
    //   344: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   347: ldc_w 748
    //   350: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: aload 6
    //   355: checkcast 507	java/lang/String
    //   358: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: pop
    //   368: goto -57 -> 311
    //   371: astore_1
    //   372: ldc 2
    //   374: monitorexit
    //   375: aload_1
    //   376: athrow
    //   377: astore 10
    //   379: ldc 207
    //   381: ldc_w 750
    //   384: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   387: pop
    //   388: aload 9
    //   390: ifnull +8 -> 398
    //   393: aload 9
    //   395: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   398: aconst_null
    //   399: astore_2
    //   400: ldc 2
    //   402: monitorexit
    //   403: aload_2
    //   404: areturn
    //   405: aload 4
    //   407: aload 6
    //   409: checkcast 507	java/lang/String
    //   412: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: pop
    //   416: goto -105 -> 311
    //   419: aload 4
    //   421: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: putstatic 441	com/millennialmedia/android/MMAdViewController:cachedVideoList	Ljava/lang/String;
    //   427: getstatic 441	com/millennialmedia/android/MMAdViewController:cachedVideoList	Ljava/lang/String;
    //   430: astore_2
    //   431: goto -31 -> 400
    //   434: astore 13
    //   436: aload 12
    //   438: astore 9
    //   440: goto -61 -> 379
    //   443: iinc 16 1
    //   446: goto -336 -> 110
    //   449: iinc 21 1
    //   452: goto -250 -> 202
    //
    // Exception table:
    //   from	to	target	type
    //   3	13	371	finally
    //   20	40	371	finally
    //   40	279	371	finally
    //   279	368	371	finally
    //   379	398	371	finally
    //   405	431	371	finally
    //   20	40	377	android/database/sqlite/SQLiteException
    //   40	279	434	android/database/sqlite/SQLiteException
  }

  private void getNextAd(boolean paramBoolean)
  {
    this.requestInProgress = true;
    1 local1 = new Thread(paramBoolean)
    {
      // ERROR //
      public void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   4: invokestatic 35	com/millennialmedia/android/MMAdViewController:access$100	(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;
        //   7: invokevirtual 41	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
        //   10: checkcast 43	com/millennialmedia/android/MMAdView
        //   13: astore_1
        //   14: aload_1
        //   15: ifnonnull +20 -> 35
        //   18: ldc 45
        //   20: ldc 47
        //   22: invokestatic 53	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
        //   25: pop
        //   26: aload_0
        //   27: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   30: iconst_0
        //   31: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   34: return
        //   35: aload_1
        //   36: getfield 60	com/millennialmedia/android/MMAdView:apid	Ljava/lang/String;
        //   39: ifnonnull +30 -> 69
        //   42: aload_0
        //   43: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   46: aload_1
        //   47: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   50: ldc 45
        //   52: ldc 66
        //   54: invokestatic 53	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
        //   57: pop
        //   58: aload_0
        //   59: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   62: iconst_0
        //   63: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   66: goto -32 -> 34
        //   69: aload_1
        //   70: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   73: invokestatic 76	com/millennialmedia/android/MMAdViewSDK:isConnected	(Landroid/content/Context;)Z
        //   76: ifeq +1573 -> 1649
        //   79: aconst_null
        //   80: astore_3
        //   81: aload_0
        //   82: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   85: aload_1
        //   86: invokestatic 80	com/millennialmedia/android/MMAdViewController:access$300	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
        //   89: astore 44
        //   91: aload_1
        //   92: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   95: invokestatic 84	com/millennialmedia/android/MMAdViewController:getURLDeviceValues	(Landroid/content/Context;)Ljava/lang/String;
        //   98: astore 45
        //   100: aload_1
        //   101: getfield 87	com/millennialmedia/android/MMAdView:testMode	Z
        //   104: istore 46
        //   106: aconst_null
        //   107: astore_3
        //   108: iload 46
        //   110: ifeq +11 -> 121
        //   113: ldc 45
        //   115: ldc 89
        //   117: invokestatic 92	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
        //   120: pop
        //   121: aload_0
        //   122: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   125: aload_1
        //   126: getfield 95	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
        //   129: invokestatic 99	com/millennialmedia/android/MMAdViewController:access$400	(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
        //   132: astore_3
        //   133: aload_1
        //   134: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   137: invokevirtual 105	android/content/Context:getResources	()Landroid/content/res/Resources;
        //   140: invokevirtual 111	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
        //   143: astore 47
        //   145: aload 47
        //   147: getfield 117	android/util/DisplayMetrics:density	F
        //   150: fstore 48
        //   152: aload 47
        //   154: getfield 121	android/util/DisplayMetrics:heightPixels	I
        //   157: istore 49
        //   159: aload 47
        //   161: getfield 124	android/util/DisplayMetrics:widthPixels	I
        //   164: istore 50
        //   166: new 126	java/lang/StringBuilder
        //   169: dup
        //   170: new 126	java/lang/StringBuilder
        //   173: dup
        //   174: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   177: ldc 129
        //   179: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   182: aload_1
        //   183: getfield 60	com/millennialmedia/android/MMAdView:apid	Ljava/lang/String;
        //   186: ldc 135
        //   188: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   191: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   194: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   197: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   200: astore 51
        //   202: aload_1
        //   203: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   206: invokestatic 151	com/millennialmedia/android/MMAdViewSDK:getAuidOrHdid	(Landroid/content/Context;)Ljava/lang/String;
        //   209: astore 52
        //   211: aload 52
        //   213: ifnull +44 -> 257
        //   216: aload 52
        //   218: ldc 153
        //   220: invokevirtual 159	java/lang/String:startsWith	(Ljava/lang/String;)Z
        //   223: ifeq +538 -> 761
        //   226: aload 51
        //   228: new 126	java/lang/StringBuilder
        //   231: dup
        //   232: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   235: ldc 161
        //   237: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   240: aload 52
        //   242: ldc 135
        //   244: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   247: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   250: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   253: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   256: pop
        //   257: aload_1
        //   258: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   261: invokestatic 164	com/millennialmedia/android/MMAdViewSDK:getMMdid	(Landroid/content/Context;)Ljava/lang/String;
        //   264: astore 53
        //   266: aload 53
        //   268: ifnull +34 -> 302
        //   271: aload 51
        //   273: new 126	java/lang/StringBuilder
        //   276: dup
        //   277: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   280: ldc 166
        //   282: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   285: aload 53
        //   287: ldc 135
        //   289: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   292: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   295: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   298: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   301: pop
        //   302: aload_0
        //   303: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   306: invokestatic 170	com/millennialmedia/android/MMAdViewController:access$500	(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;
        //   309: ifnull +487 -> 796
        //   312: aload 51
        //   314: new 126	java/lang/StringBuilder
        //   317: dup
        //   318: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   321: ldc 172
        //   323: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   326: aload_0
        //   327: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   330: invokestatic 170	com/millennialmedia/android/MMAdViewController:access$500	(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;
        //   333: ldc 135
        //   335: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   338: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   341: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   344: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   347: pop
        //   348: getstatic 177	android/os/Build:MODEL	Ljava/lang/String;
        //   351: ifnull +35 -> 386
        //   354: aload 51
        //   356: new 126	java/lang/StringBuilder
        //   359: dup
        //   360: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   363: ldc 179
        //   365: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   368: getstatic 177	android/os/Build:MODEL	Ljava/lang/String;
        //   371: ldc 135
        //   373: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   376: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   379: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   382: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   385: pop
        //   386: getstatic 184	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
        //   389: ifnull +35 -> 424
        //   392: aload 51
        //   394: new 126	java/lang/StringBuilder
        //   397: dup
        //   398: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   401: ldc 186
        //   403: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   406: getstatic 184	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
        //   409: ldc 135
        //   411: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   414: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   417: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   420: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   423: pop
        //   424: aload 51
        //   426: new 126	java/lang/StringBuilder
        //   429: dup
        //   430: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   433: ldc 188
        //   435: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   438: fload 48
        //   440: invokestatic 193	java/lang/Float:toString	(F)Ljava/lang/String;
        //   443: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   446: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   449: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   452: pop
        //   453: aload 51
        //   455: new 126	java/lang/StringBuilder
        //   458: dup
        //   459: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   462: ldc 195
        //   464: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   467: iload 49
        //   469: invokevirtual 198	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
        //   472: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   475: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   478: pop
        //   479: aload 51
        //   481: new 126	java/lang/StringBuilder
        //   484: dup
        //   485: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   488: ldc 200
        //   490: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   493: iload 50
        //   495: invokevirtual 198	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
        //   498: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   501: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   504: pop
        //   505: aload 51
        //   507: new 126	java/lang/StringBuilder
        //   510: dup
        //   511: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   514: ldc 202
        //   516: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   519: ldc 204
        //   521: ldc 135
        //   523: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   526: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   529: aload 44
        //   531: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   534: aload 45
        //   536: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   539: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   542: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   545: pop
        //   546: aload_1
        //   547: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   550: astore 59
        //   552: aload 59
        //   554: invokestatic 210	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
        //   557: aload 59
        //   559: aload_1
        //   560: getfield 95	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
        //   563: invokevirtual 214	com/millennialmedia/android/HandShake:canRequestVideo	(Landroid/content/Context;Ljava/lang/String;)Z
        //   566: ifeq +242 -> 808
        //   569: aload 51
        //   571: ldc 216
        //   573: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   576: pop
        //   577: aload_1
        //   578: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   581: ldc 218
        //   583: invokevirtual 222	android/content/Context:checkCallingOrSelfPermission	(Ljava/lang/String;)I
        //   586: iconst_m1
        //   587: if_icmpeq +25 -> 612
        //   590: getstatic 225	android/os/Build$VERSION:SDK	Ljava/lang/String;
        //   593: ldc 227
        //   595: invokevirtual 230	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   598: ifeq +222 -> 820
        //   601: invokestatic 235	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
        //   604: ldc 237
        //   606: invokevirtual 241	java/lang/String:equals	(Ljava/lang/Object;)Z
        //   609: ifne +211 -> 820
        //   612: aload 51
        //   614: ldc 243
        //   616: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   619: pop
        //   620: aload 51
        //   622: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   625: astore 62
        //   627: aload 62
        //   629: astore 5
        //   631: aload_3
        //   632: ifnull +24 -> 656
        //   635: new 126	java/lang/StringBuilder
        //   638: dup
        //   639: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   642: aload 5
        //   644: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   647: aload_3
        //   648: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   651: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   654: astore 5
        //   656: ldc 45
        //   658: new 126	java/lang/StringBuilder
        //   661: dup
        //   662: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   665: ldc 245
        //   667: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   670: aload 5
        //   672: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   675: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   678: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   681: pop
        //   682: new 250	com/millennialmedia/android/HttpGetRequest
        //   685: dup
        //   686: invokespecial 251	com/millennialmedia/android/HttpGetRequest:<init>	()V
        //   689: aload 5
        //   691: invokevirtual 254	com/millennialmedia/android/HttpGetRequest:get	(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
        //   694: astore 9
        //   696: aload 9
        //   698: ifnonnull +134 -> 832
        //   701: ldc 45
        //   703: ldc_w 256
        //   706: invokestatic 53	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
        //   709: pop
        //   710: aload_0
        //   711: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   714: iconst_0
        //   715: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   718: aload_0
        //   719: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   722: aload_1
        //   723: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   726: goto -692 -> 34
        //   729: astore 7
        //   731: ldc 45
        //   733: ldc_w 258
        //   736: aload 7
        //   738: invokestatic 261	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   741: pop
        //   742: aload_0
        //   743: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   746: iconst_0
        //   747: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   750: aload_0
        //   751: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   754: aload_1
        //   755: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   758: goto -724 -> 34
        //   761: aload 51
        //   763: new 126	java/lang/StringBuilder
        //   766: dup
        //   767: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   770: ldc_w 263
        //   773: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   776: aload 52
        //   778: ldc 135
        //   780: invokestatic 141	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   783: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   786: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   789: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   792: pop
        //   793: goto -536 -> 257
        //   796: aload 51
        //   798: ldc_w 265
        //   801: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   804: pop
        //   805: goto -457 -> 348
        //   808: aload 51
        //   810: ldc_w 267
        //   813: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   816: pop
        //   817: goto -240 -> 577
        //   820: aload 51
        //   822: ldc_w 269
        //   825: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   828: pop
        //   829: goto -209 -> 620
        //   832: aload 9
        //   834: invokeinterface 275 1 0
        //   839: astore 10
        //   841: aload 10
        //   843: ifnonnull +31 -> 874
        //   846: ldc 45
        //   848: ldc_w 277
        //   851: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   854: pop
        //   855: aload_0
        //   856: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   859: iconst_0
        //   860: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   863: aload_0
        //   864: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   867: aload_1
        //   868: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   871: goto -837 -> 34
        //   874: aload 10
        //   876: invokeinterface 283 1 0
        //   881: lconst_0
        //   882: lcmp
        //   883: ifne +31 -> 914
        //   886: ldc 45
        //   888: ldc_w 285
        //   891: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   894: pop
        //   895: aload_0
        //   896: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   899: iconst_0
        //   900: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   903: aload_0
        //   904: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   907: aload_1
        //   908: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   911: goto -877 -> 34
        //   914: aload 9
        //   916: ldc_w 287
        //   919: invokeinterface 291 2 0
        //   924: astore 11
        //   926: aload 11
        //   928: arraylength
        //   929: istore 12
        //   931: iconst_0
        //   932: istore 13
        //   934: iload 13
        //   936: iload 12
        //   938: if_icmpge +69 -> 1007
        //   941: aload 11
        //   943: iload 13
        //   945: aaload
        //   946: invokeinterface 296 1 0
        //   951: astore 38
        //   953: aload 38
        //   955: ldc_w 298
        //   958: invokevirtual 301	java/lang/String:indexOf	(Ljava/lang/String;)I
        //   961: istore 39
        //   963: iload 39
        //   965: iflt +36 -> 1001
        //   968: aload 38
        //   970: bipush 59
        //   972: iload 39
        //   974: invokevirtual 304	java/lang/String:indexOf	(II)I
        //   977: istore 40
        //   979: iload 40
        //   981: iload 39
        //   983: if_icmple +18 -> 1001
        //   986: aload 38
        //   988: iload 39
        //   990: bipush 7
        //   992: iadd
        //   993: iload 40
        //   995: invokevirtual 308	java/lang/String:substring	(II)Ljava/lang/String;
        //   998: putstatic 311	com/millennialmedia/android/MMAdViewSDK:macId	Ljava/lang/String;
        //   1001: iinc 13 1
        //   1004: goto -70 -> 934
        //   1007: aload 10
        //   1009: invokeinterface 315 1 0
        //   1014: astore 14
        //   1016: aload 14
        //   1018: ifnull +611 -> 1629
        //   1021: aload 14
        //   1023: invokeinterface 296 1 0
        //   1028: ifnull +581 -> 1609
        //   1031: aload 14
        //   1033: invokeinterface 296 1 0
        //   1038: ldc_w 317
        //   1041: invokevirtual 230	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   1044: ifeq +229 -> 1273
        //   1047: aload 10
        //   1049: invokeinterface 321 1 0
        //   1054: invokestatic 325	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
        //   1057: astore 34
        //   1059: new 327	com/millennialmedia/android/VideoAd
        //   1062: dup
        //   1063: aload 34
        //   1065: invokespecial 328	com/millennialmedia/android/VideoAd:<init>	(Ljava/lang/String;)V
        //   1068: astore 35
        //   1070: ldc 45
        //   1072: new 126	java/lang/StringBuilder
        //   1075: dup
        //   1076: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   1079: ldc_w 330
        //   1082: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   1085: invokestatic 235	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
        //   1088: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   1091: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   1094: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1097: pop
        //   1098: invokestatic 235	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
        //   1101: ldc 237
        //   1103: invokevirtual 241	java/lang/String:equals	(Ljava/lang/Object;)Z
        //   1106: ifeq +9 -> 1115
        //   1109: aload 35
        //   1111: iconst_1
        //   1112: putfield 333	com/millennialmedia/android/VideoAd:storedOnSdCard	Z
        //   1115: aload 35
        //   1117: ifnull +54 -> 1171
        //   1120: aload 35
        //   1122: invokevirtual 337	com/millennialmedia/android/VideoAd:isValid	()Z
        //   1125: ifeq +46 -> 1171
        //   1128: ldc 45
        //   1130: new 126	java/lang/StringBuilder
        //   1133: dup
        //   1134: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   1137: ldc_w 339
        //   1140: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   1143: aload 35
        //   1145: getfield 342	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
        //   1148: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   1151: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   1154: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1157: pop
        //   1158: aload_0
        //   1159: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1162: aload 35
        //   1164: aload_0
        //   1165: getfield 19	com/millennialmedia/android/MMAdViewController$1:val$fetch	Z
        //   1168: invokestatic 346	com/millennialmedia/android/MMAdViewController:access$600	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;Z)V
        //   1171: aload_0
        //   1172: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1175: iconst_0
        //   1176: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   1179: goto -1145 -> 34
        //   1182: astore 32
        //   1184: aload 32
        //   1186: invokevirtual 349	java/lang/IllegalStateException:printStackTrace	()V
        //   1189: ldc 45
        //   1191: ldc_w 351
        //   1194: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1197: pop
        //   1198: aload_0
        //   1199: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1202: iconst_0
        //   1203: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   1206: aload_0
        //   1207: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1210: aload_1
        //   1211: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1214: goto -1180 -> 34
        //   1217: astore 30
        //   1219: aload 30
        //   1221: invokevirtual 352	java/io/IOException:printStackTrace	()V
        //   1224: ldc 45
        //   1226: new 126	java/lang/StringBuilder
        //   1229: dup
        //   1230: invokespecial 127	java/lang/StringBuilder:<init>	()V
        //   1233: ldc_w 354
        //   1236: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   1239: aload 30
        //   1241: invokevirtual 357	java/io/IOException:getMessage	()Ljava/lang/String;
        //   1244: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   1247: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   1250: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1253: pop
        //   1254: aload_0
        //   1255: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1258: iconst_0
        //   1259: putfield 56	com/millennialmedia/android/MMAdViewController:requestInProgress	Z
        //   1262: aload_0
        //   1263: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1266: aload_1
        //   1267: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1270: goto -1236 -> 34
        //   1273: aload 14
        //   1275: invokeinterface 296 1 0
        //   1280: ldc_w 359
        //   1283: invokevirtual 230	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   1286: ifeq +303 -> 1589
        //   1289: aload 9
        //   1291: ldc_w 361
        //   1294: invokeinterface 365 2 0
        //   1299: astore 18
        //   1301: aload 18
        //   1303: ifnull +39 -> 1342
        //   1306: aload 18
        //   1308: invokeinterface 296 1 0
        //   1313: ldc_w 367
        //   1316: invokevirtual 230	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   1319: ifeq +23 -> 1342
        //   1322: aload_1
        //   1323: invokevirtual 70	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
        //   1326: astore 29
        //   1328: aload 29
        //   1330: invokestatic 210	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
        //   1333: aload 29
        //   1335: aload_1
        //   1336: getfield 95	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
        //   1339: invokevirtual 371	com/millennialmedia/android/HandShake:didReceiveVideoXHeader	(Landroid/content/Context;Ljava/lang/String;)V
        //   1342: aload_0
        //   1343: getfield 19	com/millennialmedia/android/MMAdViewController$1:val$fetch	Z
        //   1346: ifeq +113 -> 1459
        //   1349: aload_1
        //   1350: getfield 95	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
        //   1353: ldc_w 373
        //   1356: invokevirtual 230	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   1359: ifeq +100 -> 1459
        //   1362: aload_0
        //   1363: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1366: aload 10
        //   1368: invokeinterface 321 1 0
        //   1373: invokestatic 325	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
        //   1376: invokestatic 376	com/millennialmedia/android/MMAdViewController:access$702	(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
        //   1379: pop
        //   1380: aload_0
        //   1381: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1384: aload 5
        //   1386: iconst_0
        //   1387: iconst_1
        //   1388: aload 5
        //   1390: ldc_w 378
        //   1393: invokevirtual 381	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
        //   1396: iadd
        //   1397: invokevirtual 308	java/lang/String:substring	(II)Ljava/lang/String;
        //   1400: invokestatic 384	com/millennialmedia/android/MMAdViewController:access$802	(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
        //   1403: pop
        //   1404: aload_0
        //   1405: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1408: invokestatic 389	java/lang/System:currentTimeMillis	()J
        //   1411: invokestatic 393	com/millennialmedia/android/MMAdViewController:access$902	(Lcom/millennialmedia/android/MMAdViewController;J)J
        //   1414: pop2
        //   1415: aload_0
        //   1416: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1419: aload_1
        //   1420: invokestatic 396	com/millennialmedia/android/MMAdViewController:access$1000	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1423: aload_0
        //   1424: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1427: aload_1
        //   1428: iconst_1
        //   1429: invokestatic 400	com/millennialmedia/android/MMAdViewController:access$1100	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
        //   1432: goto -261 -> 1171
        //   1435: astore 19
        //   1437: ldc 45
        //   1439: ldc_w 402
        //   1442: aload 19
        //   1444: invokestatic 261	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   1447: pop
        //   1448: aload_0
        //   1449: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1452: aload_1
        //   1453: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1456: goto -285 -> 1171
        //   1459: aload_0
        //   1460: getfield 19	com/millennialmedia/android/MMAdViewController$1:val$fetch	Z
        //   1463: ifeq +89 -> 1552
        //   1466: aload_1
        //   1467: getfield 95	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
        //   1470: ldc_w 404
        //   1473: invokevirtual 230	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
        //   1476: ifeq +76 -> 1552
        //   1479: aload_0
        //   1480: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1483: aload 10
        //   1485: invokeinterface 321 1 0
        //   1490: invokestatic 325	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
        //   1493: invokestatic 407	com/millennialmedia/android/MMAdViewController:access$1202	(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
        //   1496: pop
        //   1497: aload_0
        //   1498: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1501: aload 5
        //   1503: iconst_0
        //   1504: iconst_1
        //   1505: aload 5
        //   1507: ldc_w 378
        //   1510: invokevirtual 381	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
        //   1513: iadd
        //   1514: invokevirtual 308	java/lang/String:substring	(II)Ljava/lang/String;
        //   1517: invokestatic 410	com/millennialmedia/android/MMAdViewController:access$1302	(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
        //   1520: pop
        //   1521: aload_0
        //   1522: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1525: invokestatic 389	java/lang/System:currentTimeMillis	()J
        //   1528: invokestatic 413	com/millennialmedia/android/MMAdViewController:access$1402	(Lcom/millennialmedia/android/MMAdViewController;J)J
        //   1531: pop2
        //   1532: aload_0
        //   1533: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1536: aload_1
        //   1537: invokestatic 396	com/millennialmedia/android/MMAdViewController:access$1000	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1540: aload_0
        //   1541: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1544: aload_1
        //   1545: iconst_1
        //   1546: invokestatic 400	com/millennialmedia/android/MMAdViewController:access$1100	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
        //   1549: goto -378 -> 1171
        //   1552: aload_0
        //   1553: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1556: aload 10
        //   1558: invokeinterface 321 1 0
        //   1563: invokestatic 325	com/millennialmedia/android/HttpGetRequest:convertStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
        //   1566: aload 5
        //   1568: iconst_0
        //   1569: iconst_1
        //   1570: aload 5
        //   1572: ldc_w 378
        //   1575: invokevirtual 381	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
        //   1578: iadd
        //   1579: invokevirtual 308	java/lang/String:substring	(II)Ljava/lang/String;
        //   1582: aload_1
        //   1583: invokestatic 417	com/millennialmedia/android/MMAdViewController:access$1500	(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
        //   1586: goto -415 -> 1171
        //   1589: ldc 45
        //   1591: ldc_w 419
        //   1594: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1597: pop
        //   1598: aload_0
        //   1599: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1602: aload_1
        //   1603: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1606: goto -435 -> 1171
        //   1609: ldc 45
        //   1611: ldc_w 421
        //   1614: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1617: pop
        //   1618: aload_0
        //   1619: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1622: aload_1
        //   1623: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1626: goto -455 -> 1171
        //   1629: ldc 45
        //   1631: ldc_w 423
        //   1634: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1637: pop
        //   1638: aload_0
        //   1639: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1642: aload_1
        //   1643: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1646: goto -475 -> 1171
        //   1649: ldc 45
        //   1651: ldc_w 425
        //   1654: invokestatic 248	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
        //   1657: pop
        //   1658: aload_0
        //   1659: getfield 17	com/millennialmedia/android/MMAdViewController$1:this$0	Lcom/millennialmedia/android/MMAdViewController;
        //   1662: aload_1
        //   1663: invokestatic 64	com/millennialmedia/android/MMAdViewController:access$200	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
        //   1666: goto -495 -> 1171
        //   1669: astore 30
        //   1671: goto -452 -> 1219
        //   1674: astore 32
        //   1676: goto -492 -> 1184
        //   1679: astore 4
        //   1681: aconst_null
        //   1682: astore 5
        //   1684: goto -1053 -> 631
        //
        // Exception table:
        //   from	to	target	type
        //   682	726	729	java/lang/Exception
        //   832	841	729	java/lang/Exception
        //   1047	1070	1182	java/lang/IllegalStateException
        //   1047	1070	1217	java/io/IOException
        //   1342	1432	1435	java/io/IOException
        //   1459	1586	1435	java/io/IOException
        //   1070	1115	1669	java/io/IOException
        //   1070	1115	1674	java/lang/IllegalStateException
        //   81	627	1679	java/io/UnsupportedEncodingException
        //   761	829	1679	java/io/UnsupportedEncodingException
      }
    };
    local1.setPriority(10);
    local1.start();
  }

  static String getURLDeviceValues(Context paramContext)
  {
    String str1;
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      String str2 = MMAdViewSDK.getConnectionType(paramContext);
      if (Environment.getExternalStorageState().equals("mounted"));
      for (StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath()); ; localStatFs = new StatFs(paramContext.getCacheDir().getPath()))
      {
        String str3 = Long.toString(localStatFs.getAvailableBlocks() * localStatFs.getBlockSize());
        Intent localIntent = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        String str4 = null;
        str5 = null;
        if (localIntent != null)
        {
          if (localIntent.getIntExtra("plugged", 0) != 0)
            break;
          str5 = "false";
          str4 = Integer.toString((int)(100.0F / localIntent.getIntExtra("scale", 100) * localIntent.getIntExtra("level", 0)));
        }
        if ((str4 != null) && (str4.length() > 0))
          localStringBuilder.append("&bl=" + str4);
        if ((str5 != null) && (str5.length() > 0))
          localStringBuilder.append("&plugged=" + str5);
        if (str3.length() > 0)
          localStringBuilder.append("&space=" + str3);
        if (str2 != null)
          localStringBuilder.append("&conn=" + str2);
        str1 = localStringBuilder.toString();
        break label326:
      }
      String str5 = "true";
    }
    catch (Exception localException)
    {
      MMAdViewSDK.Log.v(Log.getStackTraceString(localException));
      str1 = "";
    }
    label326: return str1;
  }

  private String getURLMetaValues(MMAdView paramMMAdView)
    throws UnsupportedEncodingException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Locale localLocale = Locale.getDefault();
    if (localLocale != null)
    {
      localStringBuilder.append("&language=" + localLocale.getLanguage());
      localStringBuilder.append("&country=" + localLocale.getCountry());
    }
    if (paramMMAdView.age != null)
      localStringBuilder.append("&age=" + URLEncoder.encode(paramMMAdView.age, "UTF-8"));
    if (paramMMAdView.gender != null)
      localStringBuilder.append("&gender=" + URLEncoder.encode(paramMMAdView.gender, "UTF-8"));
    if (paramMMAdView.zip != null)
      localStringBuilder.append("&zip=" + URLEncoder.encode(paramMMAdView.zip, "UTF-8"));
    if ((paramMMAdView.marital != null) && (((paramMMAdView.marital.equals("single")) || (paramMMAdView.marital.equals("married")) || (paramMMAdView.marital.equals("divorced")) || (paramMMAdView.marital.equals("swinger")) || (paramMMAdView.marital.equals("relationship")) || (paramMMAdView.marital.equals("engaged")))))
      localStringBuilder.append("&marital=" + paramMMAdView.marital);
    if (paramMMAdView.income != null)
      localStringBuilder.append("&income=" + URLEncoder.encode(paramMMAdView.income, "UTF-8"));
    if (paramMMAdView.keywords != null)
      localStringBuilder.append("&kw=" + URLEncoder.encode(paramMMAdView.keywords, "UTF-8"));
    if (paramMMAdView.latitude != null)
      localStringBuilder.append("&lat=" + URLEncoder.encode(paramMMAdView.latitude, "UTF-8"));
    if (paramMMAdView.longitude != null)
      localStringBuilder.append("&long=" + URLEncoder.encode(paramMMAdView.longitude, "UTF-8"));
    if (paramMMAdView.location != null)
    {
      if (paramMMAdView.location.hasAccuracy())
      {
        localStringBuilder.append("&ha=" + paramMMAdView.location.getAccuracy());
        localStringBuilder.append("&va=" + paramMMAdView.location.getAccuracy());
      }
      if (paramMMAdView.location.hasSpeed())
        localStringBuilder.append("&spd=" + paramMMAdView.location.getSpeed());
      if (paramMMAdView.location.hasBearing())
        localStringBuilder.append("&brg=" + paramMMAdView.location.getBearing());
      if (paramMMAdView.location.hasAltitude())
        localStringBuilder.append("&alt=" + paramMMAdView.location.getAltitude());
      localStringBuilder.append("&tslr=" + paramMMAdView.location.getTime());
    }
    if (paramMMAdView.acid != null)
      localStringBuilder.append("&acid=" + URLEncoder.encode(paramMMAdView.acid, "UTF-8"));
    if (paramMMAdView.mxsdk != null)
      localStringBuilder.append("&mxsdk=" + URLEncoder.encode(paramMMAdView.mxsdk, "UTF-8"));
    if (paramMMAdView.height != null)
      localStringBuilder.append("&hsht=" + URLEncoder.encode(paramMMAdView.height, "UTF-8"));
    if (paramMMAdView.width != null)
      localStringBuilder.append("&hswd=" + URLEncoder.encode(paramMMAdView.width, "UTF-8"));
    if (paramMMAdView.ethnicity != null)
      localStringBuilder.append("&ethnicity=" + URLEncoder.encode(paramMMAdView.ethnicity, "UTF-8"));
    if ((paramMMAdView.orientation != null) && (((paramMMAdView.orientation.equals("straight")) || (paramMMAdView.orientation.equals("gay")) || (paramMMAdView.orientation.equals("bisexual")) || (paramMMAdView.orientation.equals("notsure")))))
      localStringBuilder.append("&orientation=" + paramMMAdView.orientation);
    if (paramMMAdView.education != null)
      localStringBuilder.append("&edu=" + URLEncoder.encode(paramMMAdView.education, "UTF-8"));
    if (paramMMAdView.children != null)
      localStringBuilder.append("&children=" + URLEncoder.encode(paramMMAdView.children, "UTF-8"));
    if (paramMMAdView.politics != null)
      localStringBuilder.append("&politics=" + URLEncoder.encode(paramMMAdView.politics, "UTF-8"));
    if (paramMMAdView.vendor != null)
      localStringBuilder.append("&vendor=" + URLEncoder.encode(paramMMAdView.vendor, "UTF-8"));
    if (this.refreshTimerOn)
    {
      localStringBuilder.append("&ar=" + paramMMAdView.refreshInterval);
      label1196: String str1 = HandShake.sharedHandShake(paramMMAdView.getContext()).getSchemesList(paramMMAdView.getContext());
      if (str1 != null)
        localStringBuilder.append("&appsids=" + str1);
      String str2 = getCachedVideoList(paramMMAdView.getContext());
      if (str2 != null)
        localStringBuilder.append("&vid=" + URLEncoder.encode(str2, "UTF-8"));
      if (localStringBuilder == null)
        break label1313;
    }
    for (String str3 = localStringBuilder.toString(); ; str3 = "")
    {
      return str3;
      localStringBuilder.append("&ar=manual");
      label1313: break label1196:
    }
  }

  // ERROR //
  private void handleCachedAdResponse(VideoAd paramVideoAd, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 93	com/millennialmedia/android/MMAdViewController:adViewRef	Ljava/lang/ref/WeakReference;
    //   6: invokevirtual 1034	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   9: checkcast 97	com/millennialmedia/android/MMAdView
    //   12: astore 4
    //   14: aload 4
    //   16: ifnonnull +13 -> 29
    //   19: ldc 207
    //   21: ldc_w 1036
    //   24: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   27: pop
    //   28: return
    //   29: aload_1
    //   30: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   33: invokestatic 1044	com/millennialmedia/android/PreCacheWorker:isCurrentlyDownloading	(Ljava/lang/String;)Z
    //   36: ifeq +18 -> 54
    //   39: ldc_w 1046
    //   42: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   45: aload_0
    //   46: aload 4
    //   48: invokespecial 205	com/millennialmedia/android/MMAdViewController:adIsCaching	(Lcom/millennialmedia/android/MMAdView;)V
    //   51: goto -23 -> 28
    //   54: aload_1
    //   55: invokevirtual 1049	com/millennialmedia/android/VideoAd:isExpired	()Z
    //   58: ifeq +33 -> 91
    //   61: ldc 207
    //   63: ldc_w 1051
    //   66: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   69: pop
    //   70: aload 4
    //   72: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   75: aload_1
    //   76: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   79: invokestatic 469	com/millennialmedia/android/MMAdViewController:deleteAd	(Landroid/content/Context;Ljava/lang/String;)V
    //   82: aload_0
    //   83: aload 4
    //   85: invokespecial 282	com/millennialmedia/android/MMAdViewController:adFailed	(Lcom/millennialmedia/android/MMAdView;)V
    //   88: goto -60 -> 28
    //   91: aload_1
    //   92: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   95: aload 4
    //   97: invokestatic 273	com/millennialmedia/android/MMAdViewController:checkIfAdExistsInDb	(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    //   100: ifne +121 -> 221
    //   103: ldc_w 1053
    //   106: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   109: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   112: dup
    //   113: aload 4
    //   115: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   118: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   121: astore 5
    //   123: aload 5
    //   125: aload_1
    //   126: invokevirtual 1057	com/millennialmedia/android/AdDatabaseHelper:storeAd	(Lcom/millennialmedia/android/VideoAd;)V
    //   129: aload 5
    //   131: ifnull +330 -> 461
    //   134: aload 5
    //   136: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   139: aload 5
    //   141: pop
    //   142: aload 4
    //   144: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   147: aload_1
    //   148: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   151: aload_1
    //   152: invokestatic 278	com/millennialmedia/android/MMAdViewController:checkIfAdExistsInFilesystem	(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    //   155: ifne +139 -> 294
    //   158: ldc_w 1059
    //   161: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   164: aload_0
    //   165: aload 4
    //   167: invokespecial 205	com/millennialmedia/android/MMAdViewController:adIsCaching	(Lcom/millennialmedia/android/MMAdView;)V
    //   170: aload_0
    //   171: getfield 74	com/millennialmedia/android/MMAdViewController:cacheHandler	Landroid/os/Handler;
    //   174: new 1061	com/millennialmedia/android/MMAdViewController$4
    //   177: dup
    //   178: aload_0
    //   179: aload_1
    //   180: invokespecial 1062	com/millennialmedia/android/MMAdViewController$4:<init>	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V
    //   183: invokevirtual 224	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   186: pop
    //   187: goto -159 -> 28
    //   190: astore 17
    //   192: aload 17
    //   194: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   197: aload_3
    //   198: ifnull -56 -> 142
    //   201: aload_3
    //   202: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   205: goto -63 -> 142
    //   208: astore 18
    //   210: aload_3
    //   211: ifnull +7 -> 218
    //   214: aload_3
    //   215: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   218: aload 18
    //   220: athrow
    //   221: ldc_w 1064
    //   224: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   227: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   230: dup
    //   231: aload 4
    //   233: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   236: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   239: astore 5
    //   241: aload 5
    //   243: aload_1
    //   244: invokevirtual 1067	com/millennialmedia/android/AdDatabaseHelper:updateAdData	(Lcom/millennialmedia/android/VideoAd;)V
    //   247: aload 5
    //   249: ifnull +212 -> 461
    //   252: aload 5
    //   254: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   257: aload 5
    //   259: pop
    //   260: goto -118 -> 142
    //   263: astore 6
    //   265: aload 6
    //   267: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   270: aload_3
    //   271: ifnull -129 -> 142
    //   274: aload_3
    //   275: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   278: goto -136 -> 142
    //   281: astore 7
    //   283: aload_3
    //   284: ifnull +7 -> 291
    //   287: aload_3
    //   288: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   291: aload 7
    //   293: athrow
    //   294: iload_2
    //   295: ifne +73 -> 368
    //   298: ldc 207
    //   300: ldc_w 1069
    //   303: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   306: pop
    //   307: aload 4
    //   309: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   312: invokestatic 1023	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    //   315: aload 4
    //   317: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   320: aload 4
    //   322: getfield 1072	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   325: invokevirtual 1075	com/millennialmedia/android/HandShake:updateLastVideoViewedTime	(Landroid/content/Context;Ljava/lang/String;)V
    //   328: aload_0
    //   329: aload 4
    //   331: invokespecial 1077	com/millennialmedia/android/MMAdViewController:adSuccess	(Lcom/millennialmedia/android/MMAdView;)V
    //   334: ldc 207
    //   336: ldc_w 1079
    //   339: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   342: pop
    //   343: aload_0
    //   344: aload_1
    //   345: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   348: aload 4
    //   350: invokespecial 293	com/millennialmedia/android/MMAdViewController:playVideo	(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    //   353: aload 4
    //   355: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   358: aload_1
    //   359: getfield 742	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
    //   362: invokestatic 1081	com/millennialmedia/android/MMAdViewController:cachedVideoWasAdded	(Landroid/content/Context;Ljava/lang/String;)V
    //   365: goto -337 -> 28
    //   368: aload 4
    //   370: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   373: ldc 172
    //   375: iconst_0
    //   376: invokevirtual 176	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   379: invokeinterface 473 1 0
    //   384: astore 8
    //   386: aload 8
    //   388: ldc 178
    //   390: aload_1
    //   391: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   394: invokeinterface 1085 3 0
    //   399: pop
    //   400: aload 8
    //   402: ldc_w 1087
    //   405: iconst_0
    //   406: invokeinterface 1091 3 0
    //   411: pop
    //   412: aload 8
    //   414: invokeinterface 483 1 0
    //   419: pop
    //   420: ldc_w 1093
    //   423: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   426: goto -398 -> 28
    //   429: astore 7
    //   431: aload 5
    //   433: astore_3
    //   434: goto -151 -> 283
    //   437: astore 6
    //   439: aload 5
    //   441: astore_3
    //   442: goto -177 -> 265
    //   445: astore 18
    //   447: aload 5
    //   449: astore_3
    //   450: goto -240 -> 210
    //   453: astore 17
    //   455: aload 5
    //   457: astore_3
    //   458: goto -266 -> 192
    //   461: aload 5
    //   463: pop
    //   464: goto -322 -> 142
    //
    // Exception table:
    //   from	to	target	type
    //   109	123	190	android/database/sqlite/SQLiteException
    //   109	123	208	finally
    //   192	197	208	finally
    //   227	241	263	android/database/sqlite/SQLiteException
    //   227	241	281	finally
    //   265	270	281	finally
    //   241	247	429	finally
    //   241	247	437	android/database/sqlite/SQLiteException
    //   123	129	445	finally
    //   123	129	453	android/database/sqlite/SQLiteException
  }

  // ERROR //
  static File initCachedAdDirectory(VideoAd paramVideoAd, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 1098	com/millennialmedia/android/VideoAd:storedOnSdCard	Z
    //   6: ifeq +233 -> 239
    //   9: invokestatic 503	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   12: ldc_w 505
    //   15: invokevirtual 510	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   18: ifeq +149 -> 167
    //   21: new 512	java/io/File
    //   24: dup
    //   25: invokestatic 516	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   28: ldc_w 523
    //   31: invokespecial 542	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   34: astore 7
    //   36: aload 7
    //   38: invokevirtual 528	java/io/File:exists	()Z
    //   41: ifne +120 -> 161
    //   44: aload 7
    //   46: invokevirtual 1101	java/io/File:mkdirs	()Z
    //   49: ifeq +40 -> 89
    //   52: aload 7
    //   54: astore_3
    //   55: aload_3
    //   56: ifnull +191 -> 247
    //   59: aload_3
    //   60: invokevirtual 1104	java/io/File:isDirectory	()Z
    //   63: ifeq +184 -> 247
    //   66: new 512	java/io/File
    //   69: dup
    //   70: aload_3
    //   71: aload_0
    //   72: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   75: invokespecial 542	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   78: astore 5
    //   80: aload 5
    //   82: invokevirtual 1107	java/io/File:mkdir	()Z
    //   85: pop
    //   86: aload 5
    //   88: areturn
    //   89: aload_1
    //   90: invokevirtual 555	android/content/Context:getCacheDir	()Ljava/io/File;
    //   93: astore_3
    //   94: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   97: dup
    //   98: aload_1
    //   99: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   102: astore 8
    //   104: aload 8
    //   106: aload_0
    //   107: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   110: iconst_0
    //   111: invokevirtual 1111	com/millennialmedia/android/AdDatabaseHelper:updateAdOnSDCard	(Ljava/lang/String;I)V
    //   114: aload 8
    //   116: ifnull +178 -> 294
    //   119: aload 8
    //   121: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   124: aload 8
    //   126: pop
    //   127: goto -72 -> 55
    //   130: astore 9
    //   132: aload 9
    //   134: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   137: aload_2
    //   138: ifnull -83 -> 55
    //   141: aload_2
    //   142: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   145: goto -90 -> 55
    //   148: astore 10
    //   150: aload_2
    //   151: ifnull +7 -> 158
    //   154: aload_2
    //   155: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   158: aload 10
    //   160: athrow
    //   161: aload 7
    //   163: astore_3
    //   164: goto -109 -> 55
    //   167: aload_1
    //   168: invokevirtual 555	android/content/Context:getCacheDir	()Ljava/io/File;
    //   171: astore_3
    //   172: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   175: dup
    //   176: aload_1
    //   177: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   180: astore 8
    //   182: aload 8
    //   184: aload_0
    //   185: getfield 1039	com/millennialmedia/android/VideoAd:id	Ljava/lang/String;
    //   188: iconst_0
    //   189: invokevirtual 1111	com/millennialmedia/android/AdDatabaseHelper:updateAdOnSDCard	(Ljava/lang/String;I)V
    //   192: aload 8
    //   194: ifnull +100 -> 294
    //   197: aload 8
    //   199: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   202: aload 8
    //   204: pop
    //   205: goto -150 -> 55
    //   208: astore 13
    //   210: aload 13
    //   212: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   215: aload_2
    //   216: ifnull -161 -> 55
    //   219: aload_2
    //   220: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   223: goto -168 -> 55
    //   226: astore 14
    //   228: aload_2
    //   229: ifnull +7 -> 236
    //   232: aload_2
    //   233: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   236: aload 14
    //   238: athrow
    //   239: aload_1
    //   240: invokevirtual 555	android/content/Context:getCacheDir	()Ljava/io/File;
    //   243: astore_3
    //   244: goto -189 -> 55
    //   247: ldc 207
    //   249: ldc_w 1113
    //   252: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   255: pop
    //   256: aconst_null
    //   257: astore 5
    //   259: goto -173 -> 86
    //   262: astore 14
    //   264: aload 8
    //   266: astore_2
    //   267: goto -39 -> 228
    //   270: astore 13
    //   272: aload 8
    //   274: astore_2
    //   275: goto -65 -> 210
    //   278: astore 10
    //   280: aload 8
    //   282: astore_2
    //   283: goto -133 -> 150
    //   286: astore 9
    //   288: aload 8
    //   290: astore_2
    //   291: goto -159 -> 132
    //   294: aload 8
    //   296: pop
    //   297: goto -242 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   94	104	130	android/database/sqlite/SQLiteException
    //   94	104	148	finally
    //   132	137	148	finally
    //   172	182	208	android/database/sqlite/SQLiteException
    //   172	182	226	finally
    //   210	215	226	finally
    //   182	192	262	finally
    //   182	192	270	android/database/sqlite/SQLiteException
    //   104	114	278	finally
    //   104	114	286	android/database/sqlite/SQLiteException
  }

  // ERROR //
  private void playVideo(String paramString, MMAdView paramMMAdView)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +241 -> 242
    //   4: aload_2
    //   5: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   8: ldc 172
    //   10: iconst_0
    //   11: invokevirtual 176	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   14: invokeinterface 473 1 0
    //   19: astore_3
    //   20: aload_3
    //   21: ldc_w 1087
    //   24: iconst_1
    //   25: invokeinterface 1091 3 0
    //   30: pop
    //   31: aload_3
    //   32: invokeinterface 483 1 0
    //   37: pop
    //   38: aload_2
    //   39: getfield 332	com/millennialmedia/android/MMAdView:listener	Lcom/millennialmedia/android/MMAdView$MMAdListener;
    //   42: ifnull +13 -> 55
    //   45: aload_2
    //   46: getfield 332	com/millennialmedia/android/MMAdView:listener	Lcom/millennialmedia/android/MMAdView$MMAdListener;
    //   49: aload_2
    //   50: invokeinterface 1116 2 0
    //   55: new 147	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   62: ldc_w 1118
    //   65: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: aload_1
    //   69: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   78: new 796	android/content/Intent
    //   81: dup
    //   82: invokespecial 1119	android/content/Intent:<init>	()V
    //   85: aload_2
    //   86: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   89: ldc_w 1121
    //   92: invokevirtual 1125	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    //   95: astore 6
    //   97: aload 6
    //   99: ldc_w 1126
    //   102: invokevirtual 1130	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   105: pop
    //   106: aload 6
    //   108: ldc_w 1132
    //   111: iconst_1
    //   112: invokevirtual 1136	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   115: pop
    //   116: aload 6
    //   118: ldc_w 1138
    //   121: aload_1
    //   122: invokevirtual 1141	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   125: pop
    //   126: aconst_null
    //   127: astore 10
    //   129: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   132: dup
    //   133: aload_2
    //   134: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   137: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   140: astore 11
    //   142: aload 11
    //   144: aload_1
    //   145: invokevirtual 498	com/millennialmedia/android/AdDatabaseHelper:isAdOnSDCard	(Ljava/lang/String;)Z
    //   148: istore 14
    //   150: aload 11
    //   152: ifnull +8 -> 160
    //   155: aload 11
    //   157: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   160: iload 14
    //   162: ifeq +155 -> 317
    //   165: invokestatic 503	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   168: ldc_w 505
    //   171: invokevirtual 510	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   174: ifeq +143 -> 317
    //   177: aload 6
    //   179: new 147	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   186: invokestatic 516	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   189: invokevirtual 519	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   192: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: ldc_w 521
    //   198: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: ldc_w 523
    //   204: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: ldc_w 521
    //   210: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: aload_1
    //   214: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: ldc_w 1143
    //   220: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: invokestatic 1149	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   229: invokevirtual 1153	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   232: pop
    //   233: aload_2
    //   234: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   237: aload 6
    //   239: invokevirtual 1157	android/content/Context:startActivity	(Landroid/content/Intent;)V
    //   242: return
    //   243: astore 17
    //   245: ldc 207
    //   247: ldc_w 339
    //   250: aload 17
    //   252: invokestatic 343	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   255: pop
    //   256: goto -201 -> 55
    //   259: astore 12
    //   261: aload 12
    //   263: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   266: new 147	java/lang/StringBuilder
    //   269: dup
    //   270: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   273: ldc_w 1159
    //   276: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   279: aload_1
    //   280: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: invokevirtual 164	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   286: invokestatic 232	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
    //   289: aload 10
    //   291: ifnull -49 -> 242
    //   294: aload 10
    //   296: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   299: goto -57 -> 242
    //   302: astore 13
    //   304: aload 10
    //   306: ifnull +8 -> 314
    //   309: aload 10
    //   311: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   314: aload 13
    //   316: athrow
    //   317: aload 6
    //   319: aload_1
    //   320: invokestatic 1149	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   323: invokevirtual 1153	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   326: pop
    //   327: goto -94 -> 233
    //   330: astore 13
    //   332: aload 11
    //   334: astore 10
    //   336: goto -32 -> 304
    //   339: astore 12
    //   341: aload 11
    //   343: astore 10
    //   345: goto -84 -> 261
    //
    // Exception table:
    //   from	to	target	type
    //   45	55	243	java/lang/Exception
    //   129	142	259	android/database/sqlite/SQLiteException
    //   129	142	302	finally
    //   261	289	302	finally
    //   142	150	330	finally
    //   142	150	339	android/database/sqlite/SQLiteException
  }

  static void removeAdViewController(MMAdView paramMMAdView, boolean paramBoolean)
  {
    monitorenter;
    while (true)
    {
      try
      {
        MMAdViewController localMMAdViewController1 = paramMMAdView.controller;
        if (localMMAdViewController1 == null);
        do
        {
          return;
          if (!(paramBoolean))
            break label80;
          localMMAdViewController2 = (MMAdViewController)controllers.put(paramMMAdView.adViewId, null);
          paramMMAdView.controller = null;
        }
        while (localMMAdViewController2 == null);
        localMMAdViewController2.pauseTimer(false);
        if (paramBoolean)
          localMMAdViewController2.handler = null;
      }
      finally
      {
        monitorexit;
      }
      label80: MMAdViewController localMMAdViewController2 = (MMAdViewController)controllers.get(paramMMAdView.adViewId);
    }
  }

  private void resetAdViewSettings()
  {
    this.shouldLaunchToOverlay = false;
    this.shouldShowTitlebar = false;
    this.shouldShowBottomBar = true;
    this.shouldEnableBottomBar = true;
    this.shouldMakeOverlayTransparent = false;
    this.shouldResizeOverlay = 0;
    this.overlayTitle = "Advertisement";
    this.overlayTransition = "bottomtotop";
    this.transitionTime = 600L;
    this.canAccelerate = false;
  }

  private void setWebViewContent(String paramString1, String paramString2, MMAdView paramMMAdView)
  {
    Activity localActivity = (Activity)paramMMAdView.getContext();
    if ((paramString1 == null) || (localActivity == null))
      label18: return;
    2 local2 = new MMWebViewClient()
    {
      public void onPageFinished(WebView paramWebView, String paramString)
      {
        paramWebView.loadUrl("javascript:window.interface.setLoaded(true);");
        paramWebView.loadUrl("javascript:window.interface.getUrl(document.links[0].href);");
        MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
        if (localMMAdView != null)
          localMMAdView.setClickable(true);
        if (paramWebView == null)
          return;
        paramWebView.clearCache(true);
      }

      public void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2)
      {
        Log.e("MillennialMediaSDK", "Scale Changed");
      }

      public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
      {
        super.shouldOverrideUrlLoading(paramWebView, paramString);
        return true;
      }
    };
    if (paramMMAdView.ignoreDensityScaling);
    for (String str = "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>" + paramString1; ; str = paramString1)
    {
      resetAdViewSettings();
      paramMMAdView.setClickable(false);
      localActivity.runOnUiThread(new Runnable(local2, paramString2, str)
      {
        public void run()
        {
          MMAdViewController.this.webView.setWebViewClient(this.val$webViewClient);
          MMAdViewController.this.webView.loadDataWithBaseURL(this.val$baseUrl, this.val$content, "text/html", "UTF-8", null);
        }
      });
      break label18:
    }
  }

  // ERROR //
  boolean check(MMAdView paramMMAdView)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 1072	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   4: ldc_w 728
    //   7: invokevirtual 1216	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   10: ifeq +58 -> 68
    //   13: aload_0
    //   14: getfield 320	com/millennialmedia/android/MMAdViewController:fetchedContentLaunch	Ljava/lang/String;
    //   17: ifnull +51 -> 68
    //   20: aload_1
    //   21: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   24: invokestatic 1023	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    //   27: aload_1
    //   28: getfield 1072	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   31: aload_0
    //   32: getfield 326	com/millennialmedia/android/MMAdViewController:fetchedTimeLaunch	J
    //   35: invokevirtual 1220	com/millennialmedia/android/HandShake:canDisplayCachedAd	(Ljava/lang/String;J)Z
    //   38: ifne +24 -> 62
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 320	com/millennialmedia/android/MMAdViewController:fetchedContentLaunch	Ljava/lang/String;
    //   46: aload_0
    //   47: aconst_null
    //   48: putfield 323	com/millennialmedia/android/MMAdViewController:fetchedBaseUrlLaunch	Ljava/lang/String;
    //   51: aload_0
    //   52: lconst_0
    //   53: putfield 326	com/millennialmedia/android/MMAdViewController:fetchedTimeLaunch	J
    //   56: iconst_0
    //   57: istore 5
    //   59: iload 5
    //   61: ireturn
    //   62: iconst_1
    //   63: istore 5
    //   65: goto -6 -> 59
    //   68: aload_1
    //   69: getfield 1072	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   72: ldc_w 730
    //   75: invokevirtual 1216	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   78: ifeq +58 -> 136
    //   81: aload_0
    //   82: getfield 248	com/millennialmedia/android/MMAdViewController:fetchedContentTransition	Ljava/lang/String;
    //   85: ifnull +51 -> 136
    //   88: aload_1
    //   89: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   92: invokestatic 1023	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    //   95: aload_1
    //   96: getfield 1072	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   99: aload_0
    //   100: getfield 255	com/millennialmedia/android/MMAdViewController:fetchedTimeTransition	J
    //   103: invokevirtual 1220	com/millennialmedia/android/HandShake:canDisplayCachedAd	(Ljava/lang/String;J)Z
    //   106: ifne +24 -> 130
    //   109: aload_0
    //   110: aconst_null
    //   111: putfield 248	com/millennialmedia/android/MMAdViewController:fetchedContentTransition	Ljava/lang/String;
    //   114: aload_0
    //   115: aconst_null
    //   116: putfield 251	com/millennialmedia/android/MMAdViewController:fetchedBaseUrlTransition	Ljava/lang/String;
    //   119: aload_0
    //   120: lconst_0
    //   121: putfield 255	com/millennialmedia/android/MMAdViewController:fetchedTimeTransition	J
    //   124: iconst_0
    //   125: istore 5
    //   127: goto -68 -> 59
    //   130: iconst_1
    //   131: istore 5
    //   133: goto -74 -> 59
    //   136: aload_1
    //   137: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   140: ldc 172
    //   142: iconst_0
    //   143: invokevirtual 176	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   146: astore_2
    //   147: aload_2
    //   148: ldc 178
    //   150: aconst_null
    //   151: invokeinterface 184 3 0
    //   156: astore_3
    //   157: aload_2
    //   158: ldc_w 1087
    //   161: iconst_0
    //   162: invokeinterface 453 3 0
    //   167: istore 4
    //   169: aload_3
    //   170: ifnull +147 -> 317
    //   173: aload_3
    //   174: aload_1
    //   175: invokestatic 273	com/millennialmedia/android/MMAdViewController:checkIfAdExistsInDb	(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    //   178: ifeq +181 -> 359
    //   181: aload_1
    //   182: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   185: aload_3
    //   186: aconst_null
    //   187: invokestatic 278	com/millennialmedia/android/MMAdViewController:checkIfAdExistsInFilesystem	(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    //   190: ifeq +157 -> 347
    //   193: aload_0
    //   194: aload_3
    //   195: aload_1
    //   196: invokespecial 287	com/millennialmedia/android/MMAdViewController:checkIfExpired	(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    //   199: ifne +136 -> 335
    //   202: iload 4
    //   204: ifne +119 -> 323
    //   207: aconst_null
    //   208: astore 10
    //   210: lconst_0
    //   211: lstore 11
    //   213: new 194	com/millennialmedia/android/AdDatabaseHelper
    //   216: dup
    //   217: aload_1
    //   218: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   221: invokespecial 195	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
    //   224: astore 13
    //   226: aload 13
    //   228: aload_3
    //   229: invokevirtual 1223	com/millennialmedia/android/AdDatabaseHelper:getDeferredViewStart	(Ljava/lang/String;)J
    //   232: lstore 17
    //   234: lload 17
    //   236: lstore 11
    //   238: aload 13
    //   240: ifnull +149 -> 389
    //   243: aload 13
    //   245: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   248: aload_1
    //   249: invokevirtual 101	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
    //   252: invokestatic 1023	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    //   255: aload_1
    //   256: getfield 1072	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
    //   259: lload 11
    //   261: invokevirtual 1220	com/millennialmedia/android/HandShake:canDisplayCachedAd	(Ljava/lang/String;J)Z
    //   264: ifeq +44 -> 308
    //   267: iconst_1
    //   268: istore 5
    //   270: goto -211 -> 59
    //   273: astore 14
    //   275: aload 14
    //   277: invokevirtual 227	android/database/sqlite/SQLiteException:printStackTrace	()V
    //   280: aload 10
    //   282: ifnull -34 -> 248
    //   285: aload 10
    //   287: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   290: goto -42 -> 248
    //   293: astore 15
    //   295: aload 10
    //   297: ifnull +8 -> 305
    //   300: aload 10
    //   302: invokevirtual 202	com/millennialmedia/android/AdDatabaseHelper:close	()V
    //   305: aload 15
    //   307: athrow
    //   308: ldc 207
    //   310: ldc_w 1225
    //   313: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   316: pop
    //   317: iconst_0
    //   318: istore 5
    //   320: goto -261 -> 59
    //   323: ldc 207
    //   325: ldc_w 1227
    //   328: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   331: pop
    //   332: goto -15 -> 317
    //   335: ldc 207
    //   337: ldc_w 1229
    //   340: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   343: pop
    //   344: goto -27 -> 317
    //   347: ldc 207
    //   349: ldc_w 1231
    //   352: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   355: pop
    //   356: goto -39 -> 317
    //   359: ldc 207
    //   361: ldc_w 1233
    //   364: invokestatic 215	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   367: pop
    //   368: goto -51 -> 317
    //   371: astore 15
    //   373: aload 13
    //   375: astore 10
    //   377: goto -82 -> 295
    //   380: astore 14
    //   382: aload 13
    //   384: astore 10
    //   386: goto -111 -> 275
    //   389: goto -141 -> 248
    //
    // Exception table:
    //   from	to	target	type
    //   213	226	273	android/database/sqlite/SQLiteException
    //   213	226	293	finally
    //   275	280	293	finally
    //   226	234	371	finally
    //   226	234	380	android/database/sqlite/SQLiteException
  }

  void chooseCachedAdOrAdCall(boolean paramBoolean)
  {
    monitorenter;
    while (true)
    {
      MMAdView localMMAdView;
      Context localContext;
      try
      {
        localMMAdView = (MMAdView)this.adViewRef.get();
        if (localMMAdView == null)
        {
          Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
          return;
        }
        localContext = localMMAdView.getContext();
        if (!(HandShake.sharedHandShake(localContext).kill))
          break label68;
        Log.i("MillennialMediaSDK", "The server is no longer allowing ads.");
      }
      finally
      {
        monitorexit;
      }
      if (this.requestInProgress)
      {
        label68: Log.i("MillennialMediaSDK", "There is already an ad request in progress. Defering call for new ad");
        adFailed(localMMAdView);
      }
      if (HandShake.sharedHandShake(localContext).isAdTypeDownloading(localMMAdView.adType))
      {
        Log.i("MillennialMediaSDK", "There is a download in progress. Defering call for new ad");
        adFailed(localMMAdView);
      }
      MMAdViewSDK.Log.d("No download in progress.");
      if (checkForAdNotDownloaded(localMMAdView.getContext()))
      {
        Log.i("MillennialMediaSDK", "Last ad wasn't fully downloaded. Download again.");
        adIsCaching(localMMAdView);
        DownloadLastAd(localMMAdView, paramBoolean);
      }
      Log.i("MillennialMediaSDK", "No incomplete downloads.");
      cleanUpExpiredAds(localMMAdView.getContext());
      if (paramBoolean)
        getNextAd(paramBoolean);
      SharedPreferences localSharedPreferences = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0);
      String str = localSharedPreferences.getString("lastDownloadedAdName", null);
      if (str != null)
      {
        if (checkIfAdExistsInDb(str, localMMAdView))
        {
          Log.i("MillennialMediaSDK", "Ad found in the database");
          if (checkIfAdExistsInFilesystem(localMMAdView.getContext(), str, null))
          {
            if (!(checkIfExpired(str, localMMAdView)))
            {
              boolean bool = localSharedPreferences.getBoolean("lastAdViewed", false);
              Log.i("MillennialMediaSDK", "Last ad viewed?: " + bool);
              if (!(bool))
              {
                if (HandShake.sharedHandShake(localContext).canWatchVideoAd(localContext, localMMAdView.adType, str))
                {
                  adSuccess(localMMAdView);
                  Log.i("MillennialMediaSDK", "Millennial ad return success");
                  playVideo(str, localMMAdView);
                }
                Log.i("MillennialMediaSDK", "Outside of the timeout window. Call for a new ad");
                getNextAd(false);
              }
              Log.i("MillennialMediaSDK", "Existing ad has been viewed. Call for a new ad");
              getNextAd(false);
            }
            Log.i("MillennialMediaSDK", "Existing ad is expired. Delete and call for a new ad");
            deleteAd(localMMAdView.getContext(), str);
            SharedPreferences.Editor localEditor2 = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
            localEditor2.putString("lastDownloadedAdName", null);
            localEditor2.commit();
            MMAdViewSDK.Log.v("Setting last ad name to NULL");
            getNextAd(false);
          }
          Log.i("MillennialMediaSDK", "Last ad can't be found in the file system. Download again.");
          DownloadLastAd(localMMAdView, false);
        }
        Log.i("MillennialMediaSDK", "Last ad can't be found in the database. Remove any files from the filesystem and call for new ad.");
        deleteAd(localMMAdView.getContext(), str);
        SharedPreferences.Editor localEditor1 = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
        localEditor1.putString("lastDownloadedAdName", null);
        localEditor1.commit();
        MMAdViewSDK.Log.v("Setting last ad name to NULL");
        getNextAd(false);
      }
      Log.i("MillennialMediaSDK", "Last ad name is null. Call for new ad.");
      getNextAd(false);
    }
  }

  boolean display(MMAdView paramMMAdView)
  {
    int i = 1;
    if (check(paramMMAdView))
      if ((paramMMAdView.adType.equalsIgnoreCase("MMFullScreenAdLaunch")) && (this.fetchedContentLaunch != null))
      {
        setWebViewContent(this.fetchedContentLaunch, this.fetchedBaseUrlLaunch, paramMMAdView);
        this.fetchedContentLaunch = null;
        this.fetchedBaseUrlLaunch = null;
        this.fetchedTimeLaunch = 0L;
      }
    while (true)
    {
      return i;
      if ((paramMMAdView.adType.equalsIgnoreCase("MMFullScreenAdTransition")) && (this.fetchedContentTransition != null))
      {
        setWebViewContent(this.fetchedContentTransition, this.fetchedBaseUrlTransition, paramMMAdView);
        this.fetchedContentTransition = null;
        this.fetchedBaseUrlTransition = null;
        this.fetchedTimeTransition = 0L;
      }
      String str = paramMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).getString("lastDownloadedAdName", null);
      HandShake.sharedHandShake(paramMMAdView.getContext()).updateLastVideoViewedTime(paramMMAdView.getContext(), paramMMAdView.adType);
      playVideo(str, paramMMAdView);
      continue;
      i = 0;
    }
  }

  void handleClick(String paramString)
  {
    this.urlString = paramString;
    5 local5 = new Thread()
    {
      public void run()
      {
        MMAdViewSDK.Log.d("Touch occured, opening ad...");
        if (MMAdViewController.this.urlString == null);
        while (true)
        {
          return;
          MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
          if (localMMAdView == null)
            Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
          Activity localActivity = (Activity)localMMAdView.getContext();
          String str1 = null;
          if (localActivity == null)
            Log.e("MillennialMediaSDK", "The ad view does not have a parent activity.");
          String str2 = MMAdViewController.this.urlString;
          label234: Uri localUri;
          try
          {
            while (true)
            {
              URL localURL = new URL(MMAdViewController.this.urlString);
              HttpURLConnection.setFollowRedirects(false);
              HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
              localHttpURLConnection.setRequestMethod("GET");
              localHttpURLConnection.connect();
              MMAdViewController.access$1702(MMAdViewController.this, localHttpURLConnection.getHeaderField("Location"));
              str1 = localHttpURLConnection.getHeaderField("Content-Type");
              int i = localHttpURLConnection.getResponseCode();
              MMAdViewSDK.Log.d("Response: " + localHttpURLConnection.getResponseCode() + " " + localHttpURLConnection.getResponseMessage());
              MMAdViewSDK.Log.d("urlString: " + MMAdViewController.this.urlString);
              if ((i < 300) || (i >= 400));
              if (str2 != null);
              if (str1 == null)
                str1 = "";
              MMAdViewSDK.Log.d(str2);
              localUri = Uri.parse(str2);
              if ((localUri != null) && (localUri.getScheme() != null) && (str1 != null));
              try
              {
                if (((!(localUri.getScheme().equalsIgnoreCase("http"))) && (!(localUri.getScheme().equalsIgnoreCase("https")))) || (!(str1.equalsIgnoreCase("text/html"))))
                  break label537;
                Intent localIntent1 = new Intent(localActivity, MMAdViewOverlayActivity.class);
                localIntent1.setFlags(603979776);
                localIntent1.putExtra("canAccelerate", MMAdViewController.this.canAccelerate);
                localIntent1.putExtra("overlayTransition", MMAdViewController.this.overlayTransition);
                localIntent1.putExtra("transitionTime", MMAdViewController.this.transitionTime);
                localIntent1.putExtra("shouldResizeOverlay", MMAdViewController.this.shouldResizeOverlay);
                localIntent1.putExtra("shouldShowTitlebar", MMAdViewController.this.shouldShowTitlebar);
                localIntent1.putExtra("shouldShowBottomBar", MMAdViewController.this.shouldShowBottomBar);
                localIntent1.putExtra("shouldEnableBottomBar", MMAdViewController.this.shouldEnableBottomBar);
                localIntent1.putExtra("shouldMakeOverlayTransparent", MMAdViewController.this.shouldMakeOverlayTransparent);
                localIntent1.putExtra("overlayTitle", MMAdViewController.this.overlayTitle);
                MMAdViewSDK.Log.v("Accelerometer on?: " + MMAdViewController.this.canAccelerate);
                localIntent1.setData(localUri);
                localActivity.startActivityForResult(localIntent1, 0);
              }
              catch (ActivityNotFoundException localActivityNotFoundException)
              {
                Log.e("MillennialMediaSDK", localActivityNotFoundException.getMessage());
              }
            }
          }
          catch (MalformedURLException localMalformedURLException)
          {
            break label234:
          }
          catch (IOException localIOException)
          {
            break label234:
            if (localUri.getScheme().equalsIgnoreCase("mmvideo"))
            {
              label537: String str3 = localUri.getHost();
              if (str3 != null);
              MMAdViewSDK.Log.v("mmvideo: attempting to play video " + str3);
              if (MMAdViewController.access$1800(str3, localMMAdView))
              {
                if (MMAdViewController.access$1900(localMMAdView.getContext(), str3, null))
                {
                  if (MMAdViewController.this.checkIfExpired(str3, localMMAdView) == 0)
                  {
                    HandShake.sharedHandShake(localMMAdView.getContext()).updateLastVideoViewedTime(localMMAdView.getContext(), localMMAdView.adType);
                    MMAdViewController.this.playVideo(str3, localMMAdView);
                  }
                  MMAdViewSDK.Log.v("mmvideo: Ad is expired.");
                }
                MMAdViewSDK.Log.v("mmvideo: Ad is not in the filesystem.");
              }
              MMAdViewSDK.Log.v("mmvideo: Ad is not in the database.");
            }
            if (localUri.getScheme().equalsIgnoreCase("market"))
            {
              MMAdViewSDK.Log.v("Android Market URL, launch the Market Application");
              Intent localIntent9 = new Intent("android.intent.action.VIEW", localUri);
              localIntent9.setFlags(603979776);
              localActivity.startActivity(localIntent9);
            }
            if ((!(localUri.getScheme().equalsIgnoreCase("rtsp"))) && (((!(localUri.getScheme().equalsIgnoreCase("http"))) || ((!(str1.equalsIgnoreCase("video/mp4"))) && (!(str1.equalsIgnoreCase("video/3gpp")))))))
              break label839;
            MMAdViewSDK.Log.v("Video, launch the video player for video at: " + localUri);
            Intent localIntent2 = new Intent(localActivity, VideoPlayer.class);
            localIntent2.setFlags(603979776);
            localIntent2.setData(localUri);
            localActivity.startActivityForResult(localIntent2, 0);
          }
          continue;
          if (localUri.getScheme().equalsIgnoreCase("tel"))
          {
            label839: MMAdViewSDK.Log.v("Telephone Number, launch the phone");
            Intent localIntent8 = new Intent("android.intent.action.DIAL", localUri);
            localIntent8.setFlags(603979776);
            localActivity.startActivity(localIntent8);
          }
          if (localUri.getScheme().equalsIgnoreCase("geo"))
          {
            MMAdViewSDK.Log.v("Google Maps");
            Intent localIntent7 = new Intent("android.intent.action.VIEW", localUri);
            localIntent7.setFlags(603979776);
            localActivity.startActivity(localIntent7);
          }
          if ((localUri.getScheme().equalsIgnoreCase("http")) && (localUri.getLastPathSegment() != null))
          {
            if ((localUri.getLastPathSegment().endsWith(".mp4")) || (localUri.getLastPathSegment().endsWith(".3gp")))
            {
              MMAdViewSDK.Log.v("Video, launch the video player for video at: " + localUri);
              Intent localIntent5 = new Intent(localActivity, VideoPlayer.class);
              localIntent5.setFlags(603979776);
              localIntent5.setData(localUri);
              localActivity.startActivityForResult(localIntent5, 0);
            }
            Intent localIntent6 = new Intent(localActivity, MMAdViewOverlayActivity.class);
            localIntent6.setFlags(603979776);
            localIntent6.putExtra("canAccelerate", MMAdViewController.this.canAccelerate);
            localIntent6.putExtra("overlayTransition", MMAdViewController.this.overlayTransition);
            localIntent6.putExtra("transitionTime", MMAdViewController.this.transitionTime);
            localIntent6.putExtra("shouldResizeOverlay", MMAdViewController.this.shouldResizeOverlay);
            localIntent6.putExtra("shouldShowTitlebar", MMAdViewController.this.shouldShowTitlebar);
            localIntent6.putExtra("shouldShowBottomBar", MMAdViewController.this.shouldShowBottomBar);
            localIntent6.putExtra("shouldEnableBottomBar", MMAdViewController.this.shouldEnableBottomBar);
            localIntent6.putExtra("shouldMakeOverlayTransparent", MMAdViewController.this.shouldMakeOverlayTransparent);
            localIntent6.putExtra("overlayTitle", MMAdViewController.this.overlayTitle);
            MMAdViewSDK.Log.v("Accelerometer on?: " + MMAdViewController.this.canAccelerate);
            localIntent6.setData(localUri);
            localActivity.startActivityForResult(localIntent6, 0);
          }
          if (localUri.getScheme().equalsIgnoreCase("http"))
          {
            Intent localIntent3 = new Intent(localActivity, MMAdViewOverlayActivity.class);
            localIntent3.setFlags(603979776);
            localIntent3.putExtra("canAccelerate", MMAdViewController.this.canAccelerate);
            localIntent3.putExtra("overlayTransition", MMAdViewController.this.overlayTransition);
            localIntent3.putExtra("transitionTime", MMAdViewController.this.transitionTime);
            localIntent3.putExtra("shouldResizeOverlay", MMAdViewController.this.shouldResizeOverlay);
            localIntent3.putExtra("shouldShowTitlebar", MMAdViewController.this.shouldShowTitlebar);
            localIntent3.putExtra("shouldShowBottomBar", MMAdViewController.this.shouldShowBottomBar);
            localIntent3.putExtra("shouldEnableBottomBar", MMAdViewController.this.shouldEnableBottomBar);
            localIntent3.putExtra("shouldMakeOverlayTransparent", MMAdViewController.this.shouldMakeOverlayTransparent);
            localIntent3.putExtra("overlayTitle", MMAdViewController.this.overlayTitle);
            MMAdViewSDK.Log.v("Accelerometer on?: " + MMAdViewController.this.canAccelerate);
            localIntent3.setData(localUri);
            localActivity.startActivityForResult(localIntent3, 0);
          }
          Intent localIntent4 = new Intent("android.intent.action.VIEW", localUri);
          localIntent4.setFlags(603979776);
          localActivity.startActivity(localIntent4);
        }
      }
    };
    local5.setPriority(10);
    local5.start();
  }

  // ERROR //
  void pauseTimer(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 405	com/millennialmedia/android/MMAdViewController:refreshTimerOn	Z
    //   6: ifne +8 -> 14
    //   9: aload_0
    //   10: monitorexit
    //   11: goto +64 -> 75
    //   14: aload_0
    //   15: getfield 76	com/millennialmedia/android/MMAdViewController:paused	Z
    //   18: ifeq +22 -> 40
    //   21: iload_1
    //   22: ifeq +8 -> 30
    //   25: aload_0
    //   26: iconst_1
    //   27: putfield 1288	com/millennialmedia/android/MMAdViewController:appPaused	Z
    //   30: aload_0
    //   31: monitorexit
    //   32: goto +43 -> 75
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    //   40: aload_0
    //   41: getfield 297	com/millennialmedia/android/MMAdViewController:handler	Landroid/os/Handler;
    //   44: aload_0
    //   45: getfield 83	com/millennialmedia/android/MMAdViewController:runnable	Ljava/lang/Runnable;
    //   48: invokevirtual 1291	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   51: aload_0
    //   52: invokestatic 1296	android/os/SystemClock:uptimeMillis	()J
    //   55: aload_0
    //   56: getfield 1298	com/millennialmedia/android/MMAdViewController:timeResumed	J
    //   59: lsub
    //   60: putfield 1300	com/millennialmedia/android/MMAdViewController:timeRemaining	J
    //   63: aload_0
    //   64: iconst_1
    //   65: putfield 76	com/millennialmedia/android/MMAdViewController:paused	Z
    //   68: aload_0
    //   69: iload_1
    //   70: putfield 1288	com/millennialmedia/android/MMAdViewController:appPaused	Z
    //   73: aload_0
    //   74: monitorexit
    //   75: return
    //
    // Exception table:
    //   from	to	target	type
    //   2	38	35	finally
    //   40	75	35	finally
  }

  // ERROR //
  void resumeTimer(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 405	com/millennialmedia/android/MMAdViewController:refreshTimerOn	Z
    //   6: ifne +8 -> 14
    //   9: aload_0
    //   10: monitorexit
    //   11: goto +160 -> 171
    //   14: aload_0
    //   15: getfield 76	com/millennialmedia/android/MMAdViewController:paused	Z
    //   18: ifne +13 -> 31
    //   21: aload_0
    //   22: monitorexit
    //   23: goto +148 -> 171
    //   26: astore_2
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_2
    //   30: athrow
    //   31: aload_0
    //   32: getfield 1288	com/millennialmedia/android/MMAdViewController:appPaused	Z
    //   35: ifeq +12 -> 47
    //   38: iload_1
    //   39: ifne +8 -> 47
    //   42: aload_0
    //   43: monitorexit
    //   44: goto +127 -> 171
    //   47: aload_0
    //   48: getfield 93	com/millennialmedia/android/MMAdViewController:adViewRef	Ljava/lang/ref/WeakReference;
    //   51: invokevirtual 1034	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   54: checkcast 97	com/millennialmedia/android/MMAdView
    //   57: astore_3
    //   58: aload_3
    //   59: ifnonnull +17 -> 76
    //   62: ldc 207
    //   64: ldc_w 1036
    //   67: invokestatic 367	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   70: pop
    //   71: aload_0
    //   72: monitorexit
    //   73: goto +98 -> 171
    //   76: aload_0
    //   77: getfield 297	com/millennialmedia/android/MMAdViewController:handler	Landroid/os/Handler;
    //   80: ifnonnull +17 -> 97
    //   83: aload_0
    //   84: new 63	android/os/Handler
    //   87: dup
    //   88: invokestatic 69	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   91: invokespecial 72	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   94: putfield 297	com/millennialmedia/android/MMAdViewController:handler	Landroid/os/Handler;
    //   97: aload_0
    //   98: getfield 1300	com/millennialmedia/android/MMAdViewController:timeRemaining	J
    //   101: lconst_0
    //   102: lcmp
    //   103: ifle +20 -> 123
    //   106: aload_0
    //   107: getfield 1300	com/millennialmedia/android/MMAdViewController:timeRemaining	J
    //   110: sipush 1000
    //   113: aload_3
    //   114: getfield 403	com/millennialmedia/android/MMAdView:refreshInterval	I
    //   117: imul
    //   118: i2l
    //   119: lcmp
    //   120: ifle +16 -> 136
    //   123: aload_0
    //   124: sipush 1000
    //   127: aload_3
    //   128: getfield 403	com/millennialmedia/android/MMAdView:refreshInterval	I
    //   131: imul
    //   132: i2l
    //   133: putfield 1300	com/millennialmedia/android/MMAdViewController:timeRemaining	J
    //   136: aload_0
    //   137: getfield 297	com/millennialmedia/android/MMAdViewController:handler	Landroid/os/Handler;
    //   140: aload_0
    //   141: getfield 83	com/millennialmedia/android/MMAdViewController:runnable	Ljava/lang/Runnable;
    //   144: aload_0
    //   145: getfield 1300	com/millennialmedia/android/MMAdViewController:timeRemaining	J
    //   148: invokevirtual 1304	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   151: pop
    //   152: aload_0
    //   153: invokestatic 1296	android/os/SystemClock:uptimeMillis	()J
    //   156: putfield 1298	com/millennialmedia/android/MMAdViewController:timeResumed	J
    //   159: aload_0
    //   160: iconst_0
    //   161: putfield 1288	com/millennialmedia/android/MMAdViewController:appPaused	Z
    //   164: aload_0
    //   165: iconst_0
    //   166: putfield 76	com/millennialmedia/android/MMAdViewController:paused	Z
    //   169: aload_0
    //   170: monitorexit
    //   171: return
    //
    // Exception table:
    //   from	to	target	type
    //   2	29	26	finally
    //   31	171	26	finally
  }

  private class DownloadAdTask extends AsyncTask<VideoAd, Void, String>
  {
    DownloadAdTask()
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        return;
        HandShake.sharedHandShake(localMMAdView.getContext()).lockAdTypeDownload(localMMAdView.adType);
      }
    }

    protected String doInBackground(VideoAd[] paramArrayOfVideoAd)
    {
      String str = null;
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        label28: return str;
        str = null;
        if (paramArrayOfVideoAd == null)
          continue;
        int i = paramArrayOfVideoAd.length;
        str = null;
        if (i == 0)
          continue;
        File localFile = MMAdViewController.initCachedAdDirectory(paramArrayOfVideoAd[0], localMMAdView.getContext());
        str = null;
        if (localFile == null)
          continue;
        MMAdViewSDK.Log.v("Downloading content to " + localFile);
        if (!(MMAdViewController.downloadComponent(paramArrayOfVideoAd[0].contentUrl, "video.dat", localFile)))
        {
          SharedPreferences.Editor localEditor3 = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
          localEditor3.putBoolean("pendingDownload", true);
          localEditor3.commit();
          str = paramArrayOfVideoAd[0].id;
        }
        for (int j = 0; j < paramArrayOfVideoAd[0].buttons.size(); ++j)
        {
          VideoImage localVideoImage = (VideoImage)paramArrayOfVideoAd[0].buttons.get(j);
          if (MMAdViewController.downloadComponent(localVideoImage.imageUrl, localVideoImage.getImageName(), localFile))
            continue;
          SharedPreferences.Editor localEditor2 = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
          localEditor2.putBoolean("pendingDownload", true);
          localEditor2.commit();
          str = paramArrayOfVideoAd[0].id;
          break label28:
        }
        SharedPreferences.Editor localEditor1 = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
        localEditor1.putBoolean("pendingDownload", false);
        localEditor1.commit();
        str = paramArrayOfVideoAd[0].id;
      }
    }

    // ERROR //
    protected void onPostExecute(String paramString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aload_0
      //   3: getfield 11	com/millennialmedia/android/MMAdViewController$DownloadAdTask:this$0	Lcom/millennialmedia/android/MMAdViewController;
      //   6: invokestatic 20	com/millennialmedia/android/MMAdViewController:access$100	(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;
      //   9: invokevirtual 26	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
      //   12: checkcast 28	com/millennialmedia/android/MMAdView
      //   15: astore_3
      //   16: aload_3
      //   17: ifnonnull +12 -> 29
      //   20: ldc 30
      //   22: ldc 32
      //   24: invokestatic 38	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   27: pop
      //   28: return
      //   29: aload_3
      //   30: invokevirtual 42	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
      //   33: ldc 101
      //   35: iconst_0
      //   36: invokevirtual 107	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
      //   39: astore 4
      //   41: aload 4
      //   43: invokeinterface 113 1 0
      //   48: astore 5
      //   50: aload_1
      //   51: ifnull +180 -> 231
      //   54: aload 5
      //   56: ldc 159
      //   58: aload_1
      //   59: invokeinterface 163 3 0
      //   64: pop
      //   65: new 69	java/lang/StringBuilder
      //   68: dup
      //   69: invokespecial 70	java/lang/StringBuilder:<init>	()V
      //   72: ldc 165
      //   74: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   77: aload_1
      //   78: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   81: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   84: invokestatic 88	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   87: aload 4
      //   89: ldc 115
      //   91: iconst_1
      //   92: invokeinterface 169 3 0
      //   97: ifeq +128 -> 225
      //   100: iconst_0
      //   101: istore 7
      //   103: aload_3
      //   104: invokevirtual 42	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
      //   107: invokestatic 48	com/millennialmedia/android/HandShake:sharedHandShake	(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
      //   110: aload_3
      //   111: getfield 52	com/millennialmedia/android/MMAdView:adType	Ljava/lang/String;
      //   114: invokevirtual 172	com/millennialmedia/android/HandShake:unlockAdTypeDownload	(Ljava/lang/String;)V
      //   117: new 174	com/millennialmedia/android/AdDatabaseHelper
      //   120: dup
      //   121: aload_3
      //   122: invokevirtual 42	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
      //   125: invokespecial 177	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
      //   128: astore 8
      //   130: aload 8
      //   132: aload_1
      //   133: invokevirtual 181	com/millennialmedia/android/AdDatabaseHelper:getVideoAd	(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
      //   136: astore 14
      //   138: iload 7
      //   140: ifeq +108 -> 248
      //   143: aload 5
      //   145: ldc 183
      //   147: iconst_0
      //   148: invokeinterface 187 3 0
      //   153: pop
      //   154: ldc 189
      //   156: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   159: aload 5
      //   161: ldc 194
      //   163: iconst_0
      //   164: invokeinterface 121 3 0
      //   169: pop
      //   170: ldc 196
      //   172: invokestatic 88	com/millennialmedia/android/MMAdViewSDK$Log:v	(Ljava/lang/String;)V
      //   175: aload_3
      //   176: invokevirtual 42	com/millennialmedia/android/MMAdView:getContext	()Landroid/content/Context;
      //   179: aload 14
      //   181: getfield 199	com/millennialmedia/android/VideoAd:acid	Ljava/lang/String;
      //   184: invokestatic 203	com/millennialmedia/android/MMAdViewController:cachedVideoWasAdded	(Landroid/content/Context;Ljava/lang/String;)V
      //   187: aload 14
      //   189: getfield 207	com/millennialmedia/android/VideoAd:cacheComplete	[Ljava/lang/String;
      //   192: invokestatic 213	com/millennialmedia/android/HttpGetRequest:log	([Ljava/lang/String;)V
      //   195: aload 8
      //   197: ifnull +8 -> 205
      //   200: aload 8
      //   202: invokevirtual 216	com/millennialmedia/android/AdDatabaseHelper:close	()V
      //   205: aload 5
      //   207: invokeinterface 125 1 0
      //   212: pop
      //   213: aload_0
      //   214: getfield 11	com/millennialmedia/android/MMAdViewController$DownloadAdTask:this$0	Lcom/millennialmedia/android/MMAdViewController;
      //   217: aload_3
      //   218: iconst_0
      //   219: invokestatic 220	com/millennialmedia/android/MMAdViewController:access$1100	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
      //   222: goto -194 -> 28
      //   225: iconst_1
      //   226: istore 7
      //   228: goto -125 -> 103
      //   231: aload 5
      //   233: ldc 159
      //   235: aconst_null
      //   236: invokeinterface 163 3 0
      //   241: pop
      //   242: iconst_0
      //   243: istore 7
      //   245: goto -142 -> 103
      //   248: aload 5
      //   250: ldc 183
      //   252: iconst_1
      //   253: aload 4
      //   255: ldc 183
      //   257: iconst_0
      //   258: invokeinterface 224 3 0
      //   263: iadd
      //   264: invokeinterface 187 3 0
      //   269: pop
      //   270: ldc 226
      //   272: invokestatic 192	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   275: aload 14
      //   277: getfield 229	com/millennialmedia/android/VideoAd:cacheFailed	[Ljava/lang/String;
      //   280: invokestatic 213	com/millennialmedia/android/HttpGetRequest:log	([Ljava/lang/String;)V
      //   283: goto -88 -> 195
      //   286: astore 11
      //   288: aload 8
      //   290: astore_2
      //   291: ldc 30
      //   293: ldc 231
      //   295: invokestatic 38	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   298: pop
      //   299: aload_2
      //   300: ifnull +7 -> 307
      //   303: aload_2
      //   304: invokevirtual 216	com/millennialmedia/android/AdDatabaseHelper:close	()V
      //   307: aload 5
      //   309: invokeinterface 125 1 0
      //   314: pop
      //   315: aload_0
      //   316: getfield 11	com/millennialmedia/android/MMAdViewController$DownloadAdTask:this$0	Lcom/millennialmedia/android/MMAdViewController;
      //   319: aload_3
      //   320: iconst_0
      //   321: invokestatic 220	com/millennialmedia/android/MMAdViewController:access$1100	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
      //   324: goto -296 -> 28
      //   327: astore 9
      //   329: aload_2
      //   330: ifnull +7 -> 337
      //   333: aload_2
      //   334: invokevirtual 216	com/millennialmedia/android/AdDatabaseHelper:close	()V
      //   337: aload 5
      //   339: invokeinterface 125 1 0
      //   344: pop
      //   345: aload_0
      //   346: getfield 11	com/millennialmedia/android/MMAdViewController$DownloadAdTask:this$0	Lcom/millennialmedia/android/MMAdViewController;
      //   349: aload_3
      //   350: iconst_0
      //   351: invokestatic 220	com/millennialmedia/android/MMAdViewController:access$1100	(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
      //   354: aload 9
      //   356: athrow
      //   357: astore 9
      //   359: aload 8
      //   361: astore_2
      //   362: goto -33 -> 329
      //   365: astore 19
      //   367: aconst_null
      //   368: astore_2
      //   369: goto -78 -> 291
      //
      // Exception table:
      //   from	to	target	type
      //   130	195	286	android/database/sqlite/SQLiteException
      //   248	283	286	android/database/sqlite/SQLiteException
      //   117	130	327	finally
      //   291	299	327	finally
      //   130	195	357	finally
      //   248	283	357	finally
      //   117	130	365	android/database/sqlite/SQLiteException
    }

    protected void onPreExecute()
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        return;
        MMAdViewSDK.Log.v("DownloadAdTask onPreExecute");
        SharedPreferences.Editor localEditor = localMMAdView.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
        localEditor.putBoolean("pendingDownload", true);
        localEditor.commit();
        MMAdViewSDK.Log.v("Setting pendingDownload to TRUE");
      }
    }

    protected void onProgressUpdate()
    {
    }
  }

  private class MMJSInterface
  {
    public void countImages(String paramString)
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        label26: return;
        MMAdViewSDK.Log.d("size: " + paramString);
        int i;
        if (paramString != null)
        {
          i = new Integer(paramString).intValue();
          MMAdViewSDK.Log.d("num: " + i);
          if ((i > 0) && (localMMAdView.listener == null));
        }
        try
        {
          localMMAdView.listener.MMAdReturned(localMMAdView);
          label111: Log.i("MillennialMediaSDK", "Millennial ad return success");
          MMAdViewSDK.Log.v("View height: " + localMMAdView.getHeight());
          break label26:
          Log.e("MillennialMediaSDK", "Image count is null");
          label193: i = 0;
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException2);
            break label111:
            if (localMMAdView.listener != null);
            try
            {
              localMMAdView.listener.MMAdFailed(localMMAdView);
              Log.i("MillennialMediaSDK", "Millennial ad return failed");
            }
            catch (Exception localException1)
            {
              Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException1);
              break label193:
            }
          }
        }
      }
    }

    public void getUrl(String paramString)
    {
      MMAdViewController.this.nextUrl = paramString;
      MMAdViewSDK.Log.v("nextUrl: " + MMAdViewController.this.nextUrl);
      if (!(MMAdViewController.this.nextUrl.toLowerCase().startsWith("mmvideo")))
        return;
      MMAdViewController.this.shouldLaunchToOverlay = true;
    }

    public void log(String paramString)
    {
      MMAdViewSDK.Log.d(paramString);
    }

    public void overlayTitle(String paramString)
    {
      MMAdViewController.this.overlayTitle = paramString;
    }

    public void overlayTransition(String paramString, long paramLong)
    {
      MMAdViewController.this.overlayTransition = paramString;
      MMAdViewController.this.transitionTime = paramLong;
    }

    public void setLoaded(boolean paramBoolean)
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        return;
        if ((localMMAdView.listener == null) || (paramBoolean));
        try
        {
          localMMAdView.listener.MMAdReturned(localMMAdView);
          label48: if (!(paramBoolean))
            break label106;
          label106: Log.i("MillennialMediaSDK", "Millennial ad return success");
        }
        catch (Exception localException2)
        {
          while (true)
          {
            Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException2);
            break label48:
            try
            {
              localMMAdView.listener.MMAdFailed(localMMAdView);
            }
            catch (Exception localException1)
            {
              Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException1);
            }
          }
          break label48:
          Log.i("MillennialMediaSDK", "Millennial ad return failed");
        }
      }
    }

    public void shouldAccelerate(boolean paramBoolean)
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView != null)
        if (localMMAdView.accelerate != true)
          break label35;
      label35: for (MMAdViewController.this.canAccelerate = paramBoolean; ; MMAdViewController.this.canAccelerate = false)
        return;
    }

    public void shouldEnableBottomBar(boolean paramBoolean)
    {
      MMAdViewController.this.shouldEnableBottomBar = paramBoolean;
    }

    public void shouldMakeOverlayTransparent(boolean paramBoolean)
    {
      MMAdViewController.this.shouldMakeOverlayTransparent = paramBoolean;
    }

    public void shouldOpen(String paramString)
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if (localMMAdView == null)
        Log.e("MillennialMediaSDK", "The reference to the ad view was broken.");
      while (true)
      {
        return;
        MMAdViewController.this.shouldLaunchToOverlay = true;
        MMAdViewController.this.handleClick(paramString);
        if (localMMAdView.listener == null)
          continue;
        try
        {
          localMMAdView.listener.MMAdOverlayLaunched(localMMAdView);
        }
        catch (Exception localException)
        {
          Log.w("MillennialMediaSDK", "Exception raised in your MMAdListener: ", localException);
        }
      }
    }

    public void shouldOverlay(boolean paramBoolean)
    {
      MMAdViewController.this.shouldLaunchToOverlay = paramBoolean;
    }

    public void shouldResizeOverlay(int paramInt)
    {
      MMAdViewController.this.shouldResizeOverlay = paramInt;
    }

    public void shouldShowBottomBar(boolean paramBoolean)
    {
      MMAdViewController.this.shouldShowBottomBar = paramBoolean;
    }

    public void shouldShowTitlebar(boolean paramBoolean)
    {
      MMAdViewController.this.shouldShowTitlebar = paramBoolean;
    }

    public void vibrate(int paramInt)
    {
      MMAdView localMMAdView = (MMAdView)MMAdViewController.this.adViewRef.get();
      if ((localMMAdView != null) && (localMMAdView.vibrate))
      {
        Activity localActivity = (Activity)localMMAdView.getContext();
        if (localActivity.getPackageManager().checkPermission("android.permission.VIBRATE", localActivity.getPackageName()) != 0)
          break label64;
        ((Vibrator)localActivity.getSystemService("vibrator")).vibrate(paramInt);
      }
      while (true)
      {
        return;
        label64: Log.w("MillennialMediaSDK", "Advertisement is trying to use vibrator but permissions are missing.");
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMAdViewController
 * JD-Core Version:    0.5.3
 */