package com.pad.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import java.io.InputStream;
import java.lang.reflect.Field;
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
import org.json.JSONObject;

public class AdRequest
{
  private JSONObject a;
  private boolean b = false;
  private int c;
  private int d;
  private TelephonyManager e;
  private String f;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private String j;
  private String k = "App";
  private String l;
  private List m;
  private boolean n = false;
  private Context o;
  private Activity p;

  public AdRequest(Activity paramActivity, String paramString)
  {
    this.p = paramActivity;
    this.o = null;
    this.j = paramString;
  }

  public AdRequest(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.p = null;
    this.o = paramContext;
    this.j = paramString1;
    this.g = paramString2.equals("notification");
    this.h = paramString2.equals("icon");
    this.i = paramString2.equals("audio");
    this.k = paramString3;
  }

  public JSONObject makeLBRequest()
  {
    if (this.b)
      return null;
    this.b = true;
    Object localObject1;
    label26: SharedPreferences localSharedPreferences;
    int i3;
    label126: DefaultHttpClient localDefaultHttpClient;
    label275: String[] arrayOfString;
    int i4;
    int i5;
    if (this.p == null)
    {
      localObject1 = this.o;
      localSharedPreferences = ((Context)localObject1).getSharedPreferences("Preference", 2);
      if (this.p != null)
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        this.p.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
        Rect localRect = new Rect();
        Window localWindow = this.p.getWindow();
        localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
        int i1 = localRect.top;
        int i2 = localWindow.findViewById(16908290).getTop();
        if (i2 <= i1)
          break label318;
        i3 = i2 - i1;
        this.c = localDisplayMetrics.widthPixels;
        this.d = (localDisplayMetrics.heightPixels - i1 - i3);
        AdLog.d("LBAdController", "Device Width = " + this.c + ", Height = " + this.d);
        AdLog.d("LBAdController", "SBH = " + i1 + ", TBH = " + i3);
      }
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      localBasicHttpParams.setParameter("http.protocol.version", HttpVersion.HTTP_1_1);
      localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
      if (this.p == null)
        break label324;
      this.e = ((TelephonyManager)this.p.getBaseContext().getSystemService("phone"));
      arrayOfString = new String[] { "http://ad.leadboltapps.net", "http://ad.leadbolt.net" };
      i4 = 0;
      i5 = 0;
      label297: if (i4 < arrayOfString.length)
        break label343;
    }
    do
    {
      return this.a;
      localObject1 = this.p;
      break label26:
      label318: i3 = 0;
      break label126:
      label324: this.e = ((TelephonyManager)this.o.getSystemService("phone"));
      label343: break label275:
    }
    while (i5 != 0);
    this.f = arrayOfString[i4];
    String str1 = this.f + "/show_app.conf?";
    String str2;
    label412: String str3;
    double d1;
    if (this.g)
    {
      str2 = this.f + "/show_notification?";
      str3 = "&section_id=" + this.j + "&appId=null&optin=" + localSharedPreferences.getString("SD_APP_OPTIN", "0");
      AudioManager localAudioManager = (AudioManager)((Context)localObject1).getSystemService("audio");
      d1 = Math.round(100.0D * localAudioManager.getStreamVolume(3) / localAudioManager.getStreamMaxVolume(3)) / 100.0D;
      if ((this.g) || (this.h))
        break label1590;
    }
    for (String str4 = str3 + "level=" + d1; ; str4 = str3)
    {
      long l1;
      int i10;
      String str7;
      Object localObject3;
      int i11;
      if (this.g)
      {
        int i9 = Integer.valueOf(localSharedPreferences.getString("SD_ITERATION_COUNTER_" + this.j, "0")).intValue();
        String str6 = new StringBuilder(String.valueOf(str4)).append("&iteration_counter=").append(i9).toString() + "&launch_type=" + this.k;
        l1 = localSharedPreferences.getLong("SD_NOTIFICATION_FIRED_" + this.j, -1L);
        if (l1 != -1L)
          break label1402;
        i10 = -1;
        str7 = str6 + "&notification_fired=" + i10;
        AdLog.d("LBAdController", "NotificationFired = " + i10);
        localObject3 = "standard,";
        i11 = -1;
      }
      try
      {
        Class localClass3 = Class.forName(this.o.getPackageName() + ".R$layout");
        int i20 = localClass3.getField("xappad_notification").getInt(localClass3);
        i11 = i20;
        label781: label1435: label1308: label1071: label1583: label1402: if (i11 == -1);
      }
      catch (Exception localException3)
      {
        try
        {
          Class localClass2 = Class.forName(this.o.getPackageName() + ".R$id");
          int i17 = localClass2.getField("xappad_bannerview").getInt(localClass2);
          int i18 = localClass2.getField("xappad_bannerviewimg").getInt(localClass2);
          int i19 = localClass2.getField("xappad_bannerviewtext").getInt(localClass2);
          if ((i17 != -1) && (i18 != -1) && (i19 != -1))
          {
            String str10 = localObject3 + "banner,";
            localObject3 = str10;
          }
        }
        catch (Exception localException4)
        {
          while (true)
          {
            HttpPost localHttpPost;
            try
            {
              Class localClass1 = Class.forName(this.o.getPackageName() + ".R$id");
              int i12 = localClass1.getField("xappad_customtextview").getInt(localClass1);
              int i13 = localClass1.getField("xappad_customtextviewtitle").getInt(localClass1);
              int i14 = localClass1.getField("xappad_customtextviewdescription").getInt(localClass1);
              int i15 = localClass1.getField("xappad_customtextviewsmalltext").getInt(localClass1);
              int i16 = localClass1.getField("xappad_customtextviewcta").getInt(localClass1);
              if ((i12 != -1) && (i13 != -1) && (i14 != -1) && (i15 != -1) && (i16 != -1))
              {
                String str9 = localObject3 + "customtext,";
                localObject3 = str9;
              }
              String str8 = ((String)localObject3).substring(0, -1 + ((String)localObject3).length());
              str4 = str7 + "&notification_supported=" + str8;
              if (this.h)
              {
                int i8 = localSharedPreferences.getInt("SD_ICON_DISPLAY_" + this.j, 0);
                str4 = str4 + "&icon_displayed_count=" + i8;
              }
              String str5 = AdEncryption.encrypt(str4.trim()).trim();
              localHttpPost = new HttpPost(str2 + "&get=" + str5 + "&section_id=" + this.j);
            }
            catch (Exception localException4)
            {
              int i6;
              int i7;
              try
              {
                ArrayList localArrayList = new ArrayList(2);
                localArrayList.add(new BasicNameValuePair("ref", AdRefValues.adRefValues((Context)localObject1, this.e, this.l, this.m, this.n, this.c, this.d)));
                localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
                i6 = 0;
                i7 = i5;
                if (i6 < 10)
                  break label1435;
                ++i4;
                i5 = i7;
                break label297:
                if (this.h)
                  str2 = this.f + "/show_app_icon.conf?";
                if (!(this.i))
                  break label1583;
                str2 = this.f + "/show_app_audio?";
                break label412:
                i10 = (int)(System.currentTimeMillis() / 1000L) - (int)(l1 / 1000L);
              }
              catch (Exception localException1)
              {
                while (true)
                {
                  AdLog.printStackTrace("LBAdController", localException1);
                  break label1308:
                  if (i7 == 0);
                  try
                  {
                    HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
                    if (localHttpResponse.getStatusLine().getStatusCode() == 200)
                    {
                      i7 = 1;
                      HttpEntity localHttpEntity = localHttpResponse.getEntity();
                      if (localHttpEntity != null)
                      {
                        InputStream localInputStream = localHttpEntity.getContent();
                        this.a = new JSONObject(AdUtilFuncs.convertStreamToString(localInputStream));
                        localInputStream.close();
                      }
                    }
                    this.b = false;
                    ++i6;
                  }
                  catch (Exception localException2)
                  {
                    AdLog.printStackTrace("LBAdController", localException2);
                    this.a = new JSONObject();
                    this.b = false;
                    i7 = 0;
                  }
                  finally
                  {
                    this.b = false;
                  }
                }
              }
              break label1071:
              localException4 = localException4;
            }
          }
          localException3 = localException3;
        }
        break label781:
        str2 = str1;
      }
      label1590: break label412:
    }
  }

  public void setSubId(String paramString)
  {
    this.l = paramString;
  }

  public void setTokens(List paramList)
  {
    this.m = paramList;
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.n = paramBoolean;
    AdLog.i("LBAdController", "setUseLocation: " + paramBoolean);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdRequest
 * JD-Core Version:    0.5.3
 */