package com.apperhand.device.android.c;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;

public final class b extends Shape
{
  private RectF a = new RectF();

  private b a()
    throws CloneNotSupportedException
  {
    b localb = (b)super.clone();
    localb.a = new RectF(this.a);
    return localb;
  }

  public final void draw(Canvas paramCanvas, Paint paramPaint)
  {
    paramCanvas.drawRect(this.a, paramPaint);
    Paint localPaint = new Paint(1);
    localPaint.setColor(-1);
    localPaint.setStrokeWidth(4.0F);
    localPaint.setStyle(Paint.Style.STROKE);
    paramCanvas.drawRect(this.a, localPaint);
  }

  protected final void onResize(float paramFloat1, float paramFloat2)
  {
    this.a.set(0.0F, 0.0F, paramFloat1, paramFloat2);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.c.b
 * JD-Core Version:    0.5.3
 */