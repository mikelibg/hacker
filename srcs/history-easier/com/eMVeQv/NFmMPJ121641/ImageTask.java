package com.eMVeQv.NFmMPJ121641;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.util.Log;
import java.net.HttpURLConnection;
import java.net.URL;

final class ImageTask extends AsyncTask<Void, Void, Void>
{
  final String IMAGE_URL;
  Bitmap bmpicon = null;
  final AsyncTaskCompleteListener<Bitmap> listener;

  public ImageTask(String paramString, AsyncTaskCompleteListener<Bitmap> paramAsyncTaskCompleteListener)
  {
    this.IMAGE_URL = paramString;
    this.listener = paramAsyncTaskCompleteListener;
  }

  protected Void doInBackground(Void[] paramArrayOfVoid)
  {
    HttpURLConnection localHttpURLConnection = null;
    try
    {
      localHttpURLConnection = (HttpURLConnection)new URL(this.IMAGE_URL).openConnection();
      localHttpURLConnection.setRequestMethod("GET");
      localHttpURLConnection.setConnectTimeout(20000);
      localHttpURLConnection.setReadTimeout(20000);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setDefaultUseCaches(false);
      localHttpURLConnection.connect();
      if (localHttpURLConnection.getResponseCode() == 200)
        this.bmpicon = BitmapFactory.decodeStream(localHttpURLConnection.getInputStream());
      return null;
    }
    catch (Exception localException)
    {
      Log.e("AirpushSDK", "Network Error, please try again later");
    }
    finally
    {
      if (localHttpURLConnection != null)
        localHttpURLConnection.disconnect();
    }
  }

  protected void onPostExecute(Void paramVoid)
  {
    if (this.listener == null)
      return;
    this.listener.onTaskComplete(this.bmpicon);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.eMVeQv.NFmMPJ121641.ImageTask
 * JD-Core Version:    0.5.3
 */