package com.mopub.mobileads;

import android.content.Intent;
import android.view.View;

public class MraidActivity extends BaseActivity
{
  private MraidView mAdView;

  public View getAdView()
  {
    this.mAdView = new MraidView(this, MraidView.ExpansionStyle.DISABLED, MraidView.NativeCloseButtonStyle.AD_CONTROLLED, MraidView.PlacementType.INTERSTITIAL);
    this.mAdView.setOnReadyListener(new MraidView.OnReadyListener()
    {
      public void onReady(MraidView paramMraidView)
      {
        MraidActivity.this.showInterstitialCloseButton();
      }
    });
    this.mAdView.setOnCloseButtonStateChange(new MraidView.OnCloseButtonStateChangeListener()
    {
      public void onCloseButtonStateChange(MraidView paramMraidView, boolean paramBoolean)
      {
        if (paramBoolean)
          MraidActivity.this.showInterstitialCloseButton();
        while (true)
        {
          return;
          MraidActivity.this.hideInterstitialCloseButton();
        }
      }
    });
    this.mAdView.setOnCloseListener(new MraidView.OnCloseListener()
    {
      public void onClose(MraidView paramMraidView, MraidView.ViewState paramViewState)
      {
        MraidActivity.this.finish();
      }
    });
    String str = getIntent().getStringExtra("com.mopub.mobileads.Source");
    this.mAdView.loadHtmlData(str);
    return this.mAdView;
  }

  protected void onDestroy()
  {
    this.mAdView.destroy();
    super.onDestroy();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidActivity
 * JD-Core Version:    0.5.3
 */