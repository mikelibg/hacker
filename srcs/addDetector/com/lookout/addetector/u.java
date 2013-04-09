package com.lookout.addetector;

import android.content.Intent;
import android.view.View;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;

final class u
  implements ExpandableListView.OnChildClickListener
{
  public final boolean onChildClick(ExpandableListView paramExpandableListView, View paramView, int paramInt1, int paramInt2, long paramLong)
  {
    AdNetworkInfo localAdNetworkInfo = (AdNetworkInfo)ScannerResultsActivity.a(this.a).getChild(paramInt1, paramInt2);
    if (localAdNetworkInfo != null)
      this.a.startActivity(new Intent(this.a, AdNetworkDetailsActivity.class).putExtra("com.lookout.addetector.AdNetwork", localAdNetworkInfo));
    return true;
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.u
 * JD-Core Version:    0.5.3
 */