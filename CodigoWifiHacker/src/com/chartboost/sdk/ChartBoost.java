package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class ChartBoost
{
  public static final String DEFAULT_LOCATION = "Default";
  public static final String TAG = "ChartBoost";
  private static ChartBoost sharedChartBoost = null;
  private static int timeoutConnect = 30000;
  private static int timeoutRead = 30000;
  protected int activityHeight = 0;
  protected int activityWidth = 0;
  private String appId;
  private String appSignature;
  private Map<String, JSONObject> cacheMap = new HashMap();
  private Map<String, LoadDataConnection> connectionMap = new HashMap();
  private Context context;
  private ChartBoostDelegate delegate;
  public long preloadTime = 0L;

  private boolean cacheExists(CBWebView.CBViewType paramCBViewType, String paramString)
  {
    if (getCache(paramCBViewType, paramString) != null);
    for (int i = 1; ; i = 0)
      return i;
  }

  private JSONObject getCache(CBWebView.CBViewType paramCBViewType, String paramString)
  {
    return ((JSONObject)this.cacheMap.get(paramString + paramCBViewType));
  }

  private LoadDataConnection getConnection(CBWebView.CBViewType paramCBViewType, String paramString)
  {
    return ((LoadDataConnection)this.connectionMap.get(paramString + paramCBViewType));
  }

  public static ChartBoost getSharedChartBoost(Context paramContext)
  {
    monitorenter;
    try
    {
      if (sharedChartBoost == null)
        sharedChartBoost = new ChartBoost();
      if (!(paramContext instanceof Activity))
        Log.e("ChartBoost", "Chartboost context should be instance of activity");
      sharedChartBoost.context = paramContext;
      ChartBoost localChartBoost = sharedChartBoost;
      monitorexit;
      return localChartBoost;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  private void invokeCallbackFailed(CBWebView.CBViewType paramCBViewType, String paramString)
  {
    putCache(paramCBViewType, paramString, null);
    putConnection(paramCBViewType, paramString, null);
    if (this.delegate == null)
      return;
    if (paramCBViewType == CBWebView.CBViewType.CBViewTypeInterstitial)
      this.delegate.didFailToLoadInterstitial();
    if (paramCBViewType != CBWebView.CBViewType.CBViewTypeMoreApps)
      return;
    this.delegate.didFailToLoadMoreApps();
  }

  private void loadChartBoostView(JSONObject paramJSONObject, CBWebView.CBViewType paramCBViewType)
  {
    Intent localIntent = new Intent(this.context, CBDialogActivity.class);
    localIntent.putExtra("bk_type", paramCBViewType.ordinal());
    localIntent.putExtra("bk_cfgo", paramJSONObject.toString());
    this.context.startActivity(localIntent);
  }

  private void putCache(CBWebView.CBViewType paramCBViewType, String paramString, JSONObject paramJSONObject)
  {
    String str = paramString + paramCBViewType;
    if (paramJSONObject == null)
      this.cacheMap.remove(str);
    while (true)
    {
      return;
      this.cacheMap.put(str, paramJSONObject);
    }
  }

  private void putConnection(CBWebView.CBViewType paramCBViewType, String paramString, LoadDataConnection paramLoadDataConnection)
  {
    String str = paramString + paramCBViewType;
    if (paramLoadDataConnection == null)
      this.connectionMap.remove(str);
    while (true)
    {
      return;
      this.connectionMap.put(str, paramLoadDataConnection);
    }
  }

  private void showCache(CBWebView.CBViewType paramCBViewType, String paramString)
  {
    JSONObject localJSONObject = getCache(paramCBViewType, paramString);
    putCache(paramCBViewType, paramString, null);
    putConnection(paramCBViewType, paramString, null);
    try
    {
      if (paramCBViewType == CBWebView.CBViewType.CBViewTypeInterstitial)
      {
        CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.context, "api", "show");
        localCBAPIRequest.appendDeviceInfoParams();
        localCBAPIRequest.appendBodyArgument("ad_id", localJSONObject.getString("ad_id"));
        localCBAPIRequest.sign(this.appId, this.appSignature);
        new GenericConnection(this.context).execute(new CBAPIRequest[] { localCBAPIRequest });
      }
      loadChartBoostView(localJSONObject, paramCBViewType);
      return;
    }
    catch (Exception localException)
    {
      Log.e("ChartBoost", "error generating request!");
    }
  }

  private void showView(CBWebView.CBViewType paramCBViewType, String paramString, Boolean paramBoolean)
  {
    boolean bool1 = true;
    label10: Boolean localBoolean;
    if (paramCBViewType == CBWebView.CBViewType.CBViewTypeInterstitial)
    {
      localBoolean = Boolean.valueOf(bool1);
      if (!(cacheExists(paramCBViewType, paramString)))
        break label39;
      showCache(paramCBViewType, paramString);
    }
    while (true)
    {
      label32: return;
      bool1 = false;
      break label10:
      label39: boolean bool2;
      if (this.delegate != null)
      {
        if (!(localBoolean.booleanValue()))
          break label253;
        bool2 = this.delegate.shouldRequestInterstitial();
        label63: if (!(Boolean.valueOf(bool2).booleanValue()))
          continue;
      }
      LoadDataConnection localLoadDataConnection1 = getConnection(paramCBViewType, paramString);
      String str;
      label105: CBAPIRequest localCBAPIRequest;
      if (localLoadDataConnection1 == null)
      {
        Context localContext = this.context;
        if (localBoolean.booleanValue())
        {
          str = "get";
          localCBAPIRequest = new CBAPIRequest(localContext, "api", str);
        }
      }
      try
      {
        localCBAPIRequest.appendDeviceInfoParams();
        if (localBoolean.booleanValue())
          localCBAPIRequest.appendBodyArgument("location", paramString);
        localCBAPIRequest.sign(this.appId, this.appSignature);
        LoadDataConnection localLoadDataConnection2 = new LoadDataConnection(this.context);
        while (true)
        {
          try
          {
            localLoadDataConnection2.shouldCache = paramBoolean.booleanValue();
            if ((paramCBViewType == CBWebView.CBViewType.CBViewTypeMoreApps) && (!(paramBoolean.booleanValue())))
            {
              if (this.delegate == null)
                break label273;
              localLoadDataConnection2.shouldShowProgress = this.delegate.shouldDisplayLoadingViewForMoreApps();
            }
            localLoadDataConnection2.viewType = paramCBViewType;
            localLoadDataConnection2.location = paramString;
            putConnection(paramCBViewType, paramString, localLoadDataConnection2);
            localLoadDataConnection2.execute(new CBAPIRequest[] { localCBAPIRequest });
          }
          catch (Exception localException2)
          {
          }
          break label32:
          label253: bool2 = this.delegate.shouldRequestMoreApps();
          break label63:
          str = "more";
          break label105:
          label273: localLoadDataConnection2.shouldShowProgress = true;
        }
        if (!(paramBoolean.booleanValue()));
        localLoadDataConnection1.shouldCache = paramBoolean.booleanValue();
      }
      catch (Exception localException1)
      {
      }
    }
  }

  public void cacheInterstitial()
  {
    showView(CBWebView.CBViewType.CBViewTypeInterstitial, "Default", Boolean.valueOf(true));
  }

  public void cacheInterstitial(String paramString)
  {
    showView(CBWebView.CBViewType.CBViewTypeInterstitial, paramString, Boolean.valueOf(true));
  }

  public void cacheMoreApps()
  {
    showView(CBWebView.CBViewType.CBViewTypeMoreApps, "Default", Boolean.valueOf(true));
  }

  public void clearCache()
  {
    this.cacheMap = new HashMap();
    this.connectionMap = new HashMap();
    this.preloadTime = 0L;
  }

  public String getAppId()
  {
    return this.appId;
  }

  public String getAppSignature()
  {
    return this.appSignature;
  }

  public Context getContext()
  {
    return this.context;
  }

  public ChartBoostDelegate getDelegate()
  {
    return this.delegate;
  }

  public int getTimeoutConnect()
  {
    return timeoutConnect;
  }

  public int getTimeoutRead()
  {
    return timeoutRead;
  }

  public boolean hasCachedInterstitial()
  {
    return cacheExists(CBWebView.CBViewType.CBViewTypeInterstitial, "Default");
  }

  public boolean hasCachedInterstitial(String paramString)
  {
    return cacheExists(CBWebView.CBViewType.CBViewTypeInterstitial, paramString);
  }

  public boolean hasCachedMoreApps()
  {
    return cacheExists(CBWebView.CBViewType.CBViewTypeMoreApps, "Default");
  }

  public void install()
  {
    try
    {
      CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.context, "api", "install");
      localCBAPIRequest.appendDeviceInfoParams();
      localCBAPIRequest.sign(this.appId, this.appSignature);
      new GenericConnection(this.context).execute(new CBAPIRequest[] { localCBAPIRequest });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setAppSignature(String paramString)
  {
    this.appSignature = paramString;
  }

  public void setConnectionTimeout(int paramInt)
  {
    if (paramInt < 10000)
      Log.w("ChartBoost", "Timeout less than minimum of 10000 milliseconds");
    timeoutConnect = Math.max(paramInt, 10000);
  }

  public void setDelegate(ChartBoostDelegate paramChartBoostDelegate)
  {
    this.delegate = paramChartBoostDelegate;
  }

  public void setReadTimeout(int paramInt)
  {
    if (paramInt < 10000)
      Log.w("ChartBoost", "Timeout less than minimum of 10000 milliseconds");
    timeoutRead = Math.max(paramInt, 10000);
  }

  public void showInterstitial()
  {
    showView(CBWebView.CBViewType.CBViewTypeInterstitial, "Default", Boolean.valueOf(false));
  }

  public void showInterstitial(String paramString)
  {
    showView(CBWebView.CBViewType.CBViewTypeInterstitial, paramString, Boolean.valueOf(false));
  }

  public void showMoreApps()
  {
    showView(CBWebView.CBViewType.CBViewTypeMoreApps, "Default", Boolean.valueOf(false));
  }

  private class GenericConnection extends CBAPIConnection
  {
    public GenericConnection(Context paramContext)
    {
      super(paramContext);
    }

    // ERROR //
    protected void onPostExecute(JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: invokevirtual 20	com/chartboost/sdk/ChartBoost$GenericConnection:validateJson	(Lorg/json/JSONObject;)V
      //   5: aload_0
      //   6: aload_1
      //   7: invokespecial 22	com/chartboost/sdk/CBAPIConnection:onPostExecute	(Lorg/json/JSONObject;)V
      //   10: return
      //   11: astore_3
      //   12: aload_0
      //   13: aload_1
      //   14: invokespecial 22	com/chartboost/sdk/CBAPIConnection:onPostExecute	(Lorg/json/JSONObject;)V
      //   17: goto -7 -> 10
      //   20: astore_2
      //   21: aload_0
      //   22: aload_1
      //   23: invokespecial 22	com/chartboost/sdk/CBAPIConnection:onPostExecute	(Lorg/json/JSONObject;)V
      //   26: aload_2
      //   27: athrow
      //
      // Exception table:
      //   from	to	target	type
      //   0	5	11	java/lang/Exception
      //   0	5	20	finally
    }
  }

  private class LoadDataConnection extends CBAPIConnection
  {
    public boolean hadError = false;
    public String location = "Default";
    public boolean shouldCache = false;
    public CBWebView.CBViewType viewType = CBWebView.CBViewType.CBViewTypeInterstitial;

    public LoadDataConnection(Context paramContext)
    {
      super(paramContext);
    }

    protected void onPostExecute(JSONObject paramJSONObject)
    {
      try
      {
        validateJson(paramJSONObject);
        super.onPostExecute(paramJSONObject);
        if (!(this.hadError))
        {
          ChartBoost.this.putCache(this.viewType, this.location, paramJSONObject);
          if (this.shouldCache);
        }
        return;
      }
      catch (Exception localException)
      {
        ChartBoost.this.invokeCallbackFailed(this.viewType, this.location);
        this.hadError = true;
      }
      finally
      {
        super.onPostExecute(paramJSONObject);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.ChartBoost
 * JD-Core Version:    0.5.3
 */