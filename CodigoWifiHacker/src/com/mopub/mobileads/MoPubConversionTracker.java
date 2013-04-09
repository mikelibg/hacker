package com.mopub.mobileads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.provider.Settings.Secure;
import android.util.Log;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class MoPubConversionTracker
{
  private static String TRACK_HANDLER;
  private static String TRACK_HOST = "ads.mopub.com";
  private Context mContext;
  private String mPackageName;
  Runnable mTrackOpen = new Runnable()
  {
    public void run()
    {
      StringBuilder localStringBuilder = new StringBuilder("http://" + MoPubConversionTracker.TRACK_HOST + MoPubConversionTracker.TRACK_HANDLER);
      localStringBuilder.append("?v=6&id=" + MoPubConversionTracker.this.mPackageName);
      String str1 = Settings.Secure.getString(MoPubConversionTracker.this.mContext.getContentResolver(), "android_id");
      String str2;
      if (str1 == null)
        str2 = "";
      while (true)
      {
        localStringBuilder.append("&udid=sha:" + str2);
        String str3 = localStringBuilder.toString();
        Log.d("MoPub", "Conversion track: " + str3);
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
        HttpResponse localHttpResponse;
        try
        {
          localHttpResponse = localDefaultHttpClient.execute(new HttpGet(str3));
          if (localHttpResponse.getStatusLine().getStatusCode() == 200)
            break label264;
          Log.d("MoPub", "Conversion track failed: Status code != 200");
          label197: return;
          label264: str2 = Utils.sha1(str1);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          Log.d("MoPub", "Conversion track failed (IllegalArgumentException): " + str3);
          break label197:
        }
        catch (ClientProtocolException localClientProtocolException)
        {
          Log.d("MoPub", "Conversion track failed: ClientProtocolException (no signal?)");
          break label197:
        }
        catch (IOException localIOException)
        {
          Log.d("MoPub", "Conversion track failed: IOException (no signal?)");
          break label197:
          HttpEntity localHttpEntity = localHttpResponse.getEntity();
          if ((localHttpEntity == null) || (localHttpEntity.getContentLength() == 0L))
            Log.d("MoPub", "Conversion track failed: Response was empty");
          Log.d("MoPub", "Conversion track successful");
          MoPubConversionTracker.this.mContext.getSharedPreferences("mopubSettings", 0).edit().putBoolean(MoPubConversionTracker.this.mPackageName + " tracked", true).commit();
          break label197:
        }
      }
    }
  };

  static
  {
    TRACK_HANDLER = "/m/open";
  }

  public void reportAppOpen(Context paramContext)
  {
    if (paramContext == null);
    while (true)
    {
      return;
      this.mContext = paramContext;
      this.mPackageName = this.mContext.getPackageName();
      if (!(this.mContext.getSharedPreferences("mopubSettings", 0).getBoolean(this.mPackageName + " tracked", false)))
        new Thread(this.mTrackOpen).start();
      Log.d("MoPub", "Conversion already tracked");
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.MoPubConversionTracker
 * JD-Core Version:    0.5.3
 */