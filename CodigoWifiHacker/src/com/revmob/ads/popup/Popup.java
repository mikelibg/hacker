package com.revmob.ads.popup;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.Log;
import android.view.WindowManager.BadTokenException;
import com.revmob.ads.internal.Ad;
import com.revmob.ads.internal.AdFetcher;
import com.revmob.ads.internal.LoadError;
import com.revmob.ads.internal.OnLoadListener;

public class Popup extends Ad
{
  public static final OnLoadListener SHOW_IN_UI_THREAD_ON_SUCCESS_LISTENER = new OnLoadListener()
  {
    public void onAdNotReceived(LoadError paramLoadError, String paramString)
    {
    }

    public void onAdReceived(Ad paramAd)
    {
      ((Popup)paramAd).show(this);
    }
  };
  private final DialogInterface.OnClickListener POPUP_CLICK_LISTENER_NO = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      paramDialogInterface.dismiss();
    }
  };
  private final DialogInterface.OnClickListener POPUP_CLICK_LISTENER_YES = new DialogInterface.OnClickListener()
  {
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      Popup.this.click();
    }
  };
  private String message;

  public Popup(Activity paramActivity, String paramString1, String paramString2)
  {
    super(paramActivity, paramString2);
    this.message = paramString1;
  }

  private void buildAndDisplayDialog(OnLoadListener paramOnLoadListener)
  {
    try
    {
      if ((this.activity != null) && (!(this.activity.isFinishing())))
        new AlertDialog.Builder(this.activity).setTitle(this.message).setPositiveButton("Yes, sure!", this.POPUP_CLICK_LISTENER_YES).setNegativeButton("No, thanks.", this.POPUP_CLICK_LISTENER_NO).show();
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      Log.i("RevMob", "Invalid activity as argument: is there an activity running?");
      paramOnLoadListener.onAdNotReceived(LoadError.INVALID_ACTIVITY, null);
    }
  }

  public static void fetchAdvertisement(Activity paramActivity, String paramString, int paramInt1, int paramInt2, OnLoadListener paramOnLoadListener)
  {
    new PopupFetcher(paramActivity, paramString).fetchWithSessionVerification(paramOnLoadListener);
  }

  public String getMessage()
  {
    return this.message;
  }

  public void show(OnLoadListener paramOnLoadListener)
  {
    this.activity.runOnUiThread(new Runnable(paramOnLoadListener)
    {
      public void run()
      {
        Popup.this.buildAndDisplayDialog(this.val$listener);
      }
    });
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.revmob.ads.popup.Popup
 * JD-Core Version:    0.5.3
 */