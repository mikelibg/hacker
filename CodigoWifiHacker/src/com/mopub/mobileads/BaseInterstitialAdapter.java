package com.mopub.mobileads;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.util.HashMap;

public abstract class BaseInterstitialAdapter
{
  private static final HashMap<String, String> sInterstitialAdapterMap = new HashMap();
  protected BaseInterstitialAdapterListener mAdapterListener;
  protected MoPubInterstitial mInterstitial;
  protected boolean mInvalidated;
  protected String mJsonParams;

  static
  {
    sInterstitialAdapterMap.put("mraid", "com.mopub.mobileads.MraidInterstitialAdapter");
    sInterstitialAdapterMap.put("admob_full", "com.mopub.mobileads.GoogleAdMobInterstitialAdapter");
    sInterstitialAdapterMap.put("millennial_full", "com.mopub.mobileads.MillennialInterstitialAdapter");
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
        Log.d("MoPub", "Couldn't find " + str + "class." + " Make sure the project includes the adapter library for " + str + " from the extras folder");
        localObject = null;
      }
    }
  }

  private static String classStringForAdapterType(String paramString)
  {
    return ((String)sInterstitialAdapterMap.get(paramString));
  }

  public static BaseInterstitialAdapter getAdapterForType(String paramString)
  {
    BaseInterstitialAdapter localBaseInterstitialAdapter;
    if (paramString == null)
      localBaseInterstitialAdapter = null;
    while (true)
    {
      return localBaseInterstitialAdapter;
      Class localClass = classForAdapterType(paramString);
      if (localClass == null)
        localBaseInterstitialAdapter = null;
      try
      {
        localBaseInterstitialAdapter = (BaseInterstitialAdapter)localClass.getConstructor(new Class[0]).newInstance(new Object[0]);
      }
      catch (Exception localException)
      {
        Log.d("MoPub", "Couldn't create native interstitial adapter for type: " + paramString);
        localBaseInterstitialAdapter = null;
      }
    }
  }

  public void init(MoPubInterstitial paramMoPubInterstitial, String paramString)
  {
    this.mInterstitial = paramMoPubInterstitial;
    this.mJsonParams = paramString;
    this.mInvalidated = false;
  }

  public void invalidate()
  {
    this.mInterstitial = null;
    this.mAdapterListener = null;
    this.mInvalidated = true;
  }

  public boolean isInvalidated()
  {
    return this.mInvalidated;
  }

  public abstract void loadInterstitial();

  public void setAdapterListener(BaseInterstitialAdapterListener paramBaseInterstitialAdapterListener)
  {
    this.mAdapterListener = paramBaseInterstitialAdapterListener;
  }

  public abstract void showInterstitial();

  public static abstract interface BaseInterstitialAdapterListener
  {
    public abstract void onNativeInterstitialClicked(BaseInterstitialAdapter paramBaseInterstitialAdapter);

    public abstract void onNativeInterstitialExpired(BaseInterstitialAdapter paramBaseInterstitialAdapter);

    public abstract void onNativeInterstitialFailed(BaseInterstitialAdapter paramBaseInterstitialAdapter);

    public abstract void onNativeInterstitialLoaded(BaseInterstitialAdapter paramBaseInterstitialAdapter);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.BaseInterstitialAdapter
 * JD-Core Version:    0.5.3
 */