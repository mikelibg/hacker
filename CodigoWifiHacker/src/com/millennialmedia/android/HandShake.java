package com.millennialmedia.android;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager.BadTokenException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class HandShake
{
  static String apid;
  private static final String handShakeURL = "http://ads.mp.mydas.mobi/appConfigServlet?apid=";
  private static HandShake sharedInstance;
  private LinkedHashMap<String, AdTypeHandShake> adTypeHandShakes = new LinkedHashMap();
  private String[] cachedVideos;
  private WeakReference<Context> contextRef;
  long creativeCacheTimeout = 259200000L;
  private long deferredViewTimeout = 3600000L;
  private long handShakeCallback = 86400000L;
  private final Handler handler = new Handler(Looper.getMainLooper());
  boolean hdid = true;
  boolean kill = false;
  private long lastHandShake;
  String mmdid;
  private ArrayList<Scheme> schemes = new ArrayList();
  private String schemesList;
  private Runnable updateHandShakeRunnable = new Runnable()
  {
    public void run()
    {
      Context localContext = (Context)HandShake.this.contextRef.get();
      if (localContext == null)
        return;
      HandShake.sharedHandShake(localContext);
    }
  };

  private HandShake()
  {
  }

  private HandShake(Context paramContext)
  {
    this.contextRef = new WeakReference(paramContext);
    if ((loadHandShake(paramContext)) && (System.currentTimeMillis() - this.lastHandShake <= this.handShakeCallback))
      return;
    this.lastHandShake = System.currentTimeMillis();
    new Thread(new Runnable()
    {
      public void run()
      {
        HttpGetRequest localHttpGetRequest = new HttpGetRequest();
        Context localContext = (Context)HandShake.this.contextRef.get();
        if (localContext == null)
          label26: return;
        while (true)
        {
          StringBuilder localStringBuilder;
          try
          {
            DisplayMetrics localDisplayMetrics = localContext.getResources().getDisplayMetrics();
            float f = localDisplayMetrics.density;
            int i = localDisplayMetrics.heightPixels;
            int j = localDisplayMetrics.widthPixels;
            localStringBuilder = new StringBuilder();
            if (!(HandShake.this.hdid))
              break label622;
            str1 = MMAdViewSDK.getHdid(localContext);
            if (str1 != null)
            {
              if (!(str1.startsWith("mmh_")))
                break label631;
              localStringBuilder.append("&hdid=" + URLEncoder.encode(str1, "UTF-8"));
            }
            String str2 = MMAdViewSDK.getMMdid(localContext);
            if (str2 != null)
              localStringBuilder.append("&mmdid=" + URLEncoder.encode(str2, "UTF-8"));
            if (Build.MODEL != null)
              localStringBuilder.append("&dm=" + URLEncoder.encode(Build.MODEL, "UTF-8"));
            if (Build.VERSION.RELEASE != null)
              localStringBuilder.append("&dv=Android" + URLEncoder.encode(Build.VERSION.RELEASE, "UTF-8"));
            localStringBuilder.append("&density=" + Float.toString(f));
            localStringBuilder.append("&hpx=" + i);
            localStringBuilder.append("&wpx=" + j);
            String str3 = MMAdViewController.getURLDeviceValues(localContext);
            localStringBuilder.append("&mmisdk=" + URLEncoder.encode("4.5.1-12.2.2.a", "UTF-8") + str3);
            Locale localLocale = Locale.getDefault();
            if (localLocale != null)
              localStringBuilder.append("&language=" + localLocale.getLanguage() + "&country=" + localLocale.getCountry());
            String str4 = HandShake.sharedInstance.getSchemesList(localContext);
            if (str4 != null)
              localStringBuilder.append("&appsids=" + str4);
            String str5 = MMAdViewController.getCachedVideoList(localContext);
            if (str5 != null)
              localStringBuilder.append("&vid=" + URLEncoder.encode(str5, "UTF-8"));
            MMAdViewController.getURLDeviceValues(localContext);
            HttpResponse localHttpResponse = localHttpGetRequest.get("http://ads.mp.mydas.mobi/appConfigServlet?apid=" + HandShake.apid + localStringBuilder.toString());
            if (localHttpResponse != null);
            HandShake.this.deserializeFromObj(HandShake.access$200(HandShake.this, HttpGetRequest.convertStreamToString(localHttpResponse.getEntity().getContent())), localContext);
            HandShake.this.saveHandShake(localContext);
            HandShake.this.handler.postDelayed(HandShake.this.updateHandShakeRunnable, HandShake.this.handShakeCallback);
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
          break label26:
          label622: String str1 = MMAdViewSDK.getAuid(localContext);
          continue;
          label631: localStringBuilder.append("&auid=" + URLEncoder.encode(str1, "UTF-8"));
        }
      }
    }).start();
  }

  private void deserializeFromObj(JSONObject paramJSONObject, Context paramContext)
  {
    if (paramJSONObject == null);
    label4: int l;
    while (true)
    {
      return;
      try
      {
        JSONArray localJSONArray1 = paramJSONObject.optJSONArray("errors");
        if (localJSONArray1 == null)
          break label136;
        l = 0;
        label21: if (l >= localJSONArray1.length())
          break label136;
        JSONObject localJSONObject4 = localJSONArray1.optJSONObject(l);
        if (localJSONObject4 != null)
        {
          String str1 = localJSONObject4.optString("message", null);
          String str2 = localJSONObject4.optString("type", null);
          if ((str1 != null) && (str2 != null))
            if (str2.equalsIgnoreCase("log"))
              Log.e("MillennialMediaSDK", str1);
            else if (str2.equalsIgnoreCase("prompt"))
              this.handler.post(new Runnable(paramContext, str1)
              {
                public void run()
                {
                  try
                  {
                    AlertDialog localAlertDialog = new AlertDialog.Builder(this.val$context).create();
                    localAlertDialog.setTitle("Error");
                    localAlertDialog.setMessage(this.val$message);
                    localAlertDialog.setButton(-3, "OK", new DialogInterface.OnClickListener(localAlertDialog)
                    {
                      public void onClick(DialogInterface paramDialogInterface, int paramInt)
                      {
                        this.val$overlayDialog.cancel();
                      }
                    });
                    localAlertDialog.show();
                    return;
                  }
                  catch (WindowManager.BadTokenException localBadTokenException)
                  {
                    localBadTokenException.printStackTrace();
                  }
                }
              });
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    label136: JSONObject localJSONObject1 = paramJSONObject.optJSONObject("adtypes");
    int k;
    if (localJSONObject1 != null)
    {
      String[] arrayOfString = MMAdView.getAdTypes();
      k = 0;
      if (k < arrayOfString.length)
      {
        label157: JSONObject localJSONObject3 = localJSONObject1.optJSONObject(arrayOfString[k]);
        if (localJSONObject3 == null)
          break label475;
        AdTypeHandShake localAdTypeHandShake = new AdTypeHandShake();
        localAdTypeHandShake.deserializeFromObj(localJSONObject3);
        localAdTypeHandShake.loadLastVideo(paramContext, arrayOfString[k]);
        this.adTypeHandShakes.put(arrayOfString[k], localAdTypeHandShake);
      }
    }
    else
    {
      monitorenter;
    }
    while (true)
    {
      int j;
      int i;
      try
      {
        JSONArray localJSONArray2 = paramJSONObject.optJSONArray("schemes");
        if (localJSONArray2 != null)
        {
          j = 0;
          if (j < localJSONArray2.length())
          {
            JSONObject localJSONObject2 = localJSONArray2.optJSONObject(j);
            if (localJSONObject2 == null)
              break label481;
            Scheme localScheme = new Scheme();
            localScheme.deserializeFromObj(localJSONObject2);
            this.schemes.add(localScheme);
            break label481:
          }
        }
        monitorexit;
        this.deferredViewTimeout = (1000L * paramJSONObject.optLong("deferredviewtimeout", 3600L));
        this.kill = paramJSONObject.optBoolean("kill");
        this.handShakeCallback = (1000L * paramJSONObject.optLong("handshakecallback", 86400L));
        this.hdid = paramJSONObject.optBoolean("hdid", true);
        this.creativeCacheTimeout = (1000L * paramJSONObject.optLong("creativeCacheTimeout", 259200L));
        JSONArray localJSONArray3 = paramJSONObject.optJSONArray("cachedVideos");
        if (localJSONArray3 == null)
          break label442;
        this.cachedVideos = new String[localJSONArray3.length()];
        i = 0;
        if (i >= localJSONArray3.length())
          break label450;
        this.cachedVideos[i] = localJSONArray3.optString(i);
      }
      finally
      {
        monitorexit;
      }
      label442: this.cachedVideos = new String[0];
      label450: if (this.cachedVideos.length > 0);
      PreCacheWorker.preCacheVideos(this.cachedVideos, paramContext);
      break label4:
      ++l;
      break label21:
      label475: ++k;
      break label157:
      label481: ++j;
    }
  }

  private boolean loadHandShake(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
    int k;
    if (localSharedPreferences == null)
    {
      k = 0;
      return k;
    }
    boolean bool = localSharedPreferences.contains("handshake_deferredviewtimeout");
    int i = 0;
    if (bool)
    {
      this.deferredViewTimeout = localSharedPreferences.getLong("handshake_deferredviewtimeout", this.deferredViewTimeout);
      i = 1;
    }
    if (localSharedPreferences.contains("handshake_kill"))
    {
      this.kill = localSharedPreferences.getBoolean("handshake_kill", this.kill);
      i = 1;
    }
    if (localSharedPreferences.contains("handshake_callback"))
    {
      this.handShakeCallback = localSharedPreferences.getLong("handshake_callback", this.handShakeCallback);
      i = 1;
    }
    if (localSharedPreferences.contains("handshake_hdid"))
    {
      this.hdid = localSharedPreferences.getBoolean("handshake_hdid", this.hdid);
      i = 1;
    }
    if (localSharedPreferences.contains("handshake_mmdid"))
    {
      setMMdid(paramContext, localSharedPreferences.getString("handshake_mmdid", this.mmdid), false);
      i = 1;
    }
    if (localSharedPreferences.contains("handshake_creativecachetimeout"))
    {
      this.creativeCacheTimeout = localSharedPreferences.getLong("handshake_creativecachetimeout", this.creativeCacheTimeout);
      i = 1;
    }
    String[] arrayOfString1 = MMAdView.getAdTypes();
    for (int j = 0; j < arrayOfString1.length; ++j)
    {
      AdTypeHandShake localAdTypeHandShake = new AdTypeHandShake();
      if (!(localAdTypeHandShake.load(localSharedPreferences, arrayOfString1[j])))
        continue;
      i = 1;
      this.adTypeHandShakes.put(arrayOfString1[j], localAdTypeHandShake);
    }
    monitorenter;
    while (true)
    {
      int i1;
      try
      {
        if (localSharedPreferences.contains("handshake_schemes"))
        {
          String str = localSharedPreferences.getString("handshake_schemes", "");
          if (str.length() > 0)
          {
            String[] arrayOfString2 = str.split("/");
            int l = arrayOfString2.length;
            i1 = 0;
            if (i1 >= l)
              break label508;
            String[] arrayOfString3 = arrayOfString2[i1].split(":");
            if (arrayOfString3.length < 2)
              break label502;
            Scheme localScheme = new Scheme(arrayOfString3[0], Integer.parseInt(arrayOfString3[1]));
            this.schemes.add(localScheme);
            break label502:
          }
        }
        monitorexit;
        if (localSharedPreferences.contains("handshake_lasthandshake"))
        {
          this.lastHandShake = localSharedPreferences.getLong("handshake_lasthandshake", this.lastHandShake);
          i = 1;
        }
        if ((i != 0) && (System.currentTimeMillis() - this.lastHandShake < this.handShakeCallback))
          this.handler.postDelayed(this.updateHandShakeRunnable, this.handShakeCallback - (System.currentTimeMillis() - this.lastHandShake));
        if (i != 0)
          MMAdViewSDK.Log.d("Handshake successfully loaded from shared preferences.");
      }
      finally
      {
        monitorexit;
      }
      label502: ++i1;
      continue;
      label508: i = 1;
    }
  }

  private JSONObject parseJson(String paramString)
  {
    MMAdViewSDK.Log.d("JSON String: " + paramString);
    if (paramString != null);
    JSONObject localJSONObject1;
    try
    {
      JSONObject localJSONObject2 = new JSONObject(paramString);
      MMAdViewSDK.Log.v(localJSONObject2.toString());
      if (!(localJSONObject2.has("mmishake")))
        break label74;
      JSONObject localJSONObject3 = localJSONObject2.getJSONObject("mmishake");
      localJSONObject1 = localJSONObject3;
      label74: return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      localJSONObject1 = null;
    }
  }

  private void saveHandShake(Context paramContext)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
    localEditor.putLong("handshake_deferredviewtimeout", this.deferredViewTimeout);
    localEditor.putBoolean("handshake_kill", this.kill);
    localEditor.putLong("handshake_callback", this.handShakeCallback);
    localEditor.putBoolean("handshake_hdid", this.hdid);
    localEditor.putLong("handshake_creativecachetimeout", this.creativeCacheTimeout);
    Iterator localIterator = this.adTypeHandShakes.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ((AdTypeHandShake)this.adTypeHandShakes.get(str)).save(localEditor, (String)str);
    }
    monitorenter;
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      for (int i = 0; i < this.schemes.size(); ++i)
      {
        Scheme localScheme = (Scheme)this.schemes.get(i);
        if (i > 0)
          localStringBuilder.append("/");
        localStringBuilder.append(localScheme.scheme + ":" + localScheme.id);
      }
      localEditor.putString("handshake_schemes", localStringBuilder.toString());
      monitorexit;
      localEditor.putLong("handshake_lasthandshake", this.lastHandShake);
      return;
    }
    finally
    {
      monitorexit;
    }
  }

  static HandShake sharedHandShake(Context paramContext)
  {
    monitorenter;
    try
    {
      HandShake localHandShake;
      if (apid == null)
      {
        Log.e("MillennialMediaSDK", "No apid set for the handshake.");
        localHandShake = null;
        label20: return localHandShake;
      }
      if (sharedInstance == null)
        sharedInstance = new HandShake(paramContext);
      do
      {
        localHandShake = sharedInstance;
        break label20:
      }
      while (System.currentTimeMillis() - sharedInstance.lastHandShake <= sharedInstance.handShakeCallback);
      MMAdViewSDK.Log.d("Handshake expired, requesting new handshake from the server.");
    }
    finally
    {
      monitorexit;
    }
  }

  boolean canDisplayCachedAd(String paramString, long paramLong)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
      {
        boolean bool2 = localAdTypeHandShake.canDisplayCachedAd(paramLong);
        bool1 = bool2;
        return bool1;
      }
      boolean bool1 = false;
    }
    finally
    {
      monitorexit;
    }
  }

  boolean canRequestVideo(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
      {
        boolean bool2 = localAdTypeHandShake.canRequestVideo(paramContext, paramString);
        bool1 = bool2;
        return bool1;
      }
      boolean bool1 = true;
    }
    finally
    {
      monitorexit;
    }
  }

  boolean canWatchVideoAd(Context paramContext, String paramString1, String paramString2)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString1);
      if (localAdTypeHandShake != null)
      {
        boolean bool2 = localAdTypeHandShake.canWatchVideoAd(paramContext, paramString1, paramString2);
        bool1 = bool2;
        return bool1;
      }
      boolean bool1 = false;
    }
    finally
    {
      monitorexit;
    }
  }

  void didReceiveVideoXHeader(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
        localAdTypeHandShake.didReceiveVideoXHeader(paramContext, paramString);
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

  JSONArray getSchemesJSONArray(Context paramContext)
  {
    monitorenter;
    try
    {
      JSONArray localJSONArray = new JSONArray();
      if (this.schemes.size() > 0)
      {
        Iterator localIterator = this.schemes.iterator();
        while (localIterator.hasNext())
        {
          Scheme localScheme = (Scheme)localIterator.next();
          boolean bool = localScheme.checkAvailability(paramContext);
          if (!(bool))
            continue;
          try
          {
            JSONObject localJSONObject = new JSONObject();
            localJSONObject.put("scheme", localScheme.scheme);
            localJSONObject.put("schemeid", localScheme.id);
            localJSONArray.put(localJSONObject);
          }
          catch (JSONException localJSONException)
          {
          }
        }
      }
      return localJSONArray;
    }
    finally
    {
      monitorexit;
    }
  }

  String getSchemesList(Context paramContext)
  {
    monitorenter;
    StringBuilder localStringBuilder;
    while (true)
    {
      Scheme localScheme;
      try
      {
        if ((this.schemesList != null) || (this.schemes.size() <= 0))
          break label148;
        localStringBuilder = new StringBuilder();
        Iterator localIterator = this.schemes.iterator();
        do
        {
          if (!(localIterator.hasNext()))
            break label131;
          localScheme = (Scheme)localIterator.next();
        }
        while (!(localScheme.checkAvailability(paramContext)));
        if (localStringBuilder.length() <= 0)
          break label114;
      }
      finally
      {
        monitorexit;
      }
      label114: localStringBuilder.append(Integer.toString(localScheme.id));
    }
    if (localStringBuilder.length() > 0)
      label131: this.schemesList = localStringBuilder.toString();
    label148: String str = this.schemesList;
    monitorexit;
    return str;
  }

  boolean isAdTypeDownloading(String paramString)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
      {
        bool = localAdTypeHandShake.downloading;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      monitorexit;
    }
  }

  void lockAdTypeDownload(String paramString)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
        localAdTypeHandShake.downloading = true;
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

  void overrideAdRefresh(MMAdView paramMMAdView)
  {
    if (paramMMAdView.adType == null)
      return;
    AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramMMAdView.adType);
    if ((localAdTypeHandShake == null) || (localAdTypeHandShake.refreshInterval == null))
      return;
    paramMMAdView.refreshInterval = Integer.parseInt(localAdTypeHandShake.refreshInterval);
  }

  void setMMdid(Context paramContext, String paramString)
  {
    setMMdid(paramContext, paramString, true);
  }

  void setMMdid(Context paramContext, String paramString, boolean paramBoolean)
  {
    monitorenter;
    if (paramString != null);
    while (true)
      try
      {
        if ((paramString.length() == 0) || (paramString.equals("NULL")))
        {
          this.mmdid = null;
          MMAdViewSDK.setMMdid(this.mmdid);
          if (paramBoolean)
          {
            SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
            localEditor.putString("handshake_mmdid", this.mmdid);
            localEditor.commit();
          }
          return;
        }
      }
      finally
      {
        monitorexit;
      }
  }

  void unlockAdTypeDownload(String paramString)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
        localAdTypeHandShake.downloading = false;
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

  void updateLastVideoViewedTime(Context paramContext, String paramString)
  {
    monitorenter;
    try
    {
      AdTypeHandShake localAdTypeHandShake = (AdTypeHandShake)this.adTypeHandShakes.get(paramString);
      if (localAdTypeHandShake != null)
        localAdTypeHandShake.updateLastVideoViewedTime(paramContext, paramString);
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

  private class AdTypeHandShake
  {
    boolean downloading;
    long lastVideo = 0L;
    String refreshInterval;
    long videoInterval = 0L;

    boolean canDisplayCachedAd(long paramLong)
    {
      if (System.currentTimeMillis() - paramLong < HandShake.this.deferredViewTimeout);
      for (int i = 1; ; i = 0)
        return i;
    }

    boolean canRequestVideo(Context paramContext, String paramString)
    {
      MMAdViewSDK.Log.d("canRequestVideo() Current Time: " + System.currentTimeMillis() + " last video: " + (this.lastVideo / 1000L) + " Diff: " + ((System.currentTimeMillis() - this.lastVideo) / 1000L) + " Video interval: " + (this.videoInterval / 1000L));
      if (System.currentTimeMillis() - this.lastVideo > this.videoInterval);
      for (int i = 1; ; i = 0)
        return i;
    }

    boolean canWatchVideoAd(Context paramContext, String paramString1, String paramString2)
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
          long l = localAdDatabaseHelper.getDeferredViewStart(paramString2);
          localAdDatabaseHelper.close();
          if (System.currentTimeMillis() - l < HandShake.this.deferredViewTimeout)
          {
            this.lastVideo = System.currentTimeMillis();
            save(paramContext, paramString1);
            for (i = 1; ; i = 0)
            {
              return i;
              localSQLiteException2 = localSQLiteException2;
              if (localObject != null)
                label64: localObject.close();
              Log.e("MillennialMediaSDK", "SQL error. Can watch video check cannot be completed.");
            }
          }
          int i = 0;
        }
        catch (SQLiteException localSQLiteException1)
        {
          localObject = localAdDatabaseHelper;
          break label64:
        }
      }
    }

    void deserializeFromObj(JSONObject paramJSONObject)
    {
      if (paramJSONObject == null);
      while (true)
      {
        return;
        this.videoInterval = (1000L * paramJSONObject.optLong("videointerval"));
        this.refreshInterval = paramJSONObject.optString("adrefresh", null);
        if ((this.refreshInterval == null) || (!(this.refreshInterval.equalsIgnoreCase("sdk"))))
          continue;
        this.refreshInterval = null;
      }
    }

    void didReceiveVideoXHeader(Context paramContext, String paramString)
    {
      this.lastVideo = System.currentTimeMillis();
      save(paramContext, paramString);
    }

    boolean load(SharedPreferences paramSharedPreferences, String paramString)
    {
      boolean bool = paramSharedPreferences.contains("handshake_lastvideo_" + paramString);
      int i = 0;
      if (bool)
      {
        this.lastVideo = paramSharedPreferences.getLong("handshake_lastvideo_" + paramString, this.lastVideo);
        i = 1;
      }
      if (paramSharedPreferences.contains("handshake_videointerval_" + paramString))
      {
        this.videoInterval = paramSharedPreferences.getLong("handshake_videointerval_" + paramString, this.videoInterval);
        i = 1;
      }
      if (paramSharedPreferences.contains("handshake_adrefresh_" + paramString))
      {
        this.refreshInterval = paramSharedPreferences.getString("handshake_adrefresh_" + paramString, null);
        i = 1;
      }
      return i;
    }

    void loadLastVideo(Context paramContext, String paramString)
    {
      SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("MillennialMediaSettings", 0);
      if ((localSharedPreferences == null) || (!(localSharedPreferences.contains("handshake_lastvideo_" + paramString))))
        return;
      this.lastVideo = localSharedPreferences.getLong("handshake_lastvideo_" + paramString, this.lastVideo);
    }

    void save(Context paramContext, String paramString)
    {
      SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("MillennialMediaSettings", 0).edit();
      save(localEditor, paramString);
      localEditor.commit();
    }

    void save(SharedPreferences.Editor paramEditor, String paramString)
    {
      paramEditor.putLong("handshake_lastvideo_" + paramString, this.lastVideo);
      paramEditor.putLong("handshake_videointerval_" + paramString, this.videoInterval);
      if (this.refreshInterval == null)
        return;
      paramEditor.putString("handshake_adrefresh_" + paramString, this.refreshInterval);
    }

    void updateLastVideoViewedTime(Context paramContext, String paramString)
    {
      this.lastVideo = System.currentTimeMillis();
      save(paramContext, paramString);
    }
  }

  private class Scheme
  {
    int id;
    String scheme;

    Scheme()
    {
    }

    Scheme(String paramString, int paramInt)
    {
      this.scheme = paramString;
      this.id = paramInt;
    }

    boolean checkAvailability(Context paramContext)
    {
      Intent localIntent;
      if (this.scheme.contains("://"))
      {
        localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.scheme));
        label29: if (paramContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() <= 0)
          break label89;
      }
      for (int i = 1; ; i = 0)
      {
        return i;
        localIntent = new Intent("android.intent.action.VIEW", Uri.parse(this.scheme + "://"));
        label89: break label29:
      }
    }

    void deserializeFromObj(JSONObject paramJSONObject)
    {
      if (paramJSONObject == null);
      while (true)
      {
        return;
        this.scheme = paramJSONObject.optString("scheme", null);
        this.id = paramJSONObject.optInt("schemeid");
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.HandShake
 * JD-Core Version:    0.5.3
 */