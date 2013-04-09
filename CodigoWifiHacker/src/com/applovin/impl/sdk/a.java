package com.applovin.impl.sdk;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.applovin.sdk.Logger;
import java.util.HashMap;
import java.util.Map;

class a
{
  private static final Map a = new HashMap();

  static Map a(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    return a("ad_data_cache", paramAppLovinSdkImpl);
  }

  private static Map a(String paramString, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    Map localMap2;
    SharedPreferences localSharedPreferences;
    String str;
    synchronized (a)
    {
      localMap2 = (Map)a.get(paramString);
      if (localMap2 != null)
        break label283;
      localSharedPreferences = paramAppLovinSdkImpl.getSettingsManager().a();
      str = localSharedPreferences.getString(paramString, "");
      if ((str == null) || (str.length() <= 0))
        break label283;
    }
    Object localObject2;
    try
    {
      localObject2 = new HashMap();
    }
    catch ( localObject1)
    {
      label115: HashMap localHashMap;
      try
      {
        String[] arrayOfString = str.split("&");
        int i = arrayOfString.length;
        for (int j = 0; ; ++j)
        {
          if (j >= i)
            break label115;
          a(arrayOfString[j], (Map)localObject2);
        }
        localObject1 = finally;
        monitorexit;
        throw localObject1;
        synchronized (a)
        {
          a.put(paramString, localObject2);
          paramAppLovinSdkImpl.getLogger().d("AdDataCache", ((Map)localObject2).size() + " " + paramString + " entries loaded from cache");
          label183: if (localObject2 == null)
            break label258;
          localHashMap = new HashMap((Map)localObject2);
          label258: label283: label199: return localHashMap;
        }
      }
      catch (Exception localObject3)
      {
        while (true)
        {
          paramAppLovinSdkImpl.getLogger().e("AdDataCache", "Unable to load ad data", localException1);
          SharedPreferences.Editor localEditor = localSharedPreferences.edit();
          localEditor.putString(paramString, "");
          localEditor.commit();
          break label183:
          localHashMap = new HashMap();
          break label199:
          localException2 = localException2;
          localObject2 = localMap2;
          Object localObject3 = localException2;
        }
        localObject2 = localMap2;
      }
    }
  }

  private static void a(String paramString, Map paramMap)
  {
    String[] arrayOfString = paramString.split("=");
    if (arrayOfString.length != 2)
      return;
    paramMap.put(arrayOfString[0], arrayOfString[1]);
  }

  static void a(Map paramMap, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    a(paramMap, "ad_data_cache", paramAppLovinSdkImpl);
  }

  private static void a(Map paramMap, String paramString, AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramMap == null)
      throw new IllegalArgumentException("No ad aata specified");
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    while (true)
      try
      {
        synchronized (a)
        {
          Object localObject2 = (Map)a.get(paramString);
          if (localObject2 == null)
            localObject2 = new HashMap();
          ((Map)localObject2).clear();
          ((Map)localObject2).putAll(paramMap);
          a.put(paramString, localObject2);
          SharedPreferences.Editor localEditor = paramAppLovinSdkImpl.getSettingsManager().a().edit();
          localEditor.putString(paramString, ad.a(paramMap));
          localEditor.commit();
          paramAppLovinSdkImpl.getLogger().d("AdDataCache", paramMap.size() + " " + paramString + " entries saved in cache");
          return;
        }
      }
      catch (Exception localException)
      {
        paramAppLovinSdkImpl.getLogger().e("AdDataCache", "Unable to save ad data entries", localException);
      }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.a
 * JD-Core Version:    0.5.3
 */