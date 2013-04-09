package com.lookout.addetector;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class o
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", this.a.getString(2130968582));
    localIntent.putExtra("android.intent.extra.TEXT", this.a.getString(2130968583));
    this.a.startActivity(Intent.createChooser(localIntent, this.a.getString(2130968584)));
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.o
 * JD-Core Version:    0.5.3
 */