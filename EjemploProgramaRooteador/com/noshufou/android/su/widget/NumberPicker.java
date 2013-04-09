package com.noshufou.android.su.widget;

import android.content.Context;
import android.os.Handler;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnLongClickListener;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Formatter;

public class NumberPicker extends LinearLayout
{
  private static final char[] DIGIT_CHARACTERS;
  public static final Formatter TWO_DIGIT_FORMATTER = new Formatter()
  {
    final Object[] mArgs = new Object[1];
    final StringBuilder mBuilder = new StringBuilder();
    final Formatter mFmt = new Formatter(this.mBuilder);

    public String toString(int paramInt)
    {
      this.mArgs[0] = Integer.valueOf(paramInt);
      this.mBuilder.delete(0, this.mBuilder.length());
      this.mFmt.format("%02d", this.mArgs);
      return this.mFmt.toString();
    }
  };
  private int mCurrent;
  private boolean mDecrement;
  private NumberPickerButton mDecrementButton;
  private String[] mDisplayedValues;
  private int mEnd;
  private Formatter mFormatter;
  private final Handler mHandler;
  private boolean mIncrement;
  private NumberPickerButton mIncrementButton;
  private OnChangedListener mListener;
  private final InputFilter mNumberInputFilter;
  private int mPrevious;
  private final Runnable mRunnable;
  private long mSpeed;
  private int mStart;
  private final EditText mText;

