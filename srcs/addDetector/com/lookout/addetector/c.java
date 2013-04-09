package com.lookout.addetector;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

final class c extends ArrayAdapter
{
  c(AdNetworkDetailsActivity paramAdNetworkDetailsActivity, Context paramContext, List paramList)
  {
    super(paramContext, 2131165190, paramList);
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    PackageInfo localPackageInfo = (PackageInfo)getItem(paramInt);
    if (localPackageInfo == null)
      paramView = null;
    TextView localTextView2;
    do
    {
      return paramView;
      if (paramView == null)
        paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903041, null);
      ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
      PackageManager localPackageManager = this.a.getPackageManager();
      ImageView localImageView = (ImageView)paramView.findViewById(2131165204);
      if (localImageView != null)
        localImageView.setImageDrawable(localApplicationInfo.loadIcon(localPackageManager));
      TextView localTextView1 = (TextView)paramView.findViewById(2131165205);
      if (localTextView1 != null)
        localTextView1.setText(localApplicationInfo.loadLabel(localPackageManager));
      localTextView2 = (TextView)paramView.findViewById(2131165208);
    }
    while (localTextView2 == null);
    AdNetworkDetailsActivity localAdNetworkDetailsActivity = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = localPackageInfo.versionName;
    localTextView2.setText(localAdNetworkDetailsActivity.getString(2130968593, arrayOfObject));
    return paramView;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.c
 * JD-Core Version:    0.5.3
 */