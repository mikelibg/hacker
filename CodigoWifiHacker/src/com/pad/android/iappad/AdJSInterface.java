package com.pad.android.iappad;

import android.app.Activity;
import android.content.Context;
import com.pad.android.listener.AdListener;
import com.pad.android.util.AdLog;

public class AdJSInterface
{
  private Context activity;
  private AdController controller;
  private AdListener listener;

  public AdJSInterface(Context paramContext, AdController paramAdController, AdListener paramAdListener)
  {
    this.activity = paramContext;
    this.controller = paramAdController;
    this.listener = paramAdListener;
  }

  private void closeAd()
    throws Exception
  {
    ((Activity)this.activity).runOnUiThread(new Runnable()
    {
      public void run()
      {
        AdJSInterface.this.controller.destroyAd();
      }
    });
  }

  public void close()
  {
    try
    {
      closeAd();
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
      this.controller.setCompleted(true);
      closeAd();
      this.controller.triggerAdCompleted();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void processHTML(String paramString)
  {
    AdLog.d("LBAdController", "Ad Count = " + paramString);
    if ((paramString != null) && (paramString.equals("0")))
    {
      this.controller.setAdDestroyed(true);
      if (this.listener == null);
    }
    try
    {
      AdLog.i("LBAdController", "onAdFailed triggered");
      this.listener.onAdFailed();
      label124: if ((this.listener == null) || (this.controller.getAdDestroyed()));
    }
    catch (Exception localException2)
    {
      try
      {
        AdLog.i("LBAdController", "onAdLoaded triggered");
        if (!(this.controller.getOnAdLoaded()))
        {
          this.listener.onAdLoaded();
          this.controller.setOnAdLoaded(true);
        }
        this.controller.setAdLoaded(true);
        return;
        localException2 = localException2;
        AdLog.i("LBAdController", "Error while calling onAdFailed");
      }
      catch (Exception localException1)
      {
        AdLog.i("LBAdController", "Error while calling onAdLoaded");
        AdLog.printStackTrace("LBAdController", localException1);
        break label124:
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.pad.android.iappad.AdJSInterface
 * JD-Core Version:    0.5.3
 */