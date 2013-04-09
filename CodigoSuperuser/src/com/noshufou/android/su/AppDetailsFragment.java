package com.noshufou.android.su;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.ListFragment;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.CursorLoader;
import android.support.v4.content.Loader;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.noshufou.android.su.provider.PermissionsProvider.Apps;
import com.noshufou.android.su.provider.PermissionsProvider.Logs;
import com.noshufou.android.su.service.ResultService;
import com.noshufou.android.su.util.Util;
import com.noshufou.android.su.widget.BetterPopupWindow;
import com.noshufou.android.su.widget.LogAdapter;
import com.noshufou.android.su.widget.PinnedHeaderListView;

public class AppDetailsFragment extends ListFragment
  implements LoaderManager.LoaderCallbacks<Cursor>, FragmentWithLog, View.OnClickListener
{
  private static final int DETAILS_COLUMN_ALLOW = 6;
  private static final int DETAILS_COLUMN_EXEC_CMD = 5;
  private static final int DETAILS_COLUMN_EXEC_UID = 4;
  private static final int DETAILS_COLUMN_LOGGING = 8;
  private static final int DETAILS_COLUMN_NAME = 3;
  private static final int DETAILS_COLUMN_NOTIFICATIONS = 7;
  private static final int DETAILS_COLUMN_PACKAGE = 2;
  private static final int DETAILS_COLUMN_UID = 1;
  private static final int DETAILS_LOADER = 1;
  public static final String[] DETAILS_PROJECTION = { "_id", "uid", "package", "name", "exec_uid", "exec_cmd", "allow", "notifications", "logging" };
  private static final int LOG_LOADER = 2;
  LogAdapter mAdapter = null;
  private int mAllow = -1;
  private ImageView mAppIcon = null;
  private TextView mAppName = null;
  private TextView mAppUidText = null;
  private TextView mCommandText = null;
  private boolean mDualPane = false;
  private boolean mLoggingEnabled = true;
  private boolean mNotificationsEnabled = true;
  private TextView mPackageNameText = null;
  private boolean mReady = false;
  private TextView mRequestDetailText = null;
  private long mShownIndex = -1L;
  private ImageView mStatusIcon = null;
  private TextView mStatusText = null;
  private Button mToggleButton = null;
  private boolean mUseAppSettings = true;

  private void doToggle()
  {
    ContentResolver localContentResolver = getActivity().getContentResolver();
    Uri localUri = Uri.withAppendedPath(PermissionsProvider.Apps.CONTENT_URI, String.valueOf(this.mShownIndex));
    ContentValues localContentValues = new ContentValues();
    if (this.mAllow == 1);
    for (int i = 0; ; i = 1)
    {
      localContentValues.put("allow", Integer.valueOf(i));
      localContentResolver.update(localUri, localContentValues, null, null);
      localContentValues.clear();
      localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
      localContentValues.put("type", Integer.valueOf(3));
      localContentResolver.insert(Uri.withAppendedPath(PermissionsProvider.Logs.CONTENT_URI, String.valueOf(this.mShownIndex)), localContentValues);
      Intent localIntent = new Intent(getActivity(), ResultService.class);
      localIntent.putExtra("action", 2);
      getActivity().startService(localIntent);
      return;
    }
  }

  public static AppDetailsFragment newInstance(long paramLong)
  {
    AppDetailsFragment localAppDetailsFragment = new AppDetailsFragment();
    Bundle localBundle = new Bundle();
    localBundle.putLong("index", paramLong);
    localAppDetailsFragment.setArguments(localBundle);
    return localAppDetailsFragment;
  }

  private void setupListView()
  {
    ListView localListView = getListView();
    LayoutInflater localLayoutInflater = getActivity().getLayoutInflater();
    localListView.setDividerHeight(0);
    this.mAdapter = new LogAdapter(null, getActivity(), false);
    setListAdapter(this.mAdapter);
    if ((localListView instanceof PinnedHeaderListView) && (this.mAdapter.getDisplaySectionHeadersEnabled()))
      ((PinnedHeaderListView)localListView).setPinnedHeaderView(localLayoutInflater.inflate(2130903062, localListView, false));
    localListView.setOnScrollListener(this.mAdapter);
  }

  public void clearLog()
  {
    if (this.mShownIndex == -1L)
      return;
    getActivity().getContentResolver().delete(ContentUris.withAppendedId(PermissionsProvider.Logs.CONTENT_URI, this.mShownIndex), null, null);
  }

  public void clearLog(View paramView)
  {
    clearLog();
  }

  public void closeDetails()
  {
    if (this.mDualPane)
    {
      LogFragment localLogFragment = LogFragment.newInstance();
      FragmentTransaction localFragmentTransaction = getActivity().getSupportFragmentManager().beginTransaction();
      localFragmentTransaction.replace(2131427337, localLogFragment);
      localFragmentTransaction.setTransition(4097);
      localFragmentTransaction.commit();
      return;
    }
    Util.goHome(getActivity());
  }

  public void forget(View paramView)
  {
    if (!(this.mReady))
      return;
    getActivity().getContentResolver().delete(Uri.withAppendedPath(PermissionsProvider.Apps.CONTENT_URI, String.valueOf(this.mShownIndex)), null, null);
    closeDetails();
  }

  public long getShownIndex()
  {
    return this.mShownIndex;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if ((FrameLayout)getActivity().findViewById(2131427337) != null)
      this.mDualPane = true;
    if ((paramBundle != null) && (paramBundle.containsKey("mShownIndex")));
    for (this.mShownIndex = paramBundle.getLong("mShownIndex"); ; this.mShownIndex = getArguments().getLong("index", 0L))
    {
      setupListView();
      getLoaderManager().initLoader(1, null, this);
      getLoaderManager().initLoader(2, null, this);
      return;
    }
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1)
      return;
    doToggle();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131427379:
    case 2131427380:
    default:
      return;
    case 2131427375:
      toggle(null);
      return;
    case 2131427376:
      forget(null);
      return;
    case 2131427377:
      clearLog();
      return;
    case 2131427378:
      new MoreOptionsPopup(paramView).show();
      return;
    case 2131427381:
    }
    ((HomeActivity)getActivity()).closeDetails();
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Unknown Loader: " + paramInt);
    case 1:
      return new CursorLoader(getActivity(), ContentUris.withAppendedId(PermissionsProvider.Apps.CONTENT_URI, this.mShownIndex), DETAILS_PROJECTION, null, null, null);
    case 2:
    }
    return new CursorLoader(getActivity(), ContentUris.withAppendedId(PermissionsProvider.Logs.CONTENT_URI, this.mShownIndex), LogAdapter.PROJECTION, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null)
      return null;
    View localView1 = paramLayoutInflater.inflate(2130903051, paramViewGroup, false);
    this.mAppName = ((TextView)localView1.findViewById(2131427361));
    this.mAppIcon = ((ImageView)localView1.findViewById(2131427360));
    this.mStatusIcon = ((ImageView)localView1.findViewById(2131427362));
    this.mPackageNameText = ((TextView)localView1.findViewById(2131427364));
    this.mAppUidText = ((TextView)localView1.findViewById(2131427366));
    this.mRequestDetailText = ((TextView)localView1.findViewById(2131427368));
    this.mCommandText = ((TextView)localView1.findViewById(2131427370));
    this.mStatusText = ((TextView)localView1.findViewById(2131427372));
    localView1.findViewById(2131427375).setOnClickListener(this);
    localView1.findViewById(2131427376).setOnClickListener(this);
    localView1.findViewById(2131427377).setOnClickListener(this);
    if (Util.elitePresent(getActivity(), true, 2))
    {
      View localView3 = localView1.findViewById(2131427378);
      localView3.setOnClickListener(this);
      localView3.setVisibility(0);
    }
    View localView2 = localView1.findViewById(2131427381);
    if (localView2 != null)
      localView2.setOnClickListener(this);
    return localView1;
  }

  public void onLoadFinished(Loader<Cursor> paramLoader, Cursor paramCursor)
  {
    switch (paramLoader.getId())
    {
    default:
      return;
    case 1:
      int i;
      int j;
      label180: Button localButton;
      if (paramCursor.moveToFirst())
      {
        this.mAppName.setText(paramCursor.getString(3));
        this.mAppIcon.setImageDrawable(Util.getAppIcon(getActivity(), paramCursor.getInt(1)));
        i = paramCursor.getInt(6);
        this.mStatusIcon.setImageDrawable(Util.getStatusIconDrawable(getActivity(), i));
        this.mPackageNameText.setText(paramCursor.getString(2));
        this.mAppUidText.setText(paramCursor.getString(1));
        this.mRequestDetailText.setText(Util.getUidName(getActivity(), paramCursor.getInt(4), true));
        this.mCommandText.setText(paramCursor.getString(5));
        TextView localTextView = this.mStatusText;
        if (i != 1)
          break label304;
        j = 2131165217;
        localTextView.setText(j);
        if (this.mToggleButton != null)
        {
          localButton = this.mToggleButton;
          if (i != 1)
            break label312;
        }
      }
      String str1;
      String str2;
      for (int i1 = 2131165211; ; i1 = 2131165209)
      {
        localButton.setText(i1);
        this.mAllow = i;
        str1 = paramCursor.getString(7);
        str2 = paramCursor.getString(8);
        if ((str1 != null) || (str2 != null))
          break;
        this.mUseAppSettings = true;
        SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(getActivity());
        this.mNotificationsEnabled = localSharedPreferences.getBoolean("pref_notifications", true);
        this.mLoggingEnabled = localSharedPreferences.getBoolean("pref_logging", true);
        label298: this.mReady = true;
        return;
        label304: j = 2131165218;
        label312: break label180:
      }
      this.mUseAppSettings = false;
      int k;
      if (str1.equals("1"))
      {
        k = 1;
        label339: this.mNotificationsEnabled = k;
        if (!(str2.equals("1")))
          break label374;
      }
      for (int l = 1; ; l = 0)
      {
        this.mLoggingEnabled = l;
        break label298:
        k = 0;
        label374: break label339:
      }
    case 2:
    }
    this.mAdapter.swapCursor(paramCursor);
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
    if (paramLoader.getId() != 2)
      return;
    this.mAdapter.swapCursor(null);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (this.mShownIndex != -1L)
      paramBundle.putLong("mShownIndex", this.mShownIndex);
    super.onSaveInstanceState(paramBundle);
  }

  public void setShownIndex(long paramLong)
  {
    this.mShownIndex = paramLong;
    getLoaderManager().restartLoader(1, null, this);
    getLoaderManager().restartLoader(2, null, this);
  }

  public void toggle(View paramView)
  {
    if (!(this.mReady))
      return;
    if (PreferenceManager.getDefaultSharedPreferences(getActivity()).getBoolean("pref_pin", false))
    {
      Intent localIntent = new Intent(getActivity(), PinActivity.class);
      localIntent.putExtra("mode", 3);
      startActivityForResult(localIntent, 0);
      return;
    }
    doToggle();
  }

  private class MoreOptionsPopup extends BetterPopupWindow
    implements CompoundButton.OnCheckedChangeListener
  {
    private CheckBox mLoggingCheckBox;
    private CheckBox mNotificationsCheckBox;
    private CheckBox mUseAppCheckBox;

    public MoreOptionsPopup(View paramView)
    {
      super(paramView);
    }

    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      ContentResolver localContentResolver = AppDetailsFragment.this.getActivity().getContentResolver();
      if (paramCompoundButton.getId() == 2131427388)
      {
        AppDetailsFragment.this.mUseAppSettings = paramBoolean;
        CheckBox localCheckBox1 = this.mNotificationsCheckBox;
        boolean bool1;
        label47: boolean bool2;
        label73: ContentValues localContentValues2;
        Boolean localBoolean1;
        if (AppDetailsFragment.this.mUseAppSettings)
        {
          bool1 = false;
          localCheckBox1.setEnabled(bool1);
          CheckBox localCheckBox2 = this.mLoggingCheckBox;
          if (!(AppDetailsFragment.this.mUseAppSettings))
            break label228;
          bool2 = false;
          localCheckBox2.setEnabled(bool2);
          localContentValues2 = new ContentValues();
          if (!(paramBoolean))
            break label234;
          localBoolean1 = null;
          label96: localContentValues2.put("notifications", localBoolean1);
          if (!(paramBoolean))
            break label249;
        }
        for (Boolean localBoolean2 = null; ; localBoolean2 = Boolean.valueOf(AppDetailsFragment.this.mLoggingEnabled))
        {
          localContentValues2.put("logging", localBoolean2);
          localContentResolver.update(ContentUris.withAppendedId(PermissionsProvider.Apps.CONTENT_URI, AppDetailsFragment.this.mShownIndex), localContentValues2, null, null);
          if (paramBoolean)
          {
            SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(AppDetailsFragment.this.getActivity());
            AppDetailsFragment.this.mNotificationsEnabled = localSharedPreferences.getBoolean("pref_notifications", true);
            this.mNotificationsCheckBox.setChecked(AppDetailsFragment.this.mNotificationsEnabled);
            AppDetailsFragment.this.mLoggingEnabled = localSharedPreferences.getBoolean("pref_logging", true);
            this.mLoggingCheckBox.setChecked(AppDetailsFragment.this.mLoggingEnabled);
          }
          return;
          bool1 = true;
          break label47:
          label228: bool2 = true;
          break label73:
          label234: localBoolean1 = Boolean.valueOf(AppDetailsFragment.this.mNotificationsEnabled);
          label249: break label96:
        }
      }
      ContentValues localContentValues1 = new ContentValues();
      localContentValues1.put("notifications", Boolean.valueOf(this.mNotificationsCheckBox.isChecked()));
      localContentValues1.put("logging", Boolean.valueOf(this.mLoggingCheckBox.isChecked()));
      localContentResolver.update(ContentUris.withAppendedId(PermissionsProvider.Apps.CONTENT_URI, AppDetailsFragment.this.mShownIndex), localContentValues1, null, null);
    }

    protected void onCreate()
    {
      ViewGroup localViewGroup = (ViewGroup)((LayoutInflater)this.anchor.getContext().getSystemService("layout_inflater")).inflate(2130903058, null);
      this.mUseAppCheckBox = ((CheckBox)localViewGroup.findViewById(2131427388));
      this.mUseAppCheckBox.setChecked(AppDetailsFragment.this.mUseAppSettings);
      this.mNotificationsCheckBox = ((CheckBox)localViewGroup.findViewById(2131427389));
      this.mNotificationsCheckBox.setChecked(AppDetailsFragment.this.mNotificationsEnabled);
      CheckBox localCheckBox1 = this.mNotificationsCheckBox;
      boolean bool1;
      label96: CheckBox localCheckBox2;
      if (AppDetailsFragment.this.mUseAppSettings)
      {
        bool1 = false;
        localCheckBox1.setEnabled(bool1);
        this.mLoggingCheckBox = ((CheckBox)localViewGroup.findViewById(2131427390));
        this.mLoggingCheckBox.setChecked(AppDetailsFragment.this.mLoggingEnabled);
        localCheckBox2 = this.mLoggingCheckBox;
        if (!(AppDetailsFragment.this.mUseAppSettings))
          break label189;
      }
      for (boolean bool2 = false; ; bool2 = true)
      {
        localCheckBox2.setEnabled(bool2);
        this.mUseAppCheckBox.setOnCheckedChangeListener(this);
        this.mNotificationsCheckBox.setOnCheckedChangeListener(this);
        this.mLoggingCheckBox.setOnCheckedChangeListener(this);
        setContentView(localViewGroup);
        return;
        bool1 = true;
        label189: break label96:
      }
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.AppDetailsFragment
 * JD-Core Version:    0.5.3
 */