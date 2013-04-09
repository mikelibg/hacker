package com.applovin.sdk.bootstrap;

import android.content.Context;

public abstract interface SdkBoostrapTasks
{
  public static final String LAST_BOOSTRAP_ERROR = "LastBoostrapError";
  public static final String SDK_FOLDER = "al_sdk";
  public static final String SDK_INTERFACE_VERSION = "interface";
  public static final String SDK_VERSION_FILE = "version";
  public static final String SERVER_CHECKSUM = "ServerChecksum";
  public static final String SERVER_EVENT_ID = "ServerEventId";
  public static final String SHARED_PREFERENCES_KEY = "applovin.sdk.boostrap";

  public abstract void startUpdateDownload(Context paramContext);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.bootstrap.SdkBoostrapTasks
 * JD-Core Version:    0.5.3
 */