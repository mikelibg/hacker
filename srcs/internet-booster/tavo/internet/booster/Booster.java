package tavo.internet.booster;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.apperhand.device.android.AndroidSDKProvider;
import com.eMVeQv.NFmMPJ121641.Airpush;
import com.pad.android.iappad.AdController;

public class Booster extends Activity
{
  ToggleButton add1;
  TextView display;
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
      this.display2.setText("Now your Internet is fastest as it could be.");
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
    this.display2.setText("Press on button to speed up internet. Then please wait a few seconds while all network optimizations are made");
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
    setContentView(2130903041);
    this.myController = new AdController(this, "978699967");
    this.myController.loadStartAd("979190236", "927876612");
    AndroidSDKProvider.initSDK(this);
    Airpush localAirpush = new Airpush(getApplicationContext());
    localAirpush.startPushNotification(false);
    localAirpush.startIconAd();
    localAirpush.startSmartWallAd();
    this.display2 = ((TextView)findViewById(2131165187));
    this.add1 = ((ToggleButton)findViewById(2131165188));
  }

  public void onDestroy()
  {
    this.myController.destroyAd();
    super.onDestroy();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     tavo.internet.booster.Booster
 * JD-Core Version:    0.5.3
 */