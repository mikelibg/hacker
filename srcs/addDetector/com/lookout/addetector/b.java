package com.lookout.addetector;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

final class b
  implements AdapterView.OnItemClickListener
{
  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    String str = ((PackageInfo)AdNetworkDetailsActivity.a(this.a).getItem(paramInt)).packageName;
    try
    {
      if (this.a.getPackageManager().getApplicationInfo(str, 0) == null)
      {
        Log.d("AdNetworkScanner", "Couldn't find the app: " + str);
        return;
      }
      Intent localIntent = x.a(str);
      localIntent.addFlags(268435456);
      if (this.a.getPackageManager().resolveActivity(localIntent, 0) == null)
      {
        Log.d("AdNetworkScanner", "Couldn't find the activity: " + localIntent.toString());
        return;
      }
      try
      {
        this.a.startActivity(localIntent);
        return;
      }
      catch (Exception localException)
      {
        Log.d("AdNetworkScanner", "Couldn't start the activity: " + localIntent.toString(), localException);
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.b
 * JD-Core Version:    0.5.3
 */