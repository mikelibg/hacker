package com.pad.android.iappad;

import java.util.TimerTask;
import org.json.JSONObject;

final class s extends TimerTask
{
  public final void run()
  {
    u localu = new u(this.a, 0);
    try
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = AdController.h(this.a).getString("pollurl") + AdController.a(this.a);
      localu.execute(arrayOfString);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.s
 * JD-Core Version:    0.5.3
 */