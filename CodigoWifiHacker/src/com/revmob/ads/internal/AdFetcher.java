package com.revmob.ads.internal;

import android.app.Activity;
import android.util.Log;
import com.revmob.RevMob;
import com.revmob.ads.EnvironmentConfig;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.json.JSONObject;

public abstract class AdFetcher
{
  private static final String DEFAULT_DOWNLOAD_ERROR_MESSAGE = "RevMob did not asnwered as expected.";
  private static final Map<Integer, String> LOG_MESSAGES = new HashMap();
  protected static final String NO_ADS_FOR_DEVICE = "Ad retrieval failed: No ads for this device/country right now";
  private static final String PARSE_ERROR_MESSAGE = "Error on parse response from server.";
  protected static final String REVMOB = "RevMob";
  protected static final String SESSION_WARNING = "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM.";
  protected Activity activity;
  private Thread fetchThread;
  protected HTTPHelper httpHelper;
  protected String url;

  static
  {
    LOG_MESSAGES.put(Integer.valueOf(200), "OK.");
    LOG_MESSAGES.put(Integer.valueOf(204), "Ad retrieval failed: No ads for this device/country right now");
    LOG_MESSAGES.put(Integer.valueOf(404), "No ad retrieved: did you set a valid App ID? Get one at http://revmob.com.");
    LOG_MESSAGES.put(Integer.valueOf(409), "No ad retrieved: did you set a valid Placement ID? Get one at http://revmob.com.");
    LOG_MESSAGES.put(Integer.valueOf(422), "Request requirements did not met. Did you set required permissions?");
    LOG_MESSAGES.put(Integer.valueOf(500), "Unexpected server error.");
  }

  public AdFetcher(Activity paramActivity, String paramString)
  {
    this.activity = paramActivity;
    this.url = paramString;
    this.httpHelper = new HTTPHelper();
  }

  public abstract Ad build(String paramString);

  public void fetch(OnLoadListener paramOnLoadListener)
  {
    String str = getFetchEntity().toString();
    Log.d("RevMob", "Fetching Ad in " + EnvironmentConfig.getSdkName());
    Log.d("RevMob", "Fetching Ad with SDK version " + EnvironmentConfig.getSdkVersion());
    this.fetchThread = new Thread(str, paramOnLoadListener)
    {
      public void run()
      {
        HttpResponse localHttpResponse = AdFetcher.this.httpHelper.post(AdFetcher.this.url, this.val$entity);
        AdFetcher.this.handleResponse(localHttpResponse, this.val$listener);
      }
    };
    this.fetchThread.start();
  }

  public void fetchWithSessionVerification(OnLoadListener paramOnLoadListener)
  {
    if (!(RevMob.hasSession()))
    {
      Log.w("RevMob", "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM.");
      paramOnLoadListener.onAdNotReceived(LoadError.NOT_STARTED_SESSION, "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM.");
    }
    while (true)
    {
      return;
      fetch(paramOnLoadListener);
    }
  }

  public JSONObject getFetchEntity()
  {
    return EnvironmentConfig.defaultJsonPayload(this.activity);
  }

  void handleDownloadError(int paramInt, OnLoadListener paramOnLoadListener)
  {
    if (LOG_MESSAGES.containsKey(Integer.valueOf(paramInt)));
    for (String str = (String)LOG_MESSAGES.get(Integer.valueOf(paramInt)); ; str = "RevMob did not asnwered as expected.")
    {
      Log.i("RevMob", str);
      paramOnLoadListener.onAdNotReceived(LoadError.DOWNLOAD_ERROR, str);
      return;
    }
  }

  void handleResponse(HttpResponse paramHttpResponse, OnLoadListener paramOnLoadListener)
  {
    if (paramHttpResponse == null)
      handleDownloadError(0, paramOnLoadListener);
    while (true)
    {
      return;
      int i = paramHttpResponse.getStatusLine().getStatusCode();
      if (i != 200)
        handleDownloadError(i, paramOnLoadListener);
      Ad localAd = build(HTTPHelper.encodedResponseBody(paramHttpResponse.getEntity()));
      if (localAd == null)
      {
        Log.w("RevMob", "Error on parse response from server.");
        paramOnLoadListener.onAdNotReceived(LoadError.PARSE_FAILED, "Error on parse response from server.");
      }
      Log.d("RevMob", "Ad retrieved");
      paramOnLoadListener.onAdReceived(localAd);
    }
  }

  public void setHttpHelper(HTTPHelper paramHTTPHelper)
  {
    this.httpHelper = paramHTTPHelper;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.internal.AdFetcher
 * JD-Core Version:    0.5.3
 */