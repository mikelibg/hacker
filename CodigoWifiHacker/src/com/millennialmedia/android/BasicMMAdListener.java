package com.millennialmedia.android;

import android.util.Log;

public class BasicMMAdListener
  implements MMAdView.MMAdListener
{
  public void MMAdCachingCompleted(MMAdView paramMMAdView, boolean paramBoolean)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View caching request completed successfully: " + paramBoolean);
  }

  public void MMAdClickedToNewBrowser(MMAdView paramMMAdView)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View clicked and launched new browser");
  }

  public void MMAdClickedToOverlay(MMAdView paramMMAdView)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View clicked to overlay");
  }

  public void MMAdFailed(MMAdView paramMMAdView)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View request failed");
  }

  public void MMAdOverlayLaunched(MMAdView paramMMAdView)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View overlay launched");
  }

  public void MMAdRequestIsCaching(MMAdView paramMMAdView)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View caching request");
  }

  public void MMAdReturned(MMAdView paramMMAdView)
  {
    Log.i("MillennialMediaSDK", "Millennial Media Ad View request succeeded");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.BasicMMAdListener
 * JD-Core Version:    0.5.3
 */