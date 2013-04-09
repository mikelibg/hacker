package android.support.v4.app;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

final class BackStackRecord extends FragmentTransaction
  implements FragmentManager.BackStackEntry, Runnable
{
  static final int OP_ADD = 1;
  static final int OP_ATTACH = 7;
  static final int OP_DETACH = 6;
  static final int OP_HIDE = 4;
  static final int OP_NULL = 0;
  static final int OP_REMOVE = 3;
  static final int OP_REPLACE = 2;
  static final int OP_SHOW = 5;
  static final String TAG = "BackStackEntry";
  boolean mAddToBackStack;
  boolean mAllowAddToBackStack = true;
  int mBreadCrumbShortTitleRes;
  CharSequence mBreadCrumbShortTitleText;
  int mBreadCrumbTitleRes;
  CharSequence mBreadCrumbTitleText;
  boolean mCommitted;
  int mEnterAnim;
  int mExitAnim;
  Op mHead;
  int mIndex;
  final FragmentManagerImpl mManager;
  String mName;
  int mNumOp;
  Op mTail;
  int mTransition;
  int mTransitionStyle;

  public BackStackRecord(FragmentManagerImpl paramFragmentManagerImpl)
  {
    this.mManager = paramFragmentManagerImpl;
  }

  private void doAddOp(int paramInt1, Fragment paramFragment, String paramString, int paramInt2)
  {
    if (paramFragment.mImmediateActivity != null)
      throw new IllegalStateException("Fragment already added: " + paramFragment);
    paramFragment.mImmediateActivity = this.mManager.mActivity;
    paramFragment.mFragmentManager = this.mManager;
    if (paramString != null)
    {
      if ((paramFragment.mTag != null) && (!(paramString.equals(paramFragment.mTag))))
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.mTag + " now " + paramString);
      paramFragment.mTag = paramString;
    }
    if (paramInt1 != 0)
    {
      if ((paramFragment.mFragmentId != 0) && (paramFragment.mFragmentId != paramInt1))
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.mFragmentId + " now " + paramInt1);
      paramFragment.mFragmentId = paramInt1;
      paramFragment.mContainerId = paramInt1;
    }
    Op localOp = new Op();
    localOp.cmd = paramInt2;
    localOp.fragment = paramFragment;
    addOp(localOp);
  }

  public FragmentTransaction add(int paramInt, Fragment paramFragment)
  {
    doAddOp(paramInt, paramFragment, null, 1);
    return this;
  }

  public FragmentTransaction add(int paramInt, Fragment paramFragment, String paramString)
  {
    doAddOp(paramInt, paramFragment, paramString, 1);
    return this;
  }

  public FragmentTransaction add(Fragment paramFragment, String paramString)
  {
    doAddOp(0, paramFragment, paramString, 1);
    return this;
  }

  void addOp(Op paramOp)
  {
    if (this.mHead == null)
    {
      this.mTail = paramOp;
      this.mHead = paramOp;
    }
    while (true)
    {
      paramOp.enterAnim = this.mEnterAnim;
      paramOp.exitAnim = this.mExitAnim;
      this.mNumOp = (1 + this.mNumOp);
      return;
      paramOp.prev = this.mTail;
      this.mTail.next = paramOp;
      this.mTail = paramOp;
    }
  }

  public FragmentTransaction addToBackStack(String paramString)
  {
    if (!(this.mAllowAddToBackStack))
      throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
    this.mAddToBackStack = true;
    this.mName = paramString;
    return this;
  }

  public FragmentTransaction attach(Fragment paramFragment)
  {
    Op localOp = new Op();
    localOp.cmd = 7;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  void bumpBackStackNesting(int paramInt)
  {
    if (!(this.mAddToBackStack));
    Op localOp;
    do
    {
      return;
      if (FragmentManagerImpl.DEBUG)
        Log.v("BackStackEntry", "Bump nesting in " + this + " by " + paramInt);
      localOp = this.mHead;
    }
    while (localOp == null);
    Fragment localFragment1 = localOp.fragment;
    localFragment1.mBackStackNesting = (paramInt + localFragment1.mBackStackNesting);
    if (FragmentManagerImpl.DEBUG)
      Log.v("BackStackEntry", "Bump nesting of " + localOp.fragment + " to " + localOp.fragment.mBackStackNesting);
    if (localOp.removed != null);
    for (int i = localOp.removed.size() - 1; ; --i)
    {
      if (i < 0)
        localOp = localOp.next;
      Fragment localFragment2 = (Fragment)localOp.removed.get(i);
      localFragment2.mBackStackNesting = (paramInt + localFragment2.mBackStackNesting);
      if (!(FragmentManagerImpl.DEBUG))
        continue;
      Log.v("BackStackEntry", "Bump nesting of " + localFragment2 + " to " + localFragment2.mBackStackNesting);
    }
  }

  public int commit()
  {
    return commitInternal(false);
  }

  public int commitAllowingStateLoss()
  {
    return commitInternal(true);
  }

  int commitInternal(boolean paramBoolean)
  {
    if (this.mCommitted)
      throw new IllegalStateException("commit already called");
    if (FragmentManagerImpl.DEBUG)
      Log.v("BackStackEntry", "Commit: " + this);
    this.mCommitted = true;
    if (this.mAddToBackStack);
    for (this.mIndex = this.mManager.allocBackStackIndex(this); ; this.mIndex = -1)
    {
      this.mManager.enqueueAction(this, paramBoolean);
      return this.mIndex;
    }
  }

  public FragmentTransaction detach(Fragment paramFragment)
  {
    Op localOp = new Op();
    localOp.cmd = 6;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public FragmentTransaction disallowAddToBackStack()
  {
    if (this.mAddToBackStack)
      throw new IllegalStateException("This transaction is already being added to the back stack");
    this.mAllowAddToBackStack = false;
    return this;
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mName=");
    paramPrintWriter.print(this.mName);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.mIndex);
    paramPrintWriter.print(" mCommitted=");
    paramPrintWriter.println(this.mCommitted);
    if (this.mTransition != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTransition=#");
      paramPrintWriter.print(Integer.toHexString(this.mTransition));
      paramPrintWriter.print(" mTransitionStyle=#");
      paramPrintWriter.println(Integer.toHexString(this.mTransitionStyle));
    }
    if ((this.mEnterAnim != 0) || (this.mExitAnim != 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mEnterAnim=#");
      paramPrintWriter.print(Integer.toHexString(this.mEnterAnim));
      paramPrintWriter.print(" mExitAnim=#");
      paramPrintWriter.println(Integer.toHexString(this.mExitAnim));
    }
    if ((this.mBreadCrumbTitleRes != 0) || (this.mBreadCrumbTitleText != null))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mBreadCrumbTitleRes=#");
      paramPrintWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
      paramPrintWriter.print(" mBreadCrumbTitleText=");
      paramPrintWriter.println(this.mBreadCrumbTitleText);
    }
    if ((this.mBreadCrumbShortTitleRes != 0) || (this.mBreadCrumbShortTitleText != null))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
      paramPrintWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
      paramPrintWriter.print(" mBreadCrumbShortTitleText=");
      paramPrintWriter.println(this.mBreadCrumbShortTitleText);
    }
    String str;
    if (this.mHead != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      str = paramString + "    ";
    }
    int i;
    for (Op localOp = this.mHead; ; localOp = localOp.next)
    {
      if (localOp == null)
        return;
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  Op #");
      paramPrintWriter.print(0);
      paramPrintWriter.println(":");
      paramPrintWriter.print(str);
      paramPrintWriter.print("cmd=");
      paramPrintWriter.print(localOp.cmd);
      paramPrintWriter.print(" fragment=");
      paramPrintWriter.println(localOp.fragment);
      if ((localOp.enterAnim != 0) || (localOp.exitAnim != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("enterAnim=");
        paramPrintWriter.print(localOp.enterAnim);
        paramPrintWriter.print(" exitAnim=");
        paramPrintWriter.println(localOp.exitAnim);
      }
      if ((localOp.removed == null) || (localOp.removed.size() <= 0))
        continue;
      i = 0;
      label444: if (i < localOp.removed.size())
        break;
    }
    paramPrintWriter.print(str);
    if (localOp.removed.size() == 1)
      paramPrintWriter.print("Removed: ");
    while (true)
    {
      paramPrintWriter.println(localOp.removed.get(i));
      ++i;
      break label444:
      paramPrintWriter.println("Removed:");
      paramPrintWriter.print(str);
      paramPrintWriter.print("  #");
      paramPrintWriter.print(0);
      paramPrintWriter.print(": ");
    }
  }

  public CharSequence getBreadCrumbShortTitle()
  {
    if (this.mBreadCrumbShortTitleRes != 0)
      return this.mManager.mActivity.getText(this.mBreadCrumbShortTitleRes);
    return this.mBreadCrumbShortTitleText;
  }

  public int getBreadCrumbShortTitleRes()
  {
    return this.mBreadCrumbShortTitleRes;
  }

  public CharSequence getBreadCrumbTitle()
  {
    if (this.mBreadCrumbTitleRes != 0)
      return this.mManager.mActivity.getText(this.mBreadCrumbTitleRes);
    return this.mBreadCrumbTitleText;
  }

  public int getBreadCrumbTitleRes()
  {
    return this.mBreadCrumbTitleRes;
  }

  public int getId()
  {
    return this.mIndex;
  }

  public String getName()
  {
    return this.mName;
  }

  public int getTransition()
  {
    return this.mTransition;
  }

  public int getTransitionStyle()
  {
    return this.mTransitionStyle;
  }

  public FragmentTransaction hide(Fragment paramFragment)
  {
    if (paramFragment.mImmediateActivity == null)
      throw new IllegalStateException("Fragment not added: " + paramFragment);
    Op localOp = new Op();
    localOp.cmd = 4;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public boolean isAddToBackStackAllowed()
  {
    return this.mAllowAddToBackStack;
  }

  public boolean isEmpty()
  {
    return (this.mNumOp == 0);
  }

  public void popFromBackStack(boolean paramBoolean)
  {
    if (FragmentManagerImpl.DEBUG)
      Log.v("BackStackEntry", "popFromBackStack: " + this);
    bumpBackStackNesting(-1);
    Op localOp = this.mTail;
    if (localOp == null)
    {
      if (paramBoolean)
        label39: this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle, true);
      if (this.mIndex >= 0)
      {
        this.mManager.freeBackStackIndex(this.mIndex);
        this.mIndex = -1;
      }
      return;
    }
    switch (localOp.cmd)
    {
    default:
      throw new IllegalArgumentException("Unknown cmd: " + localOp.cmd);
    case 1:
      Fragment localFragment8 = localOp.fragment;
      localFragment8.mImmediateActivity = null;
      this.mManager.removeFragment(localFragment8, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      localOp = localOp.prev;
      break label39:
      Fragment localFragment6 = localOp.fragment;
      localFragment6.mImmediateActivity = null;
      this.mManager.removeFragment(localFragment6, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
      if (localOp.removed == null)
        continue;
      for (int i = 0; ; ++i)
      {
        if (i < localOp.removed.size());
        Fragment localFragment7 = (Fragment)localOp.removed.get(i);
        localFragment6.mImmediateActivity = this.mManager.mActivity;
        this.mManager.addFragment(localFragment7, false);
      }
      Fragment localFragment5 = localOp.fragment;
      localFragment5.mImmediateActivity = this.mManager.mActivity;
      this.mManager.addFragment(localFragment5, false);
      continue;
      Fragment localFragment4 = localOp.fragment;
      this.mManager.showFragment(localFragment4, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
      continue;
      Fragment localFragment3 = localOp.fragment;
      this.mManager.hideFragment(localFragment3, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
      continue;
      Fragment localFragment2 = localOp.fragment;
      this.mManager.attachFragment(localFragment2, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
      continue;
      Fragment localFragment1 = localOp.fragment;
      this.mManager.detachFragment(localFragment1, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
    }
  }

  public FragmentTransaction remove(Fragment paramFragment)
  {
    if (paramFragment.mImmediateActivity == null)
      throw new IllegalStateException("Fragment not added: " + paramFragment);
    paramFragment.mImmediateActivity = null;
    Op localOp = new Op();
    localOp.cmd = 3;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  public FragmentTransaction replace(int paramInt, Fragment paramFragment)
  {
    return replace(paramInt, paramFragment, null);
  }

  public FragmentTransaction replace(int paramInt, Fragment paramFragment, String paramString)
  {
    if (paramInt == 0)
      throw new IllegalArgumentException("Must use non-zero containerViewId");
    doAddOp(paramInt, paramFragment, paramString, 2);
    return this;
  }

  public void run()
  {
    if (FragmentManagerImpl.DEBUG)
      Log.v("BackStackEntry", "Run: " + this);
    if ((this.mAddToBackStack) && (this.mIndex < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    bumpBackStackNesting(1);
    Op localOp = this.mHead;
    if (localOp == null)
    {
      label64: this.mManager.moveToState(this.mManager.mCurState, this.mTransition, this.mTransitionStyle, true);
      if (this.mAddToBackStack)
        this.mManager.addBackStackState(this);
      return;
    }
    switch (localOp.cmd)
    {
    default:
      throw new IllegalArgumentException("Unknown cmd: " + localOp.cmd);
    case 1:
      Fragment localFragment8 = localOp.fragment;
      localFragment8.mNextAnim = localOp.enterAnim;
      this.mManager.addFragment(localFragment8, false);
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      localOp = localOp.next;
      break label64:
      Fragment localFragment6 = localOp.fragment;
      if (this.mManager.mAdded != null);
      for (int i = 0; ; ++i)
      {
        if (i >= this.mManager.mAdded.size())
        {
          localFragment6.mNextAnim = localOp.enterAnim;
          this.mManager.addFragment(localFragment6, false);
        }
        Fragment localFragment7 = (Fragment)this.mManager.mAdded.get(i);
        if (FragmentManagerImpl.DEBUG)
          Log.v("BackStackEntry", "OP_REPLACE: adding=" + localFragment6 + " old=" + localFragment7);
        if (localFragment7.mContainerId != localFragment6.mContainerId)
          continue;
        if (localOp.removed == null)
          localOp.removed = new ArrayList();
        localOp.removed.add(localFragment7);
        localFragment7.mNextAnim = localOp.exitAnim;
        if (this.mAddToBackStack)
        {
          localFragment7.mBackStackNesting = (1 + localFragment7.mBackStackNesting);
          if (FragmentManagerImpl.DEBUG)
            Log.v("BackStackEntry", "Bump nesting of " + localFragment7 + " to " + localFragment7.mBackStackNesting);
        }
        this.mManager.removeFragment(localFragment7, this.mTransition, this.mTransitionStyle);
      }
      Fragment localFragment5 = localOp.fragment;
      localFragment5.mNextAnim = localOp.exitAnim;
      this.mManager.removeFragment(localFragment5, this.mTransition, this.mTransitionStyle);
      continue;
      Fragment localFragment4 = localOp.fragment;
      localFragment4.mNextAnim = localOp.exitAnim;
      this.mManager.hideFragment(localFragment4, this.mTransition, this.mTransitionStyle);
      continue;
      Fragment localFragment3 = localOp.fragment;
      localFragment3.mNextAnim = localOp.enterAnim;
      this.mManager.showFragment(localFragment3, this.mTransition, this.mTransitionStyle);
      continue;
      Fragment localFragment2 = localOp.fragment;
      localFragment2.mNextAnim = localOp.exitAnim;
      this.mManager.detachFragment(localFragment2, this.mTransition, this.mTransitionStyle);
      continue;
      Fragment localFragment1 = localOp.fragment;
      localFragment1.mNextAnim = localOp.enterAnim;
      this.mManager.attachFragment(localFragment1, this.mTransition, this.mTransitionStyle);
    }
  }

  public FragmentTransaction setBreadCrumbShortTitle(int paramInt)
  {
    this.mBreadCrumbShortTitleRes = paramInt;
    this.mBreadCrumbShortTitleText = null;
    return this;
  }

  public FragmentTransaction setBreadCrumbShortTitle(CharSequence paramCharSequence)
  {
    this.mBreadCrumbShortTitleRes = 0;
    this.mBreadCrumbShortTitleText = paramCharSequence;
    return this;
  }

  public FragmentTransaction setBreadCrumbTitle(int paramInt)
  {
    this.mBreadCrumbTitleRes = paramInt;
    this.mBreadCrumbTitleText = null;
    return this;
  }

  public FragmentTransaction setBreadCrumbTitle(CharSequence paramCharSequence)
  {
    this.mBreadCrumbTitleRes = 0;
    this.mBreadCrumbTitleText = paramCharSequence;
    return this;
  }

  public FragmentTransaction setCustomAnimations(int paramInt1, int paramInt2)
  {
    this.mEnterAnim = paramInt1;
    this.mExitAnim = paramInt2;
    return this;
  }

  public FragmentTransaction setTransition(int paramInt)
  {
    this.mTransition = paramInt;
    return this;
  }

  public FragmentTransaction setTransitionStyle(int paramInt)
  {
    this.mTransitionStyle = paramInt;
    return this;
  }

  public FragmentTransaction show(Fragment paramFragment)
  {
    if (paramFragment.mImmediateActivity == null)
      throw new IllegalStateException("Fragment not added: " + paramFragment);
    Op localOp = new Op();
    localOp.cmd = 5;
    localOp.fragment = paramFragment;
    addOp(localOp);
    return this;
  }

  static final class Op
  {
    int cmd;
    int enterAnim;
    int exitAnim;
    Fragment fragment;
    Op next;
    Op prev;
    ArrayList<Fragment> removed;
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.BackStackRecord
 * JD-Core Version:    0.5.3
 */