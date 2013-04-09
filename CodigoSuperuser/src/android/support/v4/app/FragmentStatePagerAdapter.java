package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class FragmentStatePagerAdapter extends PagerAdapter
{
  private static final boolean DEBUG = 0;
  private static final String TAG = "FragmentStatePagerAdapter";
  private FragmentTransaction mCurTransaction = null;
  private final FragmentManager mFragmentManager;
  private ArrayList<Fragment> mFragments = new ArrayList();
  private ArrayList<Fragment.SavedState> mSavedState = new ArrayList();

  public FragmentStatePagerAdapter(FragmentManager paramFragmentManager)
  {
    this.mFragmentManager = paramFragmentManager;
  }

  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (this.mCurTransaction == null)
      this.mCurTransaction = this.mFragmentManager.beginTransaction();
    while (true)
    {
      if (this.mSavedState.size() > paramInt)
      {
        this.mSavedState.set(paramInt, this.mFragmentManager.saveFragmentInstanceState(localFragment));
        this.mFragments.set(paramInt, null);
        this.mCurTransaction.remove(localFragment);
        return;
      }
      this.mSavedState.add(null);
    }
  }

  public void finishUpdate(View paramView)
  {
    if (this.mCurTransaction == null)
      return;
    this.mCurTransaction.commit();
    this.mCurTransaction = null;
    this.mFragmentManager.executePendingTransactions();
  }

  public abstract Fragment getItem(int paramInt);

  public Object instantiateItem(View paramView, int paramInt)
  {
    if (this.mFragments.size() > paramInt)
    {
      Fragment localFragment2 = (Fragment)this.mFragments.get(paramInt);
      if (localFragment2 != null)
        return localFragment2;
    }
    if (this.mCurTransaction == null)
      this.mCurTransaction = this.mFragmentManager.beginTransaction();
    Fragment localFragment1 = getItem(paramInt);
    if (this.mSavedState.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)this.mSavedState.get(paramInt);
      if (localSavedState != null)
        localFragment1.setInitialSavedState(localSavedState);
    }
    while (true)
    {
      if (this.mFragments.size() > paramInt)
      {
        this.mFragments.set(paramInt, localFragment1);
        this.mCurTransaction.add(paramView.getId(), localFragment1);
        return localFragment1;
      }
      this.mFragments.add(null);
    }
  }

  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return (((Fragment)paramObject).getView() == paramView);
  }

  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    Bundle localBundle;
    Parcelable[] arrayOfParcelable;
    int j;
    Iterator localIterator;
    if (paramParcelable != null)
    {
      localBundle = (Bundle)paramParcelable;
      localBundle.setClassLoader(paramClassLoader);
      arrayOfParcelable = localBundle.getParcelableArray("states");
      this.mSavedState.clear();
      this.mFragments.clear();
      if (arrayOfParcelable != null)
      {
        j = 0;
        if (j < arrayOfParcelable.length)
          break label74;
      }
      localIterator = localBundle.keySet().iterator();
    }
    while (true)
    {
      if (!(localIterator.hasNext()))
      {
        return;
        label74: this.mSavedState.add((Fragment.SavedState)arrayOfParcelable[j]);
        ++j;
      }
      String str = (String)localIterator.next();
      if (!(str.startsWith("f")))
        continue;
      int i = Integer.parseInt(str.substring(1));
      Fragment localFragment = this.mFragmentManager.getFragment(localBundle, str);
      if (localFragment != null)
        while (true)
        {
          if (this.mFragments.size() > i)
            this.mFragments.set(i, localFragment);
          this.mFragments.add(null);
        }
      Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + str);
    }
  }

  public Parcelable saveState()
  {
    int i = this.mSavedState.size();
    Bundle localBundle = null;
    if (i > 0)
    {
      localBundle = new Bundle();
      Fragment.SavedState[] arrayOfSavedState = new Fragment.SavedState[this.mSavedState.size()];
      this.mSavedState.toArray(arrayOfSavedState);
      localBundle.putParcelableArray("states", arrayOfSavedState);
    }
    for (int j = 0; ; ++j)
    {
      if (j >= this.mFragments.size())
        return localBundle;
      Fragment localFragment = (Fragment)this.mFragments.get(j);
      if (localFragment == null)
        continue;
      if (localBundle == null)
        localBundle = new Bundle();
      String str = "f" + j;
      this.mFragmentManager.putFragment(localBundle, str, localFragment);
    }
  }

  public void startUpdate(View paramView)
  {
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.FragmentStatePagerAdapter
 * JD-Core Version:    0.5.3
 */