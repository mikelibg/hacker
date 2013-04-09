package com.millennialmedia.android;

import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;

class HttpHeadRequest
{
  protected String locationString;
  protected String response;
  protected URI uri;

  String sendRequest(String paramString)
  {
    try
    {
      URL localURL = new URL(paramString);
      HttpURLConnection.setFollowRedirects(false);
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURL.openConnection();
      localHttpURLConnection.connect();
      MMAdViewSDK.Log.v("Response Code:" + localHttpURLConnection.getResponseCode());
      MMAdViewSDK.Log.v("Response Message:" + localHttpURLConnection.getResponseMessage());
      MMAdViewSDK.Log.v("Location Header:" + localHttpURLConnection.getHeaderField("Location"));
      this.response = localHttpURLConnection.getHeaderField("Location");
      return this.response;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.HttpHeadRequest
 * JD-Core Version:    0.5.3
 */