package com.lookout.addetector;

import android.content.Context;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
import java.util.HashMap;
import java.util.List;

public final class e extends BaseExpandableListAdapter
{
  private Context a;
  private Parcelable[] b;

  public e(Context paramContext, Parcelable[] paramArrayOfParcelable)
  {
    this.a = paramContext;
    this.b = paramArrayOfParcelable;
  }

  private void a()
  {
    Log.d("AdNetworkScanner", "buildResults called again?: " + this.b.length);
  }

  public final boolean areAllItemsEnabled()
  {
    return false;
  }

  public final Object getChild(int paramInt1, int paramInt2)
  {
    return ((CapabilityInfo)this.b[paramInt1]).b()[paramInt2];
  }

  public final long getChildId(int paramInt1, int paramInt2)
  {
    return paramInt2;
  }

  public final int getChildType(int paramInt1, int paramInt2)
  {
    f.a();
    return (paramInt2 + paramInt1 * f.b());
  }

  public final int getChildTypeCount()
  {
    int i = this.b.length;
    f.a();
    return (i * f.b());
  }

  public final View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    AdNetworkInfo localAdNetworkInfo = (AdNetworkInfo)getChild(paramInt1, paramInt2);
    if (paramView == null)
      paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903047, null);
    TextView localTextView = (TextView)paramView.findViewById(2131165227);
    List localList;
    if (localAdNetworkInfo != null)
    {
      localList = (List)w.a.get(localAdNetworkInfo);
      if (localList == null)
        break label146;
    }
    for (int i = localList.size(); ; i = 0)
    {
      StringBuilder localStringBuilder = new StringBuilder(String.valueOf(localAdNetworkInfo.a(this.a))).append(" (").append(i);
      if (i == 1);
      for (String str = " app)"; ; str = " apps)")
      {
        localTextView.setText(str);
        label146: return paramView;
      }
    }
  }

  public final int getChildrenCount(int paramInt)
  {
    return ((CapabilityInfo)this.b[paramInt]).b().length;
  }

  public final Object getGroup(int paramInt)
  {
    return this.b[paramInt];
  }

  public final int getGroupCount()
  {
    return this.b.length;
  }

  public final long getGroupId(int paramInt)
  {
    return paramInt;
  }

  public final View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    CapabilityInfo localCapabilityInfo = (CapabilityInfo)getGroup(paramInt);
    if (localCapabilityInfo == null)
      paramView = null;
    TextView localTextView2;
    do
    {
      return paramView;
      if (paramView == null)
        paramView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903042, null);
      TextView localTextView1 = (TextView)paramView.findViewById(2131165211);
      if (localTextView1 != null)
        localTextView1.setText(localCapabilityInfo.a());
      localTextView2 = (TextView)paramView.findViewById(2131165210);
    }
    while (localTextView2 == null);
    localTextView2.setText(localCapabilityInfo.b().length);
    return paramView;
  }

  public final boolean hasStableIds()
  {
    return true;
  }

  public final boolean isChildSelectable(int paramInt1, int paramInt2)
  {
    return true;
  }

  public final void notifyDataSetChanged()
  {
    a();
    super.notifyDataSetChanged();
  }

  public final void notifyDataSetInvalidated()
  {
    a();
    super.notifyDataSetInvalidated();
  }
}

/* Location:           C:\Users\Aitor\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\com.lookout.addetector-6-v1.2-dex2jar\
 * Qualified Name:     com.lookout.addetector.e
 * JD-Core Version:    0.5.3
 */