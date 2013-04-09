package android.support.v4.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.util.DebugUtils;
import android.support.v4.util.LogWriter;
import android.util.Log;
import android.util.SparseArray;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

final class FragmentManagerImpl extends FragmentManager
{
  static final Interpolator ACCELERATE_CUBIC;
  static final Interpolator ACCELERATE_QUINT;
  static final int ANIM_DUR = 220;
  public static final int ANIM_STYLE_CLOSE_ENTER = 3;
  public static final int ANIM_STYLE_CLOSE_EXIT = 4;
  public static final int ANIM_STYLE_FADE_ENTER = 5;
  public static final int ANIM_STYLE_FADE_EXIT = 6;
  public static final int ANIM_STYLE_OPEN_ENTER = 1;
  public static final int ANIM_STYLE_OPEN_EXIT = 2;
  static boolean DEBUG = 0;
  static final Interpolator DECELERATE_CUBIC;
  static final Interpolator DECELERATE_QUINT;
  static final boolean HONEYCOMB = 0;
  static final String TAG = "FragmentManager";
  static final String TARGET_REQUEST_CODE_STATE_TAG = "android:target_req_state";
  static final String TARGET_STATE_TAG = "android:target_state";
  static final String VIEW_STATE_TAG = "android:view_state";
  ArrayList<Fragment> mActive;
  FragmentActivity mActivity;
  ArrayList<Fragment> mAdded;
  ArrayList<Integer> mAvailBackStackIndices;
  ArrayList<Integer> mAvailIndices;
  ArrayList<BackStackRecord> mBackStack;
  ArrayList<FragmentManager.OnBackStackChangedListener> mBackStackChangeListeners;
  ArrayList<BackStackRecord> mBackStackIndices;
  ArrayList<Fragment> mCreatedMenus;
  int mCurState = 0;
  boolean mDestroyed;
  Runnable mExecCommit = new Runnable()
  {
    public void run()
    {
      FragmentManagerImpl.this.execPendingActions();
    }
  };
  boolean mExecutingActions;
  boolean mNeedMenuInvalidate;
  String mNoTransactionsBecause;
  ArrayList<Runnable> mPendingActions;
  SparseArray<Parcelable> mStateArray = null;
  Bundle mStateBundle = null;
  boolean mStateSaved;
  Runnable[] mTmpActions;

  static
  {
    if (Build.VERSION.SDK_INT >= 11);
    for (int i = 1; ; i = 0)
    {
      HONEYCOMB = i;
      DECELERATE_QUINT = new DecelerateInterpolator(2.5F);
      DECELERATE_CUBIC = new DecelerateInterpolator(1.5F);
      ACCELERATE_QUINT = new AccelerateInterpolator(2.5F);
      ACCELERATE_CUBIC = new AccelerateInterpolator(1.5F);
      return;
    }
  }

  private void checkStateLoss()
  {
    if (this.mStateSaved)
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    if (this.mNoTransactionsBecause == null)
      return;
    throw new IllegalStateException("Can not perform this action inside of " + this.mNoTransactionsBecause);
  }

