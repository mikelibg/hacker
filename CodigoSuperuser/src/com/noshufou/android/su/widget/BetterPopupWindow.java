package com.noshufou.android.su.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;

public class BetterPopupWindow
{
  protected final View anchor;
  private Drawable background = null;
  private View root;
  private final PopupWindow window;
  private final WindowManager windowManager;

  public BetterPopupWindow(View paramView)
  {
    this.anchor = paramView;
    this.window = new PopupWindow(paramView.getContext());
    this.window.setTouchInterceptor(new View.OnTouchListener()
    {
      public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
      {
        if (paramMotionEvent.getAction() == 4)
        {
          BetterPopupWindow.this.window.dismiss();
          return true;
        }
        return false;
      }
    });
    this.windowManager = ((WindowManager)this.anchor.getContext().getSystemService("window"));
    onCreate();
  }

  private void preShow()
  {
    if (this.root == null)
      throw new IllegalStateException("setContentView was not called with a view to display.");
    onShow();
    if (this.background == null)
      this.window.setBackgroundDrawable(new BitmapDrawable());
    while (true)
    {
      this.window.setWidth(-2);
      this.window.setHeight(-2);
      this.window.setTouchable(true);
      this.window.setFocusable(true);
      this.window.setOutsideTouchable(true);
      this.window.setContentView(this.root);
      return;
      this.window.setBackgroundDrawable(this.background);
    }
  }

  public void dismiss()
  {
    this.window.dismiss();
  }

  protected void onCreate()
  {
  }

  protected void onShow()
  {
  }

  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    this.background = paramDrawable;
  }

  public void setContentView(int paramInt)
  {
    setContentView(((LayoutInflater)this.anchor.getContext().getSystemService("layout_inflater")).inflate(paramInt, null));
  }

  public void setContentView(View paramView)
  {
    this.root = paramView;
    this.window.setContentView(paramView);
  }

  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.window.setOnDismissListener(paramOnDismissListener);
  }

  public void show()
  {
    preShow();
    this.window.setAnimationStyle(2131558423);
    int[] arrayOfInt = new int[2];
    this.anchor.getLocationOnScreen(arrayOfInt);
    Rect localRect = new Rect(arrayOfInt[0], arrayOfInt[1], arrayOfInt[0] + this.anchor.getWidth(), arrayOfInt[1] + this.anchor.getHeight());
    this.root.measure(-2, -2);
    int i = this.root.getMeasuredWidth();
    int j = this.root.getMeasuredHeight();
    int k = this.windowManager.getDefaultDisplay().getWidth();
    int l = this.windowManager.getDefaultDisplay().getHeight();
    int i1 = localRect.left;
    int i2 = localRect.bottom;
    if (i2 + j > l)
    {
      this.window.setAnimationStyle(2131558422);
      i2 = localRect.top - j;
    }
    if (i1 + i > k)
      i1 = localRect.left - (i + localRect.left - k);
    this.window.showAtLocation(this.anchor, 0, i1, i2);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.BetterPopupWindow
 * JD-Core Version:    0.5.3
 */