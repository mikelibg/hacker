package com.noshufou.android.su.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class PinnedHeaderListView extends ListView
{
  private static final int MAX_ALPHA = 255;
  private PinnedHeaderAdapter mAdapter;
  private View mHeaderView;
  private int mHeaderViewHeight;
  private boolean mHeaderViewVisible;
  private int mHeaderViewWidth;

  public PinnedHeaderListView(Context paramContext)
  {
    super(paramContext);
  }

  public PinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void configureHeaderView(int paramInt)
  {
    if ((this.mHeaderView == null) || (getCount() == 0))
      return;
    switch (this.mAdapter.getPinnedHeaderState(paramInt))
    {
    default:
      return;
    case 0:
      this.mHeaderViewVisible = false;
      return;
    case 1:
      this.mAdapter.configurePinnedHeader(this.mHeaderView, paramInt, 255);
      if (this.mHeaderView.getTop() != 0)
        this.mHeaderView.layout(0, 0, this.mHeaderViewWidth, this.mHeaderViewHeight);
      this.mHeaderViewVisible = true;
      return;
    case 2:
    }
    int i = getChildAt(0).getBottom();
    int j = this.mHeaderView.getHeight();
    int l;
    int k;
    if (i < j)
    {
      l = i - j;
      k = 255 * (j + l) / j;
    }
    while (true)
    {
      this.mAdapter.configurePinnedHeader(this.mHeaderView, paramInt, k);
      if (this.mHeaderView.getTop() != l)
        this.mHeaderView.layout(0, l, this.mHeaderViewWidth, l + this.mHeaderViewHeight);
      this.mHeaderViewVisible = true;
      return;
      k = 255;
      l = 0;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (!(this.mHeaderViewVisible))
      return;
    drawChild(paramCanvas, this.mHeaderView, getDrawingTime());
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mHeaderView == null)
      return;
    this.mHeaderView.layout(0, 0, this.mHeaderViewWidth, this.mHeaderViewHeight);
    configureHeaderView(getFirstVisiblePosition());
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.mHeaderView == null)
      return;
    measureChild(this.mHeaderView, paramInt1, paramInt2);
    this.mHeaderViewWidth = this.mHeaderView.getMeasuredWidth();
    this.mHeaderViewHeight = this.mHeaderView.getMeasuredHeight();
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.mAdapter = ((PinnedHeaderAdapter)paramListAdapter);
  }

  public void setPinnedHeaderView(View paramView)
  {
    this.mHeaderView = paramView;
    if (this.mHeaderView != null)
      setFadingEdgeLength(0);
    requestLayout();
  }

  public static abstract interface PinnedHeaderAdapter
  {
    public static final int PINNED_HEADER_GONE = 0;
    public static final int PINNED_HEADER_PUSHED_UP = 2;
    public static final int PINNED_HEADER_VISIBLE = 1;

    public abstract void configurePinnedHeader(View paramView, int paramInt1, int paramInt2);

    public abstract int getPinnedHeaderState(int paramInt);
  }

  public static final class PinnedHeaderCache
  {
    public Drawable background;
    public ColorStateList textColor;
    public TextView titleView;
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.PinnedHeaderListView
 * JD-Core Version:    0.5.3
 */