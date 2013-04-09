package com.revmob.ads.internal;

public abstract interface OnLoadListener
{
  public abstract void onAdNotReceived(LoadError paramLoadError, String paramString);

  public abstract void onAdReceived(Ad paramAd);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.OnLoadListener
 * JD-Core Version:    0.5.3
 */