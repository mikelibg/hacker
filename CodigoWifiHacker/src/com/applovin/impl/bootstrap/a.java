package com.applovin.impl.bootstrap;

import android.content.Context;
import android.os.Bundle;
import com.applovin.sdk.AppLovinSdkUtils;

class a extends AppLovinSdkUtils
{
  static String a(Context paramContext)
  {
    Bundle localBundle = retrieveMetadata(paramContext);
    String str;
    if (localBundle != null)
    {
      str = localBundle.getString("applovin.sdk.autoupdate_endpoint");
      if ((str == null) || (str.length() <= 5));
    }
    while (true)
    {
      return str;
      str = "http://d.applovin.com/sdk/android";
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.bootstrap.a
 * JD-Core Version:    0.5.3
 */