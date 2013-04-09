package com.revmob.ads.link;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.revmob.RevMob;
import com.revmob.ads.EnvironmentConfig;
import com.revmob.ads.RevMobAdsListener;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdFetcher;
import com.revmob.ads.internal.LocationUrlNotFoundException;
import com.revmob.ads.internal.MarketRedirector;
import org.json.JSONObject;

public class LinkFetcher extends AdFetcher
{
  public LinkFetcher(Activity paramActivity, String paramString)
  {
    super(paramActivity, paramString);
  }

  public Ad build(String paramString)
  {
    return null;
  }

  void gotoMarket(RevMobAdsListener paramRevMobAdsListener)
  {
    new AsyncRedirector(paramRevMobAdsListener).execute(new Void[0]);
  }

  public void gotoMarketWithSessionVerification(RevMobAdsListener paramRevMobAdsListener)
  {
    if (!(RevMob.hasSession()))
      Log.w("RevMob", "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM.");
    while (true)
    {
      return;
      gotoMarket(paramRevMobAdsListener);
    }
  }

  private class AsyncRedirector extends AsyncTask<Void, Void, Void>
  {
    private RevMobAdsListener listener;
    private String marketUrl;

    public AsyncRedirector(RevMobAdsListener paramRevMobAdsListener)
    {
      this.listener = paramRevMobAdsListener;
    }

    protected Void doInBackground(Void[] paramArrayOfVoid)
    {
      String str = EnvironmentConfig.defaultJsonPayload(LinkFetcher.this.activity).toString();
      MarketRedirector localMarketRedirector = new MarketRedirector(LinkFetcher.this.url, str);
      try
      {
        this.marketUrl = localMarketRedirector.getMarketUrl();
        return null;
      }
      catch (LocationUrlNotFoundException localLocationUrlNotFoundException)
      {
        Log.w("RevMob", "Market url not found in ad link.");
      }
    }

    protected void onPostExecute(Void paramVoid)
    {
      try
      {
        if (this.marketUrl == null)
        {
          if (this.listener != null)
            this.listener.onRevMobAdNotReceived("Ad retrieval failed: No ads for this device/country right now");
          Log.i("RevMob", "Ad retrieval failed: No ads for this device/country right now");
          return;
        }
        if (this.listener != null)
          this.listener.onRevMobAdReceived();
        LinkFetcher.this.activity.startActivity(Ad.createIntentThatOpensURL(this.marketUrl));
      }
      catch (RuntimeException localRuntimeException)
      {
        Log.e("RevMob", "Can't open the app store in the simulator.");
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.link.LinkFetcher
 * JD-Core Version:    0.5.3
 */