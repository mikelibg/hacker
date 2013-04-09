package com.lookout.addetector;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class s extends Handler
{
  s(r paramr, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    String str = localBundle.getString("APP_NAME");
    int i = localBundle.getInt("CURRENT_APP_INDEX");
    r.a(this.a).setProgress(i);
    r.a(this.a).setMessage(str);
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.s
 * JD-Core Version:    0.5.3
 */