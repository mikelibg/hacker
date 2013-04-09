package com.revmob.ads;

public abstract interface RevMobAdsListener
{
  public abstract void onRevMobAdClicked();

  public abstract void onRevMobAdDismiss();

  public abstract void onRevMobAdNotReceived(String paramString);

  public abstract void onRevMobAdReceived();
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.RevMobAdsListener
 * JD-Core Version:    0.5.3
 */