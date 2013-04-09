package aaa.cf.eed;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903040);
    ((TextView)findViewById(2131099648)).setText("This app is made to demo that some ExynosAbuse protections do not prevent the exploit in any useful way during startup.\n\nPlease reboot your device, unlock it as fast as possible, and watch the screen (+- 60 seconds). A toast notification will popup telling you if the exploit could be run succesfully - if it was, your device is not sufficiently protected against the \"ExynosAbuse\" exploit !\n\nIf the exploit was not succesfull, please make sure you try it at least 3 times !\n\nYou should uninstall this app after testing, because it slows down the boot process.\n\n- Chainfire\nTwitter: @ChainfireXDA\nG+: http://google.com/+Chainfire");
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     aaa.cf.eed.MainActivity
 * JD-Core Version:    0.5.3
 */