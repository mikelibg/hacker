package com.noshufou.android.su;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.noshufou.android.su.util.Util;

public class PinActivity extends Activity
  implements View.OnClickListener
{
  public static final String EXTRA_ATTEMPTS_ALLOWED = "attempts_allowed";
  public static final String EXTRA_MODE = "mode";
  public static final String EXTRA_PIN = "pin";
  public static final String EXTRA_SECRET_CODE = "secret_code";
  public static final int MODE_CHANGE = 2;
  public static final int MODE_CHECK = 3;
  public static final int MODE_NEW = 1;
  public static final int MODE_SECRET_CODE = 4;
  private int mAttempts = 0;
  private int mAttemptsAllowed = 3;
  private int mMode = 0;
  private int mOriginalHintTextColor;
  private String mPinConfirm = "";
  private EditText mPinText;

  private void onOk()
  {
    if (this.mPinText.getText().equals(""))
      return;
    switch (this.mMode)
    {
    default:
      return;
    case 1:
      String str = this.mPinText.getText().toString();
      if (this.mPinConfirm.equals(""))
      {
        this.mPinConfirm = this.mPinText.getText().toString();
        this.mPinText.setText("");
        this.mPinText.setHint(2131165351);
        this.mPinText.setHintTextColor(this.mOriginalHintTextColor);
        return;
      }
      if (str.equals(this.mPinConfirm))
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("pin", Util.getHash(str));
        setResult(-1, localIntent2);
        finish();
        return;
      }
      this.mPinConfirm = "";
      this.mPinText.setText("");
      this.mPinText.setHint(2131165352);
      this.mPinText.setHintTextColor(-65536);
      return;
    case 2:
    case 3:
      if (Util.checkPin(this, this.mPinText.getText().toString()))
      {
        if (this.mMode == 3)
        {
          setResult(-1);
          finish();
          return;
        }
        this.mPinText.setText("");
        this.mPinText.setHint(2131165350);
        this.mPinText.setHintTextColor(this.mOriginalHintTextColor);
        this.mMode = 1;
        return;
      }
      if (1 + this.mAttempts < this.mAttemptsAllowed)
      {
        this.mAttempts = (1 + this.mAttempts);
        this.mPinText.setText("");
        EditText localEditText = this.mPinText;
        Resources localResources = getResources();
        int i = this.mAttemptsAllowed - this.mAttempts;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.mAttemptsAllowed - this.mAttempts);
        localEditText.setHint(localResources.getQuantityString(2131492866, i, arrayOfObject));
        this.mPinText.setHintTextColor(-65536);
        return;
      }
      setResult(0);
      finish();
      return;
    case 4:
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("secret_code", this.mPinText.getText());
    setResult(-1, localIntent1);
    finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427406:
      this.mPinText.append("0");
      return;
    case 2131427396:
      this.mPinText.append("1");
      return;
    case 2131427397:
      this.mPinText.append("2");
      return;
    case 2131427398:
      this.mPinText.append("3");
      return;
    case 2131427399:
      this.mPinText.append("4");
      return;
    case 2131427400:
      this.mPinText.append("5");
      return;
    case 2131427401:
      this.mPinText.append("6");
      return;
    case 2131427402:
      this.mPinText.append("7");
      return;
    case 2131427403:
      this.mPinText.append("8");
      return;
    case 2131427404:
      this.mPinText.append("9");
      return;
    case 2131427405:
      onOk();
      return;
    case 2131427407:
    }
    setResult(0);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    this.mPinText = ((EditText)findViewById(2131427395));
    this.mOriginalHintTextColor = this.mPinText.getCurrentHintTextColor();
    ((Button)findViewById(2131427406)).setOnClickListener(this);
    ((Button)findViewById(2131427396)).setOnClickListener(this);
    ((Button)findViewById(2131427397)).setOnClickListener(this);
    ((Button)findViewById(2131427398)).setOnClickListener(this);
    ((Button)findViewById(2131427399)).setOnClickListener(this);
    ((Button)findViewById(2131427400)).setOnClickListener(this);
    ((Button)findViewById(2131427401)).setOnClickListener(this);
    ((Button)findViewById(2131427402)).setOnClickListener(this);
    ((Button)findViewById(2131427403)).setOnClickListener(this);
    ((Button)findViewById(2131427404)).setOnClickListener(this);
    Button localButton1 = (Button)findViewById(2131427405);
    localButton1.setOnClickListener(this);
    localButton1.setText(2131165208);
    Button localButton2 = (Button)findViewById(2131427407);
    localButton2.setOnClickListener(this);
    localButton2.setText(2131165210);
    this.mMode = getIntent().getIntExtra("mode", 0);
    switch (this.mMode)
    {
    default:
      throw new IllegalArgumentException("You must specify an operating mode");
    case 1:
      this.mPinText.setHint(2131165350);
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      if (getIntent().hasExtra("attempts_allowed"))
        this.mAttemptsAllowed = getIntent().getIntExtra("attempts_allowed", 0);
      return;
      this.mPinText.setHint(2131165349);
      continue;
      this.mPinText.setVisibility(8);
      this.mPinText = ((EditText)findViewById(2131427340));
      findViewById(2131427339).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.PinActivity
 * JD-Core Version:    0.5.3
 */