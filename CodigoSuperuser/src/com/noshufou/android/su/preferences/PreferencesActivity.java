package com.noshufou.android.su.preferences;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.nfc.NfcAdapter;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.noshufou.android.su.PinActivity;
import com.noshufou.android.su.TagWriterActivity;
import com.noshufou.android.su.UpdaterActivity;
import com.noshufou.android.su.provider.PermissionsProvider.Logs;
import com.noshufou.android.su.service.ResultService;
import com.noshufou.android.su.util.BackupUtil;
import com.noshufou.android.su.util.Util;
import com.noshufou.android.su.widget.ChangeLog;
import com.noshufou.android.su.widget.NumberPickerDialog;
import com.noshufou.android.su.widget.NumberPickerDialog.OnNumberSetListener;

public class PreferencesActivity extends PreferenceActivity
  implements View.OnClickListener, SharedPreferences.OnSharedPreferenceChangeListener, Preference.OnPreferenceChangeListener
{
  private static final int REQUEST_CHANGE_PIN = 3;
  private static final int REQUEST_DISABLE_PIN = 2;
  private static final int REQUEST_ENABLE_PIN = 1;
  private static final int REQUEST_SECRET_CODE = 5;
  private static final int REQUEST_WRITE_TAG = 4;
  private static final String TAG = "Su.PreferencesActivity";
  private Preference mApkVersion = null;
  private Preference mBinVersion = null;
  private Preference mClearLog = null;
  private Context mContext;
  private boolean mElite = false;
  private CheckBoxPreference mGhostMode = null;
  NumberPickerDialog.OnNumberSetListener mLogEntriesSet = new NumberPickerDialog.OnNumberSetListener()
  {
    public void onNumberSet(int paramInt)
    {
      Preference localPreference = PreferencesActivity.this.mLogLimit;
      PreferencesActivity localPreferencesActivity = PreferencesActivity.this;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      localPreference.setSummary(localPreferencesActivity.getString(2131165270, arrayOfObject));
      PreferencesActivity.this.mPrefs.edit().putInt("pref_log_entry_limit", paramInt).commit();
      Intent localIntent = new Intent(PreferencesActivity.this.mContext, ResultService.class);
      localIntent.putExtra("action", 2);
      PreferencesActivity.this.startService(localIntent);
    }
  };
  private Preference mLogLimit = null;
  private CheckBoxPreference mPin = null;
  SharedPreferences mPrefs = null;
  private Preference mSecretCode = null;
  private Preference mTimeoutPreference = null;
  NumberPickerDialog.OnNumberSetListener mTimeoutSet = new NumberPickerDialog.OnNumberSetListener()
  {
    public void onNumberSet(int paramInt)
    {
      Preference localPreference = PreferencesActivity.this.mTimeoutPreference;
      PreferencesActivity localPreferencesActivity = PreferencesActivity.this;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      localPreference.setSummary(localPreferencesActivity.getString(2131165243, arrayOfObject));
      PreferencesActivity.this.mPrefs.edit().putInt("pref_timeout", paramInt).commit();
    }
  };
  private Preference mToastLocation = null;

  private void goHome()
  {
    Util.goHome(this);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 0)
      switch (paramInt1)
      {
      default:
      case 1:
      case 2:
      }
    do
    {
      return;
      this.mPin.setChecked(false);
      return;
      this.mPin.setChecked(true);
      return;
      switch (paramInt1)
      {
      default:
        return;
      case 1:
      case 3:
      case 2:
      case 4:
      case 5:
      }
    }
    while (!(paramIntent.hasExtra("pin")));
    CharSequence localCharSequence2 = paramIntent.getCharSequenceExtra("pin");
    this.mPrefs.edit().putString("pin", localCharSequence2.toString()).commit();
    this.mPin.setChecked(true);
    return;
    this.mPin.setChecked(false);
    return;
    Intent localIntent = new Intent(this, TagWriterActivity.class);
    localIntent.putExtra("tag", 1);
    startActivity(localIntent);
    return;
    CharSequence localCharSequence1 = paramIntent.getCharSequenceExtra("secret_code");
    this.mPrefs.edit().putString("pref_secret_code", localCharSequence1.toString()).commit();
    this.mSecretCode.setSummary(getString(2131165252, new Object[] { localCharSequence1 }));
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427341:
    }
    goHome();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903045);
    addPreferencesFromResource(2131034112);
    this.mContext = getApplicationContext();
    ((TextView)findViewById(2131427330)).setText(2131165236);
    ((ImageButton)findViewById(2131427341)).setOnClickListener(this);
    PreferenceScreen localPreferenceScreen = getPreferenceScreen();
    this.mPrefs = localPreferenceScreen.getSharedPreferences();
    this.mElite = Util.elitePresent(this.mContext, false, 0);
    String[] arrayOfString1;
    int j;
    if (!(this.mElite))
    {
      Log.i("Su.PreferencesActivity", "Elite not found, removing Elite preferences");
      arrayOfString1 = Preferences.ELITE_PREFS;
      int i = arrayOfString1.length;
      j = 0;
      label106: if (j < i);
    }
    while (true)
    {
      this.mClearLog = localPreferenceScreen.findPreference("pref_clear_log");
      this.mApkVersion = localPreferenceScreen.findPreference("pref_version");
      this.mBinVersion = localPreferenceScreen.findPreference("pref_bin_version");
      return;
      String[] arrayOfString2 = arrayOfString1[j].split(":");
      if (arrayOfString2[1].equals("all"))
        localPreferenceScreen.removePreference(findPreference(arrayOfString2[0]));
      while (true)
      {
        ++j;
        break label106:
        ((PreferenceCategory)findPreference(arrayOfString2[0])).removePreference(findPreference(arrayOfString2[1]));
      }
      this.mLogLimit = localPreferenceScreen.findPreference("pref_log_entry_limit");
      Preference localPreference1 = this.mLogLimit;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(this.mPrefs.getInt("pref_log_entry_limit", 200));
      localPreference1.setSummary(getString(2131165270, arrayOfObject1));
      this.mTimeoutPreference = localPreferenceScreen.findPreference("pref_timeout");
      Preference localPreference2 = this.mTimeoutPreference;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.mPrefs.getInt("pref_timeout", 0));
      localPreference2.setSummary(getString(2131165243, arrayOfObject2));
      this.mPin = ((CheckBoxPreference)localPreferenceScreen.findPreference("pref_pin"));
      this.mGhostMode = ((CheckBoxPreference)localPreferenceScreen.findPreference("pref_ghost_mode"));
      this.mGhostMode.setOnPreferenceChangeListener(this);
      this.mSecretCode = localPreferenceScreen.findPreference("pref_secret_code");
      Preference localPreference3 = this.mSecretCode;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.mPrefs.getString("pref_secret_code", "787378737");
      localPreference3.setSummary(getString(2131165252, arrayOfObject3));
      this.mSecretCode.setOnPreferenceChangeListener(this);
      this.mToastLocation = localPreferenceScreen.findPreference("pref_toast_location");
      this.mToastLocation.setEnabled(localPreferenceScreen.getSharedPreferences().getString("pref_notification_type", "toast").equals("toast"));
      if ((Build.VERSION.SDK_INT >= 10) && (NfcAdapter.getDefaultAdapter(this) == null))
        localPreferenceScreen.removePreference(findPreference("pref_category_nfc"));
      ((PreferenceCategory)findPreference("pref_category_info")).removePreference(findPreference("pref_get_elite"));
    }
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      return super.onOptionsItemSelected(paramMenuItem);
    case 16908332:
    }
    goHome();
    return true;
  }

  protected void onPause()
  {
    super.onPause();
    getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
  }

  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    String str = paramPreference.getKey();
    if (str.equals("pref_ghost_mode"))
    {
      boolean bool1 = ((Boolean)paramObject).booleanValue();
      if (bool1)
      {
        new AlertDialog.Builder(this).setTitle(2131165246).setMessage(2131165249).setPositiveButton(2131165206, new DialogInterface.OnClickListener(bool1)
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            PreferencesActivity.this.mGhostMode.setChecked(true);
            Context localContext = PreferencesActivity.this.getApplicationContext();
            if (this.val$ghostMode);
            for (boolean bool = false; ; bool = true)
            {
              Util.toggleAppIcon(localContext, bool);
              new AlertDialog.Builder(PreferencesActivity.this).setTitle(2131165246).setMessage(2131165250).setPositiveButton(2131165208, null).create().show();
              return;
            }
          }
        }).setNegativeButton(2131165207, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramDialogInterface, int paramInt)
          {
            PreferencesActivity.this.mGhostMode.setChecked(false);
          }
        }).create().show();
        return false;
      }
      Context localContext = getApplicationContext();
      if (bool1);
      for (boolean bool2 = false; ; bool2 = true)
      {
        Util.toggleAppIcon(localContext, bool2);
        return true;
      }
    }
    if (str.equals("pref_secret_code"))
    {
      Preference localPreference = this.mSecretCode;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = ((String)paramObject);
      localPreference.setSummary(getString(2131165252, arrayOfObject));
      return true;
    }
    return true;
  }

  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("pref_log_entry_limit"))
      new NumberPickerDialog(this, this.mLogEntriesSet, this.mPrefs.getInt("pref_log_entry_limit", 200), 0, 500, 2131165269).show();
    while (true)
    {
      return super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
      if (str.equals("pref_clear_log"))
        new ClearLog(null).execute(new Void[0]);
      if (str.equals("pref_bin_version"))
      {
        startActivity(new Intent(this, UpdaterActivity.class));
        return true;
      }
      if (str.equals("pref_pin"))
      {
        Intent localIntent1 = new Intent(this, PinActivity.class);
        if (paramPreferenceScreen.getSharedPreferences().getBoolean("pref_pin", false))
        {
          localIntent1.putExtra("mode", 1);
          startActivityForResult(localIntent1, 1);
        }
        while (true)
        {
          return true;
          localIntent1.putExtra("mode", 3);
          startActivityForResult(localIntent1, 2);
        }
      }
      if (str.equals("pref_change_pin"))
      {
        Intent localIntent2 = new Intent(this, PinActivity.class);
        localIntent2.putExtra("mode", 2);
        startActivityForResult(localIntent2, 3);
      }
      if (str.equals("pref_ghost_mode"))
        return true;
      if (str.equals("pref_secret_code"))
      {
        Intent localIntent3 = new Intent(this, PinActivity.class);
        localIntent3.putExtra("mode", 4);
        startActivityForResult(localIntent3, 5);
      }
      if (str.equals("pref_timeout"))
        new NumberPickerDialog(this, this.mTimeoutSet, this.mPrefs.getInt("pref_timeout", 0), 0, 600, 2131165242).show();
      if ((str.equals("pref_use_allow_tag")) || (str.equals("pref_write_allow_tag")))
      {
        if (!(paramPreferenceScreen.getSharedPreferences().getBoolean("pref_use_allow_tag", false)))
          return false;
        Intent localIntent4 = new Intent(this, PinActivity.class);
        localIntent4.putExtra("mode", 3);
        startActivityForResult(localIntent4, 4);
        return true;
      }
      if (str.equals("pref_changelog"))
        new ChangeLog(this).getFullLogDialog().show();
      if (str.equals("pref_get_elite"))
      {
        Intent localIntent5 = new Intent("android.intent.action.VIEW");
        localIntent5.setData(Uri.parse("market://details?id=com.noshufou.android.su.elite"));
        startActivity(localIntent5);
      }
      if (str.equals("pref_backup"))
        new BackupApps(null).execute(new Void[0]);
      if (!(str.equals("pref_restore")))
        continue;
      new RestoreApps(null).execute(new Void[0]);
    }
  }

  protected void onResume()
  {
    super.onResume();
    getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    new UpdateVersions(null).execute(new Void[0]);
  }

  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    if (!(paramString.equals("pref_notification_type")))
      return;
    this.mToastLocation.setEnabled(paramSharedPreferences.getString("pref_notification_type", "toast").equals("toast"));
  }

  private class BackupApps extends AsyncTask<Void, Void, Boolean>
  {
    protected Boolean doInBackground(Void[] paramArrayOfVoid)
    {
      return Boolean.valueOf(BackupUtil.makeBackup(PreferencesActivity.this));
    }

    protected void onPostExecute(Boolean paramBoolean)
    {
      ((ProgressBar)PreferencesActivity.this.findViewById(2131427342)).setVisibility(8);
      if (!(paramBoolean.booleanValue()))
        return;
      Toast.makeText(PreferencesActivity.this.getApplicationContext(), PreferencesActivity.this.getString(2131165299), 0).show();
    }

    protected void onPreExecute()
    {
      ((ProgressBar)PreferencesActivity.this.findViewById(2131427342)).setVisibility(0);
    }
  }

  private class ClearLog extends AsyncTask<Void, Void, Integer>
  {
    protected Integer doInBackground(Void[] paramArrayOfVoid)
    {
      return Integer.valueOf(PreferencesActivity.this.getContentResolver().delete(PermissionsProvider.Logs.CONTENT_URI, null, null));
    }

    protected void onPostExecute(Integer paramInteger)
    {
      PreferencesActivity.this.mClearLog.setTitle(2131165280);
      PreferencesActivity.this.mClearLog.setSummary("");
      PreferencesActivity.this.mClearLog.setEnabled(true);
      Toast.makeText(PreferencesActivity.this.mContext, PreferencesActivity.this.getResources().getQuantityString(2131492865, paramInteger.intValue(), new Object[] { paramInteger }), 0).show();
    }

    protected void onPreExecute()
    {
      PreferencesActivity.this.mClearLog.setTitle(2131165281);
      PreferencesActivity.this.mClearLog.setSummary(2131165282);
      PreferencesActivity.this.mClearLog.setEnabled(false);
    }
  }

  private class RestoreApps extends AsyncTask<Void, Void, Integer>
  {
    protected Integer doInBackground(Void[] paramArrayOfVoid)
    {
      return Integer.valueOf(BackupUtil.restoreBackup(PreferencesActivity.this));
    }

    protected void onPostExecute(Integer paramInteger)
    {
      ((ProgressBar)PreferencesActivity.this.findViewById(2131427342)).setVisibility(8);
      if (paramInteger.intValue() <= -1)
        return;
      Toast.makeText(PreferencesActivity.this.getApplicationContext(), PreferencesActivity.this.getResources().getQuantityString(2131492864, paramInteger.intValue(), new Object[] { paramInteger }), 0).show();
      Intent localIntent = PreferencesActivity.this.getIntent();
      PreferencesActivity.this.finish();
      PreferencesActivity.this.startActivity(localIntent);
    }

    protected void onPreExecute()
    {
      ((ProgressBar)PreferencesActivity.this.findViewById(2131427342)).setVisibility(0);
    }
  }

  private class UpdateVersions extends AsyncTask<Void, Integer, Integer>
  {
    private String apkVersion;
    private int apkVersionCode;
    private String binVersion;

    protected Integer doInBackground(Void[] paramArrayOfVoid)
    {
      try
      {
        PackageInfo localPackageInfo = PreferencesActivity.this.getPackageManager().getPackageInfo(PreferencesActivity.this.getPackageName(), 128);
        this.apkVersion = localPackageInfo.versionName;
        this.apkVersionCode = localPackageInfo.versionCode;
        this.binVersion = Util.getSuVersion();
        return Integer.valueOf(0);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        Log.e("Su.PreferencesActivity", "Superuser is not installed?", localNameNotFoundException);
      }
    }

    protected void onPostExecute(Integer paramInteger)
    {
      Preference localPreference1 = PreferencesActivity.this.mApkVersion;
      PreferencesActivity localPreferencesActivity1 = PreferencesActivity.this;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = this.apkVersion;
      arrayOfObject1[1] = Integer.valueOf(this.apkVersionCode);
      localPreference1.setTitle(localPreferencesActivity1.getString(2131165302, arrayOfObject1));
      Preference localPreference2 = PreferencesActivity.this.mBinVersion;
      PreferencesActivity localPreferencesActivity2 = PreferencesActivity.this;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.binVersion;
      localPreference2.setTitle(localPreferencesActivity2.getString(2131165305, arrayOfObject2));
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.preferences.PreferencesActivity
 * JD-Core Version:    0.5.3
 */