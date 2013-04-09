package com.google.ads;

import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.google.ads.internal.AdVideoView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.f;
import java.util.HashMap;

public class aa
  implements n
{
  private static final a a = (a)a.a.b();

  protected int a(HashMap<String, String> paramHashMap, String paramString, int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    String str = (String)paramHashMap.get(paramString);
    if (str != null);
    try
    {
      float f = TypedValue.applyDimension(1, Integer.parseInt(str), paramDisplayMetrics);
      paramInt = (int)f;
      return paramInt;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      b.a("Could not parse \"" + paramString + "\" in a video gmsg: " + str);
    }
    return paramInt;
  }

  public void a(d paramd, HashMap<String, String> paramHashMap, WebView paramWebView)
  {
    String str1 = (String)paramHashMap.get("action");
    if (str1 == null)
    {
      b.a("No \"action\" parameter in a video gmsg.");
      return;
    }
    AdWebView localAdWebView;
    AdActivity localAdActivity;
    if (paramWebView instanceof AdWebView)
    {
      localAdWebView = (AdWebView)paramWebView;
      localAdActivity = localAdWebView.d();
      if (localAdActivity == null)
      {
        b.a("Could not get adActivity for a video gmsg.");
        return;
      }
    }
    else
    {
      b.a("Could not get adWebView for a video gmsg.");
      return;
    }
    boolean bool1 = str1.equals("new");
    boolean bool2 = str1.equals("position");
    if ((bool1) || (bool2))
    {
      DisplayMetrics localDisplayMetrics1 = AdUtil.a(localAdActivity);
      int i = a(paramHashMap, "x", 0, localDisplayMetrics1);
      int j = a(paramHashMap, "y", 0, localDisplayMetrics1);
      int k = a(paramHashMap, "w", -1, localDisplayMetrics1);
      int l = a(paramHashMap, "h", -1, localDisplayMetrics1);
      if ((bool1) && (localAdActivity.getAdVideoView() == null))
      {
        localAdActivity.newAdVideoView(i, j, k, l);
        return;
      }
      localAdActivity.moveAdVideoView(i, j, k, l);
      return;
    }
    AdVideoView localAdVideoView = localAdActivity.getAdVideoView();
    if (localAdVideoView == null)
    {
      a.a(localAdWebView, "onVideoEvent", "{'event': 'error', 'what': 'no_video_view'}");
      return;
    }
    if (str1.equals("click"))
    {
      DisplayMetrics localDisplayMetrics2 = AdUtil.a(localAdActivity);
      int i1 = a(paramHashMap, "x", 0, localDisplayMetrics2);
      int i2 = a(paramHashMap, "y", 0, localDisplayMetrics2);
      long l1 = SystemClock.uptimeMillis();
      localAdVideoView.a(MotionEvent.obtain(l1, l1, 0, i1, i2, 0));
      return;
    }
    if (str1.equals("controls"))
    {
      String str3 = (String)paramHashMap.get("enabled");
      if (str3 == null)
      {
        b.a("No \"enabled\" parameter in a controls video gmsg.");
        return;
      }
      if (str3.equals("true"))
      {
        localAdVideoView.setMediaControllerEnabled(true);
        return;
      }
      localAdVideoView.setMediaControllerEnabled(false);
      return;
    }
    if (str1.equals("currentTime"))
    {
      String str2 = (String)paramHashMap.get("time");
      if (str2 == null)
      {
        b.a("No \"time\" parameter in a currentTime video gmsg.");
        return;
      }
      try
      {
        localAdVideoView.a((int)(1000.0F * Float.parseFloat(str2)));
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        b.a("Could not parse \"time\" parameter: " + str2);
        return;
      }
    }
    if (str1.equals("hide"))
    {
      localAdVideoView.setVisibility(4);
      return;
    }
    if (str1.equals("load"))
    {
      localAdVideoView.b();
      return;
    }
    if (str1.equals("pause"))
    {
      localAdVideoView.c();
      return;
    }
    if (str1.equals("play"))
    {
      localAdVideoView.d();
      return;
    }
    if (str1.equals("show"))
    {
      localAdVideoView.setVisibility(0);
      return;
    }
    if (str1.equals("src"))
    {
      localAdVideoView.setSrc((String)paramHashMap.get("src"));
      return;
    }
    b.a("Unknown video action: " + str1);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.google.ads.aa
 * JD-Core Version:    0.5.3
 */