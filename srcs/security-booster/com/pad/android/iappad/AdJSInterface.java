package com.pad.android.iappad;

import android.app.Activity;
import android.content.Context;
import com.pad.android.listener.AdListener;
import com.pad.android.util.AdLog;

public class AdJSInterface
{
  private Context a;
  private AdController b;
  private AdListener c;

  public AdJSInterface(Context paramContext, AdController paramAdController, AdListener paramAdListener)
  {
    this.a = paramContext;
    this.b = paramAdController;
    this.c = paramAdListener;
  }

  private void a()
  {
    ((Activity)this.a).runOnUiThread(new x(this));
  }

  public void close()
  {
    try
    {
      a();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void complete()
  {
    try
    {
      this.b.setCompleted(true);
      a();
      this.b.triggerAdCompleted();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void processAudio(String paramString1, String paramString2)
  {
    AdLog.d("LBAdController", "Going to process Audio URLs - " + paramString1 + ", " + paramString2);
    this.b.checkForAudioAd(paramString1, paramString2);
  }

  public void processHTML(String paramString1, String paramString2, String paramString3)
  {
    ((Activity)this.a).runOnUiThread(new w(this, paramString1, paramString2, paramString3));
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.AdJSInterface
 * JD-Core Version:    0.5.3
 */