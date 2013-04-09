package com.noshufou.android.su;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.ListFragment;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.support.v4.widget.CursorAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.noshufou.android.su.provider.PermissionsProvider.Apps;
import com.noshufou.android.su.util.Util;
import com.noshufou.android.su.widget.AppListItem;
import com.noshufou.android.su.widget.PinnedHeaderListView;
import com.noshufou.android.su.widget.PinnedHeaderListView.PinnedHeaderAdapter;
import com.noshufou.android.su.widget.PinnedHeaderListView.PinnedHeaderCache;
import java.util.HashMap;

public class AppListFragment extends ListFragment
  implements LoaderManager.LoaderCallbacks<Cursor>
{
  private static final int COLUMN_ALLOW = 3;
  private static final int COLUMN_ID = 0;
  private static final int COLUMN_LAST_ACCESS = 4;
  private static final int COLUMN_LAST_ACCESS_TYPE = 5;
  private static final int COLUMN_NAME = 2;
  private static final int COLUMN_UID = 1;
  public static final String[] PROJECTION = { "_id", "uid", "name", "allow", "date", "type" };
  private AppListAdapter mAdapter;
  private LinearLayout mLoadingLayout = null;
  private int mPinnedHeaderBackgroundColor;
  private boolean mShowLogData = true;
  private boolean mShowStatusIcons = true;
  private String mStatusIconType = null;

  private void setupListView()
  {
    ListView localListView = getListView();
    LayoutInflater localLayoutInflater = getActivity().getLayoutInflater();
    localListView.setDividerHeight(0);
    this.mAdapter = new AppListAdapter(null, getActivity());
    setListAdapter(this.mAdapter);
    if ((localListView instanceof PinnedHeaderListView) && (this.mAdapter.getDisplaySectionHeadersEnabled()))
    {
      this.mPinnedHeaderBackgroundColor = -1;
      ((PinnedHeaderListView)localListView).setPinnedHeaderView(localLayoutInflater.inflate(2130903055, localListView, false));
    }
    localListView.setOnScrollListener(this.mAdapter);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setupListView();
    getLoaderManager().initLoader(0, null, this);
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    FragmentActivity localFragmentActivity = getActivity();
    Uri localUri = PermissionsProvider.Apps.CONTENT_URI;
    String[] arrayOfString1 = PROJECTION;
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(-1);
    return new CursorLoader(localFragmentActivity, localUri, arrayOfString1, "allow!=?", arrayOfString2, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903052, paramViewGroup, false);
    this.mLoadingLayout = ((LinearLayout)localView.findViewById(2131427382));
    return localView;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    ((HomeActivity)getActivity()).showDetails(paramLong);
  }

  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    this.mAdapter.swapCursor(paramCursor);
    this.mLoadingLayout.setVisibility(8);
    Fragment localFragment = getActivity().getSupportFragmentManager().findFragmentById(2131427337);
    if (!(localFragment instanceof AppDetailsFragment))
      return;
    long l = ((AppDetailsFragment)localFragment).getShownIndex();
    getListView().setItemChecked(this.mAdapter.getPositionForId(l), true);
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    this.mAdapter.swapCursor(null);
  }

  public void onResume()
  {
    super.onResume();
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
    boolean bool1 = localSharedPreferences.getBoolean("pref_show_status_icons", true);
    boolean bool2 = this.mShowStatusIcons;
    int i = 0;
    if (bool2 != bool1)
      i = 1;
    this.mShowStatusIcons = bool1;
    boolean bool3 = localSharedPreferences.getBoolean("pref_applist_show_log_data", true);
    if (this.mShowLogData != bool3)
      i = 1;
    this.mShowLogData = bool3;
    String str = localSharedPreferences.getString("pref_status_icon_type", "emote");
    if (this.mStatusIconType == null);
    for (i = 0; ; i = 1)
      do
      {
        this.mStatusIconType = str;
        if (i != 0)
          getLoaderManager().restartLoader(0, null, this);
        return;
      }
      while (str.equals(this.mStatusIconType));
  }

  public class AppListAdapter extends CursorAdapter
    implements AbsListView.OnScrollListener, SectionIndexer, PinnedHeaderListView.PinnedHeaderAdapter
  {
    private Cursor mCursor;
    private boolean mDisplaySectionHeaders;
    private int mLastCachedPosition;
    private HashMap<Long, Integer> mPositions;
    private int[] mSectionPositions;
    private final int[] mSectionTypes;
    private final String[] mSections;

    public AppListAdapter(Cursor paramCursor, Context paramContext)
    {
      super(paramContext, paramCursor, false);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = AppListFragment.this.getString(2131165209);
      arrayOfString[1] = AppListFragment.this.getString(2131165211);
      this.mSections = arrayOfString;
      int[] arrayOfInt1 = new int[2];
      arrayOfInt1[0] = 1;
      this.mSectionTypes = arrayOfInt1;
      int[] arrayOfInt2 = new int[2];
      arrayOfInt2[1] = -1;
      this.mSectionPositions = arrayOfInt2;
      this.mDisplaySectionHeaders = true;
      this.mLastCachedPosition = -1;
      if (paramCursor != null);
      for (int i = paramCursor.getCount(); ; i = 0)
      {
        this.mPositions = new HashMap(i);
        this.mLastCachedPosition = -1;
        this.mCursor = paramCursor;
        return;
      }
    }

    private void bindSectionHeader(View paramView, int paramInt, boolean paramBoolean)
    {
      AppListItem localAppListItem = (AppListItem)paramView;
      if (!(paramBoolean))
      {
        localAppListItem.setSectionHeader(null);
        localAppListItem.setDividerVisible(true);
        return;
      }
      int i = getSectionForPosition(paramInt);
      if (getPositionForSection(i) == paramInt)
        localAppListItem.setSectionHeader(this.mSections[i]);
      while (getPositionForSection(i + 1) - 1 == paramInt)
      {
        localAppListItem.setDividerVisible(true);
        return;
        localAppListItem.setDividerVisible(false);
        localAppListItem.setSectionHeader(null);
      }
      localAppListItem.setDividerVisible(true);
    }

    public void bindView(View paramView, Context paramContext, Cursor paramCursor)
    {
      AppListItem localAppListItem = (AppListItem)paramView;
      int i = paramCursor.getInt(1);
      String str = paramCursor.getString(2);
      int j = paramCursor.getInt(3);
      localAppListItem.setAppIcon(Util.getAppIcon(AppListFragment.this.getActivity(), i));
      label70: label99: long l;
      int i1;
      if ((str != null) && (str.length() > 0))
      {
        localAppListItem.setNameText(str);
        if (!(AppListFragment.this.mShowStatusIcons))
          break label248;
        localAppListItem.setStatusButton(Util.getStatusIconDrawable(AppListFragment.this.getActivity(), j), 0, 0L);
        l = paramCursor.getLong(4);
        if ((!(AppListFragment.this.mShowLogData)) || (l <= 0L))
          break label287;
        int k = paramCursor.getInt(5);
        i1 = 2131165224;
        switch (k)
        {
        default:
        case 1:
        case 0:
        case 3:
        case 2:
        }
      }
      while (true)
      {
        AppListFragment localAppListFragment = AppListFragment.this;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Util.formatDate(AppListFragment.this.getActivity(), l);
        arrayOfObject[1] = Util.formatTime(AppListFragment.this.getActivity(), l);
        localAppListItem.setLogText(localAppListFragment.getString(i1, arrayOfObject));
        return;
        localAppListItem.setNameText(AppListFragment.this.getString(2131165216));
        break label70:
        label248: localAppListItem.setStatusButton(null, 0, 0L);
        break label99:
        i1 = 2131165225;
        continue;
        i1 = 2131165226;
        continue;
        i1 = 2131165227;
        continue;
        i1 = 2131165228;
      }
      label287: localAppListItem.setLogText(null);
    }

    public void configurePinnedHeader(View paramView, int paramInt1, int paramInt2)
    {
      PinnedHeaderListView.PinnedHeaderCache localPinnedHeaderCache = (PinnedHeaderListView.PinnedHeaderCache)paramView.getTag();
      if (localPinnedHeaderCache == null)
      {
        localPinnedHeaderCache = new PinnedHeaderListView.PinnedHeaderCache();
        localPinnedHeaderCache.titleView = ((TextView)paramView.findViewById(2131427387));
        localPinnedHeaderCache.textColor = localPinnedHeaderCache.titleView.getTextColors();
        localPinnedHeaderCache.background = paramView.getBackground();
        paramView.setTag(localPinnedHeaderCache);
      }
      int i = getSectionForPosition(paramInt1);
      String str = this.mSections[i];
      localPinnedHeaderCache.titleView.setText(str);
      if (paramInt2 == 255)
      {
        paramView.setBackgroundDrawable(localPinnedHeaderCache.background);
        localPinnedHeaderCache.titleView.setTextColor(localPinnedHeaderCache.textColor);
        return;
      }
      int j = Color.red(AppListFragment.this.mPinnedHeaderBackgroundColor);
      int k = Color.green(AppListFragment.this.mPinnedHeaderBackgroundColor);
      int l = Color.blue(AppListFragment.this.mPinnedHeaderBackgroundColor);
      paramView.setBackgroundColor(Color.rgb(255 - (paramInt2 * (255 - j) / 255), 255 - (paramInt2 * (255 - k) / 255), 255 - (paramInt2 * (255 - l) / 255)));
      int i1 = localPinnedHeaderCache.textColor.getDefaultColor();
      localPinnedHeaderCache.titleView.setTextColor(Color.argb(paramInt2, Color.red(i1), Color.green(i1), Color.blue(i1)));
    }

    public boolean getDisplaySectionHeadersEnabled()
    {
      return this.mDisplaySectionHeaders;
    }

    public int getPinnedHeaderState(int paramInt)
    {
      if ((this.mCursor == null) || (this.mCursor.getCount() == 0) || (this.mCursor.isClosed()))
        return 0;
      if (paramInt < 0)
        return 0;
      int i = getPositionForSection(1 + getSectionForPosition(paramInt));
      if ((i != -1) && (paramInt == i - 1))
        return 2;
      return 1;
    }

    public int getPositionForId(long paramLong)
    {
      if (this.mPositions.containsKey(Long.valueOf(paramLong)))
        return ((Integer)this.mPositions.get(Long.valueOf(paramLong))).intValue();
      this.mCursor.moveToPosition(this.mLastCachedPosition);
      do
      {
        if (!(this.mCursor.moveToNext()))
          return -1;
        this.mLastCachedPosition = (1 + this.mLastCachedPosition);
      }
      while (this.mCursor.getLong(0) != paramLong);
      this.mPositions.put(Long.valueOf(paramLong), Integer.valueOf(this.mLastCachedPosition));
      return this.mLastCachedPosition;
    }

    public int getPositionForSection(int paramInt)
    {
      if (paramInt > 1)
        return this.mCursor.getCount();
      if (this.mSectionPositions[paramInt] > -1)
        return this.mSectionPositions[paramInt];
      Uri localUri = Uri.withAppendedPath(PermissionsProvider.Apps.COUNT_CONTENT_URI, String.valueOf(this.mSectionTypes[(paramInt - 1)]));
      Cursor localCursor = AppListFragment.this.getActivity().getContentResolver().query(localUri, null, null, null, null);
      if (localCursor.moveToFirst());
      for (int i = localCursor.getInt(0); ; i = 0)
      {
        localCursor.close();
        this.mSectionPositions[paramInt] = i;
        return i;
      }
    }

    public int getSectionForPosition(int paramInt)
    {
      if (this.mCursor == null)
        return -1;
      this.mCursor.moveToPosition(paramInt);
      if (this.mCursor.getInt(3) == 1)
        return 0;
      return 1;
    }

    public Object[] getSections()
    {
      return this.mSections;
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = super.getView(paramInt, paramView, paramViewGroup);
      bindSectionHeader(localView, paramInt, true);
      return localView;
    }

    public boolean hasStableIds()
    {
      return true;
    }

    public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
    {
      return new AppListItem(paramContext, null);
    }

    public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
    {
      if ((!(paramAbsListView instanceof PinnedHeaderListView)) || (paramInt2 <= 0))
        return;
      ((PinnedHeaderListView)paramAbsListView).configureHeaderView(paramInt1);
    }

    public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
    {
    }

    public Cursor swapCursor(Cursor paramCursor)
    {
      this.mSectionPositions[1] = -1;
      this.mCursor = paramCursor;
      if (paramCursor != null);
      for (int i = paramCursor.getCount(); ; i = 0)
      {
        this.mPositions = new HashMap(i);
        this.mLastCachedPosition = -1;
        return super.swapCursor(paramCursor);
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.AppListFragment
 * JD-Core Version:    0.5.3
 */