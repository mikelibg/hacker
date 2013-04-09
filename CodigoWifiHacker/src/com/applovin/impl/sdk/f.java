package com.applovin.impl.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.location.Location;
import com.applovin.sdk.AppLovinTargetingData;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class f
  implements AppLovinTargetingData
{
  private final AppLovinSdkImpl a;
  private final Context b;

  f(AppLovinSdkImpl paramAppLovinSdkImpl)
  {
    if (paramAppLovinSdkImpl == null)
      throw new IllegalArgumentException("No sdk specified");
    this.a = paramAppLovinSdkImpl;
    this.b = paramAppLovinSdkImpl.getApplicationContext();
  }

  private static String a(String[] paramArrayOfString)
  {
    StringBuffer localStringBuffer;
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      localStringBuffer = new StringBuffer();
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; ++j)
      {
        String str2 = paramArrayOfString[j];
        if (!(ad.e(str2)))
          continue;
        localStringBuffer.append(ad.d(str2));
        localStringBuffer.append(",");
      }
      if (localStringBuffer.length() > 0)
        localStringBuffer.setLength(-1 + localStringBuffer.length());
    }
    for (String str1 = localStringBuffer.toString(); ; str1 = "")
      return str1;
  }

  private void a(String paramString1, String paramString2)
  {
    if (!(ad.e(paramString1)))
      return;
    SharedPreferences.Editor localEditor = this.b.getSharedPreferences("applovin.sdk.targeting", 0).edit();
    localEditor.putString(paramString1, ad.d(paramString2));
    localEditor.commit();
  }

  Map a()
  {
    HashMap localHashMap = new HashMap();
    Map localMap = this.b.getSharedPreferences("applovin.sdk.targeting", 0).getAll();
    if ((localMap != null) && (localMap.size() > 0))
    {
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localHashMap.put(localEntry.getKey(), String.valueOf(localEntry.getValue()));
      }
    }
    return localHashMap;
  }

  public void clearData()
  {
    SharedPreferences.Editor localEditor = this.b.getSharedPreferences("applovin.sdk.targeting", 0).edit();
    localEditor.clear();
    localEditor.commit();
  }

  public void putExtra(String paramString1, String paramString2)
  {
    if ((!(ad.e(paramString1))) || (!(ad.e(paramString2))))
      return;
    a("ex_" + paramString1, paramString2);
  }

  public void setBirthYear(int paramInt)
  {
    if ((paramInt >= 9999) || (paramInt <= 1900))
      return;
    a("yob", Integer.toString(paramInt));
  }

  public void setCarrier(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("carrier", paramString);
  }

  public void setCountry(String paramString)
  {
    if ((!(ad.e(paramString))) || (paramString.length() != 2))
      return;
    a("country", paramString.toUpperCase());
  }

  public void setEducation(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("education", paramString);
  }

  public void setEmail(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    setEmails(new String[] { paramString });
  }

  public void setEmails(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
      return;
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; ++j)
    {
      String str = paramArrayOfString[j];
      if (!(ad.e(str)))
        continue;
      localStringBuffer.append(ad.a(ad.c(str), this.a));
      localStringBuffer.append(",");
    }
    if (localStringBuffer.length() > 0)
      localStringBuffer.setLength(-1 + localStringBuffer.length());
    a("hemails", localStringBuffer.toString());
  }

  public void setEthnicity(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("ethnicity", paramString);
  }

  public void setFirstName(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("uname", ad.b(paramString));
  }

  public void setGender(char paramChar)
  {
    if (paramChar == 'm');
    for (String str = "m"; ; str = "u")
      while (true)
      {
        a("gender", str);
        return;
        if (paramChar != 'f')
          break;
        str = "f";
      }
  }

  public void setIncome(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("income", paramString);
  }

  public void setInterests(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
      return;
    a("interests", a(paramArrayOfString));
  }

  public void setKeywords(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0))
      return;
    a("keywords", a(paramArrayOfString));
  }

  public void setLanguage(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("language", paramString.toLowerCase());
  }

  public void setLocation(Location paramLocation)
  {
    if (paramLocation == null)
      return;
    a("lat", Double.toString(paramLocation.getLatitude()));
    a("lon", Double.toString(paramLocation.getLongitude()));
  }

  public void setMaritalStatus(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("marital_status", paramString);
  }

  public void setPhoneNumber(String paramString)
  {
    if (!(ad.e(paramString)))
      return;
    a("hphone", ad.a(new v(this.a.getApplicationContext()).a(paramString), this.a));
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.sdk.f
 * JD-Core Version:    0.5.3
 */