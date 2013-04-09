package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class FragmentActivity extends Activity
{
  private static final String FRAGMENTS_TAG = "android:support:fragments";
  private static final int HONEYCOMB = 11;
  static final int MSG_REALLY_STOPPED = 1;
  static final int MSG_RESUME_PENDING = 2;
  private static final String TAG = "FragmentActivity";
  HCSparseArray<LoaderManagerImpl> mAllLoaderManagers;
  boolean mCheckedForLoaderManager;
  boolean mCreated;
  final FragmentManagerImpl mFragments = new FragmentManagerImpl();
  final Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
        super.handleMessage(paramMessage);
      case 1:
        do
          return;
        while (!(FragmentActivity.this.mStopped));
        FragmentActivity.this.doReallyStop(false);
        return;
      case 2:
      }
      FragmentActivity.this.mFragments.dispatchResume();
      FragmentActivity.this.mFragments.execPendingActions();
    }
  };
  LoaderManagerImpl mLoaderManager;
  boolean mLoadersStarted;
  boolean mOptionsMenuInvalidated;
  boolean mReallyStopped;
  boolean mResumed;
  boolean mStopped;

  void doReallyStop(boolean paramBoolean)
  {
    if (this.mReallyStopped)
      return;
    this.mReallyStopped = true;
    this.mHandler.removeMessages(1);
    onReallyStop(paramBoolean);
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.mCreated);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.mResumed);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.mStopped);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.mReallyStopped);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(this.mLoadersStarted);
    if (this.mLoaderManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
      paramPrintWriter.println(":");
      this.mLoaderManager.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
    this.mFragments.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }

  LoaderManagerImpl getLoaderManager(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mAllLoaderManagers == null)
      this.mAllLoaderManagers = new HCSparseArray();
    LoaderManagerImpl localLoaderManagerImpl = (LoaderManagerImpl)this.mAllLoaderManagers.get(paramInt);
    if (localLoaderManagerImpl == null)
    {
      if (paramBoolean2)
      {
        localLoaderManagerImpl = new LoaderManagerImpl(this, paramBoolean1);
        this.mAllLoaderManagers.put(paramInt, localLoaderManagerImpl);
      }
      return localLoaderManagerImpl;
    }
    localLoaderManagerImpl.updateActivity(this);
    return localLoaderManagerImpl;
  }

  public FragmentManager getSupportFragmentManager()
  {
    return this.mFragments;
  }

  public LoaderManager getSupportLoaderManager()
  {
    if (this.mLoaderManager != null)
      return this.mLoaderManager;
    this.mCheckedForLoaderManager = true;
    this.mLoaderManager = getLoaderManager(-1, this.mLoadersStarted, true);
    return this.mLoaderManager;
  }

  void invalidateSupportFragmentIndex(int paramInt)
  {
    if (this.mAllLoaderManagers == null)
      return;
    LoaderManagerImpl localLoaderManagerImpl = (LoaderManagerImpl)this.mAllLoaderManagers.get(paramInt);
    if (localLoaderManagerImpl != null)
      localLoaderManagerImpl.doDestroy();
    this.mAllLoaderManagers.remove(paramInt);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = paramInt1 >> 16;
    if (i != 0)
    {
      int j = i - 1;
      if ((this.mFragments.mActive == null) || (j < 0) || (j >= this.mFragments.mActive.size()))
      {
        Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(paramInt1));
        return;
      }
      Fragment localFragment = (Fragment)this.mFragments.mActive.get(j);
      if (localFragment == null)
        Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(paramInt1));
      localFragment.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onAttachFragment(Fragment paramFragment)
  {
  }

  public void onBackPressed()
  {
    if (this.mFragments.popBackStackImmediate())
      return;
    finish();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mFragments.dispatchConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.mFragments.attachActivity(this);
    if (getLayoutInflater().getFactory() == null)
      getLayoutInflater().setFactory(this);
    super.onCreate(paramBundle);
    NonConfigurationInstances localNonConfigurationInstances = (NonConfigurationInstances)getLastNonConfigurationInstance();
    if (localNonConfigurationInstances != null)
      this.mAllLoaderManagers = localNonConfigurationInstances.loaders;
    Parcelable localParcelable;
    FragmentManagerImpl localFragmentManagerImpl;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localFragmentManagerImpl = this.mFragments;
      if (localNonConfigurationInstances == null)
        break label94;
    }
    for (ArrayList localArrayList = localNonConfigurationInstances.fragments; ; localArrayList = null)
    {
      localFragmentManagerImpl.restoreAllState(localParcelable, localArrayList);
      this.mFragments.dispatchCreate();
      label94: return;
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool = super.onCreatePanelMenu(paramInt, paramMenu) | this.mFragments.dispatchCreateOptionsMenu(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT >= 11)
        return bool;
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!("fragment".equals(paramString)))
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, FragmentTag.Fragment);
    if (str1 == null)
      str1 = localTypedArray.getString(0);
    int i = localTypedArray.getResourceId(1, -1);
    String str2 = localTypedArray.getString(2);
    localTypedArray.recycle();
    if (0 != 0);
    for (int j = null.getId(); (j == -1) && (i == -1) && (str2 == null); j = 0)
      throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str1);
    Fragment localFragment;
    label163: int k;
    if (i != -1)
    {
      localFragment = this.mFragments.findFragmentById(i);
      if ((localFragment == null) && (str2 != null))
        localFragment = this.mFragments.findFragmentByTag(str2);
      if ((localFragment == null) && (j != -1))
        localFragment = this.mFragments.findFragmentById(j);
      if (FragmentManagerImpl.DEBUG)
        Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(i) + " fname=" + str1 + " existing=" + localFragment);
      if (localFragment != null)
        break label406;
      localFragment = Fragment.instantiate(this, str1);
      localFragment.mFromLayout = true;
      if (i == 0)
        break label399;
      k = i;
      label289: localFragment.mFragmentId = k;
      localFragment.mContainerId = j;
      localFragment.mTag = str2;
      localFragment.mInLayout = true;
      localFragment.mImmediateActivity = this;
      localFragment.mFragmentManager = this.mFragments;
      localFragment.onInflate(this, paramAttributeSet, localFragment.mSavedFragmentState);
      this.mFragments.addFragment(localFragment, true);
    }
    while (localFragment.mView == null)
    {
      throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
      localFragment = null;
      break label163:
      label399: k = j;
      break label289:
      if (localFragment.mInLayout)
        label406: throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(j) + " with another fragment for " + str1);
      localFragment.mInLayout = true;
      localFragment.mImmediateActivity = this;
      if (!(localFragment.mRetaining))
        localFragment.onInflate(this, paramAttributeSet, localFragment.mSavedFragmentState);
      this.mFragments.moveToState(localFragment);
    }
    if (i != 0)
      localFragment.mView.setId(i);
    if (localFragment.mView.getTag() == null)
      localFragment.mView.setTag(str2);
    return localFragment.mView;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    doReallyStop(false);
    this.mFragments.dispatchDestroy();
    if (this.mLoaderManager == null)
      return;
    this.mLoaderManager.doDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    this.mFragments.dispatchLowMemory();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 0:
      return this.mFragments.dispatchOptionsItemSelected(paramMenuItem);
    case 6:
    }
    return this.mFragments.dispatchContextItemSelected(paramMenuItem);
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    while (true)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.mFragments.dispatchOptionsMenuClosed(paramMenu);
    }
  }

  protected void onPause()
  {
    super.onPause();
    this.mResumed = false;
    if (this.mHandler.hasMessages(2))
    {
      this.mHandler.removeMessages(2);
      this.mFragments.dispatchResume();
    }
    this.mFragments.dispatchPause();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    this.mHandler.removeMessages(2);
    this.mFragments.dispatchResume();
    this.mFragments.execPendingActions();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.mOptionsMenuInvalidated)
      {
        this.mOptionsMenuInvalidated = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return (((super.onPreparePanel(paramInt, paramView, paramMenu) | this.mFragments.dispatchPrepareOptionsMenu(paramMenu))) && (paramMenu.hasVisibleItems()));
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }

  void onReallyStop(boolean paramBoolean)
  {
    if (this.mLoadersStarted)
    {
      this.mLoadersStarted = false;
      if (this.mLoaderManager != null)
      {
        if (paramBoolean)
          break label39;
        this.mLoaderManager.doStop();
      }
    }
    while (true)
    {
      this.mFragments.dispatchReallyStop(paramBoolean);
      return;
      label39: this.mLoaderManager.doRetain();
    }
  }

  protected void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(2);
    this.mResumed = true;
    this.mFragments.execPendingActions();
  }

  public final Object onRetainNonConfigurationInstance()
  {
    if (this.mStopped)
      doReallyStop(true);
    ArrayList localArrayList = this.mFragments.retainNonConfig();
    HCSparseArray localHCSparseArray = this.mAllLoaderManagers;
    int i = 0;
    int j;
    if (localHCSparseArray != null)
    {
      j = this.mAllLoaderManagers.size() - 1;
      label42: if (j >= 0)
        break label57;
    }
    if ((localArrayList == null) && (i == 0))
    {
      return null;
      label57: LoaderManagerImpl localLoaderManagerImpl = (LoaderManagerImpl)this.mAllLoaderManagers.valueAt(j);
      if (localLoaderManagerImpl.mRetaining)
        i = 1;
      while (true)
      {
        --j;
        break label42:
        localLoaderManagerImpl.doDestroy();
        this.mAllLoaderManagers.removeAt(j);
      }
    }
    NonConfigurationInstances localNonConfigurationInstances = new NonConfigurationInstances();
    localNonConfigurationInstances.activity = null;
    localNonConfigurationInstances.children = null;
    localNonConfigurationInstances.fragments = localArrayList;
    localNonConfigurationInstances.loaders = this.mAllLoaderManagers;
    return localNonConfigurationInstances;
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.mFragments.saveAllState();
    if (localParcelable == null)
      return;
    paramBundle.putParcelable("android:support:fragments", localParcelable);
  }

  protected void onStart()
  {
    super.onStart();
    this.mStopped = false;
    this.mHandler.removeMessages(1);
    if (!(this.mCreated))
    {
      this.mCreated = true;
      this.mFragments.dispatchActivityCreated();
    }
    this.mFragments.noteStateNotSaved();
    this.mFragments.execPendingActions();
    if (!(this.mLoadersStarted))
    {
      this.mLoadersStarted = true;
      if (this.mLoaderManager == null)
        break label111;
      this.mLoaderManager.doStart();
      this.mCheckedForLoaderManager = true;
    }
    this.mFragments.dispatchStart();
    if (this.mAllLoaderManagers != null);
    for (int i = this.mAllLoaderManagers.size() - 1; ; --i)
    {
      if (i < 0)
      {
        return;
        label111: if (!(this.mCheckedForLoaderManager));
        this.mLoaderManager = getLoaderManager(-1, this.mLoadersStarted, false);
      }
      LoaderManagerImpl localLoaderManagerImpl = (LoaderManagerImpl)this.mAllLoaderManagers.valueAt(i);
      localLoaderManagerImpl.finishRetain();
      localLoaderManagerImpl.doReportStart();
    }
  }

  protected void onStop()
  {
    super.onStop();
    this.mStopped = true;
    this.mHandler.sendEmptyMessage(1);
    this.mFragments.dispatchStop();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, paramInt);
  }

  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0)
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, (1 + paramFragment.mIndex << 16) + (0xFFFF & paramInt));
  }

  void supportInvalidateOptionsMenu()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActivityCompatHoneycomb.invalidateOptionsMenu(this);
      return;
    }
    this.mOptionsMenuInvalidated = true;
  }

  static class FragmentTag
  {
    public static final int[] Fragment = { 16842755, 16842960, 16842961 };
    public static final int Fragment_id = 1;
    public static final int Fragment_name = 0;
    public static final int Fragment_tag = 2;
  }

  static final class NonConfigurationInstances
  {
    Object activity;
    HashMap<String, Object> children;
    ArrayList<Fragment> fragments;
    HCSparseArray<LoaderManagerImpl> loaders;
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     android.support.v4.app.FragmentActivity
 * JD-Core Version:    0.5.3
 */