  static
  {
    DIGIT_CHARACTERS = new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57 };
  }

  public NumberPicker(Context paramContext)
  {
    this(paramContext, null);
  }

  public NumberPicker(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mRunnable = new Runnable()
    {
      public void run()
      {
        if (NumberPicker.this.mIncrement)
        {
          NumberPicker.this.changeCurrent(1 + NumberPicker.this.mCurrent);
          NumberPicker.this.mHandler.postDelayed(this, NumberPicker.this.mSpeed);
        }
        do
          return;
        while (!(NumberPicker.this.mDecrement));
        NumberPicker.this.changeCurrent(NumberPicker.this.mCurrent - 1);
        NumberPicker.this.mHandler.postDelayed(this, NumberPicker.this.mSpeed);
      }
    };
    this.mSpeed = 300L;
    setOrientation(1);
    ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903059, this, true);
    this.mHandler = new Handler();
    3 local3 = new View.OnClickListener()
    {
      public void onClick(View paramView)
      {
        NumberPicker.this.validateInput(NumberPicker.this.mText);
        if (!(NumberPicker.this.mText.hasFocus()))
          NumberPicker.this.mText.requestFocus();
        if (2131427391 == paramView.getId())
          NumberPicker.this.changeCurrent(1 + NumberPicker.this.mCurrent);
        do
          return;
        while (2131427393 != paramView.getId());
        NumberPicker.this.changeCurrent(NumberPicker.this.mCurrent - 1);
      }
    };
    4 local4 = new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramView, boolean paramBoolean)
      {
        if (paramBoolean)
          return;
        NumberPicker.this.validateInput(paramView);
      }
    };
    5 local5 = new View.OnLongClickListener()
    {
      public boolean onLongClick(View paramView)
      {
        NumberPicker.this.mText.clearFocus();
        if (2131427391 == paramView.getId())
        {
          NumberPicker.this.mIncrement = true;
          NumberPicker.this.mHandler.post(NumberPicker.this.mRunnable);
        }
        do
          return true;
        while (2131427393 != paramView.getId());
        NumberPicker.this.mDecrement = true;
        NumberPicker.this.mHandler.post(NumberPicker.this.mRunnable);
        return true;
      }
    };
    NumberPickerInputFilter localNumberPickerInputFilter = new NumberPickerInputFilter(null);
    this.mNumberInputFilter = new NumberRangeKeyListener(null);
    this.mIncrementButton = ((NumberPickerButton)findViewById(2131427391));
    this.mIncrementButton.setOnClickListener(local3);
    this.mIncrementButton.setOnLongClickListener(local5);
    this.mIncrementButton.setNumberPicker(this);
    this.mDecrementButton = ((NumberPickerButton)findViewById(2131427393));
    this.mDecrementButton.setOnClickListener(local3);
    this.mDecrementButton.setOnLongClickListener(local5);
    this.mDecrementButton.setNumberPicker(this);
    this.mText = ((EditText)findViewById(2131427392));
    this.mText.setOnFocusChangeListener(local4);
    this.mText.setFilters(new InputFilter[] { localNumberPickerInputFilter });
    this.mText.setRawInputType(2);
    if (isEnabled())
      return;
    setEnabled(false);
  }

  private String formatNumber(int paramInt)
  {
    if (this.mFormatter != null)
      return this.mFormatter.toString(paramInt);
    return String.valueOf(paramInt);
  }

  // ERROR //
  private int getSelectedPos(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 197	com/noshufou/android/su/widget/NumberPicker:mDisplayedValues	[Ljava/lang/String;
    //   4: ifnonnull +12 -> 16
    //   7: aload_1
    //   8: invokestatic 231	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   11: istore 6
    //   13: iload 6
    //   15: ireturn
    //   16: iconst_0
    //   17: istore_2
    //   18: iload_2
    //   19: aload_0
    //   20: getfield 197	com/noshufou/android/su/widget/NumberPicker:mDisplayedValues	[Ljava/lang/String;
    //   23: arraylength
    //   24: if_icmplt +12 -> 36
    //   27: aload_1
    //   28: invokestatic 231	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   31: istore 4
    //   33: iload 4
    //   35: ireturn
    //   36: aload_1
    //   37: invokevirtual 235	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   40: astore_1
    //   41: aload_0
    //   42: getfield 197	com/noshufou/android/su/widget/NumberPicker:mDisplayedValues	[Ljava/lang/String;
    //   45: iload_2
    //   46: aaload
    //   47: invokevirtual 235	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   50: aload_1
    //   51: invokevirtual 239	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   54: ifeq +10 -> 64
    //   57: iload_2
    //   58: aload_0
    //   59: getfield 241	com/noshufou/android/su/widget/NumberPicker:mStart	I
    //   62: iadd
    //   63: ireturn
    //   64: iinc 2 1
    //   67: goto -49 -> 18
    //   70: astore 5
    //   72: aload_0
    //   73: getfield 241	com/noshufou/android/su/widget/NumberPicker:mStart	I
    //   76: ireturn
    //   77: astore_3
    //   78: goto -6 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   7	13	70	java/lang/NumberFormatException
    //   27	33	77	java/lang/NumberFormatException
  }

  private void notifyChange()
  {
    if (this.mListener == null)
      return;
    this.mListener.onChanged(this, this.mPrevious, this.mCurrent);
  }

  private void updateView()
  {
    if (this.mDisplayedValues == null)
      this.mText.setText(formatNumber(this.mCurrent));
    while (true)
    {
      this.mText.setSelection(this.mText.getText().length());
      return;
      this.mText.setText(this.mDisplayedValues[(this.mCurrent - this.mStart)]);
    }
  }

  private void validateCurrentView(CharSequence paramCharSequence)
  {
    int i = getSelectedPos(paramCharSequence.toString());
    if ((i >= this.mStart) && (i <= this.mEnd) && (this.mCurrent != i))
    {
      this.mPrevious = this.mCurrent;
      this.mCurrent = i;
      notifyChange();
    }
    updateView();
  }

  private void validateInput(View paramView)
  {
    String str = String.valueOf(((TextView)paramView).getText());
    if ("".equals(str))
    {
      updateView();
      return;
    }
    validateCurrentView(str);
  }

  public void cancelDecrement()
  {
    this.mDecrement = false;
  }

  public void cancelIncrement()
  {
    this.mIncrement = false;
  }

  protected void changeCurrent(int paramInt)
  {
    if (paramInt > this.mEnd);
    for (paramInt = this.mStart; ; paramInt = this.mEnd)
      do
      {
        this.mPrevious = this.mCurrent;
        this.mCurrent = paramInt;
        notifyChange();
        updateView();
        return;
      }
      while (paramInt >= this.mStart);
  }

  protected int getBeginRange()
  {
    return this.mStart;
  }

  public int getCurrent()
  {
    return this.mCurrent;
  }

  protected int getEndRange()
  {
    return this.mEnd;
  }

  public void setCurrent(int paramInt)
  {
    if ((paramInt < this.mStart) || (paramInt > this.mEnd))
      throw new IllegalArgumentException("current should be >= start and <= end");
    this.mCurrent = paramInt;
    updateView();
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.mIncrementButton.setEnabled(paramBoolean);
    this.mDecrementButton.setEnabled(paramBoolean);
    this.mText.setEnabled(paramBoolean);
  }

  public void setFormatter(Formatter paramFormatter)
  {
    this.mFormatter = paramFormatter;
  }

  public void setOnChangeListener(OnChangedListener paramOnChangedListener)
  {
    this.mListener = paramOnChangedListener;
  }

  public void setRange(int paramInt1, int paramInt2)
  {
    setRange(paramInt1, paramInt2, null);
  }

  public void setRange(int paramInt1, int paramInt2, String[] paramArrayOfString)
  {
    this.mDisplayedValues = paramArrayOfString;
    this.mStart = paramInt1;
    this.mEnd = paramInt2;
    this.mCurrent = paramInt1;
    updateView();
  }

  public void setSpeed(long paramLong)
  {
    this.mSpeed = paramLong;
  }

  public static abstract interface Formatter
  {
    public abstract String toString(int paramInt);
  }

  private class NumberPickerInputFilter
    implements InputFilter
  {
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      if (NumberPicker.this.mDisplayedValues == null)
        return NumberPicker.this.mNumberInputFilter.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
      String str1 = String.valueOf(paramCharSequence.subSequence(paramInt1, paramInt2));
      String str2 = String.valueOf(String.valueOf(paramSpanned.subSequence(0, paramInt3)) + str1 + paramSpanned.subSequence(paramInt4, paramSpanned.length())).toLowerCase();
      String[] arrayOfString = NumberPicker.this.mDisplayedValues;
      int i = arrayOfString.length;
      for (int j = 0; ; ++j)
      {
        if (j >= i)
          return "";
        if (arrayOfString[j].toLowerCase().startsWith(str2))
          return str1;
      }
    }
  }

  private class NumberRangeKeyListener extends NumberKeyListener
  {
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      CharSequence localCharSequence = super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
      if (localCharSequence == null)
        localCharSequence = paramCharSequence.subSequence(paramInt1, paramInt2);
      String str = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + localCharSequence + paramSpanned.subSequence(paramInt4, paramSpanned.length());
      if ("".equals(str))
        return str;
      if (NumberPicker.this.getSelectedPos(str) > NumberPicker.this.mEnd)
        return "";
      return localCharSequence;
    }

    protected char[] getAcceptedChars()
    {
      return NumberPicker.DIGIT_CHARACTERS;
    }

    public int getInputType()
    {
      return 2;
    }
  }

  public static abstract interface OnChangedListener
  {
    public abstract void onChanged(NumberPicker paramNumberPicker, int paramInt1, int paramInt2);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.widget.NumberPicker
 * JD-Core Version:    0.5.3
 */