package com.noshufou.android.su.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;

public class NumberPickerDialog extends AlertDialog
  implements DialogInterface.OnClickListener
{
  private static final String NUMBER = "number";
  private final OnNumberSetListener mCallback;
  private final NonWrapNumberPicker mNumberPicker;

  public NumberPickerDialog(Context paramContext, int paramInt1, OnNumberSetListener paramOnNumberSetListener, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super(paramContext, paramInt1);
    this.mCallback = paramOnNumberSetListener;
    setTitle(paramInt5);
    setButton(-1, paramContext.getText(2131165212), this);
    setButton(-2, paramContext.getText(2131165210), null);
    View localView = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903060, null);
    setView(localView);
    this.mNumberPicker = ((NonWrapNumberPicker)localView.findViewById(2131427394));
    this.mNumberPicker.setRange(paramInt3, paramInt4);
    this.mNumberPicker.setCurrent(paramInt2);
    this.mNumberPicker.setSpeed(150L);
  }

  public NumberPickerDialog(Context paramContext, OnNumberSetListener paramOnNumberSetListener, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramContext, 2131558404, paramOnNumberSetListener, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.mCallback == null)
      return;
    this.mNumberPicker.clearFocus();
    this.mCallback.onNumberSet(this.mNumberPicker.getCurrent());
    paramDialogInterface.dismiss();
  }

  public void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    int i = paramBundle.getInt("number");
    this.mNumberPicker.setCurrent(i);
  }

  public Bundle onSaveInstanceState()
  {
    Bundle localBundle = super.onSaveInstanceState();
    localBundle.putInt("number", this.mNumberPicker.getCurrent());
    return localBundle;
  }

  public static class NonWrapNumberPicker extends NumberPicker
  {
    public NonWrapNumberPicker(Context paramContext)
    {
      this(paramContext, null);
    }

    public NonWrapNumberPicker(Context paramContext, AttributeSet paramAttributeSet)
    {
      this(paramContext, paramAttributeSet, 0);
    }

    public NonWrapNumberPicker(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramContext, paramAttributeSet);
    }

    protected void changeCurrent(int paramInt)
    {
      if (paramInt > getEndRange());
      for (paramInt = getEndRange(); ; paramInt = getBeginRange())
        do
        {
          super.changeCurrent(paramInt);
          return;
        }
        while (paramInt >= getBeginRange());
    }
  }

  public static abstract interface OnNumberSetListener
  {
    public abstract void onNumberSet(int paramInt);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.NumberPickerDialog
 * JD-Core Version:    0.5.3
 */