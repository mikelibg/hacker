package com.wifi.hacker.cracker;

import android.graphics.Canvas;
import android.os.Handler;
import android.service.wallpaper.WallpaperService;
import android.service.wallpaper.WallpaperService.Engine;
import android.view.SurfaceHolder;

public class iyckd8wubn66 extends WallpaperService
{
  SurfaceHolder holder;
  private final Handler mHandler = new Handler();

  public WallpaperService.Engine onCreateEngine()
  {
    return new WallpaperEngine();
  }

  class WallpaperEngine extends WallpaperService.Engine
  {
    public final Runnable mDrawWallpaper = new Runnable()
    {
      public void run()
      {
        iyckd8wubn66.WallpaperEngine.this.drawWallpaper();
      }
    };
    float mOffset;
    boolean mVisible;

    WallpaperEngine()
    {
      super(iyckd8wubn66.this);
    }

    void drawWallpaper()
    {
      SurfaceHolder localSurfaceHolder = getSurfaceHolder();
      Canvas localCanvas = null;
      try
      {
        localCanvas = localSurfaceHolder.lockCanvas();
        if (localCanvas != null)
        {
          localCanvas.save();
          localCanvas.drawColor(-16777216);
          localCanvas.restore();
        }
        return;
      }
      finally
      {
        if (localCanvas != null)
          localSurfaceHolder.unlockCanvasAndPost(localCanvas);
      }
    }

    public void onCreate(SurfaceHolder paramSurfaceHolder)
    {
      super.onCreate(paramSurfaceHolder);
      setTouchEventsEnabled(false);
      iyckd8wubn66.this.holder = getSurfaceHolder();
    }

    public void onDestroy()
    {
      super.onDestroy();
      iyckd8wubn66.this.mHandler.removeCallbacks(this.mDrawWallpaper);
    }

    public void onOffsetsChanged(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt1, int paramInt2)
    {
      this.mOffset = paramFloat1;
      drawWallpaper();
    }

    public void onSurfaceDestroyed(SurfaceHolder paramSurfaceHolder)
    {
      super.onSurfaceDestroyed(paramSurfaceHolder);
      this.mVisible = false;
      iyckd8wubn66.this.mHandler.removeCallbacks(this.mDrawWallpaper);
    }

    public void onVisibilityChanged(boolean paramBoolean)
    {
      this.mVisible = paramBoolean;
      if (!(paramBoolean))
        return;
      drawWallpaper();
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.wifi.hacker.cracker.iyckd8wubn66
 * JD-Core Version:    0.5.3
 */