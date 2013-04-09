package com.mopub.mobileads;

import android.content.Intent;
import android.view.View;

public class MoPubActivity extends BaseActivity
  implements MoPubView.OnAdLoadedListener
{
  public static final int MOPUB_ACTIVITY_NO_AD = 1234;
  private MoPubView mMoPubView;

  private String sourceWithImpressionTrackingDisabled(String paramString)
  {
    return paramString.replaceAll("http://ads.mopub.com/m/imp", "mopub://null");
  }

  public void OnAdLoaded(MoPubView paramMoPubView)
  {
    paramMoPubView.adAppeared();
  }

  public View getAdView()
  {
    String str1 = getIntent().getStringExtra("com.mopub.mobileads.AdUnitId");
    String str2 = getIntent().getStringExtra("com.mopub.mobileads.Keywords");
    String str3 = getIntent().getStringExtra("com.mopub.mobileads.ClickthroughUrl");
    int i = getIntent().getIntExtra("com.mopub.mobileads.Timeout", 0);
    if (str1 == null)
      throw new RuntimeException("AdUnitId isn't set in com.mopub.mobileads.MoPubActivity");
    this.mMoPubView = new MoPubView(this);
    this.mMoPubView.setAdUnitId(str1);
    this.mMoPubView.setKeywords(str2);
    this.mMoPubView.setClickthroughUrl(str3);
    this.mMoPubView.setTimeout(i);
    this.mMoPubView.setOnAdLoadedListener(this);
    String str4 = getIntent().getStringExtra("com.mopub.mobileads.Source");
    if (str4 != null)
    {
      String str5 = sourceWithImpressionTrackingDisabled(str4);
      this.mMoPubView.loadHtmlString(str5);
    }
    return this.mMoPubView;
  }

  protected void onDestroy()
  {
    this.mMoPubView.destroy();
    super.onDestroy();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MoPubActivity
 * JD-Core Version:    0.5.3
 */