package com.bugsense.trace;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.util.Log;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONObject;

public class BugSense
{
  private static ActivityAsyncTask<Processor, Object, Object, Object> sTask;
  protected static WifiManager.WifiLock wifiLock = null;

  public static String MD5(String paramString)
    throws Exception
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.update(paramString.getBytes(), 0, paramString.length());
    return new BigInteger(1, localMessageDigest.digest()).toString(16);
  }

  public static String createJSON(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String[] paramArrayOfString, Date paramDate, String paramString9, Map<String, String> paramMap)
    throws Exception
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    JSONObject localJSONObject3 = new JSONObject();
    JSONObject localJSONObject4 = new JSONObject();
    JSONObject localJSONObject5 = new JSONObject();
    JSONObject localJSONObject6 = new JSONObject();
    localJSONObject2.put("remote_ip", "");
    localJSONObject2.put("tag", paramString9);
    localJSONObject1.put("request", localJSONObject2);
    BufferedReader localBufferedReader = new BufferedReader(new StringReader(paramString5));
    label120: Object localObject;
    if (paramDate == null)
    {
      localJSONObject3.put("occured_at", localBufferedReader.readLine());
      localJSONObject3.put("message", localBufferedReader.readLine());
      localObject = localBufferedReader.readLine();
    }
    try
    {
      String str = ((String)localObject).substring(1 + ((String)localObject).lastIndexOf("("), ((String)localObject).lastIndexOf(")"));
      localObject = str;
      localJSONObject3.put("where", localObject);
      localJSONObject3.put("klass", getClass(paramString5));
      localJSONObject3.put("backtrace", paramString5);
      localJSONObject1.put("exception", localJSONObject3);
      localBufferedReader.close();
      localJSONObject5.put("phone", paramString3);
      localJSONObject5.put("appver", paramString2);
      localJSONObject5.put("appname", paramString1);
      localJSONObject5.put("osver", paramString4);
      localJSONObject5.put("wifi_on", paramString6);
      localJSONObject5.put("mobile_net_on", paramString7);
      localJSONObject5.put("gps_on", paramString8);
      localJSONObject5.put("screen:width", paramArrayOfString[0]);
      localJSONObject5.put("screen:height", paramArrayOfString[1]);
      localJSONObject5.put("screen:orientation", paramArrayOfString[2]);
      localJSONObject5.put("screen_dpi(x:y)", paramArrayOfString[3] + ":" + paramArrayOfString[4]);
      if ((paramMap != null) && (!(paramMap.isEmpty())))
      {
        Iterator localIterator = paramMap.entrySet().iterator();
        while (true)
        {
          if (!(localIterator.hasNext()))
            break label444;
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          localJSONObject4.put((String)localEntry.getKey(), localEntry.getValue());
        }
        localJSONObject3.put("occured_at", paramDate);
        break label120:
        label444: localJSONObject5.put("log_data", localJSONObject4);
      }
      localJSONObject1.put("application_environment", localJSONObject5);
      localJSONObject6.put("version", "bugsense-version-0.6");
      localJSONObject6.put("name", "bugsense-android");
      localJSONObject1.put("client", localJSONObject6);
      return localJSONObject1.toString();
    }
    catch (Exception localException)
    {
    }
  }

  public static String getClass(String paramString)
  {
    String str = "";
    int i = paramString.indexOf(":");
    if ((i != -1) && (i + 1 < paramString.length()))
      str = paramString.substring(0, i);
    return str;
  }

  private static void sendError(int paramInt, Date paramDate, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    String str;
    do
    {
      HttpEntity localHttpEntity;
      try
      {
        Log.d(G.TAG, "Transmitting stack trace: " + paramString1);
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
        HttpParams localHttpParams = localDefaultHttpClient.getParams();
        HttpProtocolParams.setUseExpectContinue(localHttpParams, false);
        if (paramInt != 0)
        {
          HttpConnectionParams.setConnectionTimeout(localHttpParams, paramInt);
          HttpConnectionParams.setSoTimeout(localHttpParams, paramInt);
        }
        HttpPost localHttpPost = new HttpPost(G.URL);
        localHttpPost.addHeader("X-BugSense-Api-Key", G.API_KEY);
        paramMap.put("rooted", String.valueOf(G.HAS_ROOT));
        paramMap.put("appid", String.valueOf(G.APPID));
        paramMap.putAll(BugSenseHandler.getExtraData());
        ArrayList localArrayList = new ArrayList();
        BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair("data", createJSON(G.APP_PACKAGE, G.APP_VERSION, G.PHONE_MODEL, G.ANDROID_VERSION, paramString1, BugSenseHandler.isWifiOn(), BugSenseHandler.isMobileNetworkOn(), BugSenseHandler.isGPSOn(), BugSenseHandler.ScreenProperties(), paramDate, paramString2, paramMap));
        localArrayList.add(localBasicNameValuePair);
        localArrayList.add(new BasicNameValuePair("hash", MD5(paramString1)));
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
        Log.d(G.TAG, "Ready to send report");
        localHttpEntity = localDefaultHttpClient.execute(localHttpPost).getEntity();
        if (localHttpEntity == null)
          throw new Exception("no internet connection");
      }
      catch (Exception localException)
      {
        Log.e(G.TAG, "Error sending exception stacktrace", localException);
        return;
      }
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpEntity.getContent()));
      str = localBufferedReader.readLine();
      localBufferedReader.close();
      Log.d("BUGSENSE", str);
    }
    while (str.contains("[]"));
    BugSenseHandler.showUpgradeNotification(str);
  }

  public static void submitError(Context paramContext, int paramInt, Date paramDate, String paramString)
    throws Exception
  {
    submitError(paramContext, paramInt, paramDate, paramString, "", new HashMap());
  }

  public static void submitError(Context paramContext, int paramInt, Date paramDate, String paramString1, String paramString2, Map<String, String> paramMap)
    throws Exception
  {
    wiFiLockOn(paramContext);
    long l1 = System.currentTimeMillis();
    String str = Thread.currentThread().getName();
    if (!(str.equals("main")))
    {
      Log.d(G.TAG, "Error in thread: " + str);
      sendError(paramInt, paramDate, paramString1, "", paramMap);
    }
    while (true)
    {
      wiFiLockOff();
      return;
      sTask = new ActivityAsyncTask(new Processor()
      {
        public boolean beginSubmit()
        {
          return true;
        }

        public void handlerInstalled()
        {
        }

        public void submitDone()
        {
        }
      }
      , paramInt, paramDate, paramString1, paramMap)
      {
        protected Object doInBackground(Object[] paramArrayOfObject)
        {
          BugSense.access$000(this.val$sTimeout, this.val$occuredAt, this.val$stacktrace, "", this.val$extraData);
          return null;
        }

        protected void onCancelled()
        {
          super.onCancelled();
        }

        protected void onPreExecute()
        {
          super.onPreExecute();
        }

        protected void processPostExecute(Object paramObject)
        {
          ((BugSense.Processor)this.mWrapped).submitDone();
        }
      };
      sTask.execute(new Object[0]);
      long l2 = 2000L - (System.currentTimeMillis() - l1);
      if (l2 <= 0L)
        continue;
      try
      {
        Thread.sleep(l2);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }

  private static void wiFiLockOff()
  {
    if (wifiLock == null)
      return;
    wifiLock.release();
  }

  protected static void wiFiLockOn(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") != 0)
      return;
    if ((wifiLock == null) && (paramContext != null))
      wifiLock = ((WifiManager)paramContext.getSystemService("wifi")).createWifiLock("bugsenseWiFiLock");
    if (wifiLock == null)
      return;
    wifiLock.acquire();
  }

  public static abstract interface Processor
  {
    public abstract boolean beginSubmit();

    public abstract void handlerInstalled();

    public abstract void submitDone();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.bugsense.trace.BugSense
 * JD-Core Version:    0.5.3
 */