package com.pad.android.util;

public enum AdNavigationStringEnum
{
  private String a;

  static
  {
    CLOSE = new AdNavigationStringEnum("CLOSE", 1, "close");
    BACK = new AdNavigationStringEnum("BACK", 2, "back");
    FORWARD = new AdNavigationStringEnum("FORWARD", 3, "forward");
    REFRESH = new AdNavigationStringEnum("REFRESH", 4, "refresh");
    AdNavigationStringEnum[] arrayOfAdNavigationStringEnum = new AdNavigationStringEnum[5];
    arrayOfAdNavigationStringEnum[0] = NONE;
    arrayOfAdNavigationStringEnum[1] = CLOSE;
    arrayOfAdNavigationStringEnum[2] = BACK;
    arrayOfAdNavigationStringEnum[3] = FORWARD;
    arrayOfAdNavigationStringEnum[4] = REFRESH;
    b = arrayOfAdNavigationStringEnum;
  }

  public static AdNavigationStringEnum fromString(String paramString)
  {
    AdNavigationStringEnum[] arrayOfAdNavigationStringEnum;
    int i;
    if (paramString != null)
    {
      arrayOfAdNavigationStringEnum = values();
      i = arrayOfAdNavigationStringEnum.length;
    }
    for (int j = 0; ; ++j)
    {
      AdNavigationStringEnum localAdNavigationStringEnum;
      if (j >= i)
        localAdNavigationStringEnum = null;
      do
      {
        return localAdNavigationStringEnum;
        localAdNavigationStringEnum = arrayOfAdNavigationStringEnum[j];
      }
      while (paramString.equalsIgnoreCase(localAdNavigationStringEnum.a));
    }
  }

  public final String getText()
  {
    return this.a;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdNavigationStringEnum
 * JD-Core Version:    0.5.3
 */