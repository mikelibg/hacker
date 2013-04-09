package com.applovin.sdk;

public class AppLovinAdSize
{
  public static final AppLovinAdSize BANNER = new AppLovinAdSize(-1, 50, "BANNER");
  public static final AppLovinAdSize INTERSTITIAL = new AppLovinAdSize(-1, -1, "INTER");
  public static final int SPAN = -1;
  private final int a;
  private final int b;
  private final String c;

  AppLovinAdSize(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 < 0) && (paramInt1 != -1))
      throw new IllegalArgumentException("Ad width must be a positive number. Number provided: " + paramInt1);
    if (paramInt1 > 9999)
      throw new IllegalArgumentException("Ad width must be less then 9999. Number provided: " + paramInt1);
    if ((paramInt2 < 0) && (paramInt2 != -1))
      throw new IllegalArgumentException("Ad height must be a positive number. Number provided: " + paramInt2);
    if (paramInt2 > 9999)
      throw new IllegalArgumentException("Ad height must be less then 9999. Number provided: " + paramInt2);
    if (paramString == null)
      throw new IllegalArgumentException("No label specified");
    if ((paramString != null) && (paramString.length() > 9))
      throw new IllegalArgumentException("Provided label is too long. Label provided: " + paramString);
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramString;
  }

  private static int a(String paramString)
  {
    int i;
    if ("span".equalsIgnoreCase(paramString))
      i = -1;
    while (true)
    {
      return i;
      try
      {
        int j = Integer.parseInt(paramString);
        i = j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        i = 0;
      }
    }
  }

  public static AppLovinAdSize fromString(String paramString)
  {
    if ((paramString == null) || (paramString.length() < 1));
    for (AppLovinAdSize localAppLovinAdSize = null; ; localAppLovinAdSize = new AppLovinAdSize(0, 0, paramString))
      while (true)
      {
        return localAppLovinAdSize;
        String str = paramString.toLowerCase();
        if (str.equals("banner"))
          localAppLovinAdSize = BANNER;
        if ((str.equals("interstitial")) || (str.equals("inter")))
          localAppLovinAdSize = INTERSTITIAL;
        String[] arrayOfString = paramString.split("x");
        if (arrayOfString.length != 2)
          break;
        localAppLovinAdSize = new AppLovinAdSize(a(arrayOfString[0]), a(arrayOfString[1]), paramString);
      }
  }

  public int getHeight()
  {
    return this.b;
  }

  public String getLabel()
  {
    return this.c;
  }

  public int getWidth()
  {
    return this.a;
  }

  public String toString()
  {
    return this.c;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.sdk.AppLovinAdSize
 * JD-Core Version:    0.5.3
 */