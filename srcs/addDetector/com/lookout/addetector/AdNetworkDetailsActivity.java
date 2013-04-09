package com.lookout.addetector;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

public class AdNetworkDetailsActivity extends Activity
{
  private AdNetworkInfo a;
  private ListAdapter b;
  private ListView c;

  private ListAdapter a(ArrayList paramArrayList)
  {
    return new c(this, this, paramArrayList);
  }

  private void a(ListView paramListView, int paramInt)
  {
    ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    localLayoutParams.height = Math.round(paramInt * 53 * localDisplayMetrics.density);
    paramListView.setLayoutParams(localLayoutParams);
    findViewById(2131165184).scrollTo(0, 0);
    ((ScrollView)findViewById(2131165185)).fullScroll(33);
  }

  protected void onCreate(Bundle paramBundle)
  {
    Log.d("AdNetworkScanner", "onCreate called for AdNetworkDetailsActivity");
    super.onCreate(paramBundle);
    if ((w.a == null) || (getIntent() == null) || (!(getIntent().hasExtra("com.lookout.addetector.AdNetwork"))))
    {
      Log.e("AdNetworkScanner", "Ad Network state was lost");
      finish();
      return;
    }
    Log.d("AdNetworkScanner", "Ad Network state still persisted for AdNetworkDetailsActivity");
    this.a = ((AdNetworkInfo)getIntent().getParcelableExtra("com.lookout.addetector.AdNetwork"));
    ArrayList localArrayList = (ArrayList)w.a.get(this.a);
    setContentView(2130903040);
    this.c = ((ListView)findViewById(2131165193));
    a(this.c, localArrayList.size());
    ((TextView)findViewById(2131165190)).setText(this.a.a);
    ((TextView)findViewById(2131165196)).setText(this.a.c);
    ((TextView)findViewById(2131165199)).setText(this.a.d);
    TextView localTextView = (TextView)findViewById(2131165202);
    String str1 = getString(this.a.e);
    label222: Button localButton;
    String str2;
    if (TextUtils.isEmpty(str1))
    {
      findViewById(2131165200).setVisibility(8);
      localButton = (Button)findViewById(2131165203);
      str2 = this.a.b(this);
      if (!(TextUtils.isEmpty(str2)))
        break label320;
      localButton.setVisibility(8);
    }
    while (true)
    {
      localButton.setOnClickListener(new a(this, str2));
      this.b = a(localArrayList);
      this.c.setAdapter(this.b);
      this.c.setOnItemClickListener(new b(this));
      return;
      localTextView.setText(str1);
      break label222:
      if ((str2.startsWith("http")) || (str2.startsWith("www")))
        label320: localButton.setBackgroundResource(2130837524);
      if (str2.startsWith("market"))
        localButton.setBackgroundResource(2130837514);
      Log.e("AdNetworkScanner", "Invalid opt-out path: " + str2);
    }
  }

  protected void onResume()
  {
    ArrayList localArrayList = (ArrayList)w.a.get(this.a);
    Iterator localIterator = localArrayList.iterator();
    int i = 0;
    while (true)
    {
      if (!(localIterator.hasNext()))
      {
        if (i != 0)
        {
          this.b = a(localArrayList);
          this.c.setAdapter(this.b);
          a(this.c, localArrayList.size());
        }
        super.onResume();
        return;
      }
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      try
      {
        getPackageManager().getPackageInfo(localPackageInfo.packageName, 0);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localIterator.remove();
        i = 1;
      }
    }
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.AdNetworkDetailsActivity
 * JD-Core Version:    0.5.3
 */