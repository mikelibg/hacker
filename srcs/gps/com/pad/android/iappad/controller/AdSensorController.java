package com.pad.android.iappad.controller;

import android.content.Context;
import android.util.Log;
import com.pad.android.iappad.AdController;
import com.pad.android.listener.AdAccelListener;
import com.pad.android.richmedia.view.AdView;

public class AdSensorController extends AdController
{
  private AdAccelListener c = new AdAccelListener(paramContext, this);
  private float d = 0.0F;
  private float e = 0.0F;
  private float f = 0.0F;

  public AdSensorController(AdView paramAdView, Context paramContext)
  {
    super(paramAdView, paramContext);
  }

  public float getHeading()
  {
    Log.d("AdOrmmaSensorController", "getHeading: " + this.c.getHeading());
    return this.c.getHeading();
  }

  public String getTilt()
  {
    String str = "{ x : \"" + this.d + "\", y : \"" + this.e + "\", z : \"" + this.f + "\"}";
    Log.d("AdOrmmaSensorController", "getTilt: " + str);
    return str;
  }

  public void onHeadingChange(float paramFloat)
  {
    String str = "window.ormmaview.fireChangeEvent({ heading: " + (int)(57.295779513082323D * paramFloat) + "});";
    Log.d("AdOrmmaSensorController", str);
    this.b.injectJavaScript(str);
  }

  public void onShake()
  {
    this.b.injectJavaScript("Ormma.gotShake()");
  }

  public void onTilt(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.d = paramFloat1;
    this.e = paramFloat2;
    this.f = paramFloat3;
    String str = "window.ormmaview.fireChangeEvent({ tilt: " + getTilt() + "})";
    Log.d("AdOrmmaSensorController", str);
    this.b.injectJavaScript(str);
  }

  public void startHeadingListener()
  {
    this.c.startTrackingHeading();
  }

  public void startShakeListener()
  {
    this.c.startTrackingShake();
  }

  public void startTiltListener()
  {
    this.c.startTrackingTilt();
  }

  public void stopAllListeners()
  {
    this.c.stopAllListeners();
  }

  public void stopHeadingListener()
  {
    this.c.stopTrackingHeading();
  }

  public void stopShakeListener()
  {
    this.c.stopTrackingShake();
  }

  public void stopTiltListener()
  {
    this.c.stopTrackingTilt();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.AdSensorController
 * JD-Core Version:    0.5.3
 */