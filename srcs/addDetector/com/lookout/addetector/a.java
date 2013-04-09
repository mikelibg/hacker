package com.lookout.addetector;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class a
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    try
    {
      this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.b)));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
      localBuilder.setTitle(2130968784);
      localBuilder.setPositiveButton(17039370, null);
      localBuilder.create().show();
      Log.e("AdNetworkScanner", "optOutPath not found!", localActivityNotFoundException);
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.a
 * JD-Core Version:    0.5.3
 */