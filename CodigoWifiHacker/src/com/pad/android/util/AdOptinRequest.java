package com.pad.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
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
import android.widget.Toast;
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

public class AdOptinRequest extends AsyncTask<Void, Void, JSONObject>
{
  private final String LB_LOG = "LBAdController";
  private Activity activity = null;
  private Context context = null;
  private AdOptinListener oListener = null;
  private JSONObject optinValues;
  private String sectionid = null;

  public AdOptinRequest(Activity paramActivity, String paramString, Context paramContext, AdOptinListener paramAdOptinListener)
  {
    this.activity = paramActivity;
    this.sectionid = paramString;
    this.context = paramContext;
    this.oListener = paramAdOptinListener;
  }

  private JSONObject makeOptinRequest()
  {
    AdLog.d("LBAdController", "AdOptin started - " + this.activity + ", " + this.sectionid + ", " + this.context + ", " + this.oListener);
    Object localObject2;
    if (this.activity == null)
    {
      Context localContext = this.context;
      localObject2 = null;
      if (localContext == null)
        break label384;
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
    if (this.activity != null)
    {
      localObject1 = this.activity;
      String str1 = ((Context)localObject1).getSharedPreferences("Preference", 2).getString("SD_APP_OPTIN_SHOWN", "notset");
      if (!(str1.equals("notset")))
      {
        boolean bool = str1.equals("invalid");
        localObject2 = null;
        if (!(bool))
          break label384;
      }
      AdLog.d("LBAdController", "Cookie is ok, going to check internet");
      NetworkInfo localNetworkInfo = ((ConnectivityManager)((Context)localObject1).getSystemService("connectivity")).getActiveNetworkInfo();
      localObject2 = null;
      if (localNetworkInfo != null)
      {
        AdLog.d("LBAdController", "Internet available - going to make the request");
        Activity localActivity = this.activity;
        i = 0;
        j = 0;
        if (localActivity != null)
        {
          DisplayMetrics localDisplayMetrics = new DisplayMetrics();
          this.activity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
          Rect localRect = new Rect();
          Window localWindow = this.activity.getWindow();
          localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
          int k = localRect.top;
          int l = localWindow.findViewById(16908290).getTop();
          if (l <= k)
            break label395;
          i1 = l - k;
          i = localDisplayMetrics.widthPixels;
          j = localDisplayMetrics.heightPixels - k - i1;
        }
        BasicHttpParams localBasicHttpParams = new BasicHttpParams();
        localBasicHttpParams.setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
        localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
        if (this.activity == null)
          break label401;
        localTelephonyManager = (TelephonyManager)this.activity.getBaseContext().getSystemService("phone");
        arrayOfString = new String[] { "http://ad.leadboltapps.net", "http://ad.leadbolt.net" };
        i2 = 0;
        i3 = 0;
      }
    }
    while (true)
    {
      int i4 = arrayOfString.length;
      if (i3 >= i4);
      do
      {
        label384: return localObject2;
        localObject1 = this.context;
        break label93:
        label395: i1 = 0;
        break label273:
        label401: localTelephonyManager = (TelephonyManager)this.context.getSystemService("phone");
        break label350:
      }
      while (i2 != 0);
      String str2 = new StringBuilder(String.valueOf(arrayOfString[i3])).append("/optin.php?").toString() + "&section_id=" + this.sectionid;
      HttpPost localHttpPost = new HttpPost(str2);
      label543: Object localObject3;
      try
      {
        ArrayList localArrayList = new ArrayList(2);
        BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("ref", AdRefValues.adRefValues((Context)localObject1, localTelephonyManager, "", null, false, i, j));
        localArrayList.add(localBasicNameValuePair);
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
        localObject3 = localObject2;
        if (10 < 0)
          break label574;
        ++i3;
        label574: localObject2 = localObject3;
      }
      catch (Exception localException1)
      {
        while (true)
        {
          AdLog.printStackTrace("LBAdController", localException1);
          break label543:
          if (i2 == 0);
          try
          {
            while (true)
            {
              HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
              if (localHttpResponse.getStatusLine().getStatusCode() == 200);
              i2 = 1;
              HttpEntity localHttpEntity = localHttpResponse.getEntity();
              if (localHttpEntity != null);
              String str3 = AdUtilFuncs.convertStreamToString(localHttpEntity.getContent());
              try
              {
                JSONObject localJSONObject = new JSONObject(str3);
                localObject3 = localJSONObject;
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
        }
      }
    }
  }

  protected JSONObject doInBackground(Void[] paramArrayOfVoid)
  {
    Object localObject;
    if (this.activity != null)
    {
      localObject = this.activity;
      label12: if (((ConnectivityManager)((Context)localObject).getSystemService("connectivity")).getActiveNetworkInfo() == null)
        break label42;
    }
    for (JSONObject localJSONObject = makeOptinRequest(); ; localJSONObject = null)
    {
      return localJSONObject;
      localObject = this.context;
      label42: break label12:
    }
  }

  protected void onPostExecute(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      if (this.oListener != null)
        this.oListener.onAdOptin();
    while (true)
    {
      label20: return;
      this.optinValues = paramJSONObject;
      Object localObject1;
      label59: SharedPreferences.Editor localEditor;
      String str1;
      Object localObject2;
      if ((((this.activity != null) || (this.context != null))) && (this.optinValues != null))
        if (this.activity != null)
        {
          localObject1 = this.activity;
          localEditor = ((Context)localObject1).getSharedPreferences("Preference", 2).edit();
          if (this.optinValues == null)
            continue;
          str1 = "";
          localObject2 = "";
        }
      try
      {
        str1 = this.optinValues.getString("optintype");
        String str3 = this.optinValues.getString("optintext");
        localObject2 = str3;
        label115: String str2 = System.currentTimeMillis();
        if (this.context != null)
        {
          AdLog.d("LBAdController", "Context not null, so just flash toast....");
          if ((str1.equals("display")) || (str1.equals("confirm")) || (str1.equals("webconfirm")))
          {
            Toast.makeText(this.context, (CharSequence)localObject2, 0).show();
            localEditor.putString("SD_APP_OPTIN", str2);
            localEditor.commit();
            label213: localEditor.putString("SD_APP_OPTIN_SHOWN", "1");
            localEditor.commit();
            if (this.oListener != null)
              this.oListener.onAdOptin();
          }
        }
        while (true)
        {
          label248: localEditor.putString("SD_APP_OPTIN_SHOWN", "1");
          localEditor.commit();
          break label20:
          localObject1 = this.context;
          break label59:
          if (str1.equals("deny"))
          {
            localEditor.putString("SD_APP_OPTIN", "0");
            localEditor.commit();
          }
          if (str1.equals("nodisplay"));
          localEditor.putString("SD_APP_OPTIN", str2);
          localEditor.commit();
          break label213:
          AdLog.d("LBAdController", "values received = " + this.optinValues.toString());
          if (this.optinValues.length() == 1)
          {
            if (this.oListener != null);
            this.oListener.onAdOptin();
          }
          if (str1.equals("display"))
          {
            if (this.activity != null)
              Toast.makeText(this.activity.getApplicationContext(), (CharSequence)localObject2, 1).show();
            while (true)
            {
              localEditor.putString("SD_APP_OPTIN", str2);
              localEditor.putString("SD_APP_OPTIN_SHOWN", "1");
              localEditor.commit();
              if (this.oListener != null);
              this.oListener.onAdOptin();
              break label248:
              Toast.makeText(this.context, (CharSequence)localObject2, 1).show();
            }
          }
          if (str1.equals("deny"))
          {
            localEditor.putString("SD_APP_OPTIN", "0");
            localEditor.commit();
            if (this.oListener == null)
              continue;
            this.oListener.onAdOptin();
          }
          if (str1.equals("nodisplay"))
          {
            localEditor.putString("SD_APP_OPTIN", str2);
            localEditor.commit();
            if (this.oListener == null)
              continue;
            this.oListener.onAdOptin();
          }
          if ((!(str1.equals("webconfirm"))) || (this.optinValues.isNull("weboptinurl")))
            continue;
          try
          {
            new AdOptinView(this.activity, this.optinValues.getString("weboptinurl") + this.sectionid, this.oListener);
          }
          catch (Exception localException2)
          {
            AdLog.printStackTrace("LBAdController", localException2);
          }
        }
        if (this.oListener != null);
        this.oListener.onAdOptin();
      }
      catch (Exception localException1)
      {
        break label115:
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.util.AdOptinRequest
 * JD-Core Version:    0.5.3
 */