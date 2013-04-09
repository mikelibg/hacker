package com.pad.android.richmedia.view;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import com.pad.android.util.AdLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

final class q extends AsyncTask
{
  private String a;
  private String b;
  private InputStream c = null;

  public q(AdView paramAdView, String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  private Void a()
  {
    try
    {
      URL localURL = new URL(this.a);
      localURL.getFile();
      if (this.a.startsWith("file:///android_asset/"))
      {
        String str = this.a.replace("file:///android_asset/", "");
        this.c = this.d.getContext().getAssets().open(str);
        return null;
      }
      this.c = localURL.openStream();
      return null;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      return null;
    }
    catch (IOException localIOException)
    {
      AdLog.e("LBAdController", "IOStateException - " + localIOException.getMessage());
      AdLog.printStackTrace("LBAdController", localIOException);
    }
    return null;
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.q
 * JD-Core Version:    0.5.3
 */