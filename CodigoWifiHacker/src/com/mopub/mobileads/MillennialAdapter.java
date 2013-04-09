package com.mopub.mobileads;

import android.app.Activity;
import android.location.Location;
import android.os.Handler;
import android.util.Log;
import android.widget.FrameLayout.LayoutParams;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMAdView.MMAdListener;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class MillennialAdapter extends BaseAdapter
  implements MMAdView.MMAdListener
{
  private WeakReference<Activity> mActivityReference;
  private final Handler mHandler = new Handler();
  private boolean mHasAlreadyRegisteredImpression;
  private MMAdView mMillennialAdView;

  public void MMAdCachingCompleted(MMAdView paramMMAdView, boolean paramBoolean)
  {
  }

  public void MMAdClickedToNewBrowser(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial clicked");
          MillennialAdapter.this.mMoPubView.registerClick();
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
        if (MillennialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial clicked");
          MillennialAdapter.this.mMoPubView.registerClick();
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
        if (MillennialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          Log.d("MoPub", "Millennial failed. Trying another");
          MillennialAdapter.this.mMoPubView.loadFailUrl();
        }
      }
    });
  }

  public void MMAdOverlayLaunched(MMAdView paramMMAdView)
  {
  }

  public void MMAdRequestIsCaching(MMAdView paramMMAdView)
  {
  }

  public void MMAdReturned(MMAdView paramMMAdView)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (MillennialAdapter.this.isInvalidated());
        while (true)
        {
          return;
          MillennialAdapter.this.mMoPubView.removeAllViews();
          MillennialAdapter.this.mMillennialAdView.setVisibility(0);
          MillennialAdapter.this.mMillennialAdView.setHorizontalScrollBarEnabled(false);
          MillennialAdapter.this.mMillennialAdView.setVerticalScrollBarEnabled(false);
          FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
          localLayoutParams.gravity = 17;
          MillennialAdapter.this.mMoPubView.addView(MillennialAdapter.this.mMillennialAdView, localLayoutParams);
          if (MillennialAdapter.this.mHasAlreadyRegisteredImpression)
            continue;
          MillennialAdapter.access$102(MillennialAdapter.this, true);
          MillennialAdapter.this.mMoPubView.nativeAdLoaded();
          MillennialAdapter.this.mMoPubView.trackNativeImpression();
        }
      }
    });
  }

  public void init(MoPubView paramMoPubView, String paramString)
  {
    super.init(paramMoPubView, paramString);
    this.mActivityReference = new WeakReference((Activity)paramMoPubView.getContext());
  }

  public void invalidate()
  {
    if (this.mMillennialAdView != null)
    {
      this.mMillennialAdView.removeAllViews();
      this.mMoPubView.removeView(this.mMillennialAdView);
    }
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

  public void loadAd()
  {
    if (isInvalidated());
    while (true)
    {
      return;
      try
      {
        JSONObject localJSONObject = (JSONObject)new JSONTokener(this.mJsonParams).nextValue();
        String str1 = localJSONObject.getString("adUnitID");
        int i = localJSONObject.getInt("adWidth");
        int j = localJSONObject.getInt("adHeight");
        String str2 = "MMBannerAdTop";
        String str3 = "320";
        String str4 = "53";
        if ((i == 300) && (j == 250))
        {
          str2 = "MMBannerAdRectangle";
          str3 = Integer.toString(i);
          str4 = Integer.toString(j);
        }
        this.mMillennialAdView = new MMAdView((Activity)this.mActivityReference.get(), str1, str2, -1);
        this.mMillennialAdView.setId(1897808289);
        this.mMillennialAdView.setListener(this);
        this.mMillennialAdView.setVisibility(4);
        this.mMillennialAdView.setWidth(str3);
        this.mMillennialAdView.setHeight(str4);
        Location localLocation = this.mMoPubView.getLocation();
        if (localLocation != null)
          this.mMillennialAdView.updateUserLocation(localLocation);
        this.mHasAlreadyRegisteredImpression = false;
        Log.d("MoPub", "Loading Millennial ad...");
        this.mMillennialAdView.callForAd();
      }
      catch (JSONException localJSONException)
      {
        this.mMoPubView.loadFailUrl();
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MillennialAdapter
 * JD-Core Version:    0.5.3
 */