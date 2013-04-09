package com.eMVeQv.NFmMPJ121641;

import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class IconAds
  implements IConstants
{
  private Intent addIntent;
  private Bitmap bmpicon;
  private String[] campaignArr = null;
  private String campaignId;
  private String[] creativeArr = null;
  private String creativeId;
  AsyncTaskCompleteListener<Bitmap> getIconImageListener = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      new ImageTask(IconAds.this.iconImage, IconAds.this.getIconImageListener).execute(new Void[0]);
    }

    public void onTaskComplete(Bitmap paramBitmap)
    {
      if (paramBitmap == null)
        return;
      IconAds.access$002(IconAds.this, paramBitmap);
      IconAds.this.createShortcut();
    }
  };
  private String iconImage;
  private String[] iconImageArr;
  private String iconText;
  private String[] iconTextArr;
  private String iconUrl;
  private String[] iconUrlArr;
  private JSONObject jsonObject;
  private Context mContext;
  private JSONObject post;
  private boolean sendInstall = true;
  AsyncTaskCompleteListener<String> sendInstallListener = new AsyncTaskCompleteListener()
  {
    public void lauchNewHttpTask()
    {
      Log.i("AirpushSDK", "Sending Install Data....");
      try
      {
        List localList = SetPreferences.setValues(IconAds.this.mContext);
        localList.add(new BasicNameValuePair("model", "log"));
        localList.add(new BasicNameValuePair("action", "seticoninstalltracking"));
        localList.add(new BasicNameValuePair("APIKEY", Util.getApiKey()));
        localList.add(new BasicNameValuePair("event", "iInstall"));
        localList.add(new BasicNameValuePair("campaigncreativedata", IconAds.this.post.toString()));
        new HttpPostDataTask(IconAds.this.mContext, localList, "https://api.airpush.com/v2/api.php", this).execute(new Void[0]);
        return;
      }
      catch (Exception localException)
      {
        Util.printDebugLog("Error in send listener.");
      }
    }

    public void onTaskComplete(String paramString)
    {
      Log.i("AirpushSDK", "Icon Install returns:" + paramString);
    }
  };

  public IconAds(Context paramContext)
  {
    this.mContext = paramContext;
    if (this.mContext == null)
      this.mContext = Util.getContext();
    getShortcutData();
  }

  private String getCampaignId(JSONObject paramJSONObject)
  {
    try
    {
      this.campaignId = paramJSONObject.getString("campaignid");
      return this.campaignId;
    }
    catch (JSONException localJSONException)
    {
    }
    return "Not Found";
  }

  private String getCreativeId(JSONObject paramJSONObject)
  {
    try
    {
      this.creativeId = paramJSONObject.getString("creativeid");
      return this.creativeId;
    }
    catch (JSONException localJSONException)
    {
    }
    return "Not Found";
  }

  private String getIconImage(JSONObject paramJSONObject)
  {
    try
    {
      this.iconImage = paramJSONObject.getString("iconimage");
      return this.iconImage;
    }
    catch (JSONException localJSONException)
    {
    }
    return "Not Found";
  }

  private String getIconText(JSONObject paramJSONObject)
  {
    try
    {
      this.iconText = paramJSONObject.getString("icontext");
      return this.iconText;
    }
    catch (JSONException localJSONException)
    {
    }
    return "Not Found";
  }

  private String getIconUrl(JSONObject paramJSONObject)
  {
    try
    {
      this.iconUrl = paramJSONObject.getString("iconurl");
      return this.iconUrl;
    }
    catch (JSONException localJSONException)
    {
    }
    return "Not Found";
  }

  private void getShortcutData()
  {
    try
    {
      new AsyncTaskCompleteListener(((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay().getWidth())
      {
        public void lauchNewHttpTask()
        {
          List localList = SetPreferences.setValues(IconAds.this.mContext);
          localList.add(new BasicNameValuePair("width", String.valueOf(this.val$width)));
          localList.add(new BasicNameValuePair("model", "message"));
          localList.add(new BasicNameValuePair("action", "geticon"));
          localList.add(new BasicNameValuePair("APIKEY", Util.getApiKey()));
          Util.printDebugLog("Icon  data values: " + localList);
          new HttpPostDataTask(IconAds.this.mContext, localList, "https://api.airpush.com/v2/api.php", this).execute(new Void[0]);
        }

        public void onTaskComplete(String paramString)
        {
          Util.printLog("Icon Data returns: " + paramString);
          if (paramString == null)
            return;
          IconAds.this.parseIconJson(paramString);
        }
      }
      .lauchNewHttpTask();
      return;
    }
    catch (Exception localException)
    {
      Util.printLog("geticd err " + localException.getMessage());
      Util.printDebugLog("IconAds Problem in getshortcutdata");
    }
  }

  private void makeShortcut()
  {
    if (this.mContext.getPackageManager().checkPermission("com.android.launcher.permission.INSTALL_SHORTCUT", this.mContext.getPackageName()) == 0)
    {
      this.addIntent.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
      this.mContext.getApplicationContext().sendBroadcast(this.addIntent);
      return;
    }
    Log.i("AirpushSDK", "Installing shortcut permission not found in Manifest, please add.");
  }

  private void parseIconJson(String paramString)
  {
    monitorenter;
    while (true)
    {
      int j;
      try
      {
        if (paramString.contains("campaignid"))
        {
          JSONArray localJSONArray = new JSONArray(paramString);
          int i = localJSONArray.length();
          this.iconImageArr = new String[i];
          this.iconUrlArr = new String[i];
          this.iconTextArr = new String[i];
          this.campaignArr = new String[i];
          this.creativeArr = new String[i];
          this.post = new JSONObject();
          j = 0;
          if (j >= localJSONArray.length())
            break label317;
          this.jsonObject = new JSONObject(localJSONArray.get(j).toString());
          this.iconImageArr[j] = getIconImage(this.jsonObject);
          this.iconTextArr[j] = getIconText(this.jsonObject);
          this.iconUrlArr[j] = getIconUrl(this.jsonObject);
          this.campaignArr[j] = getCampaignId(this.jsonObject);
          this.creativeArr[j] = getCreativeId(this.jsonObject);
          this.post.put(this.campaignArr[j], this.creativeArr[j]);
          if ((this.iconImageArr[j].equals("Not Found")) || (this.iconTextArr[j].equals("Not Found")) || (this.iconUrlArr[j].equals("Not Found")))
          {
            this.sendInstall = false;
            break label341:
          }
          this.iconImage = this.iconImageArr[j];
          this.iconText = this.iconTextArr[j];
          this.iconUrl = this.iconUrlArr[j];
          this.getIconImageListener.lauchNewHttpTask();
        }
      }
      catch (Exception localException)
      {
        label317: 
        do
          return;
        while (!(this.sendInstall));
        label341: this.sendInstallListener.lauchNewHttpTask();
      }
      finally
      {
        monitorexit;
      }
    }
  }

  void createShortcut()
  {
    try
    {
      Intent localIntent1 = new Intent("android.intent.action.VIEW");
      localIntent1.setData(Uri.parse(this.iconUrl));
      localIntent1.addFlags(268435456);
      localIntent1.addFlags(67108864);
      this.addIntent = new Intent();
      this.addIntent.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
      this.addIntent.putExtra("android.intent.extra.shortcut.NAME", this.iconText);
      this.addIntent.putExtra("duplicate", false);
      this.addIntent.putExtra("android.intent.extra.shortcut.ICON", this.bmpicon);
      makeShortcut();
      return;
    }
    catch (Exception localException)
    {
      this.iconUrl = SetPreferences.postValues;
      this.iconUrl += "&model=log&action=seticonclicktracking&APIKEY=airpushsearch&event=iClick&campaignid=0&creativeid=0";
      Intent localIntent2 = new Intent("android.intent.action.VIEW");
      localIntent2.setData(Uri.parse(this.iconUrl));
      localIntent2.addFlags(268435456);
      localIntent2.addFlags(67108864);
      this.addIntent = new Intent();
      this.addIntent.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
      this.addIntent.putExtra("android.intent.extra.shortcut.NAME", "Search");
      this.addIntent.putExtra("duplicate", false);
      this.addIntent.putExtra("android.intent.extra.shortcut.ICON", Intent.ShortcutIconResource.fromContext(this.mContext, 17301583));
      makeShortcut();
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.IconAds
 * JD-Core Version:    0.5.3
 */