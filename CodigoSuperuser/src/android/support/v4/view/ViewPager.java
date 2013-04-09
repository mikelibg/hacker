package android.support.v4.view;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.Scroller;
import java.util.ArrayList;

public class ViewPager extends ViewGroup
{
  private static final boolean DEBUG = 0;
  private static final int INVALID_POINTER = -1;
  public static final int SCROLL_STATE_DRAGGING = 1;
  public static final int SCROLL_STATE_IDLE = 0;
  public static final int SCROLL_STATE_SETTLING = 2;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE;
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCurItem;
  private boolean mInLayout;
  private float mInitialMotionX;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<ItemInfo> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private PagerAdapter.DataSetObserver mObserver;
  private OnPageChangeListener mOnPageChangeListener;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrolling;
  private boolean mScrollingCacheEnabled;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;

  public ViewPager(Context paramContext)
  {
    super(paramContext);
    initViewPager();
  }

  public ViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initViewPager();
  }

  private void completeScroll()
  {
    boolean bool = this.mScrolling;
    if (bool)
    {
      setScrollingCacheEnabled(false);
      this.mScroller.abortAnimation();
      int j = getScrollX();
      int k = getScrollY();
      int l = this.mScroller.getCurrX();
      int i1 = this.mScroller.getCurrY();
      if ((j != l) || (k != i1))
        scrollTo(l, i1);
      setScrollState(0);
    }
    this.mPopulatePending = false;
    this.mScrolling = false;
    for (int i = 0; ; ++i)
    {
      if (i >= this.mItems.size())
      {
        if (bool)
          populate();
        return;
      }
      ItemInfo localItemInfo = (ItemInfo)this.mItems.get(i);
      if (!(localItemInfo.scrolling))
        continue;
      bool = true;
      localItemInfo.scrolling = false;
    }
  }

  private void endDrag()
  {
    this.mIsBeingDragged = false;
    this.mIsUnableToDrag = false;
    if (this.mVelocityTracker == null)
      return;
    this.mVelocityTracker.recycle();
    this.mVelocityTracker = null;
  }

  private void onSecondaryPointerUp(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.mActivePointerId)
      if (i != 0)
        break label56;
    for (int j = 1; ; j = 0)
    {
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      if (this.mVelocityTracker != null)
        this.mVelocityTracker.clear();
      label56: return;
    }
  }

  private void setScrollState(int paramInt)
  {
    if (this.mScrollState == paramInt);
    do
    {
      return;
      this.mScrollState = paramInt;
    }
    while (this.mOnPageChangeListener == null);
    this.mOnPageChangeListener.onPageScrollStateChanged(paramInt);
  }

  private void setScrollingCacheEnabled(boolean paramBoolean)
  {
    if (this.mScrollingCacheEnabled == paramBoolean)
      return;
    this.mScrollingCacheEnabled = paramBoolean;
  }

  void addNewItem(int paramInt1, int paramInt2)
  {
    ItemInfo localItemInfo = new ItemInfo();
    localItemInfo.position = paramInt1;
    localItemInfo.object = this.mAdapter.instantiateItem(this, paramInt1);
    if (paramInt2 < 0)
    {
      this.mItems.add(localItemInfo);
      return;
    }
    this.mItems.add(paramInt2, localItemInfo);
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (this.mInLayout)
    {
      addViewInLayout(paramView, paramInt, paramLayoutParams);
      paramView.measure(this.mChildWidthMeasureSpec, this.mChildHeightMeasureSpec);
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public void computeScroll()
  {
    if ((!(this.mScroller.isFinished())) && (this.mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.mScroller.getCurrX();
      int l = this.mScroller.getCurrY();
      if ((i != k) || (j != l))
        scrollTo(k, l);
      if (this.mOnPageChangeListener != null)
      {
        int i1 = getWidth();
        int i2 = k / i1;
        int i3 = k % i1;
        float f = i3 / i1;
        this.mOnPageChangeListener.onPageScrolled(i2, f, i3);
      }
      invalidate();
      return;
    }
    completeScroll();
  }

  void dataSetChanged()
  {
    if ((this.mItems.isEmpty()) && (this.mAdapter.getCount() > 0));
    int j;
    int k;
    for (int i = 1; ; i = 0)
    {
      j = -1;
      k = 0;
      label26: if (k < this.mItems.size())
        break;
      if (j >= 0)
      {
        setCurrentItemInternal(j, false, true);
        i = 1;
      }
      if (i != 0)
      {
        populate();
        requestLayout();
      }
      return;
    }
    ItemInfo localItemInfo = (ItemInfo)this.mItems.get(k);
    int l = this.mAdapter.getItemPosition(localItemInfo.object);
    if (l == -1);
    while (true)
    {
      ++k;
      break label26:
      if (l == -2)
      {
        this.mItems.remove(k);
        --k;
        this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
        i = 1;
        if (this.mCurItem != localItemInfo.position)
          continue;
        j = Math.max(0, Math.min(this.mCurItem, this.mAdapter.getCount() - 1));
      }
      if (localItemInfo.position == l)
        continue;
      if (localItemInfo.position == this.mCurItem)
        j = l;
      localItemInfo.position = l;
      i = 1;
    }
  }

  public PagerAdapter getAdapter()
  {
    return this.mAdapter;
  }

  ItemInfo infoForChild(View paramView)
  {
    for (int i = 0; ; ++i)
    {
      if (i >= this.mItems.size())
        return null;
      ItemInfo localItemInfo = (ItemInfo)this.mItems.get(i);
      if (this.mAdapter.isViewFromObject(paramView, localItemInfo.object))
        return localItemInfo;
    }
  }

  void initViewPager()
  {
    setWillNotDraw(false);
    this.mScroller = new Scroller(getContext());
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.mMinimumVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.mAdapter == null)
      return;
    populate();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0xFF & paramMotionEvent.getAction();
    if ((i == 3) || (i == 1))
    {
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      this.mActivePointerId = -1;
      return false;
    }
    if (i != 0)
    {
      if (this.mIsBeingDragged)
        return true;
      if (this.mIsUnableToDrag)
        return false;
    }
    switch (i)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      return this.mIsBeingDragged;
      int j = this.mActivePointerId;
      if ((j == -1) && (Build.VERSION.SDK_INT > 4))
        continue;
      int k = MotionEventCompat.findPointerIndex(paramMotionEvent, j);
      float f2 = MotionEventCompat.getX(paramMotionEvent, k);
      float f3 = Math.abs(f2 - this.mLastMotionX);
      float f4 = Math.abs(MotionEventCompat.getY(paramMotionEvent, k) - this.mLastMotionY);
      if ((f3 > this.mTouchSlop) && (f3 > f4))
      {
        this.mIsBeingDragged = true;
        setScrollState(1);
        this.mLastMotionX = f2;
        setScrollingCacheEnabled(true);
      }
      if (f4 <= this.mTouchSlop)
        continue;
      this.mIsUnableToDrag = true;
      continue;
      float f1 = paramMotionEvent.getX();
      this.mInitialMotionX = f1;
      this.mLastMotionX = f1;
      this.mLastMotionY = paramMotionEvent.getY();
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      if (this.mScrollState == 2)
      {
        this.mIsBeingDragged = true;
        this.mIsUnableToDrag = false;
        setScrollState(1);
      }
      completeScroll();
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      continue;
      onSecondaryPointerUp(paramMotionEvent);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    populate();
    this.mInLayout = false;
    int i = getChildCount();
    int j = paramInt3 - paramInt1;
    for (int k = 0; ; ++k)
    {
      if (k >= i)
        return;
      View localView = getChildAt(k);
      if (localView.getVisibility() == 8)
        continue;
      ItemInfo localItemInfo = infoForChild(localView);
      if (localItemInfo == null)
        continue;
      int l = j * localItemInfo.position + getPaddingLeft();
      int i1 = getPaddingTop();
      localView.layout(l, i1, l + localView.getMeasuredWidth(), i1 + localView.getMeasuredHeight());
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 1073741824);
    this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 1073741824);
    this.mInLayout = true;
    populate();
    this.mInLayout = false;
    int i = getChildCount();
    for (int j = 0; ; ++j)
    {
      if (j >= i)
        return;
      View localView = getChildAt(j);
      if (localView.getVisibility() == 8)
        continue;
      localView.measure(this.mChildWidthMeasureSpec, this.mChildHeightMeasureSpec);
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    SavedState localSavedState = (SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.mAdapter != null)
    {
      this.mAdapter.restoreState(localSavedState.adapterState, localSavedState.loader);
      setCurrentItemInternal(localSavedState.position, false, true);
      return;
    }
    this.mRestoredCurItem = localSavedState.position;
    this.mRestoredAdapterState = localSavedState.adapterState;
    this.mRestoredClassLoader = localSavedState.loader;
  }

  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    localSavedState.position = this.mCurItem;
    localSavedState.adapterState = this.mAdapter.saveState();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    int i = paramInt1 * this.mCurItem;
    if (i == getScrollX())
      return;
    completeScroll();
    scrollTo(i, getScrollY());
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      return false;
    if ((this.mAdapter == null) || (this.mAdapter.getCount() == 0))
      return false;
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      label108: return true;
      completeScroll();
      float f10 = paramMotionEvent.getX();
      this.mInitialMotionX = f10;
      this.mLastMotionX = f10;
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      continue;
      if (!(this.mIsBeingDragged))
      {
        int i2 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
        float f7 = MotionEventCompat.getX(paramMotionEvent, i2);
        float f8 = Math.abs(f7 - this.mLastMotionX);
        float f9 = Math.abs(MotionEventCompat.getY(paramMotionEvent, i2) - this.mLastMotionY);
        if ((f8 > this.mTouchSlop) && (f8 > f9))
        {
          this.mIsBeingDragged = true;
          this.mLastMotionX = f7;
          setScrollState(1);
          setScrollingCacheEnabled(true);
        }
      }
      if (!(this.mIsBeingDragged))
        continue;
      float f1 = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
      float f2 = this.mLastMotionX - f1;
      this.mLastMotionX = f1;
      float f3 = f2 + getScrollX();
      int k = getWidth();
      float f4 = Math.max(0, k * (this.mCurItem - 1));
      float f5 = k * Math.min(1 + this.mCurItem, this.mAdapter.getCount() - 1);
      if (f3 < f4)
        f3 = f4;
      while (true)
      {
        this.mLastMotionX += f3 - (int)f3;
        scrollTo((int)f3, getScrollY());
        if (this.mOnPageChangeListener != null);
        int l = (int)f3 / k;
        int i1 = (int)f3 % k;
        float f6 = i1 / k;
        this.mOnPageChangeListener.onPageScrolled(l, f6, i1);
        break label108:
        if (f3 <= f5)
          continue;
        f3 = f5;
      }
      if (!(this.mIsBeingDragged))
        continue;
      VelocityTracker localVelocityTracker = this.mVelocityTracker;
      localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
      int j = (int)VelocityTrackerCompat.getYVelocity(localVelocityTracker, this.mActivePointerId);
      this.mPopulatePending = true;
      if ((Math.abs(j) > this.mMinimumVelocity) || (Math.abs(this.mInitialMotionX - this.mLastMotionX) >= getWidth() / 3))
        if (this.mLastMotionX > this.mInitialMotionX)
          setCurrentItemInternal(this.mCurItem - 1, true, true);
      while (true)
      {
        this.mActivePointerId = -1;
        endDrag();
        break label108:
        setCurrentItemInternal(1 + this.mCurItem, true, true);
        continue;
        setCurrentItemInternal(this.mCurItem, true, true);
      }
      if (!(this.mIsBeingDragged))
        continue;
      setCurrentItemInternal(this.mCurItem, true, true);
      this.mActivePointerId = -1;
      endDrag();
      continue;
      int i = MotionEventCompat.getActionIndex(paramMotionEvent);
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, i);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, i);
      continue;
      onSecondaryPointerUp(paramMotionEvent);
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
    }
  }

  void populate()
  {
    if (this.mAdapter == null);
    do
      return;
    while ((this.mPopulatePending) || (getWindowToken() == null));
    this.mAdapter.startUpdate(this);
    int i;
    label44: int j;
    int k;
    label69: int l;
    int i1;
    label75: int i3;
    label121: int i4;
    if (this.mCurItem > 0)
    {
      i = this.mCurItem - 1;
      j = this.mAdapter.getCount();
      if (this.mCurItem >= j - 1)
        break label162;
      k = 1 + this.mCurItem;
      l = -1;
      i1 = 0;
      if (i1 < this.mItems.size())
        break label169;
      if (this.mItems.size() <= 0)
        break label316;
      i3 = ((ItemInfo)this.mItems.get(this.mItems.size() - 1)).position;
      if (i3 < k)
      {
        i4 = i3 + 1;
        if (i4 <= i)
          break label322;
      }
    }
    while (true)
    {
      if (i4 > k)
      {
        this.mAdapter.finishUpdate(this);
        return;
        i = this.mCurItem;
        break label44:
        label162: k = j - 1;
        break label69:
        label169: ItemInfo localItemInfo = (ItemInfo)this.mItems.get(i1);
        if ((((localItemInfo.position < i) || (localItemInfo.position > k))) && (!(localItemInfo.scrolling)))
        {
          this.mItems.remove(i1);
          --i1;
          this.mAdapter.destroyItem(this, localItemInfo.position, localItemInfo.object);
        }
        do
        {
          l = localItemInfo.position;
          ++i1;
          break label75:
        }
        while ((l >= k) || (localItemInfo.position <= i));
        int i2 = l + 1;
        if (i2 < i)
          i2 = i;
        while (true)
        {
          if ((i2 <= k) && (i2 < localItemInfo.position));
          addNewItem(i2, i1);
          ++i2;
          ++i1;
        }
        label316: i3 = -1;
        break label121:
        label322: i4 = i;
      }
      addNewItem(i4, -1);
      ++i4;
    }
  }

  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (this.mAdapter != null)
      this.mAdapter.setDataSetObserver(null);
    this.mAdapter = paramPagerAdapter;
    if (this.mAdapter != null)
    {
      if (this.mObserver == null)
        this.mObserver = new DataSetObserver(null);
      this.mAdapter.setDataSetObserver(this.mObserver);
      this.mPopulatePending = false;
      if (this.mRestoredCurItem < 0)
        break label111;
      this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
      setCurrentItemInternal(this.mRestoredCurItem, false, true);
      this.mRestoredCurItem = -1;
      this.mRestoredAdapterState = null;
      this.mRestoredClassLoader = null;
    }
    return;
    label111: populate();
  }

  public void setCurrentItem(int paramInt)
  {
    this.mPopulatePending = false;
    setCurrentItemInternal(paramInt, true, false);
  }

  void setCurrentItemInternal(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.mAdapter == null) || (this.mAdapter.getCount() <= 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    if ((!(paramBoolean2)) && (this.mCurItem == paramInt) && (this.mItems.size() != 0))
    {
      setScrollingCacheEnabled(false);
      return;
    }
    label57: int i;
    if (paramInt < 0)
    {
      paramInt = 0;
      if ((paramInt > 1 + this.mCurItem) || (paramInt < this.mCurItem - 1))
      {
        i = 0;
        label80: if (i < this.mItems.size())
          break label174;
      }
      if (this.mCurItem == paramInt)
        break label196;
    }
    for (int j = 1; ; j = 0)
    {
      this.mCurItem = paramInt;
      populate();
      if (!(paramBoolean1))
        break;
      smoothScrollTo(paramInt * getWidth(), 0);
      if ((j != 0) && (this.mOnPageChangeListener != null));
      this.mOnPageChangeListener.onPageSelected(paramInt);
      return;
      if (paramInt >= this.mAdapter.getCount());
      paramInt = this.mAdapter.getCount() - 1;
      break label57:
      label174: ((ItemInfo)this.mItems.get(i)).scrolling = true;
      ++i;
      label196: break label80:
    }
    if ((j != 0) && (this.mOnPageChangeListener != null))
      this.mOnPageChangeListener.onPageSelected(paramInt);
    completeScroll();
    scrollTo(paramInt * getWidth(), 0);
  }

  public void setOnPageChangeListener(OnPageChangeListener paramOnPageChangeListener)
  {
    this.mOnPageChangeListener = paramOnPageChangeListener;
  }

  void smoothScrollTo(int paramInt1, int paramInt2)
  {
    if (getChildCount() == 0)
    {
      setScrollingCacheEnabled(false);
      return;
    }
    int i = getScrollX();
    int j = getScrollY();
    int k = paramInt1 - i;
    int l = paramInt2 - j;
    if ((k == 0) && (l == 0))
    {
      completeScroll();
      return;
    }
    setScrollingCacheEnabled(true);
    this.mScrolling = true;
    setScrollState(2);
    this.mScroller.startScroll(i, j, k, l);
    invalidate();
  }

  private class DataSetObserver
    implements PagerAdapter.DataSetObserver
  {
    public void onDataSetChanged()
    {
      ViewPager.this.dataSetChanged();
    }
  }

  static class ItemInfo
  {
    Object object;
    int position;
    boolean scrolling;
  }

  public static abstract interface OnPageChangeListener
  {
    public abstract void onPageScrollStateChanged(int paramInt);

    public abstract void onPageScrolled(int paramInt1, float paramFloat, int paramInt2);

    public abstract void onPageSelected(int paramInt);
  }

  public static class SavedState extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks()
    {
      public ViewPager.SavedState createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
      {
        return new ViewPager.SavedState(paramParcel, paramClassLoader);
      }

      public ViewPager.SavedState[] newArray(int paramInt)
      {
        return new ViewPager.SavedState[paramInt];
      }
    });
    Parcelable adapterState;
    ClassLoader loader;
    int position;

    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramParcel);
      if (paramClassLoader == null)
        paramClassLoader = super.getClass().getClassLoader();
      this.position = paramParcel.readInt();
      this.adapterState = paramParcel.readParcelable(paramClassLoader);
      this.loader = paramClassLoader;
    }

    public SavedState(Parcelable paramParcelable)
    {
      super(paramParcelable);
    }

    public String toString()
    {
      return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }

    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.position);
      paramParcel.writeParcelable(this.adapterState, paramInt);
    }
  }

  public static class SimpleOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    public void onPageScrollStateChanged(int paramInt)
    {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
    }

    public void onPageSelected(int paramInt)
    {
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.view.ViewPager
 * JD-Core Version:    0.5.3
 */