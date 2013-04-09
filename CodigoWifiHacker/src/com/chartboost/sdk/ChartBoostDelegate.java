package com.chartboost.sdk;

import android.view.View;

public abstract class ChartBoostDelegate
{
  public void didClickInterstitial(View paramView)
  {
  }

  public void didClickMoreApps(View paramView)
  {
  }

  public void didCloseInterstitial(View paramView)
  {
  }

  public void didCloseMoreApps(View paramView)
  {
  }

  public void didDismissInterstitial(View paramView)
  {
  }

  public void didDismissMoreApps(View paramView)
  {
  }

  public void didFailToLoadInterstitial()
  {
  }

  public void didFailToLoadMoreApps()
  {
  }

  public boolean shouldDisplayInterstitial(View paramView)
  {
    return true;
  }

  public boolean shouldDisplayLoadingViewForMoreApps()
  {
    return true;
  }

  public boolean shouldDisplayMoreApps(View paramView)
  {
    return true;
  }

  public boolean shouldRequestInterstitial()
  {
    return true;
  }

  public boolean shouldRequestMoreApps()
  {
    return true;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.ChartBoostDelegate
 * JD-Core Version:    0.5.3
 */