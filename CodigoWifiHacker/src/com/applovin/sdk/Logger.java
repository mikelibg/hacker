package com.applovin.sdk;

public abstract interface Logger
{
  public static final String SDK_TAG = "AppLovinSdk";

  public abstract void d(String paramString1, String paramString2);

  public abstract void e(String paramString1, String paramString2);

  public abstract void e(String paramString1, String paramString2, Throwable paramThrowable);

  public abstract void i(String paramString1, String paramString2);

  public abstract void userError(String paramString1, String paramString2);

  public abstract void userError(String paramString1, String paramString2, Throwable paramThrowable);

  public abstract void w(String paramString1, String paramString2);

  public abstract void w(String paramString1, String paramString2, Throwable paramThrowable);
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.Logger
 * JD-Core Version:    0.5.3
 */