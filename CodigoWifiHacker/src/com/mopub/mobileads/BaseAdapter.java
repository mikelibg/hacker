package com.mopub.mobileads;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.HashMap;

public abstract class BaseAdapter
{
  private static final HashMap<String, String> sAdapterMap = new HashMap();
  protected boolean mInvalidated;
  protected String mJsonParams;
  protected MoPubView mMoPubView;

  static
  {
    sAdapterMap.put("admob_native", "com.mopub.mobileads.GoogleAdMobAdapter");
    sAdapterMap.put("millennial_native", "com.mopub.mobileads.MillennialAdapter");
    sAdapterMap.put("mraid", "com.mopub.mobileads.MraidAdapter");
  }

  private static Class<?> classForAdapterType(String paramString)
  {
    Object localObject = null;
    String str = classStringForAdapterType(paramString);
    if (str == null)
      Log.d("MoPub", "Couldn't find a handler for this ad type: " + paramString + "." + " MoPub for Android does not support it at this time.");
    while (true)
    {
      return localObject;
      try
      {
        Class localClass = Class.forName(str);
        localObject = localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Log.d("MoPub", "Couldn't find " + str + " class." + " Make sure the project includes the adapter library for " + str + " from the extras folder");
        localObject = null;
      }
    }
  }

  private static String classStringForAdapterType(String paramString)
  {
    return ((String)sAdapterMap.get(paramString));
  }

  public static BaseAdapter getAdapterForType(String paramString)
  {
    BaseAdapter localBaseAdapter;
    if (paramString == null)
      localBaseAdapter = null;
    while (true)
    {
      return localBaseAdapter;
      Class localClass = classForAdapterType(paramString);
      if (localClass == null)
        localBaseAdapter = null;
      try
      {
        localBaseAdapter = (BaseAdapter)localClass.getConstructor(new Class[0]).newInstance(new Object[0]);
      }
      catch (Exception localException)
      {
        Log.d("MoPub", "Couldn't create native adapter for type: " + paramString);
        localBaseAdapter = null;
      }
    }
  }

  public void init(MoPubView paramMoPubView, String paramString)
  {
    this.mMoPubView = paramMoPubView;
    this.mJsonParams = paramString;
    this.mInvalidated = false;
  }

  public void invalidate()
  {
    this.mMoPubView = null;
    this.mInvalidated = true;
  }

  public boolean isInvalidated()
  {
    return this.mInvalidated;
  }

  public abstract void loadAd();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.BaseAdapter
 * JD-Core Version:    0.5.3
 */