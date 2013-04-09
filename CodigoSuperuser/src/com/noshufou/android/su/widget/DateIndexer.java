package com.noshufou.android.su.widget;

import android.content.Context;
import android.database.Cursor;
import android.util.Log;
import android.widget.SectionIndexer;
import com.noshufou.android.su.util.Util;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;

public class DateIndexer
  implements SectionIndexer
{
  private static final String TAG = "Su.DateIndexer";
  private int mColumnIndex;
  private Cursor mCursor;
  private SimpleDateFormat mIntFormat;
  private int mSectionCount;
  private int[] mSectionDates;
  private int[] mSectionPositions;
  private String[] mSections;

  public DateIndexer(Context paramContext, Cursor paramCursor, int paramInt)
  {
    this.mCursor = paramCursor;
    this.mColumnIndex = paramInt;
    this.mIntFormat = new SimpleDateFormat("yyyyDDD");
    GregorianCalendar localGregorianCalendar = new GregorianCalendar();
    this.mCursor.moveToFirst();
    long l1 = this.mCursor.getLong(this.mColumnIndex);
    this.mCursor.moveToLast();
    long l2 = this.mCursor.getLong(this.mColumnIndex);
    this.mSectionCount = (1 + Integer.parseInt(this.mIntFormat.format(Long.valueOf(l1))) - Integer.parseInt(this.mIntFormat.format(Long.valueOf(l2))));
    this.mSections = new String[this.mSectionCount];
    this.mSectionDates = new int[this.mSectionCount];
    this.mSectionPositions = new int[this.mSectionCount];
    localGregorianCalendar.setTimeInMillis(l1);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mSectionCount)
        return;
      this.mSections[i] = Util.formatDate(paramContext, localGregorianCalendar.getTimeInMillis());
      this.mSectionDates[i] = Integer.parseInt(this.mIntFormat.format(localGregorianCalendar.getTime()));
      this.mSectionPositions[i] = -1;
      localGregorianCalendar.add(5, -1);
    }
  }

  public int getPositionForSection(int paramInt)
  {
    if (this.mCursor == null)
      return 0;
    if (paramInt <= 0)
      return 0;
    if (paramInt >= this.mSectionCount)
      return this.mCursor.getCount();
    if (this.mSectionPositions[paramInt] > 0)
      return this.mSectionPositions[paramInt];
    int i = this.mCursor.getCount();
    int j = paramInt - 1;
    int k = 0;
    int l;
    if (j <= 0)
      l = this.mCursor.getPosition();
    for (int i1 = k; ; ++i1)
    {
      if (i1 >= i)
      {
        this.mCursor.moveToPosition(l);
        return 0;
        if (this.mSectionPositions[j] > 0)
          k = this.mSectionPositions[j];
        --j;
      }
      if (!(this.mCursor.moveToPosition(i1)))
        continue;
      long l1 = this.mCursor.getLong(this.mColumnIndex);
      int i2 = Integer.parseInt(this.mIntFormat.format(Long.valueOf(l1)));
      if (this.mSectionDates[paramInt] < i2)
        continue;
      this.mSectionPositions[paramInt] = i1;
      return i1;
    }
  }

  public int getSectionForPosition(int paramInt)
  {
    int i = this.mCursor.getPosition();
    this.mCursor.moveToPosition(paramInt);
    long l = this.mCursor.getLong(this.mColumnIndex);
    this.mCursor.moveToPosition(i);
    int j = Integer.parseInt(this.mIntFormat.format(Long.valueOf(l)));
    for (int k = 0; ; ++k)
    {
      if (k >= this.mSectionCount)
      {
        Log.e("Su.DateIndexer", "Section not found for date " + j);
        return 0;
      }
      if (j == this.mSectionDates[k])
        return k;
    }
  }

  public Object[] getSections()
  {
    return this.mSections;
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.DateIndexer
 * JD-Core Version:    0.5.3
 */