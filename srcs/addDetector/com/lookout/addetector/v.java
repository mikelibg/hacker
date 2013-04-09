package com.lookout.addetector;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class v
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", this.a.getString(2130968582));
    int i;
    if (ScannerResultsActivity.b(this.a) > 0)
    {
      ScannerResultsActivity localScannerResultsActivity1 = this.a;
      Object[] arrayOfObject1 = new Object[1];
      ScannerResultsActivity localScannerResultsActivity2 = this.a;
      if (ScannerResultsActivity.b(this.a) == 1)
      {
        i = 2130968588;
        label76: Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(ScannerResultsActivity.b(this.a));
        arrayOfObject1[0] = localScannerResultsActivity2.getString(i, arrayOfObject2);
        localIntent.putExtra("android.intent.extra.TEXT", localScannerResultsActivity1.getString(2130968585, arrayOfObject1));
      }
    }
    while (true)
    {
      this.a.startActivity(Intent.createChooser(localIntent, this.a.getString(2130968584)));
      return;
      i = 2130968587;
      break label76:
      localIntent.putExtra("android.intent.extra.TEXT", this.a.getString(2130968586));
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.v
 * JD-Core Version:    0.5.3
 */