package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import com.applovin.sdk.AppLovinAdSize;

class j
{
  static AppLovinAdSize a(AttributeSet paramAttributeSet)
  {
    AppLovinAdSize localAppLovinAdSize = null;
    if (paramAttributeSet == null);
    while (true)
    {
      return localAppLovinAdSize;
      String str = paramAttributeSet.getAttributeValue("http://schemas.applovin.com/android/1.0", "size");
      localAppLovinAdSize = null;
      if (str == null)
        continue;
      localAppLovinAdSize = AppLovinAdSize.fromString(str);
    }
  }

  static String a(AttributeSet paramAttributeSet, Context paramContext)
  {
    String str = null;
    if (paramAttributeSet != null)
      str = paramAttributeSet.getAttributeValue("http://schemas.applovin.com/android/1.0", "placement");
    if ((str == null) && (paramContext instanceof Activity))
      str = paramContext.getClass().getName();
    return str;
  }

  static boolean b(AttributeSet paramAttributeSet)
  {
    boolean bool = false;
    if (paramAttributeSet == null);
    while (true)
    {
      return bool;
      bool = paramAttributeSet.getAttributeBooleanValue("http://schemas.applovin.com/android/1.0", "loadAdOnCreate", false);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.j
 * JD-Core Version:    0.5.3
 */