package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;

public class CBAPIRequest
{
  public static final String CB_PARAM_AD_ID = "ad_id";
  private static final String CB_PARAM_AUID = "auid";
  public static final String CB_PARAM_CACHE = "cache";
  private static final String CB_PARAM_COUNTRY = "country";
  private static final String CB_PARAM_HEIGHT = "h";
  public static final String CB_PARAM_IMEI = "imei";
  private static final String CB_PARAM_LANGUAGE = "language";
  private static final String CB_PARAM_MODEL = "model";
  private static final String CB_PARAM_OS = "os";
  private static final String CB_PARAM_SCALE = "scale";
  private static final String CB_PARAM_SDK = "sdk";
  private static final String CB_PARAM_UUID = "uuid";
  private static final String CB_PARAM_VERSION = "bundle";
  private static final String CB_PARAM_WIDTH = "w";
  private String action;
  private Map<String, String> body;
  private Context context;
  private Object contextInfoObject;
  private String controller;
  private List<String> params;
  private Map<String, String> query;

  public CBAPIRequest(Context paramContext, String paramString1, String paramString2)
  {
    this.context = paramContext;
    this.controller = paramString1;
    this.action = paramString2;
  }

  private String serializeDictionaryToString(Map<String, String> paramMap)
  {
    String str1 = "";
    Iterator localIterator = new TreeSet(paramMap.keySet()).iterator();
    while (true)
    {
      if (!(localIterator.hasNext()))
        return str1;
      String str2 = (String)localIterator.next();
      if ((str2.equals("app")) || (str2.equals("signature")))
        continue;
      String str3 = (String)paramMap.get(str2);
      str1 = str1 + str2 + ":" + str3 + ";";
    }
  }

  public void appendBodyArgument(String paramString1, String paramString2)
  {
    if (this.body == null)
      this.body = new HashMap();
    this.body.put(paramString1, paramString2);
  }

  public void appendDeviceInfoParams()
    throws Exception
  {
    if (this.context == null)
      throw new Exception();
    if (Build.PRODUCT.equals("sdk"))
    {
      appendBodyArgument("model", "Android Simulator");
      appendBodyArgument("uuid", "ffff");
      appendBodyArgument("auid", "ffff");
      label50: appendBodyArgument("os", "Android " + Build.VERSION.RELEASE);
      appendBodyArgument("country", Locale.getDefault().getCountry());
      appendBodyArgument("language", Locale.getDefault().getDisplayLanguage());
      appendBodyArgument("sdk", "2.0.1");
      Display localDisplay = ((WindowManager)this.context.getSystemService("window")).getDefaultDisplay();
      int i = Build.VERSION.SDK_INT;
      int j = 0;
      if (i <= 8)
      {
        Rect localRect = new Rect();
        ((Activity)this.context).getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
        j = localRect.top;
      }
      appendBodyArgument("w", localDisplay.getWidth());
      appendBodyArgument("h", localDisplay.getHeight() - j);
      appendBodyArgument("scale", this.context.getResources().getDisplayMetrics().density);
    }
    TelephonyManager localTelephonyManager;
    Object localObject;
    try
    {
      localTelephonyManager = (TelephonyManager)this.context.getSystemService("phone");
      if (localTelephonyManager.getDeviceId() == null)
      {
        localObject = "";
        label284: label313: appendBodyArgument("imei", (String)localObject);
      }
    }
    catch (Exception localException1)
    {
      try
      {
        appendBodyArgument("bundle", this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 128).versionName);
        return;
        appendBodyArgument("model", Build.MODEL);
        appendBodyArgument("uuid", Settings.Secure.getString(this.context.getContentResolver(), "android_id"));
        appendBodyArgument("auid", CBUtility.getAUID(this.context));
        break label50:
        String str = localTelephonyManager.getDeviceId();
        localObject = str;
      }
      catch (Exception localException2)
      {
        break label313:
        localException1 = localException1;
        break label284:
      }
    }
  }

  public void appendQueryArgument(String paramString1, String paramString2)
  {
    if (this.query == null)
      this.query = new HashMap();
    this.query.put(paramString1, paramString2);
  }

  public String getAction()
  {
    return this.action;
  }

  public Map<String, String> getBody()
  {
    return this.body;
  }

  public Object getContextInfoObject()
  {
    return this.contextInfoObject;
  }

  public String getController()
  {
    return this.controller;
  }

  public List<String> getParams()
  {
    return this.params;
  }

  public Map<String, String> getQuery()
  {
    return this.query;
  }

  public void setAction(String paramString)
  {
    this.action = paramString;
  }

  public void setBody(Map<String, String> paramMap)
  {
    this.body = paramMap;
  }

  public void setContextInfoObject(Object paramObject)
  {
    this.contextInfoObject = paramObject;
  }

  public void setController(String paramString)
  {
    this.controller = paramString;
  }

  public void setParams(List<String> paramList)
  {
    this.params = paramList;
  }

  public void setQuery(Map<String, String> paramMap)
  {
    this.query = paramMap;
  }

  public void sign(String paramString1, String paramString2)
    throws Exception
  {
    String str1 = "controller:" + this.controller + ";action:" + this.action + ";";
    if (this.query != null)
      str1 = str1 + serializeDictionaryToString(this.query);
    if (this.body != null)
      str1 = str1 + serializeDictionaryToString(this.body);
    int j;
    Iterator localIterator;
    if (this.params != null)
    {
      j = 0;
      localIterator = this.params.iterator();
      if (localIterator.hasNext())
        break label240;
    }
    String str2 = str1 + "app:" + paramString1 + ";signature:" + paramString2 + ";";
    Log.i("STRING", str2);
    byte[] arrayOfByte1 = str2.getBytes("ISO-8859-1");
    byte[] arrayOfByte2 = MessageDigest.getInstance("MD5").digest(arrayOfByte1);
    String str3 = "";
    for (int i = 0; ; ++i)
    {
      if (i >= arrayOfByte2.length)
      {
        appendBodyArgument("app", paramString1);
        appendBodyArgument("signature", str3);
        return;
        label240: String str4 = (String)localIterator.next();
        StringBuilder localStringBuilder2 = new StringBuilder(String.valueOf(str1));
        int k = j + 1;
        str1 = j + ":" + str4 + ";";
        j = k;
      }
      StringBuilder localStringBuilder1 = new StringBuilder(String.valueOf(str3));
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(0xFF & arrayOfByte2[i]);
      str3 = String.format("%02x", arrayOfObject);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBAPIRequest
 * JD-Core Version:    0.5.3
 */