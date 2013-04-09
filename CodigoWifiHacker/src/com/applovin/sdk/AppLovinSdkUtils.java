package com.applovin.sdk;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;

public class AppLovinSdkUtils
{
  public static long getAdRefreshSeconds(Context paramContext)
  {
    Bundle localBundle = retrieveMetadata(paramContext);
    long l;
    if (localBundle != null)
      l = localBundle.getInt("applovin.sdk.ad_refresh_seconds", -100);
    while (true)
    {
      return l;
      l = -100L;
    }
  }

  public static boolean isAutoUpdateEnabled(Context paramContext)
  {
    int i = 1;
    Bundle localBundle = retrieveMetadata(paramContext);
    if ((localBundle == null) || (!(localBundle.getBoolean("applovin.sdk.autoupdate_disabled", false))));
    while (true)
    {
      return i;
      i = 0;
    }
  }

  public static boolean isVerboseLoggingEnabled(Context paramContext)
  {
    Bundle localBundle = retrieveMetadata(paramContext);
    boolean bool = false;
    if (localBundle != null)
      bool = localBundle.getBoolean("applovin.sdk.verbose_logging", false);
    return bool;
  }

  protected static Bundle retrieveMetadata(Context paramContext)
  {
    Bundle localBundle;
    try
    {
      localBundle = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128).metaData;
      return localBundle;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.e("AppLovinSdk", "Unable to retrieve application metadata", localNameNotFoundException);
      localBundle = null;
    }
  }

  public static String retrieveSdkKey(Context paramContext)
  {
    Bundle localBundle = retrieveMetadata(paramContext);
    String str;
    if (localBundle != null)
    {
      str = localBundle.getString("applovin.sdk.key");
      if (str == null);
    }
    while (true)
    {
      return str;
      str = "";
      continue;
      str = null;
    }
  }

  public static AppLovinSdkSettings retrieveUserSettings(Context paramContext)
  {
    AppLovinSdkSettings localAppLovinSdkSettings = new AppLovinSdkSettings();
    localAppLovinSdkSettings.setVerboseLogging(isVerboseLoggingEnabled(paramContext));
    localAppLovinSdkSettings.setAdRefreshSeconds(getAdRefreshSeconds(paramContext));
    return localAppLovinSdkSettings;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinSdkUtils
 * JD-Core Version:    0.5.3
 */