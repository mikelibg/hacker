package com.noshufou.android.su;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.ListFragment;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.noshufou.android.su.provider.PermissionsProvider.Logs;
import com.noshufou.android.su.widget.LogAdapter;
import com.noshufou.android.su.widget.PinnedHeaderListView;

public class LogFragment extends ListFragment
  implements LoaderManager.LoaderCallbacks<Cursor>, FragmentWithLog, View.OnClickListener
{
  private LogAdapter mAdapter = null;
  private TextView mLogCountTextView = null;

  public static LogFragment newInstance()
  {
    return new LogFragment();
  }

  private void setupListView()
  {
    ListView localListView = getListView();
    LayoutInflater localLayoutInflater = getActivity().getLayoutInflater();
    localListView.setDividerHeight(0);
    this.mAdapter = new LogAdapter(null, getActivity());
    setListAdapter(this.mAdapter);
    if ((localListView instanceof PinnedHeaderListView) && (this.mAdapter.getDisplaySectionHeadersEnabled()))
      ((PinnedHeaderListView)localListView).setPinnedHeaderView(localLayoutInflater.inflate(2130903056, localListView, false));
    localListView.setOnScrollListener(this.mAdapter);
  }

  public void clearLog()
  {
    getActivity().getContentResolver().delete(PermissionsProvider.Logs.CONTENT_URI, null, null);
  }

  public void clearLog(View paramView)
  {
    clearLog();
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    ListFragment localListFragment = (ListFragment)getActivity().getSupportFragmentManager().findFragmentById(2131427336);
    if (localListFragment != null)
      localListFragment.getListView().clearChoices();
    setupListView();
    getLoaderManager().initLoader(0, null, this);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427377:
    }
    clearLog();
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new CursorLoader(getActivity(), PermissionsProvider.Logs.CONTENT_URI, LogAdapter.PROJECTION, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903053, paramViewGroup, false);
    this.mLogCountTextView = ((TextView)localView1.findViewById(2131427383));
    View localView2 = localView1.findViewById(2131427377);
    if (localView2 != null)
      localView2.setOnClickListener(this);
    return localView1;
  }

  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    this.mAdapter.swapCursor(paramCursor);
    TextView localTextView = this.mLogCountTextView;
    Object[] arrayOfObject = new Object[1];
    if (paramCursor != null);
    for (int i = paramCursor.getCount(); ; i = 0)
    {
      arrayOfObject[0] = Integer.valueOf(i);
      localTextView.setText(getString(2131165223, arrayOfObject));
      this.mLogCountTextView.setVisibility(0);
      return;
    }
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    this.mAdapter.swapCursor(null);
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.LogFragment
 * JD-Core Version:    0.5.3
 */