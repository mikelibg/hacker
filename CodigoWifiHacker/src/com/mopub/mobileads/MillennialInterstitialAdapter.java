package com.mopub.mobileads;

import android.app.Activity;
import android.location.Location;
import android.os.Handler;
import android.util.Log;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMAdView.MMAdListener;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class MillennialInterstitialAdapter extends BaseInterstitialAdapter
  implements MMAdView.MMAdListener
{
  private WeakReference<Activity> mActivityReference;
  private final Handler mHandler = new Handler();
  private boolean mHasAlreadyRegisteredClick;
  private MMAdView mMillennialAdView;

  private void recordClickIfNecessary()
  {
    if (this.mHasAlreadyRegisteredClick)
      return;
    this.mHasAlreadyRegisteredClick = true;
    if (this.mAdapterListener == null)
      return;
    this.mAdapterListener.onNativeInterstitialClicked(this);
  }

  public void MMAdCachingCompleted(MMAdView paramMMAdView, boolean paramBoolean)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialInterstitialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          if (MillennialInterstitialAdapter.this.mAdapterListener == null)
            continue;
          if (MillennialInterstitialAdapter.this.mMillennialAdView.check())
          {
            Log.d("MoPub", "Millennial interstitial caching completed.");
            MillennialInterstitialAdapter.this.mAdapterListener.onNativeInterstitialLoaded(MillennialInterstitialAdapter.this);
          }
          Log.d("MoPub", "Millennial interstitial caching failed. Trying another.");
          MillennialInterstitialAdapter.this.mAdapterListener.onNativeInterstitialFailed(MillennialInterstitialAdapter.this);
        }
      }
    });
  }

  public void MMAdClickedToNewBrowser(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialInterstitialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial interstitial clicked to new browser");
          MillennialInterstitialAdapter.this.recordClickIfNecessary();
        }
      }
    });
  }

  public void MMAdClickedToOverlay(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialInterstitialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial interstitial clicked to overlay");
          MillennialInterstitialAdapter.this.recordClickIfNecessary();
        }
      }
    });
  }

  public void MMAdFailed(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialInterstitialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial interstitial failed. Trying another.");
          if (MillennialInterstitialAdapter.this.mAdapterListener == null)
            continue;
          MillennialInterstitialAdapter.this.mAdapterListener.onNativeInterstitialFailed(MillennialInterstitialAdapter.this);
        }
      }
    });
  }

  public void MMAdOverlayLaunched(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialInterstitialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial interstitial launched overlay");
          if (MillennialInterstitialAdapter.this.mAdapterListener == null)
            continue;
          MillennialInterstitialAdapter.this.mAdapterListener.onNativeInterstitialExpired(MillennialInterstitialAdapter.this);
        }
      }
    });
  }

  public void MMAdRequestIsCaching(MMAdView paramMMAdView)
  {
    Log.d("MoPub", "Millennial interstitial is caching.");
  }

  public void MMAdReturned(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialInterstitialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial interstitial returned an ad.");
          if (MillennialInterstitialAdapter.this.mAdapterListener == null)
            continue;
        }
      }
    });
  }

  public void init(MoPubInterstitial paramMoPubInterstitial, String paramString)
  {
    super.init(paramMoPubInterstitial, paramString);
    this.mActivityReference = new WeakReference(paramMoPubInterstitial.getActivity());
    try
    {
      String str = ((JSONObject)new JSONTokener(this.mJsonParams).nextValue()).getString("adUnitID");
      this.mMillennialAdView = new MMAdView((Activity)this.mActivityReference.get(), str, "MMFullScreenAdTransition", -1);
      this.mMillennialAdView.setId(1897808289);
      this.mMillennialAdView.setListener(this);
      return;
    }
    catch (JSONException localJSONException)
    {
      if (this.mAdapterListener != null);
      this.mAdapterListener.onNativeInterstitialFailed(this);
    }
  }

  public void invalidate()
  {
    this.mMillennialAdView.removeAllViews();
    this.mActivityReference = null;
    super.invalidate();
  }

  public boolean isInvalidated()
  {
    boolean bool = true;
    if (this.mActivityReference == null);
    while (true)
    {
      return bool;
      if (this.mActivityReference.get() == null)
        continue;
      bool = super.isInvalidated();
    }
  }

  public void loadInterstitial()
  {
    if (isInvalidated());
    while (true)
    {
      return;
      Log.d("MoPub", "Fetching Millennial ad...");
      Location localLocation = this.mInterstitial.getLocation();
      if (localLocation != null)
        this.mMillennialAdView.updateUserLocation(localLocation);
      this.mMillennialAdView.setVisibility(4);
      this.mHasAlreadyRegisteredClick = false;
      this.mMillennialAdView.fetch();
    }
  }

  public void showInterstitial()
  {
    if (isInvalidated());
    while (true)
    {
      return;
      if (this.mMillennialAdView.check())
        this.mMillennialAdView.display();
      Log.d("MoPub", "Tried to show a Millennial interstitial before it finished caching. Please try again.");
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MillennialInterstitialAdapter
 * JD-Core Version:    0.5.3
 */