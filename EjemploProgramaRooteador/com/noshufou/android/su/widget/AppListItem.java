package com.noshufou.android.su.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;

public class AppListItem extends ViewGroup
  implements Checkable
{
  private boolean mChecked = false;
  private final Context mContext;
  private final int mGapBetweenImageAndText;
  private Drawable mHeaderBackgroundDrawable;
  private int mHeaderBackgroundHeight;
  private final int mHeaderPaddingLeft;
  private TextView mHeaderTextView;
  private boolean mHeaderVisible;
  private Drawable mHorizontalDividerDrawable;
  private int mHorizontalDividerHeight;
  private boolean mHorizontalDividerVisible;
  private ImageView mIconView;
  private final int mIconViewSize;
  private int mLine1Height;
  private int mLine2Height;
  private TextView mLogTextView;
  private TextView mNameTextView;
  private final int mPaddingBottom;
  private final int mPaddingLeft;
  private final int mPaddingRight;
  private final int mPaddingTop;
  private final int mPreferredHeight;
  private ImageView mStatusButton;

  public AppListItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    Resources localResources = paramContext.getResources();
    this.mPreferredHeight = localResources.getDimensionPixelSize(2131361796);
    this.mPaddingTop = localResources.getDimensionPixelSize(2131361797);
    this.mPaddingBottom = localResources.getDimensionPixelSize(2131361799);
    this.mPaddingLeft = localResources.getDimensionPixelSize(2131361800);
    this.mPaddingRight = localResources.getDimensionPixelSize(2131361798);
    this.mIconViewSize = localResources.getDimensionPixelSize(2131361801);
    this.mGapBetweenImageAndText = localResources.getDimensionPixelSize(2131361802);
    this.mHeaderPaddingLeft = localResources.getDimensionPixelSize(2131361804);
  }

  private void ensureHeaderBackground()
  {
    if (this.mHeaderBackgroundDrawable != null)
      return;
    this.mHeaderBackgroundDrawable = this.mContext.getResources().getDrawable(2130837508);
    this.mHeaderBackgroundHeight = this.mHeaderBackgroundDrawable.getIntrinsicHeight();
  }

  private void ensureHorizontalDivider()
  {
    if (this.mHorizontalDividerDrawable != null)
      return;
    this.mHorizontalDividerDrawable = this.mContext.getResources().getDrawable(2130837507);
    this.mHorizontalDividerHeight = this.mHorizontalDividerDrawable.getIntrinsicHeight();
  }

  private boolean isVisible(View paramView)
  {
    return ((paramView != null) && (paramView.getVisibility() == 0));
  }

  public void dispatchDraw(Canvas paramCanvas)
  {
    if (this.mHeaderVisible)
      this.mHeaderBackgroundDrawable.draw(paramCanvas);
    if (this.mHorizontalDividerVisible)
      this.mHorizontalDividerDrawable.draw(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }

  public boolean isChecked()
  {
    return this.mChecked;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramInt4 - paramInt2;
    int j = paramInt3 - paramInt1;
    boolean bool = this.mHeaderVisible;
    int k = 0;
    if (bool)
    {
      this.mHeaderBackgroundDrawable.setBounds(0, 0, j, this.mHeaderBackgroundHeight);
      this.mHeaderTextView.layout(this.mHeaderPaddingLeft, 0, j, this.mHeaderBackgroundHeight);
      k = 0 + this.mHeaderBackgroundHeight;
    }
    if (this.mHorizontalDividerVisible)
    {
      ensureHorizontalDivider();
      this.mHorizontalDividerDrawable.setBounds(0, i - this.mHorizontalDividerHeight, j, i);
    }
    int l = this.mPaddingLeft;
    if (this.mIconView != null)
    {
      int i8 = k + (i - k - this.mIconViewSize) / 2;
      this.mIconView.layout(l, i8, l + this.mIconViewSize, i8 + this.mIconViewSize);
      l += this.mIconViewSize + this.mGapBetweenImageAndText;
    }
    int i1 = k + this.mPaddingTop + this.mPaddingTop;
    int i2 = i - this.mPaddingBottom;
    int i3 = paramInt3 - this.mPaddingRight;
    int i4 = i3;
    int i5 = this.mLine1Height + this.mLine2Height;
    int i6 = (i2 + i1 - i5) / 2;
    if (isVisible(this.mStatusButton))
    {
      int i7 = this.mStatusButton.getMeasuredWidth();
      i4 -= i7;
      this.mStatusButton.layout(i3 - i7, i6, i3, i6 + this.mLine1Height);
    }
    this.mNameTextView.layout(l, i6, i4 - this.mGapBetweenImageAndText, i6 + this.mLine1Height);
    if (!(isVisible(this.mLogTextView)))
      return;
    this.mLogTextView.layout(l, i6 + this.mLine1Height, i3, i6 + this.mLine1Height + this.mLine2Height);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = resolveSize(0, paramInt1);
    this.mLine1Height = 0;
    this.mLine2Height = 0;
    this.mNameTextView.measure(0, 0);
    this.mLine1Height = this.mNameTextView.getMeasuredHeight();
    if (isVisible(this.mLogTextView))
    {
      this.mLogTextView.measure(0, 0);
      this.mLine2Height = this.mLogTextView.getMeasuredHeight();
    }
    int j = 0 + this.mLine1Height + this.mLine2Height;
    if (isVisible(this.mStatusButton))
      this.mStatusButton.measure(0, 0);
    int k = Math.max(j, this.mPreferredHeight);
    if (this.mHeaderVisible)
    {
      ensureHeaderBackground();
      this.mHeaderTextView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(this.mHeaderBackgroundHeight, 1073741824));
      k += this.mHeaderBackgroundDrawable.getIntrinsicHeight();
    }
    setMeasuredDimension(i, k);
  }

  public void setAppIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      if (this.mIconView == null)
      {
        this.mIconView = new ImageView(this.mContext);
        addView(this.mIconView);
      }
      this.mIconView.setImageDrawable(paramDrawable);
      this.mIconView.setVisibility(0);
    }
    do
      return;
    while (this.mIconView == null);
    this.mIconView.setVisibility(8);
  }

  public void setChecked(boolean paramBoolean)
  {
    this.mChecked = paramBoolean;
    if (paramBoolean);
    for (int i = 2130837537; ; i = 17170445)
    {
      setBackgroundResource(i);
      return;
    }
  }

  public void setDividerVisible(boolean paramBoolean)
  {
    this.mHorizontalDividerVisible = paramBoolean;
  }

  public void setHeaderBackground(int paramInt)
  {
    this.mHeaderBackgroundDrawable = this.mContext.getResources().getDrawable(paramInt);
    this.mHeaderBackgroundHeight = this.mHeaderBackgroundDrawable.getIntrinsicHeight();
  }

  public void setHorizontalDivider(int paramInt)
  {
    this.mHorizontalDividerDrawable = this.mContext.getResources().getDrawable(paramInt);
    this.mHorizontalDividerHeight = this.mHorizontalDividerDrawable.getIntrinsicHeight();
  }

  public void setLogText(CharSequence paramCharSequence)
  {
    if (!(TextUtils.isEmpty(paramCharSequence)))
    {
      if (this.mLogTextView == null)
      {
        this.mLogTextView = new TextView(this.mContext);
        this.mLogTextView.setSingleLine(true);
        this.mLogTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.mLogTextView.setTextAppearance(this.mContext, 16973894);
        addView(this.mLogTextView);
      }
      this.mLogTextView.setText(paramCharSequence);
      this.mLogTextView.setVisibility(0);
    }
    do
      return;
    while (this.mLogTextView == null);
    this.mLogTextView.setVisibility(8);
  }

  public void setNameText(CharSequence paramCharSequence)
  {
    if (!(TextUtils.isEmpty(paramCharSequence)))
    {
      if (this.mNameTextView == null)
      {
        this.mNameTextView = new TextView(this.mContext);
        this.mNameTextView.setSingleLine(true);
        this.mNameTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.mNameTextView.setTextAppearance(this.mContext, 16973890);
        this.mNameTextView.setGravity(16);
        addView(this.mNameTextView);
      }
      this.mNameTextView.setText(paramCharSequence);
      this.mNameTextView.setVisibility(0);
    }
    do
      return;
    while (this.mNameTextView == null);
    this.mNameTextView.setVisibility(8);
  }

  public void setSectionHeader(String paramString)
  {
    if (!(TextUtils.isEmpty(paramString)))
    {
      if (this.mHeaderTextView == null)
      {
        this.mHeaderTextView = new TextView(this.mContext);
        this.mHeaderTextView.setTypeface(this.mHeaderTextView.getTypeface(), 1);
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

  public void setStatusButton(Drawable paramDrawable, int paramInt, long paramLong)
  {
    if (paramDrawable != null)
    {
      if (this.mStatusButton == null)
      {
        this.mStatusButton = new ImageView(this.mContext);
        this.mStatusButton.setId(paramInt);
        this.mStatusButton.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.mStatusButton);
      }
      this.mStatusButton.setImageDrawable(paramDrawable);
      this.mStatusButton.setTag(Long.valueOf(paramLong));
      this.mStatusButton.setVisibility(0);
    }
    do
      return;
    while (this.mStatusButton == null);
    this.mStatusButton.setVisibility(8);
  }

  public void toggle()
  {
    if (this.mChecked);
    for (boolean bool = false; ; bool = true)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.widget.AppListItem
 * JD-Core Version:    0.5.3
 */