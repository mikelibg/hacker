package com.pad.android.richmedia.view;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

final class b
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    WebView localWebView = (WebView)this.a.findViewById(101);
    if (localWebView.canGoBack())
    {
      localWebView.goBack();
      return;
    }
    this.a.finish();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.b
 * JD-Core Version:    0.5.3
 */