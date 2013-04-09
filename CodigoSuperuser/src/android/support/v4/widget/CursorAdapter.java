package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class CursorAdapter extends BaseAdapter
  implements Filterable, CursorFilter.CursorFilterClient
{

  @Deprecated
  public static final int FLAG_AUTO_REQUERY = 1;
  public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
  protected boolean mAutoRequery;
  protected ChangeObserver mChangeObserver;
  protected Context mContext;
  protected Cursor mCursor;
  protected CursorFilter mCursorFilter;
  protected DataSetObserver mDataSetObserver;
  protected boolean mDataValid;
  protected FilterQueryProvider mFilterQueryProvider;
  protected int mRowIDColumn;

  @Deprecated
  public CursorAdapter(Context paramContext, Cursor paramCursor)
  {
    init(paramContext, paramCursor, 1);
  }

  public CursorAdapter(Context paramContext, Cursor paramCursor, int paramInt)
  {
    init(paramContext, paramCursor, paramInt);
  }

  public CursorAdapter(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      init(paramContext, paramCursor, i);
      return;
    }
  }

  public abstract void bindView(View paramView, Context paramContext, Cursor paramCursor);

  public void changeCursor(Cursor paramCursor)
  {
    Cursor localCursor = swapCursor(paramCursor);
    if (localCursor == null)
      return;
    localCursor.close();
  }

  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null)
      return "";
    return paramCursor.toString();
  }

  public int getCount()
  {
    if ((this.mDataValid) && (this.mCursor != null))
      return this.mCursor.getCount();
    return 0;
  }

  public Cursor getCursor()
  {
    return this.mCursor;
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (this.mDataValid)
    {
      this.mCursor.moveToPosition(paramInt);
      if (paramView == null);
      for (View localView = newDropDownView(this.mContext, this.mCursor, paramViewGroup); ; localView = paramView)
      {
        bindView(localView, this.mContext, this.mCursor);
        return localView;
      }
    }
    return null;
  }

  public Filter getFilter()
  {
    if (this.mCursorFilter == null)
      this.mCursorFilter = new CursorFilter(this);
    return this.mCursorFilter;
  }

  public FilterQueryProvider getFilterQueryProvider()
  {
    return this.mFilterQueryProvider;
  }

  public Object getItem(int paramInt)
  {
    if ((this.mDataValid) && (this.mCursor != null))
    {
      this.mCursor.moveToPosition(paramInt);
      return this.mCursor;
    }
    return null;
  }

  public long getItemId(int paramInt)
  {
    if ((this.mDataValid) && (this.mCursor != null))
    {
      if (this.mCursor.moveToPosition(paramInt))
        return this.mCursor.getLong(this.mRowIDColumn);
      return 0L;
    }
    return 0L;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (!(this.mDataValid))
      throw new IllegalStateException("this should only be called when the cursor is valid");
    if (!(this.mCursor.moveToPosition(paramInt)))
      throw new IllegalStateException("couldn't move cursor to position " + paramInt);
    if (paramView == null);
    for (View localView = newView(this.mContext, this.mCursor, paramViewGroup); ; localView = paramView)
    {
      bindView(localView, this.mContext, this.mCursor);
      return localView;
    }
  }

  public boolean hasStableIds()
  {
    return true;
  }

  void init(Context paramContext, Cursor paramCursor, int paramInt)
  {
    label16: int i;
    label23: int j;
    if ((paramInt & 0x1) == 1)
    {
      paramInt |= 2;
      this.mAutoRequery = true;
      if (paramCursor == null)
        break label140;
      i = 1;
      this.mCursor = paramCursor;
      this.mDataValid = i;
      this.mContext = paramContext;
      if (i == 0)
        break label146;
      j = paramCursor.getColumnIndexOrThrow("_id");
      label54: this.mRowIDColumn = j;
      if ((paramInt & 0x2) != 2)
        break label152;
      this.mChangeObserver = new ChangeObserver();
    }
    for (this.mDataSetObserver = new MyDataSetObserver(null); ; this.mDataSetObserver = null)
    {
      if (i != 0)
      {
        if (this.mChangeObserver != null)
          paramCursor.registerContentObserver(this.mChangeObserver);
        if (this.mDataSetObserver != null)
          paramCursor.registerDataSetObserver(this.mDataSetObserver);
      }
      return;
      this.mAutoRequery = false;
      break label16:
      label140: i = 0;
      break label23:
      label146: j = -1;
      break label54:
      label152: this.mChangeObserver = null;
    }
  }

  @Deprecated
  protected void init(Context paramContext, Cursor paramCursor, boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 1; ; i = 2)
    {
      init(paramContext, paramCursor, i);
      return;
    }
  }

  public View newDropDownView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return newView(paramContext, paramCursor, paramViewGroup);
  }

  public abstract View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup);

  protected void onContentChanged()
  {
    if ((!(this.mAutoRequery)) || (this.mCursor == null) || (this.mCursor.isClosed()))
      return;
    this.mDataValid = this.mCursor.requery();
  }

  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (this.mFilterQueryProvider != null)
      return this.mFilterQueryProvider.runQuery(paramCharSequence);
    return this.mCursor;
  }

  public void setFilterQueryProvider(FilterQueryProvider paramFilterQueryProvider)
  {
    this.mFilterQueryProvider = paramFilterQueryProvider;
  }

  public Cursor swapCursor(Cursor paramCursor)
  {
    if (paramCursor == this.mCursor)
      return null;
    Cursor localCursor = this.mCursor;
    if (localCursor != null)
    {
      if (this.mChangeObserver != null)
        localCursor.unregisterContentObserver(this.mChangeObserver);
      if (this.mDataSetObserver != null)
        localCursor.unregisterDataSetObserver(this.mDataSetObserver);
    }
    this.mCursor = paramCursor;
    if (paramCursor != null)
    {
      if (this.mChangeObserver != null)
        paramCursor.registerContentObserver(this.mChangeObserver);
      if (this.mDataSetObserver != null)
        paramCursor.registerDataSetObserver(this.mDataSetObserver);
      this.mRowIDColumn = paramCursor.getColumnIndexOrThrow("_id");
      this.mDataValid = true;
      notifyDataSetChanged();
    }
    while (true)
    {
      return localCursor;
      this.mRowIDColumn = -1;
      this.mDataValid = false;
      notifyDataSetInvalidated();
    }
  }

  private class ChangeObserver extends ContentObserver
  {
    public ChangeObserver()
    {
      super(new Handler());
    }

    public boolean deliverSelfNotifications()
    {
      return true;
    }

    public void onChange(boolean paramBoolean)
    {
      CursorAdapter.this.onContentChanged();
    }
  }

  private class MyDataSetObserver extends DataSetObserver
  {
    public void onChanged()
    {
      CursorAdapter.this.mDataValid = true;
      CursorAdapter.this.notifyDataSetChanged();
    }

    public void onInvalidated()
    {
      CursorAdapter.this.mDataValid = false;
      CursorAdapter.this.notifyDataSetInvalidated();
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.widget.CursorAdapter
 * JD-Core Version:    0.5.3
 */