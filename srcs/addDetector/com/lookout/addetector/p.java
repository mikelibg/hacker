package com.lookout.addetector;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;

final class p
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    try
    {
      this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.lookout&referrer=utm_source%3Daddetector%26utm_medium%3Dlabs%26utm_campaign%3Daddetector")));
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.w("AdNetworkScanner", "Market not found!", localActivityNotFoundException);
      this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://mylookout.com")));
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.p
 * JD-Core Version:    0.5.3
 */