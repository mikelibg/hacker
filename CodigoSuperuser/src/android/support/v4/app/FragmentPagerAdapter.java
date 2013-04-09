package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;

public abstract class FragmentPagerAdapter extends PagerAdapter
{
  private static final boolean DEBUG = 0;
  private static final String TAG = "FragmentPagerAdapter";
  private FragmentTransaction mCurTransaction = null;
  private final FragmentManager mFragmentManager;

  public FragmentPagerAdapter(FragmentManager paramFragmentManager)
  {
    this.mFragmentManager = paramFragmentManager;
  }

  private static String makeFragmentName(int paramInt1, int paramInt2)
  {
    return "android:switcher:" + paramInt1 + ":" + paramInt2;
  }

  public void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    if (this.mCurTransaction == null)
      this.mCurTransaction = this.mFragmentManager.beginTransaction();
    this.mCurTransaction.detach((Fragment)paramObject);
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
    if (this.mCurTransaction == null)
      this.mCurTransaction = this.mFragmentManager.beginTransaction();
    String str = makeFragmentName(paramView.getId(), paramInt);
    Fragment localFragment1 = this.mFragmentManager.findFragmentByTag(str);
    if (localFragment1 != null)
    {
      this.mCurTransaction.attach(localFragment1);
      return localFragment1;
    }
    Fragment localFragment2 = getItem(paramInt);
    this.mCurTransaction.add(paramView.getId(), localFragment2, makeFragmentName(paramView.getId(), paramInt));
    return localFragment2;
  }

  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return (((Fragment)paramObject).getView() == paramView);
  }

  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
  }

  public Parcelable saveState()
  {
    return null;
  }

  public void startUpdate(View paramView)
  {
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.FragmentPagerAdapter
 * JD-Core Version:    0.5.3
 */