package com.pad.android.listener;

import F;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.pad.android.iappad.controller.AdSensorController;
import java.util.List;

public class AdAccelListener
  implements SensorEventListener
{
  private AdSensorController a;
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private SensorManager e;
  private int f = 3;
  private long g;
  private int h;
  private long i;
  private long j;
  private float[] k;
  private float[] l = { 0.0F, 0.0F, 0.0F };
  private boolean m;
  private boolean n;
  private float[] o = { 0.0F, 0.0F, 0.0F };
  private float[] p = { -1.0F, -1.0F, -1.0F };

  public AdAccelListener(Context paramContext, AdSensorController paramAdSensorController)
  {
    this.a = paramAdSensorController;
    this.e = ((SensorManager)paramContext.getSystemService("sensor"));
  }

  private void a()
  {
    List localList = this.e.getSensorList(1);
    if (localList.size() <= 0)
      return;
    this.e.registerListener(this, (Sensor)localList.get(0), this.f);
  }

  public float getHeading()
  {
    return this.p[0];
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    switch (paramSensorEvent.sensor.getType())
    {
    default:
    case 2:
    case 1:
    }
    while (true)
    {
      if ((this.k != null) && (this.l != null) && (this.n) && (this.m))
      {
        this.n = false;
        this.m = false;
        float[] arrayOfFloat = new float[9];
        SensorManager.getRotationMatrix(arrayOfFloat, new float[9], this.l, this.k);
        this.p = new float[3];
        SensorManager.getOrientation(arrayOfFloat, this.p);
        this.a.onHeadingChange(this.p[0]);
      }
      if (paramSensorEvent.sensor.getType() == 1)
      {
        long l1 = System.currentTimeMillis();
        if (l1 - this.g > 500L)
          this.h = 0;
        if (l1 - this.i > 100L)
        {
          long l2 = l1 - this.i;
          if (10000.0F * Math.abs(this.l[0] + this.l[1] + this.l[2] - this.o[0] - this.o[1] - this.o[2]) / (float)l2 > 1000.0F)
          {
            int i1 = 1 + this.h;
            this.h = i1;
            if ((i1 >= 2) && (l1 - this.j > 2000L))
            {
              this.j = l1;
              this.h = 0;
              this.a.onShake();
            }
            this.g = l1;
          }
          this.i = l1;
          this.a.onTilt(this.l[0], this.l[1], this.l[2]);
        }
      }
      return;
      this.k = ((float[])paramSensorEvent.values.clone());
      this.m = true;
      continue;
      this.o = this.l;
      this.l = ((float[])paramSensorEvent.values.clone());
      this.n = true;
    }
  }

  public void setSensorDelay(int paramInt)
  {
    this.f = paramInt;
    if ((this.b <= 0) && (this.c <= 0))
      return;
    stop();
    a();
  }

  public void startTrackingHeading()
  {
    if (this.d == 0)
    {
      List localList = this.e.getSensorList(2);
      if (localList.size() > 0)
      {
        this.e.registerListener(this, (Sensor)localList.get(0), this.f);
        a();
      }
    }
    this.d = (1 + this.d);
  }

  public void startTrackingShake()
  {
    if (this.c == 0)
    {
      setSensorDelay(1);
      a();
    }
    this.c = (1 + this.c);
  }

  public void startTrackingTilt()
  {
    if (this.b == 0)
      a();
    this.b = (1 + this.b);
  }

  public void stop()
  {
    if ((this.d != 0) || (this.c != 0) || (this.b != 0))
      return;
    this.e.unregisterListener(this);
  }

  public void stopAllListeners()
  {
    this.b = 0;
    this.c = 0;
    this.d = 0;
    try
    {
      stop();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void stopTrackingHeading()
  {
    if (this.d <= 0)
      return;
    int i1 = -1 + this.d;
    this.d = i1;
    if (i1 != 0)
      return;
    stop();
  }

  public void stopTrackingShake()
  {
    if (this.c <= 0)
      return;
    int i1 = -1 + this.c;
    this.c = i1;
    if (i1 != 0)
      return;
    setSensorDelay(3);
    stop();
  }

  public void stopTrackingTilt()
  {
    if (this.b <= 0)
      return;
    int i1 = -1 + this.b;
    this.b = i1;
    if (i1 != 0)
      return;
    stop();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.listener.AdAccelListener
 * JD-Core Version:    0.5.3
 */