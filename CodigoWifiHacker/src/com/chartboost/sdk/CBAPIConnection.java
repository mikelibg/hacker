package com.chartboost.sdk;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.AsyncTask;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.KeyStore;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class CBAPIConnection extends AsyncTask<CBAPIRequest, Void, JSONObject>
{
  private static final String CB_DEFAULT_ENDPOINT = "https://www.chartboost.com/";
  public static final int DEFAULT_CONNECT_TIMEOUT = 30000;
  public static final int DEFAULT_READ_TIMEOUT = 30000;
  public static final int MIN_TIMEOUT = 10000;
  protected Context context = null;
  public Object data;
  private String endpoint;
  private HttpClient httpClient;
  public String loadingMessage = "Loading...";
  private ProgressDialog progressDialog = null;
  public boolean shouldShowProgress = false;

  public CBAPIConnection(Context paramContext)
  {
    this.context = paramContext;
    setEndpoint("https://www.chartboost.com/");
    this.httpClient = createHttpClient();
  }

  private HttpClient createHttpClient()
  {
    DefaultHttpClient localDefaultHttpClient;
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      TrustingSocketFactory localTrustingSocketFactory = new TrustingSocketFactory(localKeyStore);
      localTrustingSocketFactory.setHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", localTrustingSocketFactory, 443));
      ThreadSafeClientConnManager localThreadSafeClientConnManager = new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry);
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, ChartBoost.getSharedChartBoost(this.context).getTimeoutConnect());
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, ChartBoost.getSharedChartBoost(this.context).getTimeoutRead());
      localDefaultHttpClient = new DefaultHttpClient(localThreadSafeClientConnManager, localBasicHttpParams);
      return localDefaultHttpClient;
    }
    catch (Exception localException)
    {
      localDefaultHttpClient = new DefaultHttpClient();
    }
  }

  protected JSONObject doInBackground(CBAPIRequest[] paramArrayOfCBAPIRequest)
  {
    CBAPIRequest localCBAPIRequest = paramArrayOfCBAPIRequest[0];
    String str1 = getEndpoint() + localCBAPIRequest.getController() + "/" + localCBAPIRequest.getAction() + ".json";
    Map localMap1 = localCBAPIRequest.getQuery();
    Object localObject;
    Iterator localIterator2;
    if (localMap1 != null)
    {
      localObject = "";
      localIterator2 = localMap1.keySet().iterator();
      label75: if (localIterator2.hasNext())
        break label343;
      str1 = str1 + "?" + ((String)localObject);
    }
    HttpPost localHttpPost = new HttpPost(str1);
    Map localMap2 = localCBAPIRequest.getBody();
    ArrayList localArrayList;
    Iterator localIterator1;
    if (localMap2 != null)
    {
      localArrayList = new ArrayList();
      localIterator1 = localMap2.keySet().iterator();
      label154: if (localIterator1.hasNext())
        break label435;
    }
    label182: HttpClient localHttpClient;
    try
    {
      UrlEncodedFormEntity localUrlEncodedFormEntity = new UrlEncodedFormEntity(localArrayList);
      localHttpPost.setEntity(localUrlEncodedFormEntity);
      label546: label435: label340: label343: label493: localHttpClient = this.httpClient;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      HttpResponse localHttpResponse;
      JSONObject localJSONObject1;
      try
      {
        StringBuilder localStringBuilder;
        String str3;
        while (true)
        {
          localHttpResponse = localHttpClient.execute(localHttpPost);
          int i = localHttpResponse.getStatusLine().getStatusCode();
          if ((i >= 300) || (i < 200))
            break label546;
          BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpResponse.getEntity().getContent(), "UTF-8"));
          localStringBuilder = new StringBuilder();
          str3 = localBufferedReader.readLine();
          if (str3 != null)
            break label493;
          JSONTokener localJSONTokener = new JSONTokener(localStringBuilder.toString());
          JSONObject localJSONObject2 = new JSONObject(localJSONTokener);
          Log.i("ChartBoost", "Request response received: " + localJSONObject2.optString("message"));
          localJSONObject1 = localJSONObject2;
          return localJSONObject1;
          String str4 = (String)localIterator2.next();
          String str5 = (String)localMap1.get(str4);
          try
          {
            String str6 = localObject + URLEncoder.encode(str4, "UTF-8") + "=" + URLEncoder.encode(str5, "UTF-8") + "&";
            localObject = str6;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException2)
          {
            localUnsupportedEncodingException2.printStackTrace();
          }
        }
        break label75:
        String str2 = (String)localIterator1.next();
        BasicNameValuePair localBasicNameValuePair = new BasicNameValuePair(str2, (String)localMap2.get(str2));
        localArrayList.add(localBasicNameValuePair);
        break label154:
        localUnsupportedEncodingException1 = localUnsupportedEncodingException1;
        localUnsupportedEncodingException1.printStackTrace();
        break label182:
        localStringBuilder.append(str3).append("\n");
      }
      catch (Exception localException)
      {
        Log.e("ChartBoost", "Exception on http request: " + localException.getLocalizedMessage());
        localJSONObject1 = null;
        break label340:
        Log.w("ChartBoost", "Request failed: " + localHttpResponse);
        localJSONObject1 = null;
        break label340:
      }
    }
  }

  public String getEndpoint()
  {
    return this.endpoint;
  }

  protected void onPostExecute(JSONObject paramJSONObject)
  {
    if (this.progressDialog != null);
    try
    {
      this.progressDialog.dismiss();
      this.progressDialog = null;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  protected void onPreExecute()
  {
    if (!(this.shouldShowProgress))
      return;
    this.progressDialog = ProgressDialog.show(this.context, null, this.loadingMessage, true, true, new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramDialogInterface)
      {
        CBAPIConnection.this.cancel(true);
      }
    });
  }

  public void sendRequest()
  {
  }

  public void setEndpoint(String paramString)
  {
    this.endpoint = paramString;
  }

  protected void validateJson(JSONObject paramJSONObject)
    throws JSONException, IOException
  {
    if (paramJSONObject != null)
    {
      int i = paramJSONObject.getInt("status");
      if ((i < 300) && (i >= 200))
      {
        Log.i("JSON", paramJSONObject.toString());
        return;
      }
      throw new IOException();
    }
    throw new IOException();
  }

  private class TrustingSocketFactory extends org.apache.http.conn.ssl.SSLSocketFactory
  {
    SSLContext sslContext = SSLContext.getInstance("TLS");

    public TrustingSocketFactory(KeyStore paramKeyStore)
      throws Exception
    {
      super(paramKeyStore);
      1 local1 = new X509TrustManager()
      {
        public void checkClientTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
          throws CertificateException
        {
        }

        public void checkServerTrusted(X509Certificate[] paramArrayOfX509Certificate, String paramString)
          throws CertificateException
        {
        }

        public X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      };
      this.sslContext.init(null, new TrustManager[] { local1 }, null);
    }

    public Socket createSocket()
      throws IOException
    {
      return this.sslContext.getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
      throws IOException, UnknownHostException
    {
      return this.sslContext.getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.chartboost.sdk.CBAPIConnection
 * JD-Core Version:    0.5.3
 */