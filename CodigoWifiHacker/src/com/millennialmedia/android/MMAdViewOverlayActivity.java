package com.millennialmedia.android;

import android.app.Activity;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;

public class MMAdViewOverlayActivity extends Activity
{
  private SensorEventListener accelerometerEventListener = new SensorEventListener()
  {
    private long currentTime = 0L;
    private float force = 0.0F;
    private float lastX = 0.0F;
    private float lastY = 0.0F;
    private float lastZ = 0.0F;
    private long prevShakeTime = 0L;
    private long prevTime = 0L;
    private long timeDifference = 0L;
    private float x = 0.0F;
    private float y = 0.0F;
    private float z = 0.0F;

    public void onAccuracyChanged(Sensor paramSensor, int paramInt)
    {
    }

    public void onSensorChanged(SensorEvent paramSensorEvent)
    {
      this.currentTime = paramSensorEvent.timestamp;
      this.x = paramSensorEvent.values[0];
      this.y = paramSensorEvent.values[1];
      this.z = paramSensorEvent.values[2];
      this.timeDifference = (this.currentTime - this.prevTime);
      if (this.timeDifference <= 500L)
        return;
      MMAdViewOverlayActivity.this.didAccelerate(this.x, this.y, this.z);
      this.force = (Math.abs(this.x + this.y + this.z - this.lastX - this.lastY - this.lastZ) / (float)this.timeDifference);
      if (this.force > 0.2F)
      {
        if (this.currentTime - this.prevShakeTime >= 1000L)
          MMAdViewOverlayActivity.this.didShake(this.force);
        this.prevShakeTime = this.currentTime;
      }
      this.lastX = this.x;
      this.lastY = this.y;
      this.lastZ = this.z;
      this.prevTime = this.currentTime;
    }
  };
  private final int interval = 1000;
  private MMAdViewWebOverlay mmOverlay;
  private SensorManager sensorManager;
  protected Boolean shouldAccelerate;
  private final float threshold = 0.2F;

  private void didAccelerate(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    MMAdViewSDK.Log.v("Accelerometer x:" + paramFloat1 + " y:" + paramFloat2 + " z:" + paramFloat3);
    this.mmOverlay.injectJS("javascript:didAccelerate(" + paramFloat1 + "," + paramFloat2 + "," + paramFloat3 + ")");
  }

  private void didShake(float paramFloat)
  {
    MMAdViewSDK.Log.v("Phone shaken: " + paramFloat);
    this.mmOverlay.injectJS("javascript:didShake(" + paramFloat + ")");
  }

  private void startAccelerating()
  {
    this.sensorManager = ((SensorManager)getSystemService("sensor"));
    if (Boolean.valueOf(this.sensorManager.registerListener(this.accelerometerEventListener, this.sensorManager.getDefaultSensor(1), 1)).booleanValue())
      return;
    Log.w("MillennialMediaSDK", "Accelerometer not supported by this device. Unregistering listener.");
    this.sensorManager.unregisterListener(this.accelerometerEventListener, this.sensorManager.getDefaultSensor(1));
    this.accelerometerEventListener = null;
    this.sensorManager = null;
  }

  private void stopAccelerating()
  {
    try
    {
      if ((this.sensorManager != null) && (this.accelerometerEventListener != null))
        this.sensorManager.unregisterListener(this.accelerometerEventListener, this.sensorManager.getDefaultSensor(1));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    setTheme(16973840);
    super.onCreate(paramBundle);
    long l = 600L;
    boolean bool1 = true;
    boolean bool2 = true;
    Bundle localBundle = getIntent().getExtras();
    int i = 0;
    String str1 = null;
    boolean bool3 = false;
    String str2 = null;
    boolean bool4 = false;
    boolean bool5 = false;
    String str3 = null;
    if (localBundle != null)
    {
      l = localBundle.getLong("transitionTime", 600L);
      str1 = localBundle.getString("overlayTransition");
      i = localBundle.getInt("shouldResizeOverlay", 0);
      bool3 = localBundle.getBoolean("shouldShowTitlebar", false);
      str2 = localBundle.getString("overlayTitle");
      bool1 = localBundle.getBoolean("shouldShowBottomBar", true);
      bool2 = localBundle.getBoolean("shouldEnableBottomBar", true);
      bool4 = localBundle.getBoolean("shouldMakeOverlayTransparent", false);
      bool5 = localBundle.getBoolean("cachedAdView", false);
      str3 = localBundle.getString("overlayOrientation");
    }
    MMAdViewSDK.Log.v("Padding: " + i + " Time: " + l + " Transition: " + str1 + " Title: " + str2 + " Bottom bar: " + bool2 + " Should accelerate: " + this.shouldAccelerate + " Tranparent: " + bool4 + " Cached Ad: " + bool5);
    String str4 = getIntent().getData().getLastPathSegment();
    MMAdViewSDK.Log.v("Path: " + str4);
    this.mmOverlay = new MMAdViewWebOverlay(this, i, l, str1, bool3, str2, bool1, bool2, bool4);
    setContentView(this.mmOverlay);
    if (getLastNonConfigurationInstance() == null)
      this.mmOverlay.loadWebContent(getIntent().getDataString());
    this.shouldAccelerate = Boolean.valueOf(getIntent().getBooleanExtra("canAccelerate", false));
    if ((bool5) && (str3 != null))
    {
      if (!(str3.equalsIgnoreCase("landscape")))
        break label383;
      setRequestedOrientation(0);
    }
    while (true)
    {
      return;
      if (str3.equalsIgnoreCase("portrait"))
        label383: setRequestedOrientation(1);
      setRequestedOrientation(2);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    MMAdViewSDK.Log.d("Overlay onDestroy");
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0) && (this.mmOverlay.goBack()));
    for (boolean bool = true; ; bool = super.onKeyDown(paramInt, paramKeyEvent))
      return bool;
  }

  protected void onPause()
  {
    super.onPause();
    MMAdViewSDK.Log.d("Overlay onPause");
    if (this.shouldAccelerate.booleanValue())
      stopAccelerating();
    setResult(0);
  }

  protected void onResume()
  {
    super.onResume();
    MMAdViewSDK.Log.d("Overlay onResume");
    if (!(this.shouldAccelerate.booleanValue()))
      return;
    startAccelerating();
  }

  public Object onRetainNonConfigurationInstance()
  {
    return this.mmOverlay.getNonConfigurationInstance();
  }

  protected void onStop()
  {
    super.onStop();
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMAdViewOverlayActivity
 * JD-Core Version:    0.5.3
 */