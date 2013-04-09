package com.pad.android.richmedia.view;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup.LayoutParams;

final class h extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    switch (paramMessage.what)
    {
    default:
    case 1005:
    case 1000:
    case 1001:
    case 1002:
    case 1003:
    case 1004:
    case 1006:
    case 1008:
    case 1007:
    case 1009:
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      if (AdView.a(this.a) == null)
        continue;
      AdView.a(this.a).onExpandClose();
      continue;
      AdView.a(this.a, AdView.ViewState.RESIZED);
      ViewGroup.LayoutParams localLayoutParams = this.a.getLayoutParams();
      localLayoutParams.height = localBundle.getInt("resize_height", localLayoutParams.height);
      localLayoutParams.width = localBundle.getInt("resize_width", localLayoutParams.width);
      String str4 = "window.ormmaview.fireChangeEvent({ state: 'resized', size: { width: " + localLayoutParams.width + ", height: " + localLayoutParams.height + "}});";
      this.a.injectJavaScript(str4);
      this.a.requestLayout();
      if (AdView.a(this.a) == null)
        continue;
      AdView.a(this.a).onResize();
      continue;
      switch (a()[AdView.b(this.a).ordinal()])
      {
      default:
        break;
      case 2:
        AdView.c(this.a);
        break;
      case 3:
      }
      this.a.a();
      continue;
      this.a.setVisibility(4);
      this.a.injectJavaScript("window.ormmaview.fireChangeEvent({ state: 'hidden' });");
      continue;
      this.a.injectJavaScript("window.ormmaview.fireChangeEvent({ state: 'default' });");
      this.a.setVisibility(0);
      continue;
      AdView.a(this.a, localBundle);
      continue;
      AdView.a(this.a, AdView.ViewState.LEFT_BEHIND);
      continue;
      this.a.playAudioImpl(localBundle);
      continue;
      this.a.playVideoImpl(localBundle);
      continue;
      String str1 = localBundle.getString("message");
      String str2 = localBundle.getString("action");
      String str3 = "window.ormmaview.fireErrorEvent(\"" + str1 + "\", \"" + str2 + "\")";
      this.a.injectJavaScript(str3);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.h
 * JD-Core Version:    0.5.3
 */