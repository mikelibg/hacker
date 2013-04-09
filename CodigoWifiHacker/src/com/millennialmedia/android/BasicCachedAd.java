package com.millennialmedia.android;

import android.content.Context;
import java.util.Date;

abstract class BasicCachedAd
{
  String acid;
  String contentUrl;
  long deferredViewStart;
  boolean downloaded;
  Date expiration;
  String id;
  int type;
  int views;

  BasicCachedAd()
  {
  }

  BasicCachedAd(String paramString)
  {
    this.id = paramString;
  }

  static boolean isOnDisk(Context paramContext, String paramString)
  {
    BasicCachedAd localBasicCachedAd = load(paramContext, paramString);
    if (localBasicCachedAd != null);
    for (boolean bool = localBasicCachedAd.isOnDisk(paramContext); ; bool = false)
      return bool;
  }

  static BasicCachedAd load(Context paramContext, String paramString)
  {
    return null;
  }

  abstract boolean download(Context paramContext);

  abstract boolean isExpired();

  abstract boolean isOnDisk(Context paramContext);

  boolean isValid()
  {
    if ((this.id != null) && (this.id.length() > 0) && (this.contentUrl != null) && (this.contentUrl.length() > 0));
    for (int i = 1; ; i = 0)
      return i;
  }

  void parseJSON(String paramString)
  {
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.BasicCachedAd
 * JD-Core Version:    0.5.3
 */