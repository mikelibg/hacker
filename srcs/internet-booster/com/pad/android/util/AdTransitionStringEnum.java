package com.pad.android.util;

public enum AdTransitionStringEnum
{
  private String a;

  static
  {
    NONE = new AdTransitionStringEnum("NONE", 6, "none");
    AdTransitionStringEnum[] arrayOfAdTransitionStringEnum = new AdTransitionStringEnum[7];
    arrayOfAdTransitionStringEnum[0] = DEFAULT;
    arrayOfAdTransitionStringEnum[1] = DISSOLVE;
    arrayOfAdTransitionStringEnum[2] = FADE;
    arrayOfAdTransitionStringEnum[3] = ROLL;
    arrayOfAdTransitionStringEnum[4] = SLIDE;
    arrayOfAdTransitionStringEnum[5] = ZOOM;
    arrayOfAdTransitionStringEnum[6] = NONE;
    b = arrayOfAdTransitionStringEnum;
  }

  public static AdTransitionStringEnum fromString(String paramString)
  {
    AdTransitionStringEnum[] arrayOfAdTransitionStringEnum;
    int i;
    if (paramString != null)
    {
      arrayOfAdTransitionStringEnum = values();
      i = arrayOfAdTransitionStringEnum.length;
    }
    for (int j = 0; ; ++j)
    {
      AdTransitionStringEnum localAdTransitionStringEnum;
      if (j >= i)
        localAdTransitionStringEnum = null;
      do
      {
        return localAdTransitionStringEnum;
        localAdTransitionStringEnum = arrayOfAdTransitionStringEnum[j];
      }
      while (paramString.equalsIgnoreCase(localAdTransitionStringEnum.a));
    }
  }

  public final String getText()
  {
    return this.a;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdTransitionStringEnum
 * JD-Core Version:    0.5.3
 */