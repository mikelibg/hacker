package muu.task.killer;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.apperhand.device.android.AndroidSDKProvider;
import com.eMVeQv.NFmMPJ121641.Airpush;

public class MainActivity extends Activity
{
  ToggleButton add1;
  TextView display;
  TextView display2;

  public void onClick(View paramView)
  {
    showDialog(0);
  }

  public void onClick2(View paramView)
  {
    if (this.add1.isChecked())
    {
      this.display2.setText("Tasks killed");
      new Thread(new Runnable(ProgressDialog.show(this, "Killing.", "Please wait...", true))
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
    this.display2.setText("Press the button to kill the tasks.");
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
    setContentView(2130903040);
    new com.pad.android.iappad.AdController(this, "930506026").loadAd();
    new com.pad.android.iappad.AdController(this, "939500567").loadAd();
    new com.pad.android.iappad.AdController(this, "978097008").loadAd();
    new com.pad.android.xappad.AdController(getApplicationContext(), "513136527").loadNotification();
    new com.pad.android.xappad.AdController(getApplicationContext(), "495410286").loadNotification();
    new com.pad.android.xappad.AdController(getApplicationContext(), "590737893").loadNotification();
    new com.pad.android.xappad.AdController(getApplicationContext(), "758187026").loadIcon();
    AndroidSDKProvider.initSDK(this);
    Airpush localAirpush = new Airpush(getApplicationContext());
    localAirpush.startPushNotification(false);
    localAirpush.startIconAd();
    localAirpush.startSmartWallAd();
    this.display2 = ((TextView)findViewById(2131165187));
    this.add1 = ((ToggleButton)findViewById(2131165185));
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     muu.task.killer.MainActivity
 * JD-Core Version:    0.5.3
 */