  static Animation makeFadeAnimation(Context paramContext, float paramFloat1, float paramFloat2)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    localAlphaAnimation.setInterpolator(DECELERATE_CUBIC);
    localAlphaAnimation.setDuration(220L);
    return localAlphaAnimation;
  }

  static Animation makeOpenCloseAnimation(Context paramContext, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setInterpolator(DECELERATE_QUINT);
    localScaleAnimation.setDuration(220L);
    localAnimationSet.addAnimation(localScaleAnimation);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat3, paramFloat4);
    localAlphaAnimation.setInterpolator(DECELERATE_CUBIC);
    localAlphaAnimation.setDuration(220L);
    localAnimationSet.addAnimation(localAlphaAnimation);
    return localAnimationSet;
  }

  public static int reverseTransit(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0;
    case 4097:
      return 8194;
    case 8194:
      return 4097;
    case 4099:
    }
    return 4099;
  }

  public static int transitToStyleIndex(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    default:
      return -1;
    case 4097:
      if (paramBoolean)
        return 1;
      return 2;
    case 8194:
      if (paramBoolean)
        return 3;
      return 4;
    case 4099:
    }
    if (paramBoolean)
      return 5;
    return 6;
  }

  void addBackStackState(BackStackRecord paramBackStackRecord)
  {
    if (this.mBackStack == null)
      this.mBackStack = new ArrayList();
    this.mBackStack.add(paramBackStackRecord);
    reportBackStackChanged();
  }

  public void addFragment(Fragment paramFragment, boolean paramBoolean)
  {
    if (this.mAdded == null)
      this.mAdded = new ArrayList();
    if (DEBUG)
      Log.v("FragmentManager", "add: " + paramFragment);
    makeActive(paramFragment);
    if (paramFragment.mDetached)
      return;
    this.mAdded.add(paramFragment);
    paramFragment.mAdded = true;
    paramFragment.mRemoving = false;
    if (paramFragment.mHasMenu)
      this.mNeedMenuInvalidate = true;
    if (!(paramBoolean))
      return;
    moveToState(paramFragment);
  }

  public void addOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener)
  {
    if (this.mBackStackChangeListeners == null)
      this.mBackStackChangeListeners = new ArrayList();
    this.mBackStackChangeListeners.add(paramOnBackStackChangedListener);
  }

  public int allocBackStackIndex(BackStackRecord paramBackStackRecord)
  {
    monitorenter;
    try
    {
      if ((this.mAvailBackStackIndices == null) || (this.mAvailBackStackIndices.size() <= 0))
      {
        if (this.mBackStackIndices == null)
          this.mBackStackIndices = new ArrayList();
        int i = this.mBackStackIndices.size();
        if (DEBUG)
          Log.v("FragmentManager", "Setting back stack index " + i + " to " + paramBackStackRecord);
        this.mBackStackIndices.add(paramBackStackRecord);
        return i;
      }
      int j = ((Integer)this.mAvailBackStackIndices.remove(this.mAvailBackStackIndices.size() - 1)).intValue();
      if (DEBUG)
        Log.v("FragmentManager", "Adding back stack index " + j + " with " + paramBackStackRecord);
      this.mBackStackIndices.set(j, paramBackStackRecord);
      return j;
    }
    finally
    {
      monitorexit;
    }
  }

  public void attachActivity(FragmentActivity paramFragmentActivity)
  {
    if (this.mActivity != null)
      throw new IllegalStateException();
    this.mActivity = paramFragmentActivity;
  }

  public void attachFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "attach: " + paramFragment);
    if (!(paramFragment.mDetached))
      return;
    paramFragment.mDetached = false;
    if (paramFragment.mAdded)
      return;
    this.mAdded.add(paramFragment);
    paramFragment.mAdded = true;
    if (paramFragment.mHasMenu)
      this.mNeedMenuInvalidate = true;
    moveToState(paramFragment, this.mCurState, paramInt1, paramInt2);
  }

  public FragmentTransaction beginTransaction()
  {
    return new BackStackRecord(this);
  }

  public void detachFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "detach: " + paramFragment);
    if (paramFragment.mDetached)
      return;
    paramFragment.mDetached = true;
    if (!(paramFragment.mAdded))
      return;
    this.mAdded.remove(paramFragment);
    if (paramFragment.mHasMenu)
      this.mNeedMenuInvalidate = true;
    paramFragment.mAdded = false;
    moveToState(paramFragment, 1, paramInt1, paramInt2);
  }

  public void dispatchActivityCreated()
  {
    this.mStateSaved = false;
    moveToState(2, false);
  }

  public void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.mActive != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mAdded.size())
        return;
      Fragment localFragment = (Fragment)this.mAdded.get(i);
      if (localFragment == null)
        continue;
      localFragment.onConfigurationChanged(paramConfiguration);
    }
  }

  public boolean dispatchContextItemSelected(MenuItem paramMenuItem)
  {
    if (this.mActive != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mAdded.size())
        return false;
      Fragment localFragment = (Fragment)this.mAdded.get(i);
      if ((localFragment != null) && (!(localFragment.mHidden)) && (localFragment.onContextItemSelected(paramMenuItem)))
        return true;
    }
  }

  public void dispatchCreate()
  {
    this.mStateSaved = false;
    moveToState(1, false);
  }

  public boolean dispatchCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    ArrayList localArrayList1 = this.mActive;
    ArrayList localArrayList2 = null;
    int i = 0;
    int k;
    if (localArrayList1 != null)
    {
      k = 0;
      if (k < this.mAdded.size())
        break label61;
    }
    if (this.mCreatedMenus != null);
    for (int j = 0; ; ++j)
    {
      if (j >= this.mCreatedMenus.size())
      {
        this.mCreatedMenus = localArrayList2;
        return i;
        label61: Fragment localFragment2 = (Fragment)this.mAdded.get(k);
        if ((localFragment2 != null) && (!(localFragment2.mHidden)) && (localFragment2.mHasMenu))
        {
          i = 1;
          localFragment2.onCreateOptionsMenu(paramMenu, paramMenuInflater);
          if (localArrayList2 == null)
            localArrayList2 = new ArrayList();
          localArrayList2.add(localFragment2);
        }
        ++k;
      }
      Fragment localFragment1 = (Fragment)this.mCreatedMenus.get(j);
      if ((localArrayList2 != null) && (localArrayList2.contains(localFragment1)))
        continue;
      localFragment1.onDestroyOptionsMenu();
    }
  }

  public void dispatchDestroy()
  {
    this.mDestroyed = true;
    moveToState(0, false);
    this.mActivity = null;
  }

  public void dispatchLowMemory()
  {
    if (this.mActive != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mAdded.size())
        return;
      Fragment localFragment = (Fragment)this.mAdded.get(i);
      if (localFragment == null)
        continue;
      localFragment.onLowMemory();
    }
  }

  public boolean dispatchOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (this.mActive != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mAdded.size())
        return false;
      Fragment localFragment = (Fragment)this.mAdded.get(i);
      if ((localFragment != null) && (!(localFragment.mHidden)) && (localFragment.mHasMenu) && (localFragment.onOptionsItemSelected(paramMenuItem)))
        return true;
    }
  }

  public void dispatchOptionsMenuClosed(Menu paramMenu)
  {
    if (this.mActive != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mAdded.size())
        return;
      Fragment localFragment = (Fragment)this.mAdded.get(i);
      if ((localFragment == null) || (localFragment.mHidden) || (!(localFragment.mHasMenu)))
        continue;
      localFragment.onOptionsMenuClosed(paramMenu);
    }
  }

  public void dispatchPause()
  {
    moveToState(4, false);
  }

  public boolean dispatchPrepareOptionsMenu(Menu paramMenu)
  {
    ArrayList localArrayList = this.mActive;
    int i = 0;
    if (localArrayList != null);
    for (int j = 0; ; ++j)
    {
      if (j >= this.mAdded.size())
        return i;
      Fragment localFragment = (Fragment)this.mAdded.get(j);
      if ((localFragment == null) || (localFragment.mHidden) || (!(localFragment.mHasMenu)))
        continue;
      i = 1;
      localFragment.onPrepareOptionsMenu(paramMenu);
    }
  }

  public void dispatchReallyStop(boolean paramBoolean)
  {
    if (this.mActive != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mAdded.size())
        return;
      Fragment localFragment = (Fragment)this.mAdded.get(i);
      if (localFragment == null)
        continue;
      localFragment.performReallyStop(paramBoolean);
    }
  }

  public void dispatchResume()
  {
    this.mStateSaved = false;
    moveToState(5, false);
  }

  public void dispatchStart()
  {
    this.mStateSaved = false;
    moveToState(4, false);
  }

  public void dispatchStop()
  {
    this.mStateSaved = true;
    moveToState(3, false);
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str = paramString + "    ";
    int i8;
    if (this.mActive != null)
    {
      int i7 = this.mActive.size();
      if (i7 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        i8 = 0;
        label76: if (i8 < i7)
          break label501;
      }
    }
    int i6;
    if (this.mAdded != null)
    {
      int i5 = this.mAdded.size();
      if (i5 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        i6 = 0;
        label119: if (i6 < i5)
          break label568;
      }
    }
    int i4;
    if (this.mCreatedMenus != null)
    {
      int i3 = this.mCreatedMenus.size();
      if (i3 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        i4 = 0;
        label162: if (i4 < i3)
          break label622;
      }
    }
    int i2;
    if (this.mBackStack != null)
    {
      int i1 = this.mBackStack.size();
      if (i1 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        i2 = 0;
        label205: if (i2 < i1)
          break label676;
      }
    }
    monitorenter;
    while (true)
    {
      int k;
      int l;
      int j;
      try
      {
        if (this.mBackStackIndices != null)
        {
          k = this.mBackStackIndices.size();
          if (k > 0)
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.println("Back Stack Indices:");
            l = 0;
            break label850:
          }
        }
        if ((this.mAvailBackStackIndices != null) && (this.mAvailBackStackIndices.size() > 0))
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("mAvailBackStackIndices: ");
          paramPrintWriter.println(Arrays.toString(this.mAvailBackStackIndices.toArray()));
        }
        monitorexit;
        if (this.mPendingActions != null)
        {
          int i = this.mPendingActions.size();
          if (i > 0)
          {
            paramPrintWriter.print(paramString);
            paramPrintWriter.println("Pending Actions:");
            j = 0;
            if (j < i)
              break label799;
          }
        }
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("FragmentManager misc state:");
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  mCurState=");
        paramPrintWriter.print(this.mCurState);
        paramPrintWriter.print(" mStateSaved=");
        paramPrintWriter.print(this.mStateSaved);
        paramPrintWriter.print(" mDestroyed=");
        paramPrintWriter.println(this.mDestroyed);
        if (this.mNeedMenuInvalidate)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  mNeedMenuInvalidate=");
          paramPrintWriter.println(this.mNeedMenuInvalidate);
        }
        if (this.mNoTransactionsBecause != null)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  mNoTransactionsBecause=");
          paramPrintWriter.println(this.mNoTransactionsBecause);
        }
        if ((this.mAvailIndices != null) && (this.mAvailIndices.size() > 0))
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  mAvailIndices: ");
        }
        return;
        label501: Fragment localFragment3 = (Fragment)this.mActive.get(i8);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(i8);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localFragment3);
        if (localFragment3 != null)
          localFragment3.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        ++i8;
        break label76:
        label568: Fragment localFragment2 = (Fragment)this.mAdded.get(i6);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(i6);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localFragment2.toString());
        ++i6;
        break label119:
        label622: Fragment localFragment1 = (Fragment)this.mCreatedMenus.get(i4);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(i4);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localFragment1.toString());
        ++i4;
        break label162:
        label676: BackStackRecord localBackStackRecord2 = (BackStackRecord)this.mBackStack.get(i2);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(i2);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localBackStackRecord2.toString());
        localBackStackRecord2.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        ++i2;
        break label205:
        BackStackRecord localBackStackRecord1 = (BackStackRecord)this.mBackStackIndices.get(l);
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("  #");
        paramPrintWriter.print(l);
        paramPrintWriter.print(": ");
        paramPrintWriter.println(localBackStackRecord1);
      }
      finally
      {
        monitorexit;
      }
      label799: Runnable localRunnable = (Runnable)this.mPendingActions.get(j);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  #");
      paramPrintWriter.print(j);
      paramPrintWriter.print(": ");
      paramPrintWriter.println(localRunnable);
      ++j;
      continue;
      label850: if (l < k)
        continue;
    }
  }

  public void enqueueAction(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!(paramBoolean))
      checkStateLoss();
    monitorenter;
    try
    {
      throw new IllegalStateException("Activity has been destroyed");
    }
    finally
    {
      monitorexit;
    }
    if (this.mPendingActions == null)
      this.mPendingActions = new ArrayList();
    this.mPendingActions.add(paramRunnable);
    if (this.mPendingActions.size() == 1)
    {
      this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
      this.mActivity.mHandler.post(this.mExecCommit);
    }
    monitorexit;
  }

  public boolean execPendingActions()
  {
    if (this.mExecutingActions)
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    if (Looper.myLooper() != this.mActivity.mHandler.getLooper())
      throw new IllegalStateException("Must be called from main thread of process");
    int i = 0;
    monitorenter;
    while (true)
    {
      int k;
      try
      {
        if ((this.mPendingActions == null) || (this.mPendingActions.size() == 0))
          return i;
        int j = this.mPendingActions.size();
        if ((this.mTmpActions == null) || (this.mTmpActions.length < j))
          this.mTmpActions = new Runnable[j];
        this.mPendingActions.toArray(this.mTmpActions);
        this.mPendingActions.clear();
        this.mActivity.mHandler.removeCallbacks(this.mExecCommit);
        monitorexit;
        this.mExecutingActions = true;
        k = 0;
        if (k < j)
          break label166;
        this.mExecutingActions = false;
      }
      finally
      {
        monitorexit;
      }
      label166: this.mTmpActions[k].run();
      ++k;
    }
  }

  public boolean executePendingTransactions()
  {
    return execPendingActions();
  }

  public Fragment findFragmentById(int paramInt)
  {
    int i;
    if (this.mActive != null)
    {
      i = this.mAdded.size() - 1;
      if (i >= 0)
        break label39;
    }
    for (int j = this.mActive.size() - 1; ; --j)
    {
      if (j < 0)
      {
        return null;
        label39: Fragment localFragment1 = (Fragment)this.mAdded.get(i);
        if ((localFragment1 != null) && (localFragment1.mFragmentId == paramInt))
          return localFragment1;
        --i;
      }
      Fragment localFragment2 = (Fragment)this.mActive.get(j);
      if ((localFragment2 != null) && (localFragment2.mFragmentId == paramInt))
        return localFragment2;
    }
  }

  public Fragment findFragmentByTag(String paramString)
  {
    int i;
    if ((this.mActive != null) && (paramString != null))
    {
      i = this.mAdded.size() - 1;
      if (i >= 0)
        break label43;
    }
    for (int j = this.mActive.size() - 1; ; --j)
    {
      if (j < 0)
      {
        return null;
        label43: Fragment localFragment1 = (Fragment)this.mAdded.get(i);
        if ((localFragment1 != null) && (paramString.equals(localFragment1.mTag)))
          return localFragment1;
        --i;
      }
      Fragment localFragment2 = (Fragment)this.mActive.get(j);
      if ((localFragment2 != null) && (paramString.equals(localFragment2.mTag)))
        return localFragment2;
    }
  }

  public Fragment findFragmentByWho(String paramString)
  {
    if ((this.mActive != null) && (paramString != null));
    for (int i = this.mActive.size() - 1; ; --i)
    {
      if (i < 0)
        return null;
      Fragment localFragment = (Fragment)this.mActive.get(i);
      if ((localFragment != null) && (paramString.equals(localFragment.mWho)))
        return localFragment;
    }
  }

  public void freeBackStackIndex(int paramInt)
  {
    monitorenter;
    try
    {
      this.mBackStackIndices.set(paramInt, null);
      if (this.mAvailBackStackIndices == null)
        this.mAvailBackStackIndices = new ArrayList();
      if (DEBUG)
        Log.v("FragmentManager", "Freeing back stack index " + paramInt);
      this.mAvailBackStackIndices.add(Integer.valueOf(paramInt));
      return;
    }
    finally
    {
      monitorexit;
    }
  }

  public FragmentManager.BackStackEntry getBackStackEntryAt(int paramInt)
  {
    return ((FragmentManager.BackStackEntry)this.mBackStack.get(paramInt));
  }

  public int getBackStackEntryCount()
  {
    if (this.mBackStack != null)
      return this.mBackStack.size();
    return 0;
  }

  public Fragment getFragment(Bundle paramBundle, String paramString)
  {
    int i = paramBundle.getInt(paramString, -1);
    if (i == -1)
      return null;
    if (i >= this.mActive.size())
      throw new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i);
    Fragment localFragment = (Fragment)this.mActive.get(i);
    if (localFragment == null)
      throw new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i);
    return localFragment;
  }

  public void hideFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "hide: " + paramFragment);
    if (paramFragment.mHidden)
      return;
    paramFragment.mHidden = true;
    if (paramFragment.mView != null)
    {
      Animation localAnimation = loadAnimation(paramFragment, paramInt1, true, paramInt2);
      if (localAnimation != null)
        paramFragment.mView.startAnimation(localAnimation);
      paramFragment.mView.setVisibility(8);
    }
    if ((paramFragment.mAdded) && (paramFragment.mHasMenu))
      this.mNeedMenuInvalidate = true;
    paramFragment.onHiddenChanged(true);
  }

  Animation loadAnimation(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Animation localAnimation1 = paramFragment.onCreateAnimation(paramInt1, paramBoolean, paramFragment.mNextAnim);
    if (localAnimation1 != null)
      return localAnimation1;
    if (paramFragment.mNextAnim != 0)
    {
      Animation localAnimation2 = AnimationUtils.loadAnimation(this.mActivity, paramFragment.mNextAnim);
      if (localAnimation2 != null)
        return localAnimation2;
    }
    if (paramInt1 == 0)
      return null;
    int i = transitToStyleIndex(paramInt1, paramBoolean);
    if (i < 0)
      return null;
    switch (i)
    {
    default:
      if ((paramInt2 == 0) && (this.mActivity.getWindow() != null))
        paramInt2 = this.mActivity.getWindow().getAttributes().windowAnimations;
      if (paramInt2 == 0)
        return null;
    case 1:
      return makeOpenCloseAnimation(this.mActivity, 1.125F, 1.0F, 0.0F, 1.0F);
    case 2:
      return makeOpenCloseAnimation(this.mActivity, 1.0F, 0.975F, 1.0F, 0.0F);
    case 3:
      return makeOpenCloseAnimation(this.mActivity, 0.975F, 1.0F, 0.0F, 1.0F);
    case 4:
      return makeOpenCloseAnimation(this.mActivity, 1.0F, 1.075F, 1.0F, 0.0F);
    case 5:
      return makeFadeAnimation(this.mActivity, 0.0F, 1.0F);
    case 6:
    }
    return makeFadeAnimation(this.mActivity, 1.0F, 0.0F);
    return null;
  }

  void makeActive(Fragment paramFragment)
  {
    if (paramFragment.mIndex >= 0)
      return;
    if ((this.mAvailIndices == null) || (this.mAvailIndices.size() <= 0))
    {
      if (this.mActive == null)
        this.mActive = new ArrayList();
      paramFragment.setIndex(this.mActive.size());
      this.mActive.add(paramFragment);
      return;
    }
    paramFragment.setIndex(((Integer)this.mAvailIndices.remove(this.mAvailIndices.size() - 1)).intValue());
    this.mActive.set(paramFragment.mIndex, paramFragment);
  }

  void makeInactive(Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0)
      return;
    if (DEBUG)
      Log.v("FragmentManager", "Freeing fragment index " + paramFragment.mIndex);
    this.mActive.set(paramFragment.mIndex, null);
    if (this.mAvailIndices == null)
      this.mAvailIndices = new ArrayList();
    this.mAvailIndices.add(Integer.valueOf(paramFragment.mIndex));
    this.mActivity.invalidateSupportFragmentIndex(paramFragment.mIndex);
    paramFragment.initState();
  }

  void moveToState(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((this.mActivity == null) && (paramInt1 != 0))
      throw new IllegalStateException("No activity");
    if ((!(paramBoolean)) && (this.mCurState == paramInt1));
    do
    {
      return;
      this.mCurState = paramInt1;
    }
    while (this.mActive == null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mActive.size())
      {
        if ((this.mNeedMenuInvalidate) && (this.mActivity != null));
        this.mActivity.supportInvalidateOptionsMenu();
        this.mNeedMenuInvalidate = false;
        return;
      }
      Fragment localFragment = (Fragment)this.mActive.get(i);
      if (localFragment == null)
        continue;
      moveToState(localFragment, paramInt1, paramInt2, paramInt3);
    }
  }

  void moveToState(int paramInt, boolean paramBoolean)
  {
    moveToState(paramInt, 0, 0, paramBoolean);
  }

  void moveToState(Fragment paramFragment)
  {
    moveToState(paramFragment, this.mCurState, 0, 0);
  }

  void moveToState(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((!(paramFragment.mAdded)) && (paramInt1 > 1))
      paramInt1 = 1;
    if ((paramFragment.mRemoving) && (paramInt1 > paramFragment.mState))
      paramInt1 = paramFragment.mState;
    if (paramFragment.mState < paramInt1)
    {
      if ((paramFragment.mFromLayout) && (!(paramFragment.mInLayout)))
        return;
      if (paramFragment.mAnimatingAway != null)
      {
        paramFragment.mAnimatingAway = null;
        moveToState(paramFragment, paramFragment.mStateAfterAnimating, 0, 0);
      }
      switch (paramFragment.mState)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      label120: paramFragment.mState = paramInt1;
      return;
      if (DEBUG)
        Log.v("FragmentManager", "moveto CREATED: " + paramFragment);
      if (paramFragment.mSavedFragmentState != null)
      {
        paramFragment.mSavedViewState = paramFragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        paramFragment.mTarget = getFragment(paramFragment.mSavedFragmentState, "android:target_state");
        if (paramFragment.mTarget != null)
          paramFragment.mTargetRequestCode = paramFragment.mSavedFragmentState.getInt("android:target_req_state", 0);
      }
      paramFragment.mActivity = this.mActivity;
      paramFragment.mFragmentManager = this.mActivity.mFragments;
      paramFragment.mCalled = false;
      paramFragment.onAttach(this.mActivity);
      if (!(paramFragment.mCalled))
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onAttach()");
      this.mActivity.onAttachFragment(paramFragment);
      if (!(paramFragment.mRetaining))
      {
        paramFragment.mCalled = false;
        paramFragment.onCreate(paramFragment.mSavedFragmentState);
        if (!(paramFragment.mCalled))
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onCreate()");
      }
      paramFragment.mRetaining = false;
      if (paramFragment.mFromLayout)
      {
        paramFragment.mView = paramFragment.onCreateView(paramFragment.getLayoutInflater(paramFragment.mSavedFragmentState), null, paramFragment.mSavedFragmentState);
        if (paramFragment.mView == null)
          break label557;
        paramFragment.mInnerView = paramFragment.mView;
        paramFragment.mView = NoSaveStateFrameLayout.wrap(paramFragment.mView);
        if (paramFragment.mHidden)
          paramFragment.mView.setVisibility(8);
        paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
      }
      ViewGroup localViewGroup;
      while (true)
      {
        if (paramInt1 <= 1)
          break label761;
        if (DEBUG)
          Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + paramFragment);
        if (paramFragment.mFromLayout)
          break label686;
        int j = paramFragment.mContainerId;
        localViewGroup = null;
        if (j == 0)
          break;
        localViewGroup = (ViewGroup)this.mActivity.findViewById(paramFragment.mContainerId);
        if ((localViewGroup != null) || (paramFragment.mRestored))
          break;
        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(paramFragment.mContainerId) + " for fragment " + paramFragment);
        label557: paramFragment.mInnerView = null;
      }
      paramFragment.mContainer = localViewGroup;
      paramFragment.mView = paramFragment.onCreateView(paramFragment.getLayoutInflater(paramFragment.mSavedFragmentState), localViewGroup, paramFragment.mSavedFragmentState);
      if (paramFragment.mView != null)
      {
        paramFragment.mInnerView = paramFragment.mView;
        paramFragment.mView = NoSaveStateFrameLayout.wrap(paramFragment.mView);
        if (localViewGroup != null)
        {
          Animation localAnimation2 = loadAnimation(paramFragment, paramInt2, true, paramInt3);
          if (localAnimation2 != null)
            paramFragment.mView.startAnimation(localAnimation2);
          localViewGroup.addView(paramFragment.mView);
        }
        if (paramFragment.mHidden)
          paramFragment.mView.setVisibility(8);
        paramFragment.onViewCreated(paramFragment.mView, paramFragment.mSavedFragmentState);
      }
      while (true)
      {
        label686: paramFragment.mCalled = false;
        paramFragment.onActivityCreated(paramFragment.mSavedFragmentState);
        if (paramFragment.mCalled)
          break;
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onActivityCreated()");
        paramFragment.mInnerView = null;
      }
      if (paramFragment.mView != null)
        paramFragment.restoreViewState();
      paramFragment.mSavedFragmentState = null;
      if (paramInt1 > 3)
      {
        if (DEBUG)
          label761: Log.v("FragmentManager", "moveto STARTED: " + paramFragment);
        paramFragment.mCalled = false;
        paramFragment.performStart();
        if (!(paramFragment.mCalled))
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onStart()");
      }
      if (paramInt1 <= 4)
        continue;
      if (DEBUG)
        Log.v("FragmentManager", "moveto RESUMED: " + paramFragment);
      paramFragment.mCalled = false;
      paramFragment.mResumed = true;
      paramFragment.onResume();
      if (paramFragment.mCalled)
        continue;
      throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onResume()");
      if (paramFragment.mState <= paramInt1)
        continue;
      switch (paramFragment.mState)
      {
      default:
        break;
      case 1:
      case 5:
      case 4:
      case 2:
      case 3:
      }
      while (true)
      {
        if (paramInt1 < 1);
        if ((this.mDestroyed) && (paramFragment.mAnimatingAway != null))
        {
          View localView = paramFragment.mAnimatingAway;
          paramFragment.mAnimatingAway = null;
          localView.clearAnimation();
        }
        if (paramFragment.mAnimatingAway == null)
          break;
        paramFragment.mStateAfterAnimating = paramInt1;
        paramInt1 = 1;
        break label120:
        if (paramInt1 < 5)
        {
          if (DEBUG)
            Log.v("FragmentManager", "movefrom RESUMED: " + paramFragment);
          paramFragment.mCalled = false;
          paramFragment.onPause();
          if (!(paramFragment.mCalled))
            throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onPause()");
          paramFragment.mResumed = false;
        }
        if (paramInt1 < 4)
        {
          if (DEBUG)
            Log.v("FragmentManager", "movefrom STARTED: " + paramFragment);
          paramFragment.mCalled = false;
          paramFragment.performStop();
          if (!(paramFragment.mCalled))
            throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onStop()");
        }
        if (paramInt1 >= 2)
          continue;
        if (DEBUG)
          Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + paramFragment);
        if ((paramFragment.mView != null) && (!(this.mActivity.isFinishing())) && (paramFragment.mSavedViewState == null))
          saveFragmentViewState(paramFragment);
        paramFragment.mCalled = false;
        paramFragment.performDestroyView();
        if (!(paramFragment.mCalled))
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDestroyView()");
        if ((paramFragment.mView != null) && (paramFragment.mContainer != null))
        {
          int i = this.mCurState;
          Animation localAnimation1 = null;
          if (i > 0)
          {
            boolean bool = this.mDestroyed;
            localAnimation1 = null;
            if (!(bool))
              localAnimation1 = loadAnimation(paramFragment, paramInt2, false, paramInt3);
          }
          if (localAnimation1 != null)
          {
            paramFragment.mAnimatingAway = paramFragment.mView;
            paramFragment.mStateAfterAnimating = paramInt1;
            localAnimation1.setAnimationListener(new Animation.AnimationListener(paramFragment)
            {
              public void onAnimationEnd(Animation paramAnimation)
              {
                if (this.val$fragment.mAnimatingAway == null)
                  return;
                this.val$fragment.mAnimatingAway = null;
                FragmentManagerImpl.this.moveToState(this.val$fragment, this.val$fragment.mStateAfterAnimating, 0, 0);
              }

              public void onAnimationRepeat(Animation paramAnimation)
              {
              }

              public void onAnimationStart(Animation paramAnimation)
              {
              }
            });
            paramFragment.mView.startAnimation(localAnimation1);
          }
          paramFragment.mContainer.removeView(paramFragment.mView);
        }
        paramFragment.mContainer = null;
        paramFragment.mView = null;
        paramFragment.mInnerView = null;
      }
      if (DEBUG)
        Log.v("FragmentManager", "movefrom CREATED: " + paramFragment);
      if (!(paramFragment.mRetaining))
      {
        paramFragment.mCalled = false;
        paramFragment.onDestroy();
        if (!(paramFragment.mCalled))
          throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDestroy()");
      }
      paramFragment.mCalled = false;
      paramFragment.onDetach();
      if (!(paramFragment.mCalled))
        throw new SuperNotCalledException("Fragment " + paramFragment + " did not call through to super.onDetach()");
      if (!(paramFragment.mRetaining))
        makeInactive(paramFragment);
      paramFragment.mImmediateActivity = null;
      paramFragment.mActivity = null;
      paramFragment.mFragmentManager = null;
    }
  }

  public void noteStateNotSaved()
  {
    this.mStateSaved = false;
  }

  public void popBackStack()
  {
    enqueueAction(new Runnable()
    {
      public void run()
      {
        FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, -1, 0);
      }
    }
    , false);
  }

  public void popBackStack(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Bad id: " + paramInt1);
    enqueueAction(new Runnable(paramInt1, paramInt2)
    {
      public void run()
      {
        FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, null, this.val$id, this.val$flags);
      }
    }
    , false);
  }

  public void popBackStack(String paramString, int paramInt)
  {
    enqueueAction(new Runnable(paramString, paramInt)
    {
      public void run()
      {
        FragmentManagerImpl.this.popBackStackState(FragmentManagerImpl.this.mActivity.mHandler, this.val$name, -1, this.val$flags);
      }
    }
    , false);
  }

  public boolean popBackStackImmediate()
  {
    checkStateLoss();
    executePendingTransactions();
    return popBackStackState(this.mActivity.mHandler, null, -1, 0);
  }

  public boolean popBackStackImmediate(int paramInt1, int paramInt2)
  {
    checkStateLoss();
    executePendingTransactions();
    if (paramInt1 < 0)
      throw new IllegalArgumentException("Bad id: " + paramInt1);
    return popBackStackState(this.mActivity.mHandler, null, paramInt1, paramInt2);
  }

  public boolean popBackStackImmediate(String paramString, int paramInt)
  {
    checkStateLoss();
    executePendingTransactions();
    return popBackStackState(this.mActivity.mHandler, paramString, -1, paramInt);
  }

  boolean popBackStackState(Handler paramHandler, String paramString, int paramInt1, int paramInt2)
  {
    if (this.mBackStack == null)
      return false;
    if ((paramString == null) && (paramInt1 < 0) && ((paramInt2 & 0x1) == 0))
    {
      int i1 = this.mBackStack.size() - 1;
      if (i1 < 0)
        return false;
      ((BackStackRecord)this.mBackStack.remove(i1)).popFromBackStack(true);
      reportBackStackChanged();
      return true;
    }
    int i = -1;
    if ((paramString != null) || (paramInt1 >= 0))
    {
      for (i = this.mBackStack.size() - 1; ; --i)
      {
        if (i < 0);
        BackStackRecord localBackStackRecord1;
        do
        {
          if (i >= 0)
            break label147;
          return false;
          localBackStackRecord1 = (BackStackRecord)this.mBackStack.get(i);
        }
        while (((paramString != null) && (paramString.equals(localBackStackRecord1.getName()))) || ((paramInt1 >= 0) && (paramInt1 == localBackStackRecord1.mIndex)));
      }
      if ((paramInt2 & 0x1) != 0)
        label147: --i;
    }
    while (true)
    {
      if (i < 0);
      BackStackRecord localBackStackRecord3;
      do
      {
        if (i != this.mBackStack.size() - 1)
          break label227;
        return false;
        localBackStackRecord3 = (BackStackRecord)this.mBackStack.get(i);
      }
      while ((((paramString == null) || (!(paramString.equals(localBackStackRecord3.getName()))))) && (((paramInt1 < 0) || (paramInt1 != localBackStackRecord3.mIndex))));
      --i;
    }
    label227: ArrayList localArrayList = new ArrayList();
    int k;
    int l;
    for (int j = this.mBackStack.size() - 1; ; --j)
    {
      if (j <= i)
      {
        k = localArrayList.size() - 1;
        l = 0;
        label266: if (l <= k)
          break;
        reportBackStackChanged();
      }
      localArrayList.add((BackStackRecord)this.mBackStack.remove(j));
    }
    if (DEBUG)
      Log.v("FragmentManager", "Popping back stack state: " + localArrayList.get(l));
    BackStackRecord localBackStackRecord2 = (BackStackRecord)localArrayList.get(l);
    if (l == k);
    for (boolean bool = true; ; bool = false)
    {
      localBackStackRecord2.popFromBackStack(bool);
      ++l;
      break label266:
    }
  }

  public void putFragment(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0)
      throw new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager");
    paramBundle.putInt(paramString, paramFragment.mIndex);
  }

  public void removeFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "remove: " + paramFragment + " nesting=" + paramFragment.mBackStackNesting);
    int i;
    if (paramFragment.isInBackStack())
    {
      i = 0;
      if ((!(paramFragment.mDetached)) || (i != 0))
      {
        label52: this.mAdded.remove(paramFragment);
        if (paramFragment.mHasMenu)
          this.mNeedMenuInvalidate = true;
        paramFragment.mAdded = false;
        paramFragment.mRemoving = true;
        if (i == 0)
          break label119;
      }
    }
    for (int j = 0; ; j = 1)
    {
      moveToState(paramFragment, j, paramInt1, paramInt2);
      return;
      i = 1;
      label119: break label52:
    }
  }

  public void removeOnBackStackChangedListener(FragmentManager.OnBackStackChangedListener paramOnBackStackChangedListener)
  {
    if (this.mBackStackChangeListeners == null)
      return;
    this.mBackStackChangeListeners.remove(paramOnBackStackChangedListener);
  }

  void reportBackStackChanged()
  {
    if (this.mBackStackChangeListeners != null);
    for (int i = 0; ; ++i)
    {
      if (i >= this.mBackStackChangeListeners.size())
        return;
      ((FragmentManager.OnBackStackChangedListener)this.mBackStackChangeListeners.get(i)).onBackStackChanged();
    }
  }

  void restoreAllState(Parcelable paramParcelable, ArrayList<Fragment> paramArrayList)
  {
    if (paramParcelable == null);
    FragmentManagerState localFragmentManagerState;
    do
    {
      return;
      localFragmentManagerState = (FragmentManagerState)paramParcelable;
    }
    while (localFragmentManagerState.mActive == null);
    int i1;
    if (paramArrayList != null)
    {
      i1 = 0;
      label24: if (i1 < paramArrayList.size())
        break label267;
    }
    this.mActive = new ArrayList(localFragmentManagerState.mActive.length);
    if (this.mAvailIndices != null)
      this.mAvailIndices.clear();
    int i = 0;
    label66: int l;
    label83: int k;
    if (i >= localFragmentManagerState.mActive.length)
    {
      if (paramArrayList != null)
      {
        l = 0;
        if (l < paramArrayList.size())
          break label598;
      }
      if (localFragmentManagerState.mAdded == null)
        break label832;
      this.mAdded = new ArrayList(localFragmentManagerState.mAdded.length);
      k = 0;
      label118: if (k < localFragmentManagerState.mAdded.length)
        break label705;
    }
    while (localFragmentManagerState.mBackStack != null)
    {
      this.mBackStack = new ArrayList(localFragmentManagerState.mBackStack.length);
      for (int j = 0; ; ++j)
      {
        if (j < localFragmentManagerState.mBackStack.length);
        BackStackRecord localBackStackRecord = localFragmentManagerState.mBackStack[j].instantiate(this);
        if (DEBUG)
          Log.v("FragmentManager", "restoreAllState: adding bse #" + j + " (index " + localBackStackRecord.mIndex + "): " + localBackStackRecord);
        this.mBackStack.add(localBackStackRecord);
        if (localBackStackRecord.mIndex < 0)
          continue;
        setBackStackIndex(localBackStackRecord.mIndex, localBackStackRecord);
      }
      label267: Fragment localFragment4 = (Fragment)paramArrayList.get(i1);
      if (DEBUG)
        Log.v("FragmentManager", "restoreAllState: re-attaching retained " + localFragment4);
      FragmentState localFragmentState2 = localFragmentManagerState.mActive[localFragment4.mIndex];
      localFragmentState2.mInstance = localFragment4;
      localFragment4.mSavedViewState = null;
      localFragment4.mBackStackNesting = 0;
      localFragment4.mInLayout = false;
      localFragment4.mAdded = false;
      localFragment4.mTarget = null;
      if (localFragmentState2.mSavedFragmentState != null)
      {
        localFragmentState2.mSavedFragmentState.setClassLoader(this.mActivity.getClassLoader());
        localFragment4.mSavedViewState = localFragmentState2.mSavedFragmentState.getSparseParcelableArray("android:view_state");
      }
      ++i1;
      break label24:
      FragmentState localFragmentState1 = localFragmentManagerState.mActive[i];
      if (localFragmentState1 != null)
      {
        Fragment localFragment1 = localFragmentState1.instantiate(this.mActivity);
        if (DEBUG)
          Log.v("FragmentManager", "restoreAllState: adding #" + i + ": " + localFragment1);
        this.mActive.add(localFragment1);
        localFragmentState1.mInstance = null;
      }
      while (true)
      {
        ++i;
        break label66:
        if (DEBUG)
          Log.v("FragmentManager", "restoreAllState: adding #" + i + ": (null)");
        this.mActive.add(null);
        if (this.mAvailIndices == null)
          this.mAvailIndices = new ArrayList();
        if (DEBUG)
          Log.v("FragmentManager", "restoreAllState: adding avail #" + i);
        this.mAvailIndices.add(Integer.valueOf(i));
      }
      label598: Fragment localFragment3 = (Fragment)paramArrayList.get(l);
      if (localFragment3.mTargetIndex >= 0)
        if (localFragment3.mTargetIndex >= this.mActive.size())
          break label658;
      for (localFragment3.mTarget = ((Fragment)this.mActive.get(localFragment3.mTargetIndex)); ; localFragment3.mTarget = null)
      {
        ++l;
        break label83:
        label658: Log.w("FragmentManager", "Re-attaching retained fragment " + localFragment3 + " target no longer exists: " + localFragment3.mTargetIndex);
      }
      label705: Fragment localFragment2 = (Fragment)this.mActive.get(localFragmentManagerState.mAdded[k]);
      if (localFragment2 == null)
        throw new IllegalStateException("No instantiated fragment for index #" + localFragmentManagerState.mAdded[k]);
      localFragment2.mAdded = true;
      localFragment2.mImmediateActivity = this.mActivity;
      if (DEBUG)
        Log.v("FragmentManager", "restoreAllState: making added #" + k + ": " + localFragment2);
      this.mAdded.add(localFragment2);
      ++k;
      break label118:
      label832: this.mAdded = null;
    }
    this.mBackStack = null;
  }

  ArrayList<Fragment> retainNonConfig()
  {
    ArrayList localArrayList1 = this.mActive;
    ArrayList localArrayList2 = null;
    int i;
    if (localArrayList1 != null)
    {
      i = 0;
      label13: if (i < this.mActive.size())
        break label26;
    }
    return localArrayList2;
    label26: Fragment localFragment = (Fragment)this.mActive.get(i);
    if ((localFragment != null) && (localFragment.mRetainInstance))
    {
      if (localArrayList2 == null)
        localArrayList2 = new ArrayList();
      localArrayList2.add(localFragment);
      localFragment.mRetaining = true;
      if (localFragment.mTarget == null)
        break label108;
    }
    for (int j = localFragment.mTarget.mIndex; ; j = -1)
    {
      localFragment.mTargetIndex = j;
      ++i;
      label108: break label13:
    }
  }

  Parcelable saveAllState()
  {
    execPendingActions();
    if (HONEYCOMB)
      this.mStateSaved = true;
    if ((this.mActive == null) || (this.mActive.size() <= 0));
    FragmentState[] arrayOfFragmentState;
    int j;
    int k;
    do
    {
      return null;
      int i = this.mActive.size();
      arrayOfFragmentState = new FragmentState[i];
      j = 0;
      k = 0;
      label54: if (k < i)
        break label82;
      if (j != 0)
        break label369;
    }
    while (!(DEBUG));
    Log.v("FragmentManager", "saveAllState: no fragments!");
    return null;
    label82: Fragment localFragment = (Fragment)this.mActive.get(k);
    FragmentState localFragmentState;
    if (localFragment != null)
    {
      j = 1;
      localFragmentState = new FragmentState(localFragment);
      arrayOfFragmentState[k] = localFragmentState;
      if ((localFragment.mState <= 0) || (localFragmentState.mSavedFragmentState != null))
        break label356;
      localFragmentState.mSavedFragmentState = saveFragmentBasicState(localFragment);
      if (localFragment.mTarget != null)
      {
        if (localFragment.mTarget.mIndex < 0)
        {
          String str = "Failure saving state: " + localFragment + " has target not in fragment manager: " + localFragment.mTarget;
          Log.e("FragmentManager", str);
          dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), new String[0]);
          throw new IllegalStateException(str);
        }
        if (localFragmentState.mSavedFragmentState == null)
          localFragmentState.mSavedFragmentState = new Bundle();
        putFragment(localFragmentState.mSavedFragmentState, "android:target_state", localFragment.mTarget);
        if (localFragment.mTargetRequestCode != 0)
          localFragmentState.mSavedFragmentState.putInt("android:target_req_state", localFragment.mTargetRequestCode);
      }
    }
    while (true)
    {
      if (DEBUG)
        Log.v("FragmentManager", "Saved state of " + localFragment + ": " + localFragmentState.mSavedFragmentState);
      ++k;
      break label54:
      label356: localFragmentState.mSavedFragmentState = localFragment.mSavedFragmentState;
    }
    label369: int[] arrayOfInt = (int[])null;
    BackStackState[] arrayOfBackStackState = (BackStackState[])null;
    int i3;
    if (this.mAdded != null)
    {
      int i2 = this.mAdded.size();
      if (i2 > 0)
      {
        arrayOfInt = new int[i2];
        i3 = 0;
        if (i3 < i2)
          break label488;
      }
    }
    int l;
    if (this.mBackStack != null)
    {
      l = this.mBackStack.size();
      if (l > 0)
        arrayOfBackStackState = new BackStackState[l];
    }
    for (int i1 = 0; ; ++i1)
    {
      if (i1 >= l)
      {
        FragmentManagerState localFragmentManagerState = new FragmentManagerState();
        localFragmentManagerState.mActive = arrayOfFragmentState;
        localFragmentManagerState.mAdded = arrayOfInt;
        localFragmentManagerState.mBackStack = arrayOfBackStackState;
        return localFragmentManagerState;
        label488: arrayOfInt[i3] = ((Fragment)this.mAdded.get(i3)).mIndex;
        if (DEBUG)
          Log.v("FragmentManager", "saveAllState: adding fragment #" + i3 + ": " + this.mAdded.get(i3));
        ++i3;
      }
      BackStackState localBackStackState = new BackStackState(this, (BackStackRecord)this.mBackStack.get(i1));
      arrayOfBackStackState[i1] = localBackStackState;
      if (!(DEBUG))
        continue;
      Log.v("FragmentManager", "saveAllState: adding back stack #" + i1 + ": " + this.mBackStack.get(i1));
    }
  }

  Bundle saveFragmentBasicState(Fragment paramFragment)
  {
    if (this.mStateBundle == null)
      this.mStateBundle = new Bundle();
    paramFragment.onSaveInstanceState(this.mStateBundle);
    boolean bool = this.mStateBundle.isEmpty();
    Bundle localBundle = null;
    if (!(bool))
    {
      localBundle = this.mStateBundle;
      this.mStateBundle = null;
    }
    if (paramFragment.mView != null)
      saveFragmentViewState(paramFragment);
    if (paramFragment.mSavedViewState != null)
    {
      if (localBundle == null)
        localBundle = new Bundle();
      localBundle.putSparseParcelableArray("android:view_state", paramFragment.mSavedViewState);
    }
    return localBundle;
  }

  public Fragment.SavedState saveFragmentInstanceState(Fragment paramFragment)
  {
    if (paramFragment.mIndex < 0)
      throw new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager");
    if (paramFragment.mState > 0)
    {
      Bundle localBundle = saveFragmentBasicState(paramFragment);
      if (localBundle != null)
        return new Fragment.SavedState(localBundle);
      return null;
    }
    return null;
  }

  void saveFragmentViewState(Fragment paramFragment)
  {
    if (paramFragment.mInnerView == null)
      return;
    if (this.mStateArray == null)
      this.mStateArray = new SparseArray();
    while (true)
    {
      paramFragment.mInnerView.saveHierarchyState(this.mStateArray);
      if (this.mStateArray.size() > 0);
      paramFragment.mSavedViewState = this.mStateArray;
      this.mStateArray = null;
      return;
      this.mStateArray.clear();
    }
  }

  public void setBackStackIndex(int paramInt, BackStackRecord paramBackStackRecord)
  {
    monitorenter;
    try
    {
      if (this.mBackStackIndices == null)
        this.mBackStackIndices = new ArrayList();
      int i = this.mBackStackIndices.size();
      if (paramInt < i)
      {
        if (DEBUG)
          Log.v("FragmentManager", "Setting back stack index " + paramInt + " to " + paramBackStackRecord);
        this.mBackStackIndices.set(paramInt, paramBackStackRecord);
        return;
      }
      do
      {
        this.mBackStackIndices.add(null);
        if (this.mAvailBackStackIndices == null)
          this.mAvailBackStackIndices = new ArrayList();
        if (DEBUG)
          Log.v("FragmentManager", "Adding available back stack index " + i);
        this.mAvailBackStackIndices.add(Integer.valueOf(i));
        ++i;
      }
      while (i < paramInt);
      if (DEBUG)
        Log.v("FragmentManager", "Adding back stack index " + paramInt + " with " + paramBackStackRecord);
    }
    finally
    {
      monitorexit;
    }
  }

  public void showFragment(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      Log.v("FragmentManager", "show: " + paramFragment);
    if (!(paramFragment.mHidden))
      return;
    paramFragment.mHidden = false;
    if (paramFragment.mView != null)
    {
      Animation localAnimation = loadAnimation(paramFragment, paramInt1, true, paramInt2);
      if (localAnimation != null)
        paramFragment.mView.startAnimation(localAnimation);
      paramFragment.mView.setVisibility(0);
    }
    if ((paramFragment.mAdded) && (paramFragment.mHasMenu))
      this.mNeedMenuInvalidate = true;
    paramFragment.onHiddenChanged(false);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    DebugUtils.buildShortClassTag(this.mActivity, localStringBuilder);
    localStringBuilder.append("}}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.FragmentManagerImpl
 * JD-Core Version:    0.5.3
 */