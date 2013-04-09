package com.pad.android.iappad.controller;

import android.content.Context;
import android.content.IntentFilter;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.URLUtil;
import com.pad.android.iappad.AdController;
import com.pad.android.iappad.AdController.Dimensions;
import com.pad.android.iappad.AdController.Properties;
import com.pad.android.richmedia.view.AdView;
import com.pad.android.util.AdConfigurationBroadcastReceiver;
import org.json.JSONException;
import org.json.JSONObject;

public class AdDisplayController extends AdController
{
  private WindowManager c;
  private boolean d = false;
  private int e = -1;
  private int f = -1;
  private AdConfigurationBroadcastReceiver g;
  private float h;

  public AdDisplayController(AdView paramAdView, Context paramContext)
  {
    super(paramAdView, paramContext);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.c = ((WindowManager)paramContext.getSystemService("window"));
    this.c.getDefaultDisplay().getMetrics(localDisplayMetrics);
    this.h = localDisplayMetrics.density;
  }

  private AdController.Dimensions a(AdController.Dimensions paramDimensions)
  {
    paramDimensions.width = (int)(paramDimensions.width * this.h);
    paramDimensions.height = (int)(paramDimensions.height * this.h);
    paramDimensions.x = (int)(paramDimensions.x * this.h);
    paramDimensions.y = (int)(paramDimensions.y * this.h);
    if (paramDimensions.height < 0)
      paramDimensions.height = this.b.getHeight();
    if (paramDimensions.width < 0)
      paramDimensions.width = this.b.getWidth();
    int[] arrayOfInt = new int[2];
    this.b.getLocationInWindow(arrayOfInt);
    if (paramDimensions.x < 0)
      paramDimensions.x = arrayOfInt[0];
    if (paramDimensions.y < 0)
      paramDimensions.y = arrayOfInt[1];
    return paramDimensions;
  }

  public void close()
  {
    Log.d("AdOrmmaDisplayController", "close");
    this.b.close();
  }

  public String dimensions()
  {
    return "{ \"top\" :" + (int)(this.b.getTop() / this.h) + ",\"left\" :" + (int)(this.b.getLeft() / this.h) + ",\"bottom\" :" + (int)(this.b.getBottom() / this.h) + ",\"right\" :" + (int)(this.b.getRight() / this.h) + "}";
  }

  public void expand(String paramString1, String paramString2, String paramString3)
  {
    Log.d("AdOrmmaDisplayController", "expand: dimensions: " + paramString1 + " url: " + paramString2 + " properties: " + paramString3);
    try
    {
      AdController.Dimensions localDimensions = (AdController.Dimensions)a(new JSONObject(paramString1), AdController.Dimensions.class);
      this.b.expand(a(localDimensions), paramString2, (AdController.Properties)a(new JSONObject(paramString3), AdController.Properties.class));
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      localNumberFormatException.printStackTrace();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      localNullPointerException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InstantiationException localInstantiationException)
    {
      localInstantiationException.printStackTrace();
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }

  public String getMaxSize()
  {
    if (this.d)
      return "{ width: " + this.e + ", height: " + this.f + "}";
    return getScreenSize();
  }

  public int getOrientation()
  {
    int i = this.c.getDefaultDisplay().getOrientation();
    int j = -1;
    switch (i)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      Log.d("AdOrmmaDisplayController", "getOrientation: " + j);
      return j;
      j = 0;
      continue;
      j = 90;
      continue;
      j = 180;
      continue;
      j = 270;
    }
  }

  public String getScreenSize()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    this.c.getDefaultDisplay().getMetrics(localDisplayMetrics);
    return "{ width: " + (int)(localDisplayMetrics.widthPixels / localDisplayMetrics.density) + ", height: " + (int)(localDisplayMetrics.heightPixels / localDisplayMetrics.density) + "}";
  }

  public String getSize()
  {
    return this.b.getSize();
  }

  public void hide()
  {
    Log.d("AdOrmmaDisplayController", "hide");
    this.b.hide();
  }

  public boolean isVisible()
  {
    return (this.b.getVisibility() == 0);
  }

  public void logHTML(String paramString)
  {
    Log.d("AdOrmmaDisplayController", paramString);
  }

  public void onOrientationChanged(int paramInt)
  {
    String str = "window.ormmaview.fireChangeEvent({ orientation: " + paramInt + "});";
    Log.d("AdOrmmaDisplayController", str);
    this.b.injectJavaScript(str);
  }

  public void open(String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Log.d("AdOrmmaDisplayController", "open: url: " + paramString + " back: " + paramBoolean1 + " forward: " + paramBoolean2 + " refresh: " + paramBoolean3);
    if (!(URLUtil.isValidUrl(paramString)))
    {
      this.b.raiseError("Invalid url", "open");
      return;
    }
    this.b.open(paramString, paramBoolean1, paramBoolean2, paramBoolean3);
  }

  public void openMap(String paramString, boolean paramBoolean)
  {
    Log.d("AdOrmmaDisplayController", "openMap: url: " + paramString);
    this.b.openMap(paramString, paramBoolean);
  }

  public void playAudio(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString2, String paramString3)
  {
    Log.d("AdOrmmaDisplayController", "playAudio: url: " + paramString1 + " autoPlay: " + paramBoolean1 + " controls: " + paramBoolean2 + " loop: " + paramBoolean3 + " position: " + paramBoolean4 + " startStyle: " + paramString2 + " stopStyle: " + paramString3);
    if (!(URLUtil.isValidUrl(paramString1)))
    {
      this.b.raiseError("Invalid url", "playAudio");
      return;
    }
    this.b.playAudio(paramString1, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, paramString2, paramString3);
  }

  public void playVideo(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, int[] paramArrayOfInt, String paramString2, String paramString3)
  {
    Log.d("AdOrmmaDisplayController", "playVideo: url: " + paramString1 + " audioMuted: " + paramBoolean1 + " autoPlay: " + paramBoolean2 + " controls: " + paramBoolean3 + " loop: " + paramBoolean4 + " x: " + paramArrayOfInt[0] + " y: " + paramArrayOfInt[1] + " width: " + paramArrayOfInt[2] + " height: " + paramArrayOfInt[3] + " startStyle: " + paramString2 + " stopStyle: " + paramString3);
    Log.i("ODCVideoPlayer", "Video URL - " + paramString1);
    int i = paramArrayOfInt[0];
    AdController.Dimensions localDimensions1 = null;
    if (i != -1)
    {
      AdController.Dimensions localDimensions2 = new AdController.Dimensions();
      localDimensions2.x = paramArrayOfInt[0];
      localDimensions2.y = paramArrayOfInt[1];
      localDimensions2.width = paramArrayOfInt[2];
      localDimensions2.height = paramArrayOfInt[3];
      localDimensions1 = a(localDimensions2);
    }
    if (!(URLUtil.isValidUrl(paramString1)))
    {
      this.b.raiseError("Invalid url", "playVideo");
      return;
    }
    this.b.playVideo(paramString1, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, localDimensions1, paramString2, paramString3);
  }

  public void resize(int paramInt1, int paramInt2)
  {
    Log.d("AdOrmmaDisplayController", "resize: width: " + paramInt1 + " height: " + paramInt2);
    if (((this.f > 0) && (paramInt2 > this.f)) || ((this.e > 0) && (paramInt1 > this.e)))
    {
      this.b.raiseError("Maximum size exceeded", "resize");
      return;
    }
    this.b.resize((int)(this.h * paramInt1), (int)(this.h * paramInt2));
  }

  public void setMaxSize(int paramInt1, int paramInt2)
  {
    this.d = true;
    this.e = paramInt1;
    this.f = paramInt2;
  }

  public void show()
  {
    Log.d("AdOrmmaDisplayController", "show");
    this.b.show();
  }

  public void startConfigurationListener()
  {
    try
    {
      if (this.g == null)
        this.g = new AdConfigurationBroadcastReceiver(this);
      this.a.registerReceiver(this.g, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void stopAllListeners()
  {
    stopConfigurationListener();
    this.g = null;
  }

  public void stopConfigurationListener()
  {
    try
    {
      this.a.unregisterReceiver(this.g);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.police.radar-4-v1.4-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.AdDisplayController
 * JD-Core Version:    0.5.3
 */