package com.revmob;

import android.app.Activity;
import android.util.Log;
import com.revmob.ads.EnvironmentConfig;
import com.revmob.ads.RevMobAdsListener;
import com.revmob.ads.banner.Banner;
import com.revmob.ads.fullscreen.Fullscreen;
import com.revmob.ads.internal.HTTPHelper;
import com.revmob.ads.link.LinkFetcher;
import com.revmob.ads.popup.Popup;
import com.revmob.advertiser.AppInstallTracker;
import com.revmob.android.DeviceInformation;
import java.util.Date;
import org.json.JSONObject;

public class RevMob
{
  private static final String ADS_PATH = "api/v4/mobile_apps/%s/%s/fetch.json";
  private static final String PLACEMENT_ADS_PATH = "api/v4/mobile_apps/%s/placements/%s/%s/fetch.json";
  private static final String SESSIONS_PATH = "api/v4/mobile_apps/%s/sessions.json";
  static final int TIME_DIFF_IN_MILLISECONDS = 1000;
  protected static RevMob session;
  private String appId;
  private Date createdAt;
  private HTTPHelper httpHelper;

  protected RevMob(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, new HTTPHelper());
  }

  protected RevMob(Activity paramActivity, String paramString, HTTPHelper paramHTTPHelper)
  {
    this.createdAt = new Date();
    this.appId = paramString;
    registerInstall(paramActivity);
  }

  public static boolean canReplaceExistentSession(String paramString)
  {
    if (session == null);
    for (int i = 1; ; i = 0)
    {
      String str;
      do
      {
        return i;
        str = session.appId;
        i = 0;
      }
      while (str == paramString);
      Log.w("RevMob", "You can use just one App Id per application.");
    }
  }

  public static boolean hasSession()
  {
    if (session != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  public static RevMob start(Activity paramActivity, String paramString)
  {
    return start(paramActivity, paramString, null, null);
  }

  protected static RevMob start(Activity paramActivity, String paramString1, String paramString2, String paramString3)
  {
    EnvironmentConfig.setSdkName(paramString2);
    EnvironmentConfig.setSdkName(paramString3);
    if (canReplaceExistentSession(paramString1))
    {
      session = new RevMob(paramActivity, paramString1);
      session.postStartSession(paramActivity);
    }
    return session;
  }

  String createAdFetchUrlInMobileApp(String paramString1, String paramString2)
  {
    return EnvironmentConfig.getFullServerUrl("https", String.format("api/v4/mobile_apps/%s/%s/fetch.json", new Object[] { paramString2, paramString1 }));
  }

  String createAdFetchUrlInPlacement(String paramString1, String paramString2)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.appId;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = paramString1;
    return EnvironmentConfig.getFullServerUrl("https", String.format("api/v4/mobile_apps/%s/placements/%s/%s/fetch.json", arrayOfObject));
  }

  public Banner createBanner(Activity paramActivity)
  {
    return createBanner(paramActivity, null, null);
  }

  public Banner createBanner(Activity paramActivity, RevMobAdsListener paramRevMobAdsListener)
  {
    return createBanner(paramActivity, null, paramRevMobAdsListener);
  }

  public Banner createBanner(Activity paramActivity, String paramString)
  {
    return createBanner(paramActivity, paramString, null);
  }

  public Banner createBanner(Activity paramActivity, String paramString, RevMobAdsListener paramRevMobAdsListener)
  {
    return new Banner(paramActivity, fetchUrl("banners", paramString), paramRevMobAdsListener);
  }

  public Fullscreen createFullscreen(Activity paramActivity)
  {
    return createFullscreen(paramActivity, null);
  }

  public Fullscreen createFullscreen(Activity paramActivity, String paramString)
  {
    return new Fullscreen(paramActivity, fetchUrl("fullscreens", paramString));
  }

  String fetchUrl(String paramString1, String paramString2)
  {
    if (paramString2 != null);
    for (String str = createAdFetchUrlInPlacement(paramString1, paramString2); ; str = createAdFetchUrlInMobileApp(paramString1, this.appId))
      return str;
  }

  public String getAppId()
  {
    return this.appId;
  }

  public Date getCreatedAt()
  {
    return this.createdAt;
  }

  @Deprecated
  public void openAdLink(Activity paramActivity)
  {
    openAdLink(paramActivity, null, null);
  }

  public void openAdLink(Activity paramActivity, RevMobAdsListener paramRevMobAdsListener)
  {
    openAdLink(paramActivity, null, paramRevMobAdsListener);
  }

  public void openAdLink(Activity paramActivity, String paramString, RevMobAdsListener paramRevMobAdsListener)
  {
    paramActivity.runOnUiThread(new Runnable(new LinkFetcher(paramActivity, fetchUrl("links", paramString)), paramRevMobAdsListener)
    {
      public void run()
      {
        this.val$linkFetcher.gotoMarketWithSessionVerification(this.val$listener);
      }
    });
  }

  public void postStartSession(Activity paramActivity)
  {
    new Thread(new Runnable(paramActivity)
    {
      public void run()
      {
        try
        {
          String str = EnvironmentConfig.defaultJsonPayload(this.val$activity).toString();
          RevMob.this.httpHelper.post(RevMob.this.startSessionUrl(), str);
          return;
        }
        catch (Throwable localThrowable)
        {
        }
      }
    }).start();
  }

  public void printEnvironmentInformation(Activity paramActivity)
  {
    DeviceInformation localDeviceInformation = new DeviceInformation(paramActivity);
    Log.i("RevMob", "App ID: " + this.appId);
    Log.i("RevMob", "Simulator: " + DeviceInformation.isSimulator());
    Log.i("RevMob", "OS Version: " + localDeviceInformation.getOsVersion());
    Log.i("RevMob", "Manufacturer: " + localDeviceInformation.getManufacturer());
    Log.i("RevMob", "Model: " + localDeviceInformation.getModel());
    Log.i("RevMob", "Android ID: " + localDeviceInformation.getAndroidID());
    Log.i("RevMob", "Mobile ID: " + localDeviceInformation.getMobileID());
    Log.i("RevMob", "MAC Address: " + localDeviceInformation.getMACAddress());
    Log.i("RevMob", "Connection: " + localDeviceInformation.getNetworkConnectionType());
    Log.i("RevMob", "Language: " + DeviceInformation.getLanguage());
    Log.i("RevMob", "Locale: " + DeviceInformation.getLocale());
  }

  void registerInstall(Activity paramActivity)
  {
    new AppInstallTracker(paramActivity, this.appId).asyncRegisterInstall();
  }

  public void showFullscreenAd(Activity paramActivity)
  {
    showFullscreenAd(paramActivity, null);
  }

  public void showFullscreenAd(Activity paramActivity, String paramString)
  {
    Fullscreen localFullscreen = createFullscreen(paramActivity, paramString);
    localFullscreen.setRevMobListener(new RevMobAdsListener(localFullscreen)
    {
      public void onRevMobAdClicked()
      {
      }

      public void onRevMobAdDismiss()
      {
        Log.d("RevMob", "Ad dismissed.");
      }

      public void onRevMobAdNotReceived(String paramString)
      {
        Log.w("RevMob", paramString);
      }

      public void onRevMobAdReceived()
      {
        this.val$fullscreen.show();
      }
    });
  }

  public void showPopup(Activity paramActivity)
  {
    showPopup(paramActivity, null);
  }

  public void showPopup(Activity paramActivity, String paramString)
  {
    Popup.fetchAdvertisement(paramActivity, fetchUrl("pop_ups", paramString), 0, 0, Popup.SHOW_IN_UI_THREAD_ON_SUCCESS_LISTENER);
  }

  String startSessionUrl()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.appId;
    return EnvironmentConfig.getFullServerUrl("https", String.format("api/v4/mobile_apps/%s/sessions.json", arrayOfObject));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.RevMob
 * JD-Core Version:    0.5.3
 */