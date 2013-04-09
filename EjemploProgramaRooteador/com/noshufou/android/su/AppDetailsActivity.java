package com.noshufou.android.su;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.View;
import com.noshufou.android.su.util.Util;

public class AppDetailsActivity extends FragmentActivity
{
  public void goHome(View paramView)
  {
    Util.goHome(this);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Configuration localConfiguration = getResources().getConfiguration();
    if ((localConfiguration.orientation == 2) && (localConfiguration.screenLayout == 4))
      finish();
    do
    {
      return;
      setContentView(2130903040);
    }
    while (paramBundle != null);
    Fragment localFragment = Fragment.instantiate(this, AppDetailsFragment.class.getName(), getIntent().getExtras());
    getSupportFragmentManager().beginTransaction().add(2131427331, localFragment).commit();
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.AppDetailsActivity
 * JD-Core Version:    0.5.3
 */