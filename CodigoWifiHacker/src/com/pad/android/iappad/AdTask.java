package com.pad.android.iappad;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdRequest;
import java.util.List;
import org.apache.http.NameValuePair;
import org.json.JSONObject;

public class AdTask extends AsyncTask<String, Void, String>
{
  private Activity activity;
  private AdController adCon;
  private JSONObject results;
  private String sectionid;
  private String subid;
  private List<NameValuePair> tokens;
  private boolean useLocation = false;

  public AdTask(AdController paramAdController, Activity paramActivity, String paramString)
  {
    this.adCon = paramAdController;
    this.activity = paramActivity;
    this.sectionid = paramString;
  }

  protected String doInBackground(String[] paramArrayOfString)
  {
    if (((ConnectivityManager)this.activity.getSystemService("connectivity")).getActiveNetworkInfo() != null)
    {
      AdRequest localAdRequest = new AdRequest(this.activity, this.sectionid);
      localAdRequest.setSubId(this.subid);
      localAdRequest.setTokens(this.tokens);
      localAdRequest.setUseLocation(this.useLocation);
      this.results = localAdRequest.makeLBRequest();
    }
    return null;
  }

  protected void onCancelled()
  {
    super.onCancelled();
  }

  protected void onPostExecute(String paramString)
  {
    if ((this.adCon != null) && (this.results != null))
    {
      this.adCon.setResults(this.results);
      this.adCon.initialized();
    }
    while (true)
    {
      return;
      if (this.adCon == null)
        continue;
      this.adCon.triggerAdFailed();
      AdLog.e("LBAdController", "Failed to get results from server");
    }
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
  }

  public void setSubId(String paramString)
  {
    this.subid = paramString;
  }

  public void setTokens(List<NameValuePair> paramList)
  {
    this.tokens = paramList;
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.useLocation = paramBoolean;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.iappad.AdTask
 * JD-Core Version:    0.5.3
 */