package com.lookout.addetector;

import android.app.ExpandableListActivity;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class ScannerResultsActivity extends ExpandableListActivity
{
  private Parcelable[] a = null;
  private int b;
  private BaseExpandableListAdapter c = null;
  private ExpandableListView d;

  private Parcelable[] a()
  {
    ArrayList localArrayList1 = new ArrayList();
    h[] arrayOfh = h.values();
    int i = arrayOfh.length;
    int j = 0;
    if (j >= i)
      return ((Parcelable[])localArrayList1.toArray(new Parcelable[0]));
    h localh = arrayOfh[j];
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = w.a.keySet().iterator();
    while (true)
    {
      if (!(localIterator.hasNext()))
      {
        localArrayList1.add(new CapabilityInfo(localh.a(getApplicationContext()), (AdNetworkInfo[])localArrayList2.toArray(new AdNetworkInfo[0])));
        ++j;
      }
      AdNetworkInfo localAdNetworkInfo = (AdNetworkInfo)localIterator.next();
      if ((!(localAdNetworkInfo.a(localh))) || (((ArrayList)w.a.get(localAdNetworkInfo)).size() <= 0))
        continue;
      localArrayList2.add(localAdNetworkInfo);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    Log.d("AdNetworkScanner", "onCreate called for ScannerResultsActivity");
    super.onCreate(paramBundle);
    if ((w.a == null) || (w.b == null))
    {
      Log.e("AdNetworkScanner", "Ad Network state was lost");
      finish();
      return;
    }
    Log.d("AdNetworkScanner", "Ad Network state still persisted for ScannerResultsActivity");
    setContentView(2130903043);
    findViewById(2131165219).setPadding(0, 0, 0, 0);
    this.d = getExpandableListView();
    this.a = w.b;
    this.b = w.a.size();
    this.c = new e(this, this.a);
    this.d.setAdapter(this.c);
    this.d.setOnChildClickListener(new u(this));
    findViewById(2131165216).setOnClickListener(new v(this));
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    Log.d("AdNetworkScanner", "On resume called: " + this.a.length);
    this.a = a();
    this.c = new e(this, this.a);
    this.d.setAdapter(this.c);
    this.d.invalidateViews();
    this.c.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.ScannerResultsActivity
 * JD-Core Version:    0.5.3
 */