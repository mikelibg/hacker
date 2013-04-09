package com.pad.android.xappad;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import com.pad.android.util.AdRequest;
import org.json.JSONObject;

public class AdTask extends AsyncTask<String, Void, String>
{
  private Context context;
  private AdController notifCon;
  private String notificationLaunchType = "App";
  private String requestType;
  private JSONObject results;
  private String sectionid;
  private boolean useLocation = false;

  public AdTask(AdController paramAdController, Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.notifCon = paramAdController;
    this.context = paramContext;
    this.sectionid = paramString1;
    this.requestType = paramString2;
    this.notificationLaunchType = paramString3;
  }

  protected String doInBackground(String[] paramArrayOfString)
  {
    if (((ConnectivityManager)this.context.getSystemService("connectivity")).getActiveNetworkInfo() != null)
    {
      AdRequest localAdRequest = new AdRequest(this.context, this.sectionid, this.requestType, this.notificationLaunchType);
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
    if ((this.notifCon == null) || (this.results == null))
      return;
    this.notifCon.setResults(this.results);
    this.notifCon.initialized();
  }

  protected void onPreExecute()
  {
    super.onPreExecute();
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.useLocation = paramBoolean;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.xappad.AdTask
 * JD-Core Version:    0.5.3
 */