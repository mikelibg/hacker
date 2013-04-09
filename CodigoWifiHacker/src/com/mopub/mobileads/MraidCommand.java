package com.mopub.mobileads;

import java.util.Map;

abstract class MraidCommand
{
  protected Map<String, String> mParams;
  protected MraidView mView;

  MraidCommand(Map<String, String> paramMap, MraidView paramMraidView)
  {
    this.mParams = paramMap;
    this.mView = paramMraidView;
  }

  abstract void execute();

  protected boolean getBooleanFromParamsForKey(String paramString)
  {
    return "true".equals(this.mParams.get(paramString));
  }

  protected float getFloatFromParamsForKey(String paramString)
  {
    String str = (String)this.mParams.get(paramString);
    float f1 = 0.0F;
    if (str == null);
    while (true)
    {
      return f1;
      try
      {
        float f2 = Float.parseFloat(paramString);
        f1 = f2;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        f1 = 0.0F;
      }
    }
  }

  protected int getIntFromParamsForKey(String paramString)
  {
    int i = -1;
    String str = (String)this.mParams.get(paramString);
    if (str == null);
    while (true)
    {
      return i;
      try
      {
        int j = Integer.parseInt(str, 10);
        i = j;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    }
  }

  protected String getStringFromParamsForKey(String paramString)
  {
    return ((String)this.mParams.get(paramString));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MraidCommand
 * JD-Core Version:    0.5.3
 */