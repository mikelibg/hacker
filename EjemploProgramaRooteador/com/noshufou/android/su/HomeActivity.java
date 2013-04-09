package com.noshufou.android.su;

import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.TransitionDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.MenuCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.ListView;
import com.noshufou.android.su.provider.PermissionsProvider.Logs;
import com.noshufou.android.su.util.Util;
import com.noshufou.android.su.widget.ChangeLog;
import com.noshufou.android.su.widget.PagerHeader;
import com.noshufou.android.su.widget.PagerHeader.OnHeaderClickListener;
import java.util.ArrayList;

public class HomeActivity extends FragmentActivity
{
  private static final int MENU_CLEAR_LOG = 1;
  private static final int MENU_ELITE = 0;
  private static final int MENU_PREFERENCES = 2;
  private static final String STATE_SHOW_DETAILS = "show_details";
  private boolean mDualPane = false;
  private ViewPager mPager;
  private TransitionDrawable mTitleLogo;

  public void closeDetails()
  {
    if (!(this.mDualPane))
      return;
    getSupportFragmentManager().popBackStack("show_details", 1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903041);
    if (findViewById(2131427337) != null)
    {
      this.mDualPane = true;
      ((AppListFragment)getSupportFragmentManager().findFragmentById(2131427336)).getListView().setChoiceMode(1);
      if (paramBundle == null)
        showLog();
    }
    while (true)
    {
      this.mTitleLogo = ((TransitionDrawable)((ImageView)findViewById(16908332)).getDrawable());
      new EliteCheck(null).execute(new Void[0]);
      ChangeLog localChangeLog = new ChangeLog(this);
      if (localChangeLog.firstRun())
        localChangeLog.getLogDialog().show();
      return;
      this.mPager = ((ViewPager)findViewById(2131427334));
      PagerAdapter localPagerAdapter = new PagerAdapter(this, this.mPager, (PagerHeader)findViewById(2131427333));
      localPagerAdapter.addPage(AppListFragment.class, 2131165191);
      localPagerAdapter.addPage(LogFragment.class, 2131165192);
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (Util.elitePresent(this, false, 0))
    {
      MenuItem localMenuItem3 = paramMenu.add(0, 0, 0, 2131165193);
      localMenuItem3.setIcon(2130837532);
      MenuCompat.setShowAsAction(localMenuItem3, 1);
    }
    MenuItem localMenuItem1 = paramMenu.add(0, 1, 1, 2131165196);
    localMenuItem1.setIcon(2130837530);
    MenuCompat.setShowAsAction(localMenuItem1, 1);
    MenuItem localMenuItem2 = paramMenu.add(0, 2, 2, 2131165194);
    localMenuItem2.setIcon(2130837531);
    MenuCompat.setShowAsAction(localMenuItem2, 1);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      Intent localIntent = new Intent();
      localIntent.setComponent(new ComponentName("com.noshufou.android.su.elite", "com.noshufou.android.su.elite.FeaturedAppsActivity"));
      startActivity(localIntent);
      continue;
      getContentResolver().delete(PermissionsProvider.Logs.CONTENT_URI, null, null);
      continue;
      Util.launchPreferences(this);
    }
  }

  public void showDetails(long paramLong)
  {
    if (this.mDualPane)
    {
      Fragment localFragment1 = getSupportFragmentManager().findFragmentById(2131427337);
      if (localFragment1 instanceof AppDetailsFragment)
      {
        ((AppDetailsFragment)localFragment1).setShownIndex(paramLong);
        return;
      }
      Bundle localBundle = new Bundle();
      localBundle.putLong("index", paramLong);
      Fragment localFragment2 = Fragment.instantiate(this, AppDetailsFragment.class.getName(), localBundle);
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      localFragmentTransaction.setTransition(4099);
      localFragmentTransaction.replace(2131427337, localFragment2);
      localFragmentTransaction.addToBackStack("show_details");
      localFragmentTransaction.commit();
      return;
    }
    Intent localIntent = new Intent(this, AppDetailsActivity.class);
    localIntent.putExtra("index", paramLong);
    startActivity(localIntent);
  }

  public void showLog()
  {
    if (!(this.mDualPane))
      return;
    Fragment localFragment = Fragment.instantiate(this, LogFragment.class.getName());
    FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
    localFragmentTransaction.setTransition(4099);
    localFragmentTransaction.replace(2131427337, localFragment);
    localFragmentTransaction.commit();
  }

  private class EliteCheck extends AsyncTask<Void, Void, Boolean>
  {
    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      return Boolean.valueOf(Util.elitePresent(HomeActivity.this, false, 0));
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      if (!(paramBoolean.booleanValue()))
        return;
      HomeActivity.this.mTitleLogo.startTransition(1000);
    }
  }

  public static class PagerAdapter extends FragmentPagerAdapter
    implements ViewPager.OnPageChangeListener, PagerHeader.OnHeaderClickListener
  {
    private final Context mContext;
    private final PagerHeader mHeader;
    private final ViewPager mPager;
    private final ArrayList<PageInfo> mPages = new ArrayList();

    public PagerAdapter(FragmentActivity paramFragmentActivity, ViewPager paramViewPager, PagerHeader paramPagerHeader)
    {
      super(paramFragmentActivity.getSupportFragmentManager());
      this.mContext = paramFragmentActivity;
      this.mPager = paramViewPager;
      this.mHeader = paramPagerHeader;
      this.mHeader.setOnHeaderClickListener(this);
      this.mPager.setAdapter(this);
      this.mPager.setOnPageChangeListener(this);
    }

    public void addPage(Class<?> paramClass, int paramInt)
    {
      addPage(paramClass, null, paramInt);
    }

    public void addPage(Class<?> paramClass, Bundle paramBundle, int paramInt)
    {
      addPage(paramClass, null, this.mContext.getResources().getString(paramInt));
    }

    public void addPage(Class<?> paramClass, Bundle paramBundle, String paramString)
    {
      PageInfo localPageInfo = new PageInfo(paramClass, paramBundle);
      this.mPages.add(localPageInfo);
      this.mHeader.add(0, paramString);
      notifyDataSetChanged();
    }

    public void addPage(Class<?> paramClass, String paramString)
    {
      addPage(paramClass, null, paramString);
    }

    public int getCount()
    {
      return this.mPages.size();
    }

    public Fragment getItem(int paramInt)
    {
      PageInfo localPageInfo = (PageInfo)this.mPages.get(paramInt);
      return Fragment.instantiate(this.mContext, localPageInfo.clss.getName(), localPageInfo.args);
    }

    public void onHeaderClicked(int paramInt)
    {
    }

    public void onHeaderSelected(int paramInt)
    {
      this.mPager.setCurrentItem(paramInt);
    }

    public void onPageScrollStateChanged(int paramInt)
    {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
      this.mHeader.setPosition(paramInt1, paramFloat, paramInt2);
    }

    public void onPageSelected(int paramInt)
    {
      this.mHeader.setDisplayedPage(paramInt);
    }

    static final class PageInfo
    {
      private final Bundle args;
      private final Class<?> clss;

      PageInfo(Class<?> paramClass, Bundle paramBundle)
      {
        this.clss = paramClass;
        this.args = paramBundle;
      }
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.HomeActivity
 * JD-Core Version:    0.5.3
 */