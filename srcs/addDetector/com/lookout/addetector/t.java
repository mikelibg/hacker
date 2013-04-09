package com.lookout.addetector;

import android.app.ProgressDialog;
import android.content.Context;
import android.text.TextUtils.TruncateAt;
import android.util.Log;
import android.widget.TextView;

final class t extends ProgressDialog
{
  t(r paramr, Context paramContext)
  {
    super(paramContext);
  }

  public final void onStart()
  {
    super.onStart();
    TextView localTextView = (TextView)findViewById(16908299);
    if (localTextView != null)
    {
      localTextView.setSingleLine();
      localTextView.setEllipsize(TextUtils.TruncateAt.END);
      return;
    }
    Log.d("AdNetworkScanner", "Message is null");
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.t
 * JD-Core Version:    0.5.3
 */