package com.chartboost.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.ViewManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import java.net.URI;
import java.net.URLDecoder;
import org.json.JSONObject;

public class CBWebViewClient extends WebViewClient
{
  public static final String TAG = "ChartBoost AdView";
  private ChartBoost cb = null;
  private RelativeLayout cbContainer;
  private Context context = null;
  private CBDialogActivity dialogActivity = null;

  public CBWebViewClient(CBDialogActivity paramCBDialogActivity)
  {
    this.dialogActivity = paramCBDialogActivity;
    this.context = paramCBDialogActivity;
    this.cbContainer = paramCBDialogActivity.cbContainer;
    this.cb = ChartBoost.getSharedChartBoost(paramCBDialogActivity);
  }

  private void closeView()
  {
    if (this.cbContainer == null);
    while (true)
    {
      return;
      ViewManager localViewManager = (ViewManager)this.cbContainer.getParent();
      if (localViewManager != null)
        localViewManager.removeView(this.cbContainer);
      this.cbContainer = null;
      this.dialogActivity.close();
    }
  }

  private void handleChartBoostRequestForInterstitial(String paramString)
  {
    Log.w("cb", "handleChartBoostRequestForInterstitial");
    String[] arrayOfString = paramString.split("/");
    String str = arrayOfString[2];
    Log.w("cb", "function: " + str);
    if (str.equals("close"))
    {
      if (this.cb.getDelegate() != null)
        this.cb.getDelegate().didCloseInterstitial(this.dialogActivity.webView);
      closeView();
    }
    while (true)
    {
      return;
      if (!(str.equals("link")))
        continue;
      if (this.cb.getDelegate() != null)
        this.cb.getDelegate().didClickInterstitial(this.dialogActivity.webView);
      try
      {
        CBAPIRequest localCBAPIRequest = new CBAPIRequest(this.context, "api", "click");
        localCBAPIRequest.appendDeviceInfoParams();
        localCBAPIRequest.appendBodyArgument("to", this.dialogActivity.webView.getResponseContext().getString("to"));
        localCBAPIRequest.appendBodyArgument("cgn", this.dialogActivity.webView.getResponseContext().getString("cgn"));
        localCBAPIRequest.appendBodyArgument("creative", this.dialogActivity.webView.getResponseContext().getString("creative"));
        localCBAPIRequest.sign(this.cb.getAppId(), this.cb.getAppSignature());
        Log.w("cb", "decoding: " + arrayOfString[3]);
        RegisterClickConnection localRegisterClickConnection = new RegisterClickConnection(this.context);
        localRegisterClickConnection.shouldShowProgress = true;
        localRegisterClickConnection.data = URLDecoder.decode(arrayOfString[3], "UTF-8");
        localRegisterClickConnection.execute(new CBAPIRequest[] { localCBAPIRequest });
        Log.w("cb", "sending request click request");
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  // ERROR //
  private void handleChartBoostRequestForMoreApps(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 79
    //   3: invokevirtual 85	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   6: astore_2
    //   7: aload_2
    //   8: iconst_2
    //   9: aaload
    //   10: astore_3
    //   11: aload_3
    //   12: ldc 100
    //   14: invokevirtual 104	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +35 -> 52
    //   20: aload_0
    //   21: getfield 27	com/chartboost/sdk/CBWebViewClient:cb	Lcom/chartboost/sdk/ChartBoost;
    //   24: invokevirtual 108	com/chartboost/sdk/ChartBoost:getDelegate	()Lcom/chartboost/sdk/ChartBoostDelegate;
    //   27: ifnull +20 -> 47
    //   30: aload_0
    //   31: getfield 27	com/chartboost/sdk/CBWebViewClient:cb	Lcom/chartboost/sdk/ChartBoost;
    //   34: invokevirtual 108	com/chartboost/sdk/ChartBoost:getDelegate	()Lcom/chartboost/sdk/ChartBoostDelegate;
    //   37: aload_0
    //   38: getfield 25	com/chartboost/sdk/CBWebViewClient:dialogActivity	Lcom/chartboost/sdk/CBDialogActivity;
    //   41: getfield 112	com/chartboost/sdk/CBDialogActivity:webView	Lcom/chartboost/sdk/CBWebView;
    //   44: invokevirtual 203	com/chartboost/sdk/ChartBoostDelegate:didCloseMoreApps	(Landroid/view/View;)V
    //   47: aload_0
    //   48: invokespecial 51	com/chartboost/sdk/CBWebViewClient:closeView	()V
    //   51: return
    //   52: aload_3
    //   53: ldc 119
    //   55: invokevirtual 104	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifeq -7 -> 51
    //   61: aload_0
    //   62: getfield 27	com/chartboost/sdk/CBWebViewClient:cb	Lcom/chartboost/sdk/ChartBoost;
    //   65: invokevirtual 108	com/chartboost/sdk/ChartBoost:getDelegate	()Lcom/chartboost/sdk/ChartBoostDelegate;
    //   68: ifnull +20 -> 88
    //   71: aload_0
    //   72: getfield 27	com/chartboost/sdk/CBWebViewClient:cb	Lcom/chartboost/sdk/ChartBoost;
    //   75: invokevirtual 108	com/chartboost/sdk/ChartBoost:getDelegate	()Lcom/chartboost/sdk/ChartBoostDelegate;
    //   78: aload_0
    //   79: getfield 25	com/chartboost/sdk/CBWebViewClient:dialogActivity	Lcom/chartboost/sdk/CBDialogActivity;
    //   82: getfield 112	com/chartboost/sdk/CBDialogActivity:webView	Lcom/chartboost/sdk/CBWebView;
    //   85: invokevirtual 206	com/chartboost/sdk/ChartBoostDelegate:didClickMoreApps	(Landroid/view/View;)V
    //   88: new 124	com/chartboost/sdk/CBAPIRequest
    //   91: dup
    //   92: aload_0
    //   93: getfield 23	com/chartboost/sdk/CBWebViewClient:context	Landroid/content/Context;
    //   96: ldc 126
    //   98: ldc 128
    //   100: invokespecial 131	com/chartboost/sdk/CBAPIRequest:<init>	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   103: astore 4
    //   105: aload 4
    //   107: invokevirtual 134	com/chartboost/sdk/CBAPIRequest:appendDeviceInfoParams	()V
    //   110: new 144	org/json/JSONObject
    //   113: dup
    //   114: new 208	org/json/JSONTokener
    //   117: dup
    //   118: aload_2
    //   119: iconst_4
    //   120: aaload
    //   121: ldc 178
    //   123: invokestatic 184	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   126: invokespecial 209	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   129: invokespecial 212	org/json/JSONObject:<init>	(Lorg/json/JSONTokener;)V
    //   132: astore 6
    //   134: aload 4
    //   136: ldc 136
    //   138: aload 6
    //   140: ldc 136
    //   142: invokevirtual 148	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   145: invokevirtual 152	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   148: aload 4
    //   150: ldc 154
    //   152: aload 6
    //   154: ldc 154
    //   156: invokevirtual 148	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   159: invokevirtual 152	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload 4
    //   164: ldc 156
    //   166: aload 6
    //   168: ldc 156
    //   170: invokevirtual 148	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   173: invokevirtual 152	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   176: aload 4
    //   178: ldc 214
    //   180: aload 6
    //   182: ldc 214
    //   184: invokevirtual 148	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   187: invokevirtual 152	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   190: aload 4
    //   192: ldc 216
    //   194: aload 6
    //   196: ldc 216
    //   198: invokevirtual 148	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   201: invokevirtual 152	com/chartboost/sdk/CBAPIRequest:appendBodyArgument	(Ljava/lang/String;Ljava/lang/String;)V
    //   204: aload 4
    //   206: aload_0
    //   207: getfield 27	com/chartboost/sdk/CBWebViewClient:cb	Lcom/chartboost/sdk/ChartBoost;
    //   210: invokevirtual 159	com/chartboost/sdk/ChartBoost:getAppId	()Ljava/lang/String;
    //   213: aload_0
    //   214: getfield 27	com/chartboost/sdk/CBWebViewClient:cb	Lcom/chartboost/sdk/ChartBoost;
    //   217: invokevirtual 162	com/chartboost/sdk/ChartBoost:getAppSignature	()Ljava/lang/String;
    //   220: invokevirtual 165	com/chartboost/sdk/CBAPIRequest:sign	(Ljava/lang/String;Ljava/lang/String;)V
    //   223: new 169	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection
    //   226: dup
    //   227: aload_0
    //   228: aload_0
    //   229: getfield 23	com/chartboost/sdk/CBWebViewClient:context	Landroid/content/Context;
    //   232: invokespecial 172	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:<init>	(Lcom/chartboost/sdk/CBWebViewClient;Landroid/content/Context;)V
    //   235: astore 12
    //   237: aload 12
    //   239: iconst_1
    //   240: putfield 176	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:shouldShowProgress	Z
    //   243: aload 12
    //   245: aload_2
    //   246: iconst_3
    //   247: aaload
    //   248: ldc 178
    //   250: invokestatic 184	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   253: putfield 188	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:data	Ljava/lang/Object;
    //   256: aload 12
    //   258: iconst_1
    //   259: anewarray 124	com/chartboost/sdk/CBAPIRequest
    //   262: dup
    //   263: iconst_0
    //   264: aload 4
    //   266: aastore
    //   267: invokevirtual 192	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:execute	([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   270: pop
    //   271: goto -220 -> 51
    //   274: astore 5
    //   276: aload 5
    //   278: invokevirtual 197	java/lang/Exception:printStackTrace	()V
    //   281: goto -230 -> 51
    //   284: astore 11
    //   286: goto -82 -> 204
    //   289: astore 10
    //   291: goto -101 -> 190
    //   294: astore 9
    //   296: goto -120 -> 176
    //   299: astore 8
    //   301: goto -139 -> 162
    //   304: astore 7
    //   306: goto -158 -> 148
    //
    // Exception table:
    //   from	to	target	type
    //   88	134	274	java/lang/Exception
    //   134	148	274	java/lang/Exception
    //   148	162	274	java/lang/Exception
    //   162	176	274	java/lang/Exception
    //   176	190	274	java/lang/Exception
    //   190	204	274	java/lang/Exception
    //   204	271	274	java/lang/Exception
    //   190	204	284	org/json/JSONException
    //   176	190	289	org/json/JSONException
    //   162	176	294	org/json/JSONException
    //   148	162	299	org/json/JSONException
    //   134	148	304	org/json/JSONException
  }

  private void openUrl(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    Log.i("ChartBoost AdView", "Sideloading URL: " + paramString);
    this.context.startActivity(localIntent);
  }

  protected void handleChartBoostRequest(String paramString)
  {
    Log.i("ChartBoost AdView", "Handling chartboost:// request: " + paramString);
    if (this.dialogActivity.webView.getType() == CBWebView.CBViewType.CBViewTypeInterstitial)
      handleChartBoostRequestForInterstitial(paramString);
    while (true)
    {
      return;
      if (this.dialogActivity.webView.getType() != CBWebView.CBViewType.CBViewTypeMoreApps)
        continue;
      handleChartBoostRequestForMoreApps(paramString);
    }
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    CBWebView localCBWebView = (CBWebView)paramWebView;
    if (localCBWebView.getState() == CBWebView.CBViewState.CBViewStateWaitingForDisplay)
    {
      localCBWebView.setState(CBWebView.CBViewState.CBViewStateOther);
      if (localCBWebView.getType() != CBWebView.CBViewType.CBViewTypeInterstitial)
        break label115;
      if ((this.cb.getDelegate() == null) || (this.cb.getDelegate().shouldDisplayInterstitial(localCBWebView)))
        break label67;
      closeView();
    }
    label66: return;
    if (this.cbContainer != null)
    {
      label67: Log.i("ChartBoost AdView", "Got an interstitial, adding to view!");
      this.cbContainer.removeAllViews();
      this.cbContainer.addView(localCBWebView);
      this.cbContainer.invalidate();
    }
    while (true)
    {
      localCBWebView.setState(CBWebView.CBViewState.CBViewStateDisplayedByDefaultController);
      break label66:
      label115: if (localCBWebView.getType() != CBWebView.CBViewType.CBViewTypeMoreApps)
        continue;
      if ((this.cb.getDelegate() != null) && (!(this.cb.getDelegate().shouldDisplayMoreApps(localCBWebView))))
        closeView();
      if (this.cbContainer == null)
        continue;
      Log.i("ChartBoost AdView", "Got More Apps, adding to view!");
      this.cbContainer.removeAllViews();
      this.cbContainer.addView(localCBWebView);
      this.cbContainer.invalidate();
    }
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    int i = 0;
    try
    {
      URI localURI = new URI(paramString);
      if (localURI.getScheme().equals("file"))
      {
        i = 0;
        break label63:
      }
      boolean bool = localURI.getScheme().equals("chartboost");
      i = 0;
      if (bool)
      {
        handleChartBoostRequest(paramString);
        i = 1;
      }
    }
    catch (Exception localException)
    {
    }
    label63: return i;
  }

  private class RegisterClickConnection extends CBAPIConnection
  {
    public RegisterClickConnection(Context paramContext)
    {
      super(paramContext);
    }

    // ERROR //
    protected void onPostExecute(JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: aload_1
      //   2: invokevirtual 20	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:validateJson	(Lorg/json/JSONObject;)V
      //   5: aload_0
      //   6: getfield 24	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:data	Ljava/lang/Object;
      //   9: ifnull +27 -> 36
      //   12: aload_0
      //   13: getfield 24	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:data	Ljava/lang/Object;
      //   16: instanceof 26
      //   19: ifeq +17 -> 36
      //   22: aload_0
      //   23: getfield 10	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:this$0	Lcom/chartboost/sdk/CBWebViewClient;
      //   26: aload_0
      //   27: getfield 24	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:data	Ljava/lang/Object;
      //   30: checkcast 26	java/lang/String
      //   33: invokestatic 32	com/chartboost/sdk/CBWebViewClient:access$0	(Lcom/chartboost/sdk/CBWebViewClient;Ljava/lang/String;)V
      //   36: aload_0
      //   37: aload_1
      //   38: invokespecial 34	com/chartboost/sdk/CBAPIConnection:onPostExecute	(Lorg/json/JSONObject;)V
      //   41: aload_0
      //   42: getfield 10	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:this$0	Lcom/chartboost/sdk/CBWebViewClient;
      //   45: invokestatic 38	com/chartboost/sdk/CBWebViewClient:access$1	(Lcom/chartboost/sdk/CBWebViewClient;)Lcom/chartboost/sdk/CBDialogActivity;
      //   48: getfield 44	com/chartboost/sdk/CBDialogActivity:webView	Lcom/chartboost/sdk/CBWebView;
      //   51: invokevirtual 50	com/chartboost/sdk/CBWebView:getState	()Lcom/chartboost/sdk/CBWebView$CBViewState;
      //   54: getstatic 56	com/chartboost/sdk/CBWebView$CBViewState:CBViewStateDisplayedByDefaultController	Lcom/chartboost/sdk/CBWebView$CBViewState;
      //   57: if_acmpne +18 -> 75
      //   60: ldc 58
      //   62: ldc 60
      //   64: invokestatic 66	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   67: pop
      //   68: aload_0
      //   69: getfield 10	com/chartboost/sdk/CBWebViewClient$RegisterClickConnection:this$0	Lcom/chartboost/sdk/CBWebViewClient;
      //   72: invokestatic 70	com/chartboost/sdk/CBWebViewClient:access$2	(Lcom/chartboost/sdk/CBWebViewClient;)V
      //   75: return
      //   76: astore_3
      //   77: aload_0
      //   78: aload_1
      //   79: invokespecial 34	com/chartboost/sdk/CBAPIConnection:onPostExecute	(Lorg/json/JSONObject;)V
      //   82: goto -41 -> 41
      //   85: astore_2
      //   86: aload_0
      //   87: aload_1
      //   88: invokespecial 34	com/chartboost/sdk/CBAPIConnection:onPostExecute	(Lorg/json/JSONObject;)V
      //   91: aload_2
      //   92: athrow
      //
      // Exception table:
      //   from	to	target	type
      //   0	36	76	java/lang/Exception
      //   0	36	85	finally
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBWebViewClient
 * JD-Core Version:    0.5.3
 */