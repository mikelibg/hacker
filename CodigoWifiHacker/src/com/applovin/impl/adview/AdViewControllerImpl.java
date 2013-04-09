package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
import android.widget.RelativeLayout.LayoutParams;
import com.applovin.adview.AdViewController;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.Logger;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

public class AdViewControllerImpl
  implements AdViewController
{
  private Activity a;
  private AppLovinSdk b;
  private AppLovinAdService c;
  private Logger d;
  private AppLovinAdSize e;
  private String f;
  private n g;
  private i h;
  private l i;
  private AppLovinAd j;
  private Runnable k;
  private Runnable l;
  private Runnable m;
  private volatile AppLovinAd n;
  private final AtomicReference o = new AtomicReference();
  private volatile boolean p = false;
  private volatile boolean q = true;
  private volatile boolean r = false;
  private volatile boolean s = false;
  private volatile AppLovinAdLoadListener t;
  private volatile AppLovinAdDisplayListener u;
  private volatile AppLovinAdClickListener v;

  private l a()
  {
    l locall = new l(this.e, this.g, this.b, this.a);
    locall.addJavascriptInterface(new AdWebViewJsInterface(this.g, locall), "applovin_sdk");
    locall.setBackgroundColor(0);
    locall.setWillNotCacheDrawing(false);
    return locall;
  }

  private void a(ViewGroup paramViewGroup, AppLovinSdk paramAppLovinSdk, AppLovinAdSize paramAppLovinAdSize, String paramString, Context paramContext)
  {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("No parent view specified");
    if (paramAppLovinSdk == null)
      throw new IllegalArgumentException("No sdk specified");
    if (paramAppLovinAdSize == null)
      throw new IllegalArgumentException("No ad size specified");
    if (!(paramContext instanceof Activity))
      throw new IllegalArgumentException("Specified context is not an activity");
    this.b = paramAppLovinSdk;
    this.c = paramAppLovinSdk.getAdService();
    this.d = paramAppLovinSdk.getLogger();
    this.e = paramAppLovinAdSize;
    this.a = ((Activity)paramContext);
    this.f = paramString;
    this.j = new AppLovinAd("", paramAppLovinAdSize, "", "");
    this.g = new n(this, paramAppLovinSdk);
    this.m = new c(this);
    this.k = new h(this);
    this.l = new f(this);
    this.h = new i(this, paramAppLovinSdk);
    if (a(paramContext))
    {
      this.i = a();
      paramViewGroup.setBackgroundColor(0);
      paramViewGroup.addView(this.i);
      b(this.i, paramAppLovinAdSize);
      this.i.setVisibility(8);
      a(new g(this));
      this.p = true;
    }
    while (true)
    {
      return;
      this.d.userError("AppLovinAdView", "Web view database is currupt, AdView not loaded");
    }
  }

  private void a(Runnable paramRunnable)
  {
    this.a.runOnUiThread(paramRunnable);
  }

  private static boolean a(Context paramContext)
  {
    int i1 = 1;
    try
    {
      if (Build.VERSION.SDK_INT < 11)
      {
        WebViewDatabase localWebViewDatabase = WebViewDatabase.getInstance(paramContext);
        Method localMethod = WebViewDatabase.class.getDeclaredMethod("getCacheTotalSize", new Class[0]);
        localMethod.setAccessible(true);
        localMethod.invoke(localWebViewDatabase, new Object[0]);
      }
      return i1;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", localNoSuchMethodException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("AppLovinAdView", "Error invoking getCacheTotalSize()", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e("AppLovinAdView", "getCacheTotalSize() reported exception", localInvocationTargetException);
      i1 = 0;
    }
    catch (Throwable localThrowable)
    {
      Log.e("AppLovinAdView", "Unexpected error while checking DB state", localThrowable);
      i1 = 0;
    }
  }

  private static void b(View paramView, AppLovinAdSize paramAppLovinAdSize)
  {
    DisplayMetrics localDisplayMetrics = paramView.getResources().getDisplayMetrics();
    int i1;
    if (paramAppLovinAdSize.getWidth() == -1)
    {
      i1 = localDisplayMetrics.widthPixels;
      label21: if (paramAppLovinAdSize.getHeight() != -1)
        break label123;
    }
    for (int i2 = localDisplayMetrics.heightPixels; ; i2 = (int)TypedValue.applyDimension(1, paramAppLovinAdSize.getHeight(), localDisplayMetrics))
    {
      Object localObject = paramView.getLayoutParams();
      if (localObject == null)
        localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((ViewGroup.LayoutParams)localObject).width = i1;
      ((ViewGroup.LayoutParams)localObject).height = i2;
      if (localObject instanceof RelativeLayout.LayoutParams)
      {
        RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)localObject;
        localLayoutParams.addRule(10);
        localLayoutParams.addRule(9);
      }
      paramView.setLayoutParams((ViewGroup.LayoutParams)localObject);
      return;
      i1 = (int)TypedValue.applyDimension(1, paramAppLovinAdSize.getWidth(), localDisplayMetrics);
      label123: break label21:
    }
  }

  void a(WebView paramWebView)
  {
    a(this.m);
    a(new e(this, this.n));
  }

  void a(AppLovinAd paramAppLovinAd)
  {
    this.b.getAdService().trackAdClick(paramAppLovinAd);
    a(new d(this, paramAppLovinAd));
  }

  public void destroy()
  {
    if (this.c != null)
      this.c.removeAdUpdateListener(this.h);
    if (this.i != null)
      this.i.destroy();
    this.r = true;
  }

  public void initializeAdView(ViewGroup paramViewGroup, Context paramContext, AppLovinAdSize paramAppLovinAdSize, AppLovinSdk paramAppLovinSdk, AttributeSet paramAttributeSet)
  {
    if (paramViewGroup == null)
      throw new IllegalArgumentException("No parent view specified");
    if (paramContext == null)
    {
      Log.e("AppLovinSdk", "Unable to create AppLovinAdView: no context provided. Please use a different constructor for this view.");
      label28: return;
    }
    if (paramAppLovinAdSize == null)
    {
      localAppLovinAdSize = j.a(paramAttributeSet);
      if (localAppLovinAdSize != null);
    }
    for (AppLovinAdSize localAppLovinAdSize = AppLovinAdSize.BANNER; ; localAppLovinAdSize = paramAppLovinAdSize)
    {
      String str = j.a(paramAttributeSet, paramContext);
      if (paramAppLovinSdk == null);
      for (AppLovinSdk localAppLovinSdk = AppLovinSdk.getInstance(paramContext); ; localAppLovinSdk = paramAppLovinSdk)
      {
        if ((localAppLovinSdk != null) && (!(localAppLovinSdk.hasCriticalErrors())));
        a(paramViewGroup, localAppLovinSdk, localAppLovinAdSize, str, paramContext);
        if (j.b(paramAttributeSet));
        loadNextAd();
        break label28:
      }
    }
  }

  public boolean isAutoDestroy()
  {
    return this.q;
  }

  public void loadNextAd()
  {
    if ((this.b != null) && (this.h != null) && (this.a != null) && (this.p))
      this.c.loadNextAd(this.e, this.f, this.h);
    while (true)
    {
      return;
      Log.i("AppLovinSdk", "Unable to load next ad: AppLovinAdView is not initialized.");
    }
  }

  public void onAdHtmlLoaded(WebView paramWebView)
  {
    if (this.n != null)
      paramWebView.setVisibility(0);
    try
    {
      if (this.u != null)
        this.u.adDisplayed(this.n);
      return;
    }
    catch (Throwable localThrowable)
    {
      this.d.userError("AppLovinAdView", "Exception while notifying ad display listener", localThrowable);
    }
  }

  protected void onAdRecieved(AppLovinAd paramAppLovinAd)
  {
    if (paramAppLovinAd != null)
    {
      this.s = true;
      if (!(this.r))
      {
        this.c.addAdUpdateListener(this.h);
        renderAd(paramAppLovinAd);
        label34: a(new a(this, paramAppLovinAd));
      }
    }
    while (true)
    {
      return;
      this.o.set(paramAppLovinAd);
      this.d.d("AppLovinAdView", "Ad view has paused when an ad was recieved, ad saved for later");
      break label34:
      this.d.e("AppLovinAdView", "No provided when to the view controller");
      onFailedToRecieveAd(-1);
    }
  }

  public void onDetachedFromWindow()
  {
    if (!(this.p));
    while (true)
    {
      return;
      if (!(this.q))
        continue;
      destroy();
    }
  }

  protected void onFailedToRecieveAd(int paramInt)
  {
    if (!(this.r))
    {
      this.c.addAdUpdateListener(this.h);
      a(this.m);
    }
    a(new b(this, paramInt));
  }

  public void onVisibilityChanged(int paramInt)
  {
    if (!(this.p));
    while (true)
    {
      return;
      if (!(this.q))
        continue;
      if ((paramInt == 8) || (paramInt == 4))
        pause();
      if (paramInt != 0)
        continue;
      resume();
    }
  }

  public void pause()
  {
    if (!(this.p));
    while (true)
    {
      return;
      this.c.removeAdUpdateListener(this.h);
      AppLovinAd localAppLovinAd = this.n;
      renderAd(this.j);
      if (localAppLovinAd != null)
        this.o.set(localAppLovinAd);
      this.r = true;
    }
  }

  public void renderAd(AppLovinAd paramAppLovinAd)
  {
    if (paramAppLovinAd == null)
      throw new IllegalArgumentException("No ad specified");
    if (this.p)
    {
      this.d.d("AppLovinAdView", "Rendering " + paramAppLovinAd.getSize() + " ad for \"" + paramAppLovinAd.getDestinationUrl() + "\"...");
      a(new e(this, this.n));
      this.o.set(null);
      this.n = paramAppLovinAd;
      if (paramAppLovinAd.getSize() == this.e)
        a(this.k);
    }
    while (true)
    {
      return;
      if (paramAppLovinAd.getSize() != AppLovinAdSize.INTERSTITIAL)
        continue;
      a(this.m);
      a(this.l);
      continue;
      Log.i("AppLovinSdk", "Unable to render ad: AppLovinAdView is not initialized.");
    }
  }

  public void resume()
  {
    if (!(this.p));
    while (true)
    {
      return;
      if (this.s)
        this.c.addAdUpdateListener(this.h);
      AppLovinAd localAppLovinAd = (AppLovinAd)this.o.getAndSet(null);
      if (localAppLovinAd != null)
        renderAd(localAppLovinAd);
      this.r = false;
    }
  }

  public void setAdClickListener(AppLovinAdClickListener paramAppLovinAdClickListener)
  {
    this.v = paramAppLovinAdClickListener;
  }

  public void setAdDisplayListener(AppLovinAdDisplayListener paramAppLovinAdDisplayListener)
  {
    this.u = paramAppLovinAdDisplayListener;
  }

  public void setAdLoadListener(AppLovinAdLoadListener paramAppLovinAdLoadListener)
  {
    this.t = paramAppLovinAdLoadListener;
  }

  public void setAutoDestroy(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.applovin.impl.adview.AdViewControllerImpl
 * JD-Core Version:    0.5.3
 */