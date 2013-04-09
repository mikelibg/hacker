package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.util.Log;
import java.util.HashMap;

public class MoPubInterstitial
  implements MoPubView.OnAdLoadedListener, MoPubView.OnAdFailedListener
{
  private Activity mActivity;
  private String mAdUnitId;
  private BaseInterstitialAdapter.BaseInterstitialAdapterListener mAdapterListener;
  private InterstitialState mCurrentInterstitialState;
  private DefaultInterstitialAdapterListener mDefaultAdapterListener;
  private BaseInterstitialAdapter mInterstitialAdapter;
  private MoPubInterstitialView mInterstitialView;
  private MoPubInterstitialListener mListener;

  public MoPubInterstitial(Activity paramActivity, String paramString)
  {
    this.mActivity = paramActivity;
    this.mAdUnitId = paramString;
    this.mInterstitialView = new MoPubInterstitialView(this.mActivity);
    this.mInterstitialView.setAdUnitId(this.mAdUnitId);
    this.mCurrentInterstitialState = InterstitialState.NOT_READY;
    this.mDefaultAdapterListener = new DefaultInterstitialAdapterListener();
    this.mAdapterListener = this.mDefaultAdapterListener;
  }

  private void showHtmlInterstitial()
  {
    String str = this.mInterstitialView.getResponseString();
    Intent localIntent = new Intent(this.mActivity, MoPubActivity.class);
    localIntent.putExtra("com.mopub.mobileads.AdUnitId", this.mAdUnitId);
    localIntent.putExtra("com.mopub.mobileads.Keywords", this.mInterstitialView.getKeywords());
    localIntent.putExtra("com.mopub.mobileads.Source", str);
    localIntent.putExtra("com.mopub.mobileads.ClickthroughUrl", this.mInterstitialView.getClickthroughUrl());
    this.mActivity.startActivity(localIntent);
  }

  private void showNativeInterstitial()
  {
    if (this.mInterstitialAdapter == null)
      return;
    this.mInterstitialAdapter.showInterstitial();
  }

  public void OnAdFailed(MoPubView paramMoPubView)
  {
    this.mCurrentInterstitialState = InterstitialState.NOT_READY;
    if (this.mListener == null)
      return;
    this.mListener.OnInterstitialFailed();
  }

  public void OnAdLoaded(MoPubView paramMoPubView)
  {
    this.mCurrentInterstitialState = InterstitialState.HTML_AD_READY;
    if (this.mInterstitialAdapter != null)
    {
      this.mInterstitialAdapter.invalidate();
      this.mInterstitialAdapter = null;
    }
    if (this.mListener == null)
      return;
    this.mListener.OnInterstitialLoaded();
  }

  public void customEventActionWillBegin()
  {
    if (this.mInterstitialView == null)
      return;
    this.mInterstitialView.registerClick();
  }

  public void customEventDidFailToLoadAd()
  {
    if (this.mInterstitialView == null)
      return;
    this.mInterstitialView.loadFailUrl();
  }

  public void customEventDidLoadAd()
  {
    if (this.mInterstitialView == null)
      return;
    this.mInterstitialView.trackImpression();
  }

  public void destroy()
  {
    this.mAdapterListener = null;
    if (this.mInterstitialAdapter != null)
    {
      this.mInterstitialAdapter.invalidate();
      this.mInterstitialAdapter = null;
    }
    this.mInterstitialView.setOnAdLoadedListener(null);
    this.mInterstitialView.setOnAdFailedListener(null);
    this.mInterstitialView.destroy();
  }

  public Activity getActivity()
  {
    return this.mActivity;
  }

  protected BaseInterstitialAdapter.BaseInterstitialAdapterListener getInterstitialAdapterListener()
  {
    return this.mAdapterListener;
  }

  public String getKeywords()
  {
    if (this.mInterstitialView != null);
    for (String str = this.mInterstitialView.getKeywords(); ; str = null)
      return str;
  }

  public MoPubInterstitialListener getListener()
  {
    return this.mListener;
  }

  public Location getLocation()
  {
    return this.mInterstitialView.getLocation();
  }

  public MoPubView.LocationAwareness getLocationAwareness()
  {
    return this.mInterstitialView.getLocationAwareness();
  }

  public int getLocationPrecision()
  {
    return this.mInterstitialView.getLocationPrecision();
  }

  public boolean isReady()
  {
    if ((this.mCurrentInterstitialState == InterstitialState.HTML_AD_READY) || (this.mCurrentInterstitialState == InterstitialState.NATIVE_AD_READY));
    for (int i = 1; ; i = 0)
      return i;
  }

  public void load()
  {
    this.mCurrentInterstitialState = InterstitialState.NOT_READY;
    if (this.mInterstitialAdapter != null)
    {
      this.mInterstitialAdapter.invalidate();
      this.mInterstitialAdapter = null;
    }
    this.mAdapterListener = this.mDefaultAdapterListener;
    this.mInterstitialView.setOnAdLoadedListener(this);
    this.mInterstitialView.setOnAdFailedListener(this);
    this.mInterstitialView.loadAd();
  }

  public void setKeywords(String paramString)
  {
    if (this.mInterstitialView == null)
      return;
    this.mInterstitialView.setKeywords(paramString);
  }

  public void setListener(MoPubInterstitialListener paramMoPubInterstitialListener)
  {
    this.mListener = paramMoPubInterstitialListener;
  }

  public void setLocationAwareness(MoPubView.LocationAwareness paramLocationAwareness)
  {
    this.mInterstitialView.setLocationAwareness(paramLocationAwareness);
  }

  public void setLocationPrecision(int paramInt)
  {
    this.mInterstitialView.setLocationPrecision(paramInt);
  }

  public boolean show()
  {
    int i = 1;
    switch (3.$SwitchMap$com$mopub$mobileads$MoPubInterstitial$InterstitialState[this.mCurrentInterstitialState.ordinal()])
    {
    default:
      i = 0;
    case 1:
    case 2:
    }
    while (true)
    {
      return i;
      showHtmlInterstitial();
      continue;
      showNativeInterstitial();
    }
  }

  @Deprecated
  public void showAd()
  {
    this.mAdapterListener = new DefaultInterstitialAdapterListener()
    {
      public void onNativeInterstitialLoaded(BaseInterstitialAdapter paramBaseInterstitialAdapter)
      {
        super.onNativeInterstitialLoaded(paramBaseInterstitialAdapter);
        MoPubInterstitial.this.show();
      }
    };
    this.mInterstitialView.setOnAdLoadedListener(new MoPubView.OnAdLoadedListener()
    {
      public void OnAdLoaded(MoPubView paramMoPubView)
      {
        MoPubInterstitial.this.OnAdLoaded(paramMoPubView);
        MoPubInterstitial.this.show();
      }
    });
    this.mInterstitialView.loadAd();
  }

  public class DefaultInterstitialAdapterListener
    implements BaseInterstitialAdapter.BaseInterstitialAdapterListener
  {
    public void onNativeInterstitialClicked(BaseInterstitialAdapter paramBaseInterstitialAdapter)
    {
      MoPubInterstitial.this.mInterstitialView.registerClick();
    }

    public void onNativeInterstitialExpired(BaseInterstitialAdapter paramBaseInterstitialAdapter)
    {
      MoPubInterstitial.access$002(MoPubInterstitial.this, MoPubInterstitial.InterstitialState.NOT_READY);
    }

    public void onNativeInterstitialFailed(BaseInterstitialAdapter paramBaseInterstitialAdapter)
    {
      MoPubInterstitial.access$002(MoPubInterstitial.this, MoPubInterstitial.InterstitialState.NOT_READY);
      MoPubInterstitial.this.mInterstitialView.loadFailUrl();
    }

    public void onNativeInterstitialLoaded(BaseInterstitialAdapter paramBaseInterstitialAdapter)
    {
      MoPubInterstitial.access$002(MoPubInterstitial.this, MoPubInterstitial.InterstitialState.NATIVE_AD_READY);
      MoPubInterstitial.this.mInterstitialView.trackImpression();
      if (MoPubInterstitial.this.mListener == null)
        return;
      MoPubInterstitial.this.mListener.OnInterstitialLoaded();
    }
  }

  private static enum InterstitialState
  {
    static
    {
      InterstitialState[] arrayOfInterstitialState = new InterstitialState[3];
      arrayOfInterstitialState[0] = HTML_AD_READY;
      arrayOfInterstitialState[1] = NATIVE_AD_READY;
      arrayOfInterstitialState[2] = NOT_READY;
      $VALUES = arrayOfInterstitialState;
    }
  }

  public static abstract interface MoPubInterstitialListener
  {
    public abstract void OnInterstitialFailed();

    public abstract void OnInterstitialLoaded();
  }

  public class MoPubInterstitialView extends MoPubView
  {
    public MoPubInterstitialView(Context paramContext)
    {
      super(paramContext);
      setAutorefreshEnabled(false);
    }

    protected void loadNativeSDK(HashMap<String, String> paramHashMap)
    {
      if (paramHashMap == null);
      while (true)
      {
        label4: return;
        MoPubInterstitial localMoPubInterstitial = MoPubInterstitial.this;
        BaseInterstitialAdapter.BaseInterstitialAdapterListener localBaseInterstitialAdapterListener = localMoPubInterstitial.getInterstitialAdapterListener();
        String str1 = (String)paramHashMap.get("X-Adtype");
        if ((str1 != null) && (((str1.equals("interstitial")) || (str1.equals("mraid")))))
        {
          if (str1.equals("interstitial"));
          for (String str2 = (String)paramHashMap.get("X-Fulladtype"); ; str2 = "mraid")
          {
            Log.i("MoPub", "Loading native adapter for interstitial type: " + str2);
            MoPubInterstitial.access$302(MoPubInterstitial.this, BaseInterstitialAdapter.getAdapterForType(str2));
            if (MoPubInterstitial.this.mInterstitialAdapter == null)
              break;
            String str3 = (String)paramHashMap.get("X-Nativeparams");
            MoPubInterstitial.this.mInterstitialAdapter.init(localMoPubInterstitial, str3);
            MoPubInterstitial.this.mInterstitialAdapter.setAdapterListener(localBaseInterstitialAdapterListener);
            MoPubInterstitial.this.mInterstitialAdapter.loadInterstitial();
            break label4:
          }
        }
        Log.i("MoPub", "Couldn't load native adapter. Trying next ad...");
        localBaseInterstitialAdapterListener.onNativeInterstitialFailed(null);
      }
    }

    protected void trackImpression()
    {
      Log.d("MoPub", "Tracking impression for interstitial.");
      if (this.mAdView == null)
        return;
      this.mAdView.trackImpression();
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MoPubInterstitial
 * JD-Core Version:    0.5.3
 */