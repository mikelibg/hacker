package com.mopub.mobileads;

import android.widget.FrameLayout.LayoutParams;

public class MraidAdapter extends BaseAdapter
{
  private MraidView mMraidView;
  private boolean mPreviousAutorefreshSetting;

  private void initMraidListeners()
  {
    this.mMraidView.setOnReadyListener(new MraidView.OnReadyListener()
    {
      public void onReady(MraidView paramMraidView)
      {
        if (MraidAdapter.this.isInvalidated())
          return;
        MraidAdapter.this.mMoPubView.nativeAdLoaded();
        MraidAdapter.this.mMoPubView.trackNativeImpression();
      }
    });
    this.mMraidView.setOnExpandListener(new MraidView.OnExpandListener()
    {
      public void onExpand(MraidView paramMraidView)
      {
        if (MraidAdapter.this.isInvalidated())
          return;
        MraidAdapter.access$002(MraidAdapter.this, MraidAdapter.this.mMoPubView.getAutorefreshEnabled());
        MraidAdapter.this.mMoPubView.setAutorefreshEnabled(false);
        MraidAdapter.this.mMoPubView.adPresentedOverlay();
        MraidAdapter.this.mMoPubView.registerClick();
      }
    });
    this.mMraidView.setOnCloseListener(new MraidView.OnCloseListener()
    {
      public void onClose(MraidView paramMraidView, MraidView.ViewState paramViewState)
      {
        if (MraidAdapter.this.isInvalidated())
          return;
        MraidAdapter.this.mMoPubView.setAutorefreshEnabled(MraidAdapter.this.mPreviousAutorefreshSetting);
        MraidAdapter.this.mMoPubView.adClosed();
      }
    });
    this.mMraidView.setOnFailureListener(new MraidView.OnFailureListener()
    {
      public void onFailure(MraidView paramMraidView)
      {
        if (MraidAdapter.this.isInvalidated())
          return;
        MraidAdapter.this.mMoPubView.loadFailUrl();
      }
    });
  }

  public void init(MoPubView paramMoPubView, String paramString)
  {
    super.init(paramMoPubView, paramString);
    this.mPreviousAutorefreshSetting = false;
  }

  public void invalidate()
  {
    this.mMoPubView = null;
    if (this.mMraidView != null)
      this.mMraidView.destroy();
    super.invalidate();
  }

  public void loadAd()
  {
    if (isInvalidated());
    while (true)
    {
      return;
      this.mMraidView = new MraidView(this.mMoPubView.getContext());
      this.mMraidView.loadHtmlData(this.mJsonParams);
      initMraidListeners();
      this.mMoPubView.removeAllViews();
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
      localLayoutParams.gravity = 17;
      this.mMoPubView.addView(this.mMraidView, localLayoutParams);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidAdapter
 * JD-Core Version:    0.5.3
 */