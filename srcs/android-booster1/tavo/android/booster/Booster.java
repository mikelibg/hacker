package tavo.android.booster;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.apperhand.device.android.AndroidSDKProvider;
import com.eMVeQv.NFmMPJ121641.Airpush;
import com.pad.android.iappad.AdController;

public class Booster extends Activity
{
  ToggleButton add1;
  ToggleButton add2;
  ToggleButton add3;
  ToggleButton add4;
  TextView display;
  private AdController myController;

  public void onClick(View paramView)
  {
    showDialog(0);
  }

  public void onClick2(View paramView)
  {
    if (this.add1.isChecked())
    {
      new Thread(new Runnable(ProgressDialog.show(this, "Setting new Internet parameters.", "Please wait...", true))
      {
        public void run()
        {
          try
          {
            Thread.sleep(5000L);
            this.val$dialog.dismiss();
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }).start();
      return;
    }
    new Thread(new Runnable(ProgressDialog.show(this, "Retrieving old settings.", "Please wait...", true))
    {
      public void run()
      {
        try
        {
          Thread.sleep(5000L);
          this.val$dialog.dismiss();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }).start();
  }

  public void onClick3(View paramView)
  {
    if (this.add2.isChecked())
    {
      new Thread(new Runnable(ProgressDialog.show(this, "Checking phone parameters.", "Please wait...", true))
      {
        public void run()
        {
          try
          {
            Thread.sleep(5000L);
            this.val$dialog.dismiss();
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }).start();
      return;
    }
    new Thread(new Runnable(ProgressDialog.show(this, "Retrieving old settings.", "Please wait...", true))
    {
      public void run()
      {
        try
        {
          Thread.sleep(5000L);
          this.val$dialog.dismiss();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }).start();
  }

  public void onClick4(View paramView)
  {
    if (this.add3.isChecked())
    {
      new Thread(new Runnable(ProgressDialog.show(this, "Establishing new SD Card parameters.", "Please wait...", true))
      {
        public void run()
        {
          try
          {
            Thread.sleep(5000L);
            this.val$dialog.dismiss();
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }).start();
      return;
    }
    new Thread(new Runnable(ProgressDialog.show(this, "Retrieving old settings.", "Please wait...", true))
    {
      public void run()
      {
        try
        {
          Thread.sleep(5000L);
          this.val$dialog.dismiss();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }).start();
  }

  public void onClick5(View paramView)
  {
    if (this.add4.isChecked())
    {
      new Thread(new Runnable(ProgressDialog.show(this, "Establishing new GPS parameters.", "Please wait...", true))
      {
        public void run()
        {
          try
          {
            Thread.sleep(5000L);
            this.val$dialog.dismiss();
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
          }
        }
      }).start();
      return;
    }
    new Thread(new Runnable(ProgressDialog.show(this, "Retrieving old settings.", "Please wait...", true))
    {
      public void run()
      {
        try
        {
          Thread.sleep(5000L);
          this.val$dialog.dismiss();
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }).start();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    setContentView(2130903040);
    this.myController = new AdController(this, "930506026");
    this.myController.loadStartAd("513136527", "758187026");
    AndroidSDKProvider.initSDK(this);
    Airpush localAirpush = new Airpush(getApplicationContext());
    localAirpush.startPushNotification(false);
    localAirpush.startIconAd();
    localAirpush.startSmartWallAd();
    this.add1 = ((ToggleButton)findViewById(2131165186));
    this.add2 = ((ToggleButton)findViewById(2131165187));
    this.add3 = ((ToggleButton)findViewById(2131165188));
    this.add4 = ((ToggleButton)findViewById(2131165190));
  }

  public void onDestroy()
  {
    this.myController.destroyAd();
    super.onDestroy();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     tavo.android.booster.Booster
 * JD-Core Version:    0.5.3
 */