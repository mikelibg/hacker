package com.wifi.hacker.cracker;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;

public class MyActivity extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      Intent localIntent = getIntent();
      if (localIntent == null)
        break label69;
      String str = localIntent.getAction();
      if (str == null)
        break label69;
      if (str.equals(BootReceiver.KEY_INTERSTITIAL_EXIT))
      {
        BootReceiver.showExitInterstitial(this);
        return;
      }
      if ((!(str.equals(BootReceiver.KEY_INTERSTITIAL_LETANG))) || (!(BootReceiver.shouldShowLetang(this))))
        break label69;
      label69: BootReceiver.showLetangInterstitial(this);
    }
    catch (Exception localException)
    {
      finish();
    }
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    finish();
    return true;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.MyActivity
 * JD-Core Version:    0.5.3
 */