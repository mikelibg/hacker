package com.revmob.advertiser;

import android.app.Activity;
import android.util.Log;
import com.revmob.ads.EnvironmentConfig;
import com.revmob.ads.internal.HTTPHelper;
import com.revmob.android.StoredData;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONObject;

public class AppInstallTracker
{
  private static final String ERROR_MESSAGE = "Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com. Status: %s";
  private static final String INSTALL_URL = "api/v4/mobile_apps/%s/install.json";
  private static final String REVMOB = "RevMob";
  private Activity activity;
  private String appId;
  private StoredData data;
  private HTTPHelper httpHelper;
  private Thread registerThread;

  public AppInstallTracker(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, new HTTPHelper(), new StoredData(paramActivity));
  }

  AppInstallTracker(Activity paramActivity, String paramString, HTTPHelper paramHTTPHelper, StoredData paramStoredData)
  {
    Log.i("RevMob", "Tracking install with SDK version " + EnvironmentConfig.getSdkVersion());
    this.activity = paramActivity;
    this.data = paramStoredData;
    this.appId = paramString;
    this.httpHelper = paramHTTPHelper;
  }

  public void asyncRegisterInstall()
  {
    this.registerThread = new Thread(new Runnable()
    {
      public void run()
      {
        AppInstallTracker.this.registerInstall();
      }
    });
    this.registerThread.start();
  }

  public void registerInstall()
  {
    int i;
    try
    {
      Log.i("RevMob", "Registering Install");
      if (this.data.isAlreadyTracked())
      {
        Log.i("RevMob", "Install already marked as registered, not registered.");
        return;
      }
      String str = EnvironmentConfig.defaultJsonPayload(this.activity).toString();
      i = this.httpHelper.post(url(), str).getStatusLine().getStatusCode();
      if ((i != 200) && (i != 202))
        break label116;
      Log.i("RevMob", "Install registered on server");
      this.data.markAsTracked();
    }
    catch (Throwable localThrowable)
    {
      Log.e("RevMob", "Could not register install.");
      localThrowable.printStackTrace();
    }
    return;
    label116: Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    Log.i("RevMob", String.format("Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com. Status: %s", arrayOfObject));
  }

  String url()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.appId;
    return EnvironmentConfig.getFullServerUrl("https", String.format("api/v4/mobile_apps/%s/install.json", arrayOfObject));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.advertiser.AppInstallTracker
 * JD-Core Version:    0.5.3
 */