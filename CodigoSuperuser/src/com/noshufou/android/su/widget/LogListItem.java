package com.noshufou.android.su.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;

public class LogListItem extends ViewGroup
{
  private final Context mContext;
  private final int mGapBetweenFields;
  private Drawable mHeaderBackgroundDrawable;
  private int mHeaderBackgroundHeight;
  private final int mHeaderPaddingLeft;
  private TextView mHeaderTextView;
  private boolean mHeaderVisible;
  private Drawable mHorizontalDividerDrawable;
  private int mHorizontalDividerHeight;
  private boolean mHorizontalDividerVisible;
  private int mLineHeight;
  private TextView mNameTextView;
  private final int mPaddingBottom;
  private final int mPaddingLeft;
  private final int mPaddingRight;
  private final int mPaddingTop;
  private final int mPerferredHeight;
  private TextView mTimeTextView;
  private TextView mTypeTextView;

  public LogListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    Resources localResources = paramContext.getResources();
    this.mPerferredHeight = localResources.getDimensionPixelOffset(2131361806);
    this.mPaddingTop = localResources.getDimensionPixelOffset(2131361807);
    this.mPaddingBottom = localResources.getDimensionPixelOffset(2131361809);
    this.mPaddingLeft = localResources.getDimensionPixelOffset(2131361810);
    this.mPaddingRight = localResources.getDimensionPixelOffset(2131361808);
    this.mGapBetweenFields = localResources.getDimensionPixelOffset(2131361811);
    this.mHeaderPaddingLeft = localResources.getDimensionPixelOffset(2131361812);
  }

  private void ensureHeaderBackground()
  {
    if (this.mHeaderBackgroundDrawable != null)
      return;
    this.mHeaderBackgroundDrawable = this.mContext.getResources().getDrawable(2130837538);
    this.mHeaderBackgroundHeight = this.mHeaderBackgroundDrawable.getIntrinsicHeight();
  }

  private void ensureHorizontalDivider()
  {
    if (this.mHorizontalDividerDrawable != null)
      return;
    this.mHorizontalDividerDrawable = this.mContext.getResources().getDrawable(2130837520);
    this.mHorizontalDividerHeight = this.mHorizontalDividerDrawable.getIntrinsicHeight();
  }

  public void dispatchDraw(Canvas paramCanvas)
  {
    if (this.mHeaderVisible)
      this.mHeaderBackgroundDrawable.draw(paramCanvas);
    if (this.mHorizontalDividerVisible)
      this.mHorizontalDividerDrawable.draw(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt4 - paramInt2;
    int j = paramInt3 - paramInt1;
    if (this.mHorizontalDividerVisible)
    {
      ensureHorizontalDivider();
      this.mHorizontalDividerDrawable.setBounds(this.mPaddingLeft, i - this.mHorizontalDividerHeight, j, i);
    }
    int k = 0 + this.mPaddingTop;
    int l = k + this.mLineHeight;
    if (this.mHeaderVisible)
    {
      this.mHeaderBackgroundDrawable.setBounds(0, 0, j, i);
      this.mHeaderTextView.layout(this.mHeaderPaddingLeft, k, j, l);
    }
    int i1 = paramInt1 + this.mPaddingLeft;
    int i2 = i1 + this.mTimeTextView.getMeasuredWidth();
    this.mTimeTextView.layout(i1, k, i2, l);
    int i3 = i2 + this.mGapBetweenFields;
    int i4 = paramInt3 - this.mPaddingRight;
    int i5 = i4 - this.mTypeTextView.getMeasuredWidth();
    if ((this.mNameTextView != null) && (this.mNameTextView.getVisibility() == 0))
      this.mNameTextView.layout(i3, k, i5, l);
    this.mTypeTextView.layout(i5, k, i4, l);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = resolveSize(0, paramInt1);
    this.mLineHeight = 0;
    this.mTimeTextView.measure(0, 0);
    this.mLineHeight = this.mTimeTextView.getMeasuredHeight();
    if (this.mNameTextView != null)
    {
      this.mNameTextView.measure(0, 0);
      this.mLineHeight = Math.max(this.mLineHeight, this.mNameTextView.getMeasuredHeight());
    }
    this.mTypeTextView.measure(0, 0);
    this.mLineHeight = Math.max(this.mLineHeight, this.mTypeTextView.getMeasuredHeight());
    int j = Math.max(this.mLineHeight + this.mPaddingTop + this.mPaddingBottom, this.mPerferredHeight);
    if (this.mHeaderVisible)
    {
      ensureHeaderBackground();
      this.mHeaderTextView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mHeaderBackgroundHeight, 1073741824));
    }
    setMeasuredDimension(???, ++j);
  }

  public void setDividerVisible(boolean paramBoolean)
  {
    this.mHorizontalDividerVisible = paramBoolean;
  }

  public void setNameText(CharSequence paramCharSequence)
  {
    if (this.mNameTextView == null)
    {
      this.mNameTextView = new TextView(this.mContext);
      this.mNameTextView.setSingleLine(true);
      this.mNameTextView.setEllipsize(TextUtils.TruncateAt.END);
      this.mNameTextView.setTextAppearance(this.mContext, 16973894);
      this.mNameTextView.setTypeface(this.mNameTextView.getTypeface(), 1);
      addView(this.mNameTextView);
    }
    if (paramCharSequence == null)
    {
      this.mNameTextView.setVisibility(8);
      return;
    }
    this.mNameTextView.setText(paramCharSequence);
    this.mNameTextView.setVisibility(0);
  }

  public void setSectionHeader(String paramString)
  {
    if (!(TextUtils.isEmpty(paramString)))
    {
      if (this.mHeaderTextView == null)
      {
        this.mHeaderTextView = new TextView(this.mContext);
        this.mHeaderTextView.setBackgroundColor(16777215);
        this.mHeaderTextView.setTextColor(this.mContext.getResources().getColor(2131296260));
        this.mHeaderTextView.setTextSize(14.0F);
        this.mHeaderTextView.setGravity(19);
        addView(this.mHeaderTextView);
      }
      this.mHeaderTextView.setText(paramString);
      this.mHeaderTextView.setVisibility(0);
      this.mHeaderVisible = true;
      return;
    }
    if (this.mHeaderTextView != null)
      this.mHeaderTextView.setVisibility(8);
    this.mHeaderVisible = false;
  }

  public void setTimeText(CharSequence paramCharSequence)
  {
    if (this.mTimeTextView == null)
    {
      this.mTimeTextView = new TextView(this.mContext);
      this.mTimeTextView.setSingleLine(true);
      this.mTimeTextView.setEllipsize(TextUtils.TruncateAt.END);
      this.mTimeTextView.setTextAppearance(this.mContext, 16973894);
      addView(this.mTimeTextView);
    }
    this.mTimeTextView.setText(paramCharSequence);
    this.mTimeTextView.setVisibility(0);
  }

  public void setTypeText(CharSequence paramCharSequence)
  {
    if (this.mTypeTextView == null)
    {
      this.mTypeTextView = new TextView(this.mContext);
      this.mTypeTextView.setSingleLine(true);
      this.mTypeTextView.setEllipsize(TextUtils.TruncateAt.END);
      this.mTypeTextView.setTextAppearance(this.mContext, 16973894);
      addView(this.mTypeTextView);
    }
    this.mTypeTextView.setText(paramCharSequence);
    this.mTypeTextView.setVisibility(0);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.LogListItem
 * JD-Core Version:    0.5.3
 */