package com.noshufou.android.su.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.database.Cursor;
import android.graphics.Color;
import android.support.v4.widget.CursorAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.noshufou.android.su.util.Util;

public class LogAdapter extends CursorAdapter
  implements AbsListView.OnScrollListener, SectionIndexer, PinnedHeaderListView.PinnedHeaderAdapter
{
  private static final int LOG_COLUMN_DATE = 2;
  private static final int LOG_COLUMN_NAME = 1;
  private static final int LOG_COLUMN_TYPE = 3;
  public static final String[] PROJECTION = { "_id", "name", "date", "type" };
  private Context mContext;
  private Cursor mCursor;
  private boolean mDisplaySectionHeaders;
  private SectionIndexer mIndexer;
  private boolean mShowName;

  public LogAdapter(Cursor paramCursor, Context paramContext)
  {
    super(paramContext, paramCursor, false);
    this.mDisplaySectionHeaders = true;
    this.mShowName = true;
    this.mCursor = paramCursor;
    this.mContext = paramContext;
  }

  public LogAdapter(Cursor paramCursor, Context paramContext, boolean paramBoolean)
  {
    this(paramCursor, paramContext);
    this.mShowName = paramBoolean;
  }

  private void bindSectionHeader(View paramView, int paramInt, boolean paramBoolean)
  {
    LogListItem localLogListItem = (LogListItem)paramView;
    if (!(paramBoolean))
    {
      localLogListItem.setSectionHeader(null);
      localLogListItem.setDividerVisible(true);
      return;
    }
    int i = getSectionForPosition(paramInt);
    if (getPositionForSection(i) == paramInt)
      localLogListItem.setSectionHeader((String)this.mIndexer.getSections()[i]);
    while (getPositionForSection(i + 1) - 1 == paramInt)
    {
      localLogListItem.setDividerVisible(false);
      return;
      localLogListItem.setDividerVisible(false);
      localLogListItem.setSectionHeader(null);
    }
    localLogListItem.setDividerVisible(true);
  }

  private void updateIndexer(Cursor paramCursor)
  {
    if ((paramCursor == null) || (paramCursor.getCount() == 0))
    {
      this.mIndexer = null;
      return;
    }
    this.mIndexer = new DateIndexer(this.mContext, paramCursor, 2);
  }

  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    LogListItem localLogListItem = (LogListItem)paramView;
    localLogListItem.setTimeText(Util.formatTime(paramContext, paramCursor.getLong(2)));
    if (this.mShowName)
      localLogListItem.setNameText(paramCursor.getString(1));
    int i = 2131165216;
    switch (paramCursor.getInt(3))
    {
    default:
    case 1:
    case 0:
    case 2:
    case 3:
    }
    while (true)
    {
      localLogListItem.setTypeText(this.mContext.getString(i));
      return;
      i = 2131165217;
      continue;
      i = 2131165218;
      continue;
      i = 2131165219;
      continue;
      i = 2131165220;
    }
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
    String str = (String)this.mIndexer.getSections()[i];
    localPinnedHeaderCache.titleView.setText(str);
    if (paramInt2 == 255)
    {
      paramView.setBackgroundDrawable(localPinnedHeaderCache.background);
      localPinnedHeaderCache.titleView.setTextColor(localPinnedHeaderCache.textColor);
      return;
    }
    paramView.setBackgroundColor(16777215);
    int j = localPinnedHeaderCache.textColor.getDefaultColor();
    localPinnedHeaderCache.titleView.setTextColor(Color.argb(paramInt2, Color.red(j), Color.green(j), Color.blue(j)));
  }

  public boolean getDisplaySectionHeadersEnabled()
  {
    return this.mDisplaySectionHeaders;
  }

  public int getPinnedHeaderState(int paramInt)
  {
    if ((this.mIndexer == null) || (this.mCursor == null) || (this.mCursor.getCount() == 0) || (this.mCursor.isClosed()))
      return 0;
    if (paramInt < 0)
      return 0;
    int i = getPositionForSection(1 + getSectionForPosition(paramInt));
    if ((i != -1) && (paramInt == i - 1))
      return 2;
    return 1;
  }

  public int getPositionForSection(int paramInt)
  {
    if (this.mIndexer == null)
      return -1;
    return this.mIndexer.getPositionForSection(paramInt);
  }

  public int getSectionForPosition(int paramInt)
  {
    if (this.mIndexer == null)
      return -1;
    return this.mIndexer.getSectionForPosition(paramInt);
  }

  public Object[] getSections()
  {
    if (this.mIndexer == null)
      return new String[] { " " };
    return this.mIndexer.getSections();
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
    return new LogListItem(paramContext, null);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (!(paramAbsListView instanceof PinnedHeaderListView))
      return;
    ((PinnedHeaderListView)paramAbsListView).configureHeaderView(paramInt1);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    this.mCursor = paramCursor;
    updateIndexer(paramCursor);
    return super.swapCursor(paramCursor);
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.LogAdapter
 * JD-Core Version:    0.5.3
 */