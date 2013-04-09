package com.mopub.mobileads;

import android.app.Activity;
import android.content.Intent;

public class MraidInterstitialAdapter extends BaseInterstitialAdapter
{
  public void loadInterstitial()
  {
    if (this.mAdapterListener == null)
      return;
    this.mAdapterListener.onNativeInterstitialLoaded(this);
  }

  public void showInterstitial()
  {
    Activity localActivity = this.mInterstitial.getActivity();
    Intent localIntent = new Intent(localActivity, MraidActivity.class);
    localIntent.putExtra("com.mopub.mobileads.Source", this.mJsonParams);
    localActivity.startActivity(localIntent);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidInterstitialAdapter
 * JD-Core Version:    0.5.3
 */