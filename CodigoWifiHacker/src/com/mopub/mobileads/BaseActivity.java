package com.mopub.mobileads;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public abstract class BaseActivity extends Activity
{
  private static final float CLOSE_BUTTON_PADDING_DP = 8.0F;
  private static final float CLOSE_BUTTON_SIZE_DP = 50.0F;
  private ImageView mCloseButton;
  private RelativeLayout mLayout;

  public abstract View getAdView();

  protected void hideInterstitialCloseButton()
  {
    this.mLayout.removeView(this.mCloseButton);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().addFlags(1024);
    this.mLayout = new RelativeLayout(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams.addRule(13);
    this.mLayout.addView(getAdView(), localLayoutParams);
    setContentView(this.mLayout);
    showInterstitialCloseButton();
  }

  protected void onDestroy()
  {
    this.mLayout.removeAllViews();
    super.onDestroy();
  }

  protected void showInterstitialCloseButton()
  {
    if (this.mCloseButton == null)
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      localStateListDrawable.addState(new int[] { -16842919 }, getResources().getDrawable(R.drawable.close_button_normal));
      localStateListDrawable.addState(new int[] { 16842919 }, getResources().getDrawable(R.drawable.close_button_pressed));
      this.mCloseButton = new ImageButton(this);
      this.mCloseButton.setImageDrawable(localStateListDrawable);
      this.mCloseButton.setBackgroundDrawable(null);
      this.mCloseButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          BaseActivity.this.finish();
        }
      });
    }
    float f = getResources().getDisplayMetrics().density;
    int i = (int)(0.5F + 50.0F * f);
    int j = (int)(0.5F + 8.0F * f);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(i, i);
    localLayoutParams.addRule(11);
    localLayoutParams.setMargins(j, 0, j, 0);
    this.mLayout.removeView(this.mCloseButton);
    this.mLayout.addView(this.mCloseButton, localLayoutParams);
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.mopub.mobileads.BaseActivity
 * JD-Core Version:    0.5.3
 */