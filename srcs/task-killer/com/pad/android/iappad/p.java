package com.pad.android.iappad;

import android.app.Activity;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.util.FloatMath;
import com.pad.android.listener.AdAudioListener;
import com.pad.android.util.AdLog;
import org.json.JSONException;
import org.json.JSONObject;

final class p
  implements SensorEventListener
{
  private long a = 0L;
  private long b;
  private int c = 0;
  private Handler d;
  private Runnable e;
  private boolean f = false;
  private int g;
  private int h;
  private boolean i = true;

  public p(AdController paramAdController, boolean paramBoolean)
  {
    if (!(this.i))
      return;
    this.d = new Handler();
    this.e = new q(this);
  }

  private void d()
  {
    this.a = 0L;
    this.b = 0L;
    this.c = 0;
  }

  private void e()
  {
    this.f = false;
    AdController.b(this.j, false);
    AdController.l(this.j).unregisterListener(this);
    AdLog.i("LBAdController", "shake event detection disabled");
  }

  public final void a()
  {
    this.d.postDelayed(this.e, this.h);
  }

  public final void a(int paramInt)
  {
    this.g = paramInt;
  }

  public final void b()
  {
    this.f = true;
    AdController.l(this.j).registerListener(this, AdController.l(this.j).getDefaultSensor(1), 1);
    AdLog.i("LBAdController", "shake event detection enabled");
  }

  public final void b(int paramInt)
  {
    this.h = paramInt;
  }

  public final void c()
  {
    if (!(this.f))
      return;
    e();
    this.d.removeCallbacks(this.e);
  }

  public final void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public final void onSensorChanged(SensorEvent paramSensorEvent)
  {
    float f1 = paramSensorEvent.values[0];
    float f2 = paramSensorEvent.values[1];
    float f3 = paramSensorEvent.values[2];
    AdController.a(this.j, AdController.o(this.j));
    AdController.b(this.j, FloatMath.sqrt(f1 * f1 + f2 * f2 + f3 * f3));
    float f4 = AdController.o(this.j) - AdController.p(this.j);
    AdController.c(this.j, f4 + 0.9F * AdController.q(this.j));
    if (AdController.q(this.j) > 2.5F)
    {
      long l = System.currentTimeMillis();
      if (this.a == 0L)
      {
        this.a = l;
        this.b = l;
      }
      if (l - this.b < 300L)
      {
        this.b = l;
        this.c = (1 + this.c);
        if ((this.c >= this.g) && (l - this.a < 1500L))
        {
          AdLog.i("LBAdController", "valid shake");
          d();
          e();
          if (this.i)
          {
            if ((AdController.r(this.j) != null) && (AdController.r(this.j).isPlaying()))
            {
              AdController.r(this.j).stop();
              AdController.a(this.j, null);
              if (AdController.m(this.j) != null)
                AdController.m(this.j).onAdFinished();
              AdController.s(this.j).setStreamVolume(3, AdController.t(this.j), 8);
            }
            this.d.removeCallbacks(this.e);
          }
        }
      }
    }
    try
    {
      this.j.destroyAd();
      AdLog.d("LBAdController", "showing audio ad in browser");
      if (AdController.m(this.j) != null)
        AdController.m(this.j).onAdClicked();
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(AdController.h(this.j).getString("adurl")));
      AdController.n(this.j).startActivity(localIntent);
      return;
      d();
      return;
    }
    catch (JSONException localJSONException)
    {
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.p
 * JD-Core Version:    0.5.3
 */