package com.pad.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.pad.android.listener.AdOptinListener;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpParams;
import org.json.JSONException;
import org.json.JSONObject;

public class AdOptinRequest extends AsyncTask
{
  private Activity a = null;
  private String b = null;
  private Context c = null;
  private AdOptinListener d = null;
  private JSONObject e;
  private String f = null;

  public AdOptinRequest(Activity paramActivity, String paramString1, Context paramContext, AdOptinListener paramAdOptinListener, String paramString2)
  {
    this.a = paramActivity;
    this.b = paramString1;
    this.c = paramContext;
    this.d = paramAdOptinListener;
    this.f = paramString2;
  }

  private JSONObject a()
  {
    AdLog.d("LBAdController", "AdOptin started - " + this.a + ", " + this.b + ", " + this.c + ", " + this.d);
    Object localObject2;
    if (this.a == null)
    {
      Context localContext = this.c;
      localObject2 = null;
      if (localContext == null)
        break label380;
    }
    Object localObject1;
    label93: int i;
    int j;
    int i1;
    label273: DefaultHttpClient localDefaultHttpClient;
    TelephonyManager localTelephonyManager;
    label350: String[] arrayOfString;
    int i2;
    int i3;
    if (this.a != null)
    {
      localObject1 = this.a;
      String str1 = ((Context)localObject1).getSharedPreferences("Preference", 2).getString("SD_APP_OPTIN_SHOWN", "notset");
      if (!(str1.equals("notset")))
      {
        boolean bool = str1.equals("invalid");
        localObject2 = null;
        if (!(bool))
          break label380;
      }
      AdLog.d("LBAdController", "Cookie is ok, going to check internet");
      NetworkInfo localNetworkInfo = ((ConnectivityManager)((Context)localObject1).getSystemService("connectivity")).getActiveNetworkInfo();
      localObject2 = null;
      if (localNetworkInfo != null)
      {
        AdLog.d("LBAdController", "Internet available - going to make the request");
        Activity localActivity = this.a;
        i = 0;
        j = 0;
        if (localActivity != null)
        {
          DisplayMetrics localDisplayMetrics = new DisplayMetrics();
          this.a.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
          Rect localRect = new Rect();
          Window localWindow = this.a.getWindow();
          localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
          int k = localRect.top;
          int l = localWindow.findViewById(16908290).getTop();
          if (l <= k)
            break label391;
          i1 = l - k;
          i = localDisplayMetrics.widthPixels;
          j = localDisplayMetrics.heightPixels - k - i1;
        }
        BasicHttpParams localBasicHttpParams = new BasicHttpParams();
        localBasicHttpParams.setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
        localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
        if (this.a == null)
          break label397;
        localTelephonyManager = (TelephonyManager)this.a.getBaseContext().getSystemService("phone");
        arrayOfString = new String[] { "http://ad.leadboltapps.net", "http://ad.leadbolt.net" };
        i2 = 0;
        i3 = 0;
      }
    }
    while (true)
    {
      if (i3 >= arrayOfString.length);
      do
      {
        label380: return localObject2;
        localObject1 = this.c;
        break label93:
        label391: i1 = 0;
        break label273:
        label397: localTelephonyManager = (TelephonyManager)this.c.getSystemService("phone");
        break label350:
      }
      while (i2 != 0);
      HttpPost localHttpPost = new HttpPost(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(arrayOfString[i3])).append("/optin?").toString())).append("&section_id=").append(this.b).toString() + "&mode=" + this.f);
      int i4;
      Object localObject3;
      try
      {
        ArrayList localArrayList = new ArrayList(2);
        localArrayList.add(new BasicNameValuePair("ref", AdRefValues.adRefValues((Context)localObject1, localTelephonyManager, "", null, false, i, j)));
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
        i4 = i2;
        localObject3 = localObject2;
        label564: label715: if (i4 != 0)
          break label715;
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
            if (localHttpResponse.getStatusLine().getStatusCode() == 200);
            i4 = 1;
            HttpEntity localHttpEntity = localHttpResponse.getEntity();
            if (localHttpEntity != null);
            String str2 = AdUtilFuncs.convertStreamToString(localHttpEntity.getContent());
            try
            {
              JSONObject localJSONObject = new JSONObject(str2);
              localObject3 = localJSONObject;
              break label564:
              localException1 = localException1;
              AdLog.printStackTrace("LBAdController", localException1);
              i4 = i2;
              localObject3 = localObject2;
            }
            catch (JSONException localJSONException)
            {
              AdLog.printStackTrace("LBAdController", localJSONException);
              AdLog.e("LBAdController", "Error in creating JSON Object for Optin - " + localJSONException.getMessage());
            }
          }
        }
        catch (Exception localException2)
        {
          AdLog.printStackTrace("LBAdController", localException2);
        }
        break label564:
        ++i3;
        i2 = i4;
        localObject2 = localObject3;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.util.AdOptinRequest
 * JD-Core Version:    0.5.3
 */