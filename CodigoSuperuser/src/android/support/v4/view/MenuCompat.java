package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.MenuItem;

public class MenuCompat
{
  static final MenuVersionImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      IMPL = new HoneycombMenuVersionImpl();
      return;
    }
    IMPL = new BaseMenuVersionImpl();
  }

  public static boolean setShowAsAction(MenuItem paramMenuItem, int paramInt)
  {
    return IMPL.setShowAsAction(paramMenuItem, paramInt);
  }

  static class BaseMenuVersionImpl
    implements MenuCompat.MenuVersionImpl
  {
    public boolean setShowAsAction(MenuItem paramMenuItem, int paramInt)
    {
      return false;
    }
  }

  static class HoneycombMenuVersionImpl
    implements MenuCompat.MenuVersionImpl
  {
    public boolean setShowAsAction(MenuItem paramMenuItem, int paramInt)
    {
      MenuCompatHoneycomb.setShowAsAction(paramMenuItem, paramInt);
      return true;
    }
  }

  static abstract interface MenuVersionImpl
  {
    public abstract boolean setShowAsAction(MenuItem paramMenuItem, int paramInt);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.view.MenuCompat
 * JD-Core Version:    0.5.3
 */