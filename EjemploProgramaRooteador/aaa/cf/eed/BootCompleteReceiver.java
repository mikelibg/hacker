package aaa.cf.eed;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class BootCompleteReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.e("ExynosExploitDemo", "[ExynosExploitDemo] Received BOOT_COMPLETE");
    BackgroundIntentService.performAction(paramContext, "boot_complete");
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     aaa.cf.eed.BootCompleteReceiver
 * JD-Core Version:    0.5.3
 */