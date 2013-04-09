package com.pad.android.iappad;

import android.os.AsyncTask;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdUtilFuncs;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

final class u extends AsyncTask
{
  private String a(String[] paramArrayOfString)
  {
    String str = "0";
    if (paramArrayOfString[0] != null)
      AdLog.d("LBAdController", "Polling...");
    try
    {
      HttpResponse localHttpResponse = new DefaultHttpClient().execute(new HttpGet(paramArrayOfString[0] + AdController.a(this.a)));
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if (localHttpEntity != null)
        {
          InputStream localInputStream = localHttpEntity.getContent();
          str = AdUtilFuncs.convertStreamToString(localInputStream);
          AdLog.d("LBAdController", "Polling Result - " + str);
          localInputStream.close();
        }
      }
      return str;
    }
    catch (Exception localException)
    {
    }
    return str;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.u
 * JD-Core Version:    0.5.3
 */