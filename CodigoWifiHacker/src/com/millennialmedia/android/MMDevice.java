package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class MMDevice extends MMJSObject
{
  public MMJSResponse getAvailableSchemes(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)this.contextRef.get();
    MMJSResponse localMMJSResponse;
    if (localContext != null)
    {
      HandShake localHandShake = HandShake.sharedHandShake(localContext);
      localMMJSResponse = new MMJSResponse();
      localMMJSResponse.result = 1;
      localMMJSResponse.response = localHandShake.getSchemesJSONArray(localContext);
    }
    while (true)
    {
      return localMMJSResponse;
      localMMJSResponse = null;
    }
  }

  public MMJSResponse getInfo(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)this.contextRef.get();
    if (localContext != null);
    JSONObject localJSONObject1;
    try
    {
      localJSONObject1 = new JSONObject();
    }
    catch (JSONException localJSONException2)
    {
      label112: JSONObject localJSONObject3;
      try
      {
        localJSONObject1.put("sdkVersion", "4.5.1-12.2.2.a");
        localJSONObject1.put("connection", MMAdViewSDK.getConnectionType(localContext));
        localJSONObject1.put("platform", "Android");
        if (Build.VERSION.RELEASE != null)
          localJSONObject1.put("version", Build.VERSION.RELEASE);
        if (Build.MODEL != null)
          localJSONObject1.put("device", Build.MODEL);
        if (HandShake.sharedHandShake(localContext).hdid)
        {
          localJSONObject1.put("hdid", MMAdViewSDK.getHdid(localContext));
          localJSONObject1.put("mmdid", MMAdViewSDK.getMMdid(localContext));
          DisplayMetrics localDisplayMetrics = localContext.getResources().getDisplayMetrics();
          localJSONObject1.put("density", new Float(localDisplayMetrics.density));
          localJSONObject1.put("height", new Integer(localDisplayMetrics.heightPixels));
          localJSONObject1.put("width", new Integer(localDisplayMetrics.widthPixels));
          Locale localLocale = Locale.getDefault();
          if (localLocale != null)
          {
            localJSONObject1.put("language", localLocale.getLanguage());
            localJSONObject1.put("country", localLocale.getCountry());
          }
          label300: localJSONObject3 = new JSONObject();
        }
      }
      catch (JSONException localJSONException2)
      {
        JSONArray localJSONArray;
        try
        {
          localJSONObject3.put("name", "MAC-ID");
          localJSONObject3.put("path", "/");
          localJSONObject3.put("value", MMAdViewSDK.macId);
          localJSONArray = new JSONArray();
        }
        catch (JSONException localJSONException2)
        {
          JSONObject localJSONObject2;
          try
          {
            localJSONArray.put(localJSONObject3);
            localJSONObject1.put("cookies", localJSONArray);
            for (localJSONObject2 = localJSONObject1; ; localJSONObject2 = null)
            {
              MMJSResponse localMMJSResponse = new MMJSResponse();
              localMMJSResponse.result = 1;
              localMMJSResponse.response = localJSONObject2;
              while (true)
              {
                return localMMJSResponse;
                localJSONObject1.put("auid", MMAdViewSDK.getAuid(localContext));
                break label112:
                localJSONException1 = localJSONException1;
                localJSONObject2 = localJSONObject1;
                break label300:
                localMMJSResponse = null;
              }
              localJSONException4 = localJSONException4;
            }
            localJSONException2 = localJSONException2;
            localJSONObject2 = localJSONObject1;
          }
          catch (JSONException localJSONException3)
          {
            localJSONObject2 = localJSONObject1;
          }
        }
      }
    }
  }

  public MMJSResponse getOrientation(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)this.contextRef.get();
    MMJSResponse localMMJSResponse;
    if (localContext != null)
    {
      int i = localContext.getResources().getConfiguration().orientation;
      if (i == 0)
        i = ((WindowManager)localContext.getSystemService("window")).getDefaultDisplay().getOrientation();
      localMMJSResponse = new MMJSResponse();
      localMMJSResponse.result = 1;
      switch (i)
      {
      default:
        localMMJSResponse.response = "portrait";
      case 2:
      }
    }
    while (true)
    {
      return localMMJSResponse;
      localMMJSResponse.response = "landscape";
      continue;
      localMMJSResponse = null;
    }
  }

  public MMJSResponse isSchemeAvailable(HashMap<String, String> paramHashMap)
  {
    String str = (String)paramHashMap.get("scheme");
    Context localContext = (Context)this.contextRef.get();
    if ((str != null) && (localContext != null))
    {
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
      if (localContext.getPackageManager().queryIntentActivities(localIntent, 65536).size() <= 0);
    }
    for (MMJSResponse localMMJSResponse = MMJSResponse.responseWithSuccess(); ; localMMJSResponse = null)
      return localMMJSResponse;
  }

  public MMJSResponse setMMDID(HashMap<String, String> paramHashMap)
  {
    String str = (String)paramHashMap.get("mmdid");
    Context localContext = (Context)this.contextRef.get();
    if (localContext != null)
      HandShake.sharedHandShake(localContext).setMMdid(localContext, str);
    return null;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMDevice
 * JD-Core Version:    0.5.3
 */