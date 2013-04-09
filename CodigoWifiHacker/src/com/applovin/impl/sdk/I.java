package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import java.util.List;
import java.util.Map;

class I extends F
{
  I(H paramH, AppLovinAdSize paramAppLovinAdSize, AppLovinAdLoadListener paramAppLovinAdLoadListener, AppLovinSdkImpl paramAppLovinSdkImpl, List paramList)
  {
    super(paramAppLovinAdSize, paramAppLovinAdLoadListener, paramAppLovinSdkImpl);
  }

  protected void a(Map paramMap)
  {
    super.a(paramMap);
    paramMap.put("p", H.a("p", this.a));
    paramMap.put("app_id", H.a("app_id", this.a));
    paramMap.put("api_key", "");
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.I
 * JD-Core Version:    0.5.3
 */