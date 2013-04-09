package com.mopub.mobileads;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.webkit.WebViewDatabase;
import android.widget.FrameLayout;
import java.util.HashMap;

public class MoPubView extends FrameLayout
{
  public static final String AD_HANDLER = "/m/ad";
  public static final int DEFAULT_LOCATION_PRECISION = 6;
  public static final String HOST = "ads.mopub.com";
  protected AdView mAdView;
  protected BaseAdapter mAdapter;
  private Context mContext;
  private boolean mIsInForeground;
  private LocationAwareness mLocationAwareness;
  private int mLocationPrecision;
  private OnAdClickedListener mOnAdClickedListener;
  private OnAdClosedListener mOnAdClosedListener;
  private OnAdFailedListener mOnAdFailedListener;
  private OnAdLoadedListener mOnAdLoadedListener;
  private OnAdPresentedOverlayListener mOnAdPresentedOverlayListener;
  private OnAdWillLoadListener mOnAdWillLoadListener;
  private boolean mPreviousAutorefreshSetting;
  private BroadcastReceiver mScreenStateReceiver;

  public MoPubView(Context paramContext)
  {
    this(paramContext, null);
  }

  public MoPubView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mPreviousAutorefreshSetting = false;
    this.mContext = paramContext;
    int i;
    if (getVisibility() == 0)
    {
      i = 1;
      label25: this.mIsInForeground = i;
      this.mLocationAwareness = LocationAwareness.LOCATION_AWARENESS_NORMAL;
      this.mLocationPrecision = 6;
      setHorizontalScrollBarEnabled(false);
      setVerticalScrollBarEnabled(false);
      if (WebViewDatabase.getInstance(paramContext) != null)
        break label74;
      Log.e("MoPub", "Disabling MoPub. Local cache file is inaccessible so MoPub will fail if we try to create a WebView. Details of this Android bug found at:http://code.google.com/p/android/issues/detail?id=10789");
    }
    while (true)
    {
      return;
      i = 0;
      break label25:
      label74: initVersionDependentAdView(paramContext);
      registerScreenStateBroadcastReceiver();
    }
  }

  // ERROR //
  private void initVersionDependentAdView(Context paramContext)
  {
    // Byte code:
    //   0: new 116	java/lang/Integer
    //   3: dup
    //   4: getstatic 121	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   7: invokespecial 124	java/lang/Integer:<init>	(Ljava/lang/String;)V
    //   10: invokevirtual 127	java/lang/Integer:intValue	()I
    //   13: bipush 7
    //   15: if_icmpge +17 -> 32
    //   18: aload_0
    //   19: new 129	com/mopub/mobileads/AdView
    //   22: dup
    //   23: aload_1
    //   24: aload_0
    //   25: invokespecial 132	com/mopub/mobileads/AdView:<init>	(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    //   28: putfield 134	com/mopub/mobileads/MoPubView:mAdView	Lcom/mopub/mobileads/AdView;
    //   31: return
    //   32: ldc 136
    //   34: invokestatic 142	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   37: astore_3
    //   38: iconst_2
    //   39: anewarray 138	java/lang/Class
    //   42: dup
    //   43: iconst_0
    //   44: ldc 144
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: ldc 2
    //   51: aastore
    //   52: astore 4
    //   54: iconst_2
    //   55: anewarray 146	java/lang/Object
    //   58: dup
    //   59: iconst_0
    //   60: aload_1
    //   61: aastore
    //   62: dup
    //   63: iconst_1
    //   64: aload_0
    //   65: aastore
    //   66: astore 5
    //   68: aload_0
    //   69: aload_3
    //   70: aload 4
    //   72: invokevirtual 150	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   75: aload 5
    //   77: invokevirtual 156	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   80: checkcast 129	com/mopub/mobileads/AdView
    //   83: putfield 134	com/mopub/mobileads/MoPubView:mAdView	Lcom/mopub/mobileads/AdView;
    //   86: aload_0
    //   87: getfield 134	com/mopub/mobileads/MoPubView:mAdView	Lcom/mopub/mobileads/AdView;
    //   90: ifnonnull -59 -> 31
    //   93: aload_0
    //   94: new 129	com/mopub/mobileads/AdView
    //   97: dup
    //   98: aload_1
    //   99: aload_0
    //   100: invokespecial 132	com/mopub/mobileads/AdView:<init>	(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    //   103: putfield 134	com/mopub/mobileads/MoPubView:mAdView	Lcom/mopub/mobileads/AdView;
    //   106: goto -75 -> 31
    //   109: astore_2
    //   110: aload_0
    //   111: new 129	com/mopub/mobileads/AdView
    //   114: dup
    //   115: aload_1
    //   116: aload_0
    //   117: invokespecial 132	com/mopub/mobileads/AdView:<init>	(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    //   120: putfield 134	com/mopub/mobileads/MoPubView:mAdView	Lcom/mopub/mobileads/AdView;
    //   123: goto -92 -> 31
    //   126: astore 16
    //   128: ldc 80
    //   130: ldc 158
    //   132: invokestatic 88	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   135: pop
    //   136: goto -50 -> 86
    //   139: astore 14
    //   141: ldc 80
    //   143: ldc 158
    //   145: invokestatic 88	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   148: pop
    //   149: goto -63 -> 86
    //   152: astore 12
    //   154: ldc 80
    //   156: ldc 158
    //   158: invokestatic 88	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   161: pop
    //   162: goto -76 -> 86
    //   165: astore 10
    //   167: ldc 80
    //   169: ldc 158
    //   171: invokestatic 88	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   174: pop
    //   175: goto -89 -> 86
    //   178: astore 8
    //   180: ldc 80
    //   182: ldc 158
    //   184: invokestatic 88	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   187: pop
    //   188: goto -102 -> 86
    //   191: astore 6
    //   193: ldc 80
    //   195: ldc 158
    //   197: invokestatic 88	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   200: pop
    //   201: goto -115 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   32	38	109	java/lang/ClassNotFoundException
    //   68	86	126	java/lang/SecurityException
    //   68	86	139	java/lang/NoSuchMethodException
    //   68	86	152	java/lang/IllegalArgumentException
    //   68	86	165	java/lang/InstantiationException
    //   68	86	178	java/lang/IllegalAccessException
    //   68	86	191	java/lang/reflect/InvocationTargetException
  }

  private void registerScreenStateBroadcastReceiver()
  {
    if (this.mAdView == null);
    while (true)
    {
      return;
      this.mScreenStateReceiver = new BroadcastReceiver()
      {
        public void onReceive(Context paramContext, Intent paramIntent)
        {
          if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
            if (MoPubView.this.mIsInForeground)
            {
              Log.d("MoPub", "Screen sleep with ad in foreground, disable refresh");
              if (MoPubView.this.mAdView != null)
              {
                MoPubView.access$102(MoPubView.this, MoPubView.this.mAdView.getAutorefreshEnabled());
                MoPubView.this.mAdView.setAutorefreshEnabled(false);
              }
            }
          while (true)
          {
            return;
            Log.d("MoPub", "Screen sleep but ad in background; refresh should already be disabled");
            continue;
            if (!(paramIntent.getAction().equals("android.intent.action.USER_PRESENT")))
              continue;
            if (MoPubView.this.mIsInForeground)
            {
              Log.d("MoPub", "Screen wake / ad in foreground, reset refresh");
              if (MoPubView.this.mAdView == null)
                continue;
              MoPubView.this.mAdView.setAutorefreshEnabled(MoPubView.this.mPreviousAutorefreshSetting);
            }
            Log.d("MoPub", "Screen wake but ad in background; don't enable refresh");
          }
        }
      };
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
      localIntentFilter.addAction("android.intent.action.USER_PRESENT");
      this.mContext.registerReceiver(this.mScreenStateReceiver, localIntentFilter);
    }
  }

  private void unregisterScreenStateBroadcastReceiver()
  {
    try
    {
      this.mContext.unregisterReceiver(this.mScreenStateReceiver);
      return;
    }
    catch (Exception localException)
    {
      Log.d("MoPub", "Failed to unregister screen state broadcast receiver (never registered).");
    }
  }

  protected void adAppeared()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.adAppeared();
  }

  protected void adClicked()
  {
    if (this.mOnAdClickedListener == null)
      return;
    this.mOnAdClickedListener.OnAdClicked(this);
  }

  protected void adClosed()
  {
    if (this.mOnAdClosedListener == null)
      return;
    this.mOnAdClosedListener.OnAdClosed(this);
  }

  protected void adFailed()
  {
    if (this.mOnAdFailedListener == null)
      return;
    this.mOnAdFailedListener.OnAdFailed(this);
  }

  protected void adLoaded()
  {
    Log.d("MoPub", "adLoaded");
    if (this.mOnAdLoadedListener == null)
      return;
    this.mOnAdLoadedListener.OnAdLoaded(this);
  }

  protected void adPresentedOverlay()
  {
    if (this.mOnAdPresentedOverlayListener == null)
      return;
    this.mOnAdPresentedOverlayListener.OnAdPresentedOverlay(this);
  }

  protected void adWillLoad(String paramString)
  {
    Log.d("MoPub", "adWillLoad: " + paramString);
    if (this.mOnAdWillLoadListener == null)
      return;
    this.mOnAdWillLoadListener.OnAdWillLoad(this, paramString);
  }

  public void customEventActionWillBegin()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.customEventActionWillBegin();
  }

  public void customEventDidFailToLoadAd()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.customEventDidFailToLoadAd();
  }

  public void customEventDidLoadAd()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.customEventDidLoadAd();
  }

  public void destroy()
  {
    unregisterScreenStateBroadcastReceiver();
    if (this.mAdView != null)
    {
      this.mAdView.cleanup();
      this.mAdView = null;
    }
    if (this.mAdapter == null)
      return;
    this.mAdapter.invalidate();
    this.mAdapter = null;
  }

  public Activity getActivity()
  {
    return ((Activity)this.mContext);
  }

  public int getAdHeight()
  {
    if (this.mAdView != null);
    for (int i = this.mAdView.getAdHeight(); ; i = 0)
      return i;
  }

  public int getAdWidth()
  {
    if (this.mAdView != null);
    for (int i = this.mAdView.getAdWidth(); ; i = 0)
      return i;
  }

  public boolean getAutorefreshEnabled()
  {
    if (this.mAdView != null);
    for (boolean bool = this.mAdView.getAutorefreshEnabled(); ; bool = false)
    {
      return bool;
      Log.d("MoPub", "Can't get autorefresh status for destroyed MoPubView. Returning false.");
    }
  }

  public String getClickthroughUrl()
  {
    if (this.mAdView != null);
    for (String str = this.mAdView.getClickthroughUrl(); ; str = null)
      return str;
  }

  public String getKeywords()
  {
    if (this.mAdView != null);
    for (String str = this.mAdView.getKeywords(); ; str = null)
      return str;
  }

  public Location getLocation()
  {
    if (this.mAdView != null);
    for (Location localLocation = this.mAdView.getLocation(); ; localLocation = null)
      return localLocation;
  }

  public LocationAwareness getLocationAwareness()
  {
    return this.mLocationAwareness;
  }

  public int getLocationPrecision()
  {
    return this.mLocationPrecision;
  }

  public String getResponseString()
  {
    if (this.mAdView != null);
    for (String str = this.mAdView.getResponseString(); ; str = null)
      return str;
  }

  public void loadAd()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.loadAd();
  }

  protected void loadFailUrl()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.loadFailUrl();
  }

  protected void loadHtmlString(String paramString)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.loadResponseString(paramString);
  }

  protected void loadNativeSDK(HashMap<String, String> paramHashMap)
  {
    if (this.mAdapter != null)
      this.mAdapter.invalidate();
    String str1 = (String)paramHashMap.get("X-Adtype");
    this.mAdapter = BaseAdapter.getAdapterForType(str1);
    if (this.mAdapter != null)
    {
      Log.i("MoPub", "Loading native adapter for type: " + str1);
      String str2 = (String)paramHashMap.get("X-Nativeparams");
      this.mAdapter.init(this, str2);
      this.mAdapter.loadAd();
    }
    while (true)
    {
      return;
      Log.i("MoPub", "Couldn't load native adapter. Trying next ad...");
      loadFailUrl();
    }
  }

  protected void nativeAdLoaded()
  {
    if (this.mAdView != null)
      this.mAdView.scheduleRefreshTimerIfEnabled();
    adLoaded();
  }

  protected void onWindowVisibilityChanged(int paramInt)
  {
    if (this.mAdView == null);
    while (true)
    {
      return;
      if (paramInt == 0)
      {
        Log.d("MoPub", "Ad Unit (" + this.mAdView.getAdUnitId() + ") going visible: enabling refresh");
        this.mIsInForeground = true;
        this.mAdView.setAutorefreshEnabled(true);
      }
      Log.d("MoPub", "Ad Unit (" + this.mAdView.getAdUnitId() + ") going invisible: disabling refresh");
      this.mIsInForeground = false;
      this.mAdView.setAutorefreshEnabled(false);
    }
  }

  protected void registerClick()
  {
    if (this.mAdView == null)
      return;
    this.mAdView.registerClick();
    adClicked();
  }

  public void setAdContentView(View paramView)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setAdContentView(paramView);
  }

  public void setAdUnitId(String paramString)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setAdUnitId(paramString);
  }

  public void setAutorefreshEnabled(boolean paramBoolean)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setAutorefreshEnabled(paramBoolean);
  }

  public void setClickthroughUrl(String paramString)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setClickthroughUrl(paramString);
  }

  public void setKeywords(String paramString)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setKeywords(paramString);
  }

  public void setLocation(Location paramLocation)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setLocation(paramLocation);
  }

  public void setLocationAwareness(LocationAwareness paramLocationAwareness)
  {
    this.mLocationAwareness = paramLocationAwareness;
  }

  public void setLocationPrecision(int paramInt)
  {
    if (paramInt >= 0);
    while (true)
    {
      this.mLocationPrecision = paramInt;
      return;
      paramInt = 0;
    }
  }

  public void setOnAdClickedListener(OnAdClickedListener paramOnAdClickedListener)
  {
    this.mOnAdClickedListener = paramOnAdClickedListener;
  }

  public void setOnAdClosedListener(OnAdClosedListener paramOnAdClosedListener)
  {
    this.mOnAdClosedListener = paramOnAdClosedListener;
  }

  public void setOnAdFailedListener(OnAdFailedListener paramOnAdFailedListener)
  {
    this.mOnAdFailedListener = paramOnAdFailedListener;
  }

  public void setOnAdLoadedListener(OnAdLoadedListener paramOnAdLoadedListener)
  {
    this.mOnAdLoadedListener = paramOnAdLoadedListener;
  }

  public void setOnAdPresentedOverlayListener(OnAdPresentedOverlayListener paramOnAdPresentedOverlayListener)
  {
    this.mOnAdPresentedOverlayListener = paramOnAdPresentedOverlayListener;
  }

  public void setOnAdWillLoadListener(OnAdWillLoadListener paramOnAdWillLoadListener)
  {
    this.mOnAdWillLoadListener = paramOnAdWillLoadListener;
  }

  public void setTimeout(int paramInt)
  {
    if (this.mAdView == null)
      return;
    this.mAdView.setTimeout(paramInt);
  }

  protected void trackNativeImpression()
  {
    Log.d("MoPub", "Tracking impression for native adapter.");
    if (this.mAdView == null)
      return;
    this.mAdView.trackImpression();
  }

  public static enum LocationAwareness
  {
    static
    {
      LOCATION_AWARENESS_DISABLED = new LocationAwareness("LOCATION_AWARENESS_DISABLED", 2);
      LocationAwareness[] arrayOfLocationAwareness = new LocationAwareness[3];
      arrayOfLocationAwareness[0] = LOCATION_AWARENESS_NORMAL;
      arrayOfLocationAwareness[1] = LOCATION_AWARENESS_TRUNCATED;
      arrayOfLocationAwareness[2] = LOCATION_AWARENESS_DISABLED;
      $VALUES = arrayOfLocationAwareness;
    }
  }

  public static abstract interface OnAdClickedListener
  {
    public abstract void OnAdClicked(MoPubView paramMoPubView);
  }

  public static abstract interface OnAdClosedListener
  {
    public abstract void OnAdClosed(MoPubView paramMoPubView);
  }

  public static abstract interface OnAdFailedListener
  {
    public abstract void OnAdFailed(MoPubView paramMoPubView);
  }

  public static abstract interface OnAdLoadedListener
  {
    public abstract void OnAdLoaded(MoPubView paramMoPubView);
  }

  public static abstract interface OnAdPresentedOverlayListener
  {
    public abstract void OnAdPresentedOverlay(MoPubView paramMoPubView);
  }

  public static abstract interface OnAdWillLoadListener
  {
    public abstract void OnAdWillLoad(MoPubView paramMoPubView, String paramString);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MoPubView
 * JD-Core Version:    0.5.3
 */