package com.noshufou.android.su.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.TextView;
import com.noshufou.android.su.R.styleable;

public class PagerHeader extends ViewGroup
{
  private static final int LEFT_ZONE = -1;
  private static final int MIDDLE_ZONE = 0;
  private static final int RIGHT_ZONE = 1;
  private static final String TAG = "Su.PagerHeader";
  private static DisplayMetrics mDisplayMetrics;
  private ColorSet mActiveTextColor;
  private boolean mAlwaysInTapRegion;
  private ShapeDrawable mBottomBar;
  private int mBottomBarHeight;
  private boolean mChangeOnClick = true;
  private Context mContext;
  private MotionEvent mCurrentDownEvent;
  private int mDisplayedPage = 0;
  private GradientDrawable mFadingEdgeLeft;
  private int mFadingEdgeLength;
  private GradientDrawable mFadingEdgeRight;
  private ColorSet mInactiveTextColor;
  private int mLeftZoneEdge;
  private OnHeaderClickListener mOnHeaderClickListener = null;
  private int mPaddingPush;
  private int mRightZoneEdge;
  private GradientDrawable mShadow;
  private int mShadowHeight;
  private boolean mShowBottomBar;
  private boolean mShowTab;
  private boolean mShowTopShadow;
  private ColorSet mTabColor;
  private ShapeDrawable mTabDrawable;
  private int mTabHeight;
  private int mTabPadding;
  private int mTouchSlopSquare;
  private boolean mTouchZonesAccurate;

  public PagerHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    mDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PagerHeader, 0, 0);
    this.mActiveTextColor = new ColorSet(localTypedArray.getColor(0, -16777216));
    this.mInactiveTextColor = new ColorSet(localTypedArray.getColor(1, -12303292));
    this.mTabColor = new ColorSet(localTypedArray.getColor(2, this.mActiveTextColor.getColor()));
    this.mTabHeight = localTypedArray.getDimensionPixelSize(3, dipToPixels(4.0F));
    this.mTabPadding = localTypedArray.getDimensionPixelSize(4, dipToPixels(10.0F));
    this.mPaddingPush = localTypedArray.getDimensionPixelSize(5, dipToPixels(50.0F));
    this.mFadingEdgeLength = localTypedArray.getDimensionPixelSize(6, dipToPixels(30.0F));
    this.mShowTopShadow = localTypedArray.getBoolean(9, true);
    this.mShowBottomBar = localTypedArray.getBoolean(10, true);
    this.mShowTab = localTypedArray.getBoolean(11, true);
    ColorSet localColorSet = new ColorSet(0);
    if (localTypedArray.hasValue(8))
    {
      int j = localTypedArray.getColor(8, 0);
      setBackgroundColor(j);
      localColorSet.setColor(j);
    }
    while (true)
    {
      this.mTabDrawable = new ShapeDrawable(new RectShape());
      this.mTabDrawable.getPaint().setColor(this.mTabColor.getColor());
      this.mBottomBar = new ShapeDrawable(new RectShape());
      this.mBottomBar.getPaint().setColor(this.mTabColor.getColor());
      this.mBottomBarHeight = dipToPixels(2.0F);
      GradientDrawable.Orientation localOrientation = GradientDrawable.Orientation.TOP_BOTTOM;
      int[] arrayOfInt1 = new int[2];
      arrayOfInt1[0] = -2013265920;
      this.mShadow = new GradientDrawable(localOrientation, arrayOfInt1);
      this.mShadowHeight = dipToPixels(3.0F);
      int[] arrayOfInt2 = new int[2];
      arrayOfInt2[0] = localColorSet.getColor();
      arrayOfInt2[1] = localColorSet.getColor(0);
      this.mFadingEdgeLeft = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, arrayOfInt2);
      this.mFadingEdgeRight = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, arrayOfInt2);
      int i = ViewConfiguration.get(paramContext).getScaledTouchSlop();
      this.mTouchSlopSquare = (i * i);
      return;
      if (localTypedArray.hasValue(7))
        localColorSet.setColor(localTypedArray.getColor(7, 0));
      Log.w("Su.PagerHeader", "Either backgroundColor or fadingEdgeColorHint must be specified to enable fading edges");
      localColorSet.setColor(0);
    }
  }

  private static int dipToPixels(float paramFloat)
  {
    return (int)(0.5F + paramFloat * mDisplayMetrics.density);
  }

  private int getTouchZone(MotionEvent paramMotionEvent)
  {
    if (this.mTouchZonesAccurate)
    {
      int i3 = (int)paramMotionEvent.getX();
      if ((i3 < this.mLeftZoneEdge) && (this.mDisplayedPage > 0))
        return -1;
      if ((i3 > this.mLeftZoneEdge) && (i3 < this.mRightZoneEdge))
        return 0;
      label144: label152: label192: label198: label212: label120: if ((i3 > this.mRightZoneEdge) && (this.mDisplayedPage < getChildCount() - 1))
        return 1;
    }
    else
    {
      View localView1 = getChildAt(this.mDisplayedPage);
      int i = localView1.getLeft();
      int j = localView1.getRight();
      View localView2 = getChildAt(this.mDisplayedPage - 1);
      int k;
      int l;
      int i1;
      if (localView2 != null)
      {
        k = localView2.getRight();
        View localView3 = getChildAt(1 + this.mDisplayedPage);
        if (localView3 == null)
          break label192;
        l = localView3.getLeft();
        if (k >= 0)
          break label198;
        i1 = 0;
        this.mLeftZoneEdge = i1;
        if (l >= 0)
          break label212;
      }
      for (int i2 = getWidth(); ; i2 = l - ((l - j) / 2))
      {
        this.mRightZoneEdge = i2;
        this.mTouchZonesAccurate = true;
        return getTouchZone(paramMotionEvent);
        k = -1;
        break label120:
        l = -1;
        break label144:
        i1 = k + (i - k) / 2;
        break label152:
      }
    }
    return 0;
  }

  private static int map(float paramFloat1, float paramFloat2, float paramFloat3, int paramInt1, int paramInt2)
  {
    return (int)((paramFloat1 - paramFloat2) * (paramInt2 - paramInt1) / (paramFloat3 - paramFloat2) + paramInt1);
  }

  private void onTap(MotionEvent paramMotionEvent)
  {
    int i = getTouchZone(paramMotionEvent);
    if (this.mOnHeaderClickListener != null)
      this.mOnHeaderClickListener.onHeaderClicked(i + this.mDisplayedPage);
    if ((!(this.mChangeOnClick)) || (i == 0))
      return;
    setDisplayedPage(i + this.mDisplayedPage);
    if (this.mOnHeaderClickListener == null)
      return;
    this.mOnHeaderClickListener.onHeaderSelected(this.mDisplayedPage);
  }

  private void showPress(MotionEvent paramMotionEvent, boolean paramBoolean)
  {
    TextView localTextView;
    if (getTouchZone(paramMotionEvent) != 0)
    {
      localTextView = (TextView)getChildAt(this.mDisplayedPage + getTouchZone(paramMotionEvent));
      if (!(paramBoolean))
        break label46;
    }
    for (int i = this.mActiveTextColor.getColor(); ; i = this.mInactiveTextColor.getColor())
    {
      localTextView.setTextColor(i);
      label46: return;
    }
  }

  public void add(int paramInt, String paramString)
  {
    TextView localTextView = new TextView(this.mContext);
    localTextView.setTextColor(this.mInactiveTextColor.getColor());
    localTextView.setTextSize(16.0F);
    localTextView.setText(paramString);
    addView(localTextView);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    this.mFadingEdgeLeft.draw(paramCanvas);
    this.mFadingEdgeRight.draw(paramCanvas);
    if (this.mShowTopShadow)
      this.mShadow.draw(paramCanvas);
    if (this.mShowBottomBar)
      this.mBottomBar.draw(paramCanvas);
    if (!(this.mShowTab))
      return;
    this.mTabDrawable.draw(paramCanvas);
  }

  public boolean getChangeOnClick()
  {
    return this.mChangeOnClick;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt3 - paramInt1;
    int j = paramInt4 - paramInt2;
    for (int k = 0; ; ++k)
    {
      if (k >= getChildCount())
      {
        setPosition(this.mDisplayedPage, 0.0F, 0);
        this.mShadow.setBounds(0, 0, i, this.mShadowHeight);
        this.mBottomBar.setBounds(0, j - this.mBottomBarHeight, i, j);
        this.mFadingEdgeLeft.setBounds(0, this.mShadowHeight, this.mFadingEdgeLength, j - this.mBottomBarHeight);
        this.mFadingEdgeRight.setBounds(i - this.mFadingEdgeLength, this.mShadowHeight, i, j - this.mBottomBarHeight);
        return;
      }
      TextView localTextView = (TextView)getChildAt(k);
      int l = localTextView.getMeasuredWidth();
      int i1 = localTextView.getMeasuredHeight();
      int i2 = j / 2 - (i1 - (localTextView.getLineHeight() * localTextView.getLineCount() / 2));
      localTextView.layout(i, i2, i + l, i2 + i1);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = 0;
    for (int k = 0; ; ++k)
    {
      if (k >= getChildCount())
      {
        setMeasuredDimension(resolveSize(j + 2 * this.mFadingEdgeLength, paramInt1), resolveSize(i + getPaddingTop() + getPaddingBottom() + this.mShadowHeight + this.mTabHeight, paramInt2));
        return;
      }
      View localView = getChildAt(k);
      localView.measure(0, 0);
      i = Math.max(i, localView.getMeasuredHeight());
      j = Math.max(j, localView.getMeasuredWidth());
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    do
    {
      int j;
      int k;
      do
      {
        do
        {
          return true;
          if (this.mCurrentDownEvent != null)
            this.mCurrentDownEvent.recycle();
          this.mCurrentDownEvent = MotionEvent.obtain(paramMotionEvent);
          this.mAlwaysInTapRegion = true;
          showPress(this.mCurrentDownEvent, true);
          return true;
        }
        while (!(this.mAlwaysInTapRegion));
        j = (int)(f1 - this.mCurrentDownEvent.getX());
        k = (int)(f2 - this.mCurrentDownEvent.getY());
      }
      while (j * j + k * k <= this.mTouchSlopSquare);
      this.mAlwaysInTapRegion = false;
      showPress(this.mCurrentDownEvent, false);
      return true;
      showPress(this.mCurrentDownEvent, false);
    }
    while (!(this.mAlwaysInTapRegion));
    onTap(this.mCurrentDownEvent);
    return true;
  }

  public void setChangeOnClick(boolean paramBoolean)
  {
    this.mChangeOnClick = paramBoolean;
  }

  public void setDisplayedPage(int paramInt)
  {
    this.mDisplayedPage = paramInt;
  }

  public void setOnHeaderClickListener(OnHeaderClickListener paramOnHeaderClickListener)
  {
    this.mOnHeaderClickListener = paramOnHeaderClickListener;
  }

  public void setPosition(int paramInt1, float paramFloat, int paramInt2)
  {
    this.mTouchZonesAccurate = false;
    int i = getWidth();
    int j = i / 2;
    if ((paramInt1 >= 0) && (paramInt1 < getChildCount()))
    {
      TextView localTextView4 = (TextView)getChildAt(paramInt1);
      int i17 = localTextView4.getWidth();
      int i18 = paramInt1 + 1;
      int i19 = getChildCount();
      int i20 = 0;
      if (i18 < i19)
        i20 = Math.min(0, j - (getChildAt(paramInt1 + 1).getWidth() / 2) - this.mPaddingPush - i17);
      int i21 = j - (i17 / 2);
      int i22 = map(paramFloat, 1.0F, 0.0F, i20, i21);
      localTextView4.layout(i22, localTextView4.getTop(), i22 + i17, localTextView4.getBottom());
      localTextView4.setTextColor(Color.rgb(map(paramFloat, 1.0F, 0.0F, this.mInactiveTextColor.red, this.mActiveTextColor.red), map(paramFloat, 1.0F, 0.0F, this.mInactiveTextColor.green, this.mActiveTextColor.green), map(paramFloat, 1.0F, 0.0F, this.mInactiveTextColor.blue, this.mActiveTextColor.blue)));
    }
    if (paramInt1 + 1 < getChildCount())
    {
      TextView localTextView3 = (TextView)getChildAt(paramInt1 + 1);
      int i14 = localTextView3.getWidth();
      int i15 = getChildAt(paramInt1).getWidth();
      int i16 = map(paramFloat, 1.0F, 0.0F, j - (i14 / 2), Math.max(i - i14, j + i15 / 2 + this.mPaddingPush));
      localTextView3.layout(i16, localTextView3.getTop(), i16 + i14, localTextView3.getBottom());
      localTextView3.setTextColor(Color.rgb(map(paramFloat, 1.0F, 0.0F, this.mActiveTextColor.red, this.mInactiveTextColor.red), map(paramFloat, 1.0F, 0.0F, this.mActiveTextColor.green, this.mInactiveTextColor.green), map(paramFloat, 1.0F, 0.0F, this.mActiveTextColor.blue, this.mInactiveTextColor.blue)));
    }
    if (paramInt1 > 0)
    {
      TextView localTextView2 = (TextView)getChildAt(paramInt1 - 1);
      int i9 = getChildAt(paramInt1).getLeft();
      int i10 = localTextView2.getLeft();
      int i11 = localTextView2.getWidth();
      if ((i9 < i10 + i11 + this.mPaddingPush) || (i10 < 0))
      {
        int i12 = Math.min(0, i9 - i11 - this.mPaddingPush);
        localTextView2.layout(i12, localTextView2.getTop(), i12 + i11, localTextView2.getBottom());
        int i13 = map(paramFloat, 1.0F, 0.0F, 0, 255);
        localTextView2.setTextColor(this.mInactiveTextColor.getColor(i13));
      }
    }
    if (paramInt1 + 2 < getChildCount())
    {
      TextView localTextView1 = (TextView)getChildAt(paramInt1 + 2);
      int i4 = getChildAt(paramInt1 + 1).getRight();
      int i5 = localTextView1.getLeft();
      int i6 = localTextView1.getWidth();
      if ((i4 > i5 - this.mPaddingPush) || (i5 + i6 > i))
      {
        int i7 = Math.max(i4 + this.mPaddingPush, i - i6);
        localTextView1.layout(i7, localTextView1.getTop(), i7 + i6, localTextView1.getBottom());
        int i8 = map(paramFloat, 0.0F, 1.0F, 0, 255);
        localTextView1.setTextColor(this.mInactiveTextColor.getColor(i8));
      }
    }
    if (paramFloat < 0.5F);
    for (int k = paramInt1; ; k = paramInt1 + 1)
    {
      View localView = getChildAt(k);
      int l = localView.getLeft();
      int i1 = localView.getRight();
      float f = Math.abs(paramFloat - 0.5F) / 0.5F;
      int i2 = (int)(f * this.mTabHeight);
      int i3 = (int)(255.0F * f);
      this.mTabDrawable.setBounds(l - this.mTabPadding, getHeight() - i2, i1 + this.mTabPadding, getHeight());
      this.mTabDrawable.setAlpha(i3);
      return;
    }
  }

  private class ColorSet
  {
    public int alpha;
    public int blue;
    public int green;
    public int red;

    ColorSet(int paramInt)
    {
      setColor(paramInt);
    }

    public int getColor()
    {
      return Color.argb(this.alpha, this.red, this.green, this.blue);
    }

    public int getColor(int paramInt)
    {
      return Color.argb(paramInt, this.red, this.green, this.blue);
    }

    public void setColor(int paramInt)
    {
      this.alpha = Color.alpha(paramInt);
      this.red = Color.red(paramInt);
      this.green = Color.green(paramInt);
      this.blue = Color.blue(paramInt);
    }
  }

  public static abstract interface OnHeaderClickListener
  {
    public abstract void onHeaderClicked(int paramInt);

    public abstract void onHeaderSelected(int paramInt);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.widget.PagerHeader
 * JD-Core Version:    0.5.3
 */