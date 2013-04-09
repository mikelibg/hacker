package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import java.math.BigDecimal;
import java.util.Map;
import org.json.JSONObject;

public class CBAnalytics
{
  public static final String TAG = "ChartBoost Analytics";
  private static CBAnalytics sharedAnalytics = null;
  private Activity activity;
  private Context context;

  public static CBAnalytics getSharedAnalytics(Activity paramActivity)
  {
    monitorenter;
    try
    {
      if (sharedAnalytics == null)
        sharedAnalytics = new CBAnalytics();
      sharedAnalytics.context = paramActivity;
      sharedAnalytics.activity = paramActivity;
      CBAnalytics localCBAnalytics = sharedAnalytics;
      monitorexit;
      return localCBAnalytics;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  private String round(double paramDouble, int paramInt1, int paramInt2)
  {
    return new BigDecimal(paramDouble).setScale(paramInt1, paramInt2).doubleValue();
  }

  public Boolean recordPaymentTransaction(String paramString1, String paramString2, double paramDouble, String paramString3, int paramInt, Map<String, Object> paramMap)
  {
    Boolean localBoolean;
    try
    {
      ChartBoost localChartBoost = ChartBoost.getSharedChartBoost(this.activity);
      if ((localChartBoost.getAppId() == null) || (localChartBoost.getAppSignature() == null))
      {
        localBoolean = Boolean.valueOf(false);
        break label223:
      }
      CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.activity, "api", "purchase");
      localCBAPIRequest.appendDeviceInfoParams();
      localCBAPIRequest.appendBodyArgument("product_id", paramString1);
      localCBAPIRequest.appendBodyArgument("title", paramString2);
      localCBAPIRequest.appendBodyArgument("price", round(paramDouble, 2, 4));
      localCBAPIRequest.appendBodyArgument("currency", paramString3);
      localCBAPIRequest.appendBodyArgument("quantity", paramInt);
      localCBAPIRequest.appendBodyArgument("timestamp", System.currentTimeMillis() / 1000.0D);
      if (paramMap != null)
        localCBAPIRequest.appendBodyArgument("meta", new JSONObject(paramMap).toString());
      localCBAPIRequest.sign(localChartBoost.getAppId(), localChartBoost.getAppSignature());
      new TransactionConnection(this.context).execute(new CBAPIRequest[] { localCBAPIRequest });
      label209: localBoolean = Boolean.valueOf(true);
    }
    catch (Exception localException)
    {
      break label209:
    }
    label223: return localBoolean;
  }

  public Boolean trackEvent(String paramString)
  {
    trackEvent(paramString, 1.0D, null);
    return Boolean.valueOf(true);
  }

  public Boolean trackEvent(String paramString, double paramDouble)
  {
    trackEvent(paramString, paramDouble, null);
    return Boolean.valueOf(true);
  }

  public Boolean trackEvent(String paramString, double paramDouble, Map<String, Object> paramMap)
  {
    Boolean localBoolean;
    try
    {
      ChartBoost localChartBoost = ChartBoost.getSharedChartBoost(this.activity);
      if ((localChartBoost.getAppId() == null) || (localChartBoost.getAppSignature() == null))
      {
        localBoolean = Boolean.valueOf(false);
        break label191:
      }
      CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.activity, "api", "event");
      localCBAPIRequest.appendDeviceInfoParams();
      localCBAPIRequest.appendBodyArgument("key", paramString);
      localCBAPIRequest.appendBodyArgument("value", paramDouble);
      localCBAPIRequest.appendBodyArgument("timestamp", System.currentTimeMillis() / 1000.0D);
      if (paramMap != null)
        localCBAPIRequest.appendBodyArgument("meta", new JSONObject(paramMap).toString());
      localCBAPIRequest.sign(localChartBoost.getAppId(), localChartBoost.getAppSignature());
      new TransactionConnection(this.context).execute(new CBAPIRequest[] { localCBAPIRequest });
      label177: localBoolean = Boolean.valueOf(true);
    }
    catch (Exception localException)
    {
      break label177:
    }
    label191: return localBoolean;
  }

  private class TransactionConnection extends CBAPIConnection
  {
    public TransactionConnection(Context paramContext)
    {
      super(paramContext);
    }

    // ERROR //
    protected void onPostExecute(JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: invokevirtual 20	com/chartboost/sdk/CBAnalytics$TransactionConnection:validateJson	(Lorg/json/JSONObject;)V
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
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBAnalytics
 * JD-Core Version:    0.5.3
 */