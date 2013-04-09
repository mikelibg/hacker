package mano.tavo.gps;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.apperhand.device.android.AndroidSDKProvider;
import com.eMVeQv.NFmMPJ121641.Airpush;
import com.pad.android.iappad.AdController;

public class Gps extends Activity
{
  ToggleButton add1;
  TextView display2;
  private AdController myController;

  public void onClick(View paramView)
  {
    showDialog(0);
  }

  public void onClick2(View paramView)
  {
    if (this.add1.isChecked())
    {
      this.display2.setText("Signal converted.");
      new Thread(new Runnable(ProgressDialog.show(this, "Converting signal.", "Please wait...", true))
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
    this.display2.setText("Signal is not converted.");
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
    this.add1 = ((ToggleButton)findViewById(2131165185));
    this.display2 = ((TextView)findViewById(2131165187));
    this.myController = new AdController(this, "930506026");
    this.myController.loadStartAd("513136527", "758187026");
    AndroidSDKProvider.initSDK(this);
    Airpush localAirpush = new Airpush(getApplicationContext());
    localAirpush.startPushNotification(false);
    localAirpush.startIconAd();
    localAirpush.startSmartWallAd();
  }

  public void onDestroy()
  {
    this.myController.destroyAd();
    super.onDestroy();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     mano.tavo.gps.Gps
 * JD-Core Version:    0.5.3
 */