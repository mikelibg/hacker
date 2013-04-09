package com.pad.android.richmedia.view;

import android.app.Activity;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.util.Log;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.VideoView;

final class p extends WebChromeClient
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener
{
  private VideoView a;
  private RelativeLayout b;
  private FrameLayout c;
  private WebChromeClient.CustomViewCallback d;
  private Context e;

  public p(AdView paramAdView, Context paramContext)
  {
    new FrameLayout.LayoutParams(-2, -2, 17);
    this.e = paramContext;
  }

  public final View getVideoLoadingProgressView()
  {
    return new ProgressBar(this.e);
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.stop();
    this.c.setVisibility(8);
    onHideCustomView();
    ((Activity)this.e).setContentView(this.b);
  }

  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    Log.d("LBAdView", "Console Message - " + paramConsoleMessage.message() + ", Line Number = " + paramConsoleMessage.lineNumber() + ", Source = " + paramConsoleMessage.sourceId());
    return true;
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    ((Activity)this.e).setContentView(this.b);
    return true;
  }

  public final void onHideCustomView()
  {
    if (this.a == null)
      return;
    this.a.setVisibility(8);
    this.c.removeView(this.a);
    this.a = null;
    this.c.setVisibility(8);
    this.d.onCustomViewHidden();
    this.b.setVisibility(0);
  }

  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }

  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    return super.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
  }

  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    Log.d("AdView", "onShowCustomView called");
    if (!(paramView instanceof FrameLayout))
      return;
    Log.d("AdView", "view is FrameLayout instance");
    this.c = ((FrameLayout)paramView);
    this.d = paramCustomViewCallback;
    this.b = ((RelativeLayout)this.f.a.getParent());
    if (!(this.c.getFocusedChild() instanceof VideoView))
      return;
    Log.d("AdView", "VideoView instance");
    this.a = ((VideoView)this.c.getFocusedChild());
    this.b.setVisibility(8);
    this.c.setVisibility(0);
    ((Activity)this.e).setContentView(this.c);
    this.a.setOnCompletionListener(this);
    this.a.setOnErrorListener(this);
    this.a.start();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.p
 * JD-Core Version:    0.5.3
 */