package com.noshufou.android.su;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.net.LocalSocketAddress.Namespace;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.tech.Ndef;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.text.Editable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.noshufou.android.su.provider.PermissionsProvider.Apps;
import com.noshufou.android.su.util.Util;
import java.io.IOException;
import java.io.OutputStream;

public class SuRequestActivity extends Activity
  implements View.OnClickListener
{
  private static final String TAG = "Su.SuRequestActivity";
  private int mAttempts = 3;
  private int mCallerUid = 0;
  private String mDesiredCmd = "";
  private int mDesiredUid = 0;
  private NfcAdapter mNfcAdapter = null;
  private EditText mPinText;
  private SharedPreferences mPrefs;
  private CheckBox mRememberCheckBox;
  private LocalSocket mSocket;
  private int mSuVersionCode = 0;
  private boolean mUseDb = true;
  private boolean mUsePin = false;
  private View.OnClickListener onPinButton = new View.OnClickListener()
  {
    public void onClick(View paramView)
    {
      Button localButton = (Button)paramView;
      SuRequestActivity.this.mPinText.append(localButton.getText());
    }
  };

  private void sendResult(boolean paramBoolean1, boolean paramBoolean2)
  {
    String str;
    label7: ContentValues localContentValues;
    int j;
    if (paramBoolean1)
    {
      str = "ALLOW";
      if ((paramBoolean2) && (this.mSuVersionCode >= 4))
      {
        localContentValues = new ContentValues();
        localContentValues.put("uid", Integer.valueOf(this.mCallerUid));
        localContentValues.put("package", Util.getAppPackage(this, this.mCallerUid));
        localContentValues.put("name", Util.getAppName(this, this.mCallerUid, false));
        localContentValues.put("exec_uid", Integer.valueOf(this.mDesiredUid));
        localContentValues.put("exec_cmd", this.mDesiredCmd);
        if (!(paramBoolean1))
          break label309;
        j = 1;
      }
    }
    while (true)
    {
      localContentValues.put("allow", Integer.valueOf(j));
      getContentResolver().insert(PermissionsProvider.Apps.CONTENT_URI, localContentValues);
      SharedPreferences.Editor localEditor = this.mPrefs.edit();
      localEditor.putBoolean("last_remember_value", this.mRememberCheckBox.isChecked());
      int i = this.mPrefs.getInt("pref_timeout", 0);
      if ((i > 0) && (paramBoolean1))
        localEditor.putLong("active_" + this.mCallerUid, System.currentTimeMillis() + i * 1000);
      localEditor.commit();
      try
      {
        OutputStream localOutputStream = this.mSocket.getOutputStream();
        Log.i("Su.SuRequestActivity", "Sending result: " + str + " for UID: " + this.mCallerUid);
        localOutputStream.write(str.getBytes("UTF-8"));
        localOutputStream.flush();
        localOutputStream.close();
        this.mSocket.close();
        label298: finish();
        return;
        str = "DENY";
        break label7:
        label309: j = 0;
      }
      catch (IOException localIOException)
      {
        Log.e("Su.SuRequestActivity", "Failed to write to socket", localIOException);
        break label298:
      }
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131427350:
    case 2131427405:
      if (this.mUsePin)
      {
        this.mAttempts -= 1;
        if (Util.checkPin(this, this.mPinText.getText().toString()))
        {
          sendResult(true, this.mRememberCheckBox.isChecked());
          return;
        }
        if (this.mAttempts > 0)
        {
          this.mPinText.setText("");
          EditText localEditText = this.mPinText;
          Resources localResources = getResources();
          int i = this.mAttempts;
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Integer.valueOf(this.mAttempts);
          localEditText.setHint(localResources.getQuantityString(2131492866, i, arrayOfObject));
          this.mPinText.setHintTextColor(-65536);
          return;
        }
        sendResult(false, false);
        return;
      }
      sendResult(true, this.mRememberCheckBox.isChecked());
      return;
    case 2131427351:
    case 2131427407:
    }
    sendResult(false, this.mRememberCheckBox.isChecked());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getCallingPackage() != null)
    {
      Log.e("Su.SuRequestActivity", "SuRequest must be started from su");
      finish();
      return;
    }
    setContentView(2130903046);
    this.mPrefs = PreferenceManager.getDefaultSharedPreferences(this);
    Intent localIntent = getIntent();
    this.mCallerUid = localIntent.getIntExtra("caller_uid", 0);
    this.mDesiredUid = localIntent.getIntExtra("desired_uid", 0);
    this.mDesiredCmd = localIntent.getStringExtra("desired_cmd");
    String str = localIntent.getStringExtra("socket");
    this.mSuVersionCode = localIntent.getIntExtra("version_code", 0);
    this.mUsePin = this.mPrefs.getBoolean("pref_pin", false);
    if (this.mUsePin)
    {
      setContentView(2130903047);
      ViewGroup localViewGroup = (ViewGroup)findViewById(2131427353);
      this.mPinText = ((EditText)localViewGroup.findViewById(2131427395));
      ((Button)localViewGroup.findViewById(2131427406)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427396)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427397)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427398)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427399)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427400)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427401)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427402)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427403)).setOnClickListener(this.onPinButton);
      ((Button)localViewGroup.findViewById(2131427404)).setOnClickListener(this.onPinButton);
      ((Button)findViewById(2131427405)).setOnClickListener(this);
      ((Button)findViewById(2131427407)).setOnClickListener(this);
    }
    while (true)
    {
      label396: boolean bool;
      label655: int i;
      try
      {
        this.mSocket = new LocalSocket();
        this.mSocket.connect(new LocalSocketAddress(str, LocalSocketAddress.Namespace.FILESYSTEM));
        if (this.mSuVersionCode < 10)
        {
          Log.i("Su.SuRequestActivity", "su binary out of date, version code = " + this.mSuVersionCode);
          this.mUseDb = false;
          NotificationManager localNotificationManager = (NotificationManager)getSystemService("notification");
          Notification localNotification = new Notification(2130837553, getString(2131165346), System.currentTimeMillis());
          PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, new Intent(this, UpdaterActivity.class), 0);
          localNotification.setLatestEventInfo(this, getString(2131165347), getString(2131165348), localPendingIntent);
          localNotification.flags = (0x18 | localNotification.flags);
          localNotificationManager.notify(1, localNotification);
        }
        ((TextView)findViewById(2131427361)).setText(Util.getAppName(this, this.mCallerUid, true));
        ((TextView)findViewById(2131427364)).setText(Util.getAppPackage(this, this.mCallerUid));
        ((TextView)findViewById(2131427368)).setText(Util.getUidName(this, this.mDesiredUid, true));
        ((TextView)findViewById(2131427370)).setText(this.mDesiredCmd);
        this.mRememberCheckBox = ((CheckBox)findViewById(2131427352));
        CheckBox localCheckBox1 = this.mRememberCheckBox;
        if (!(this.mUseDb))
          break label757;
        bool = this.mPrefs.getBoolean("last_remember_value", true);
        localCheckBox1.setChecked(bool);
        this.mRememberCheckBox.setEnabled(this.mUseDb);
        CheckBox localCheckBox2 = this.mRememberCheckBox;
        if (!(this.mUseDb))
          break label763;
        i = 2131165213;
        label691: localCheckBox2.setText(i);
        return;
        setContentView(2130903046);
        ((Button)findViewById(2131427350)).setOnClickListener(this);
        label757: label763: ((Button)findViewById(2131427351)).setOnClickListener(this);
      }
      catch (IOException localIOException)
      {
        Log.e("Su.SuRequestActivity", "Failed to connect to socket", localIOException);
        finish();
        break label396:
        bool = false;
        break label655:
        i = 2131165214;
        break label691:
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || (paramInt == 3))
      sendResult(false, false);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onNewIntent(Intent paramIntent)
  {
    Parcelable[] arrayOfParcelable = paramIntent.getParcelableArrayExtra("android.nfc.extra.NDEF_MESSAGES");
    if (arrayOfParcelable == null)
      return;
    NdefRecord localNdefRecord = ((android.nfc.NdefMessage)arrayOfParcelable[0]).getRecords()[0];
    int i = localNdefRecord.getTnf();
    String str = new String(localNdefRecord.getType());
    if ((i != 2) || (!(str.equals("text/x-su-a"))) || (!(new String(localNdefRecord.getPayload()).equals(this.mPrefs.getString("pin", "")))))
      return;
    sendResult(true, this.mRememberCheckBox.isChecked());
  }

  protected void onPause()
  {
    super.onPause();
    if (this.mNfcAdapter == null)
      return;
    this.mNfcAdapter.disableForegroundDispatch(this);
  }

  protected void onResume()
  {
    super.onResume();
    PendingIntent localPendingIntent;
    IntentFilter localIntentFilter;
    if (this.mPrefs.getBoolean("pref_use_allow_tag", false))
    {
      this.mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
      localPendingIntent = PendingIntent.getActivity(this, 0, new Intent(this, super.getClass()).addFlags(536870912), 0);
      localIntentFilter = new IntentFilter("android.nfc.action.NDEF_DISCOVERED");
    }
    try
    {
      localIntentFilter.addDataType("text/x-su-a");
      IntentFilter[] arrayOfIntentFilter = { localIntentFilter };
      String[][] arrayOfString; = new String[1][];
      String[] arrayOfString = new String[1];
      arrayOfString[0] = Ndef.class.getName();
      arrayOfString;[0] = arrayOfString;
      this.mNfcAdapter.enableForegroundDispatch(this, localPendingIntent, arrayOfIntentFilter, arrayOfString;);
      return;
    }
    catch (IntentFilter.MalformedMimeTypeException localMalformedMimeTypeException)
    {
      Log.e("Su.SuRequestActivity", "Bad MIME type declared", localMalformedMimeTypeException);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.SuRequestActivity
 * JD-Core Version:    0.5.3
 */