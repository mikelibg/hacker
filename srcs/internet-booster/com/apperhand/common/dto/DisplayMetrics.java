package com.apperhand.common.dto;

public class DisplayMetrics extends BaseDTO
{
  private static final long serialVersionUID = 2546376529787034622L;
  public float density;
  public int densityDpi;
  public int heightPixels;
  public float scaledDensity;
  public int widthPixels;
  public float xdpi;
  public float ydpi;

  public DisplayMetrics()
  {
  }

  public DisplayMetrics(float paramFloat1, int paramInt1, int paramInt2, float paramFloat2, int paramInt3, float paramFloat3, float paramFloat4)
  {
    this.density = paramFloat1;
    this.densityDpi = paramInt1;
    this.heightPixels = paramInt2;
    this.scaledDensity = paramFloat2;
    this.widthPixels = paramInt3;
    this.xdpi = paramFloat3;
    this.ydpi = paramFloat4;
  }

  public float getDensity()
  {
    return this.density;
  }

  public int getDensityDpi()
  {
    return this.densityDpi;
  }

  public int getHeightPixels()
  {
    return this.heightPixels;
  }

  public float getScaledDensity()
  {
    return this.scaledDensity;
  }

  public int getWidthPixels()
  {
    return this.widthPixels;
  }

  public float getXdpi()
  {
    return this.xdpi;
  }

  public float getYdpi()
  {
    return this.ydpi;
  }

  public void setDensity(float paramFloat)
  {
    this.density = paramFloat;
  }

  public void setDensityDpi(int paramInt)
  {
    this.densityDpi = paramInt;
  }

  public void setHeightPixels(int paramInt)
  {
    this.heightPixels = paramInt;
  }

  public void setScaledDensity(float paramFloat)
  {
    this.scaledDensity = paramFloat;
  }

  public void setWidthPixels(int paramInt)
  {
    this.widthPixels = paramInt;
  }

  public void setXdpi(float paramFloat)
  {
    this.xdpi = paramFloat;
  }

  public void setYdpi(float paramFloat)
  {
    this.ydpi = paramFloat;
  }

  public String toString()
  {
    return "DisplayMetrics [density=" + this.density + ", densityDpi=" + this.densityDpi + ", heightPixels=" + this.heightPixels + ", scaledDensity=" + this.scaledDensity + ", widthPixels=" + this.widthPixels + ", xdpi=" + this.xdpi + ", ydpi=" + this.ydpi + "]";
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.internet.booster-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.common.dto.DisplayMetrics
 * JD-Core Version:    0.5.3
 */