package com.noshufou.android.su;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.content.SharedPreferences;
import android.nfc.FormatException;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.Ndef;
import android.nfc.tech.NdefFormatable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;
import java.io.IOException;

public class TagWriterActivity extends Activity
{
  public static final String EXTRA_TAG = "tag";
  private static final String TAG = "Su.TagWriterActivity";
  public static final int TAG_ALLOW = 1;
  private NfcAdapter mNfcAdapter = null;
  private TextView mStatusText = null;
  private int mTagToWrite = 0;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mNfcAdapter = NfcAdapter.getDefaultAdapter(this);
    if (this.mNfcAdapter == null)
      finish();
    this.mStatusText = new TextView(this);
    this.mStatusText.setGravity(17);
    this.mStatusText.setText(2131165354);
    this.mTagToWrite = getIntent().getIntExtra("tag", 0);
    if (this.mTagToWrite == 0)
      throw new IllegalArgumentException("You must specify a tag to write");
    setContentView(this.mStatusText);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    switch (this.mTagToWrite)
    {
    default:
    case 1:
    }
    NdefMessage localNdefMessage;
    NdefFormatable localNdefFormatable;
    do
    {
      return;
      Tag localTag = (Tag)paramIntent.getParcelableExtra("android.nfc.extra.TAG");
      localNdefMessage = new NdefMessage(new NdefRecord[] { new NdefRecord(2, "text/x-su-a".getBytes(), new byte[0], PreferenceManager.getDefaultSharedPreferences(this).getString("pin", "").getBytes()) });
      Ndef localNdef = Ndef.get(localTag);
      if (localNdef != null)
      {
        if (!(localNdef.isWritable()))
        {
          Toast.makeText(this, "Tag not writeable", 0).show();
          return;
        }
        if (localNdef.getMaxSize() < localNdefMessage.toByteArray().length)
        {
          Toast.makeText(this, "Tag not big enough", 0).show();
          return;
        }
        try
        {
          localNdef.connect();
          localNdef.writeNdefMessage(localNdefMessage);
          finish();
          return;
        }
        catch (IOException localIOException2)
        {
          Log.e("Su.TagWriterActivity", "IOException", localIOException2);
          return;
        }
        catch (FormatException localFormatException2)
        {
          Log.e("Su.TagWriterActivity", "FormatException", localFormatException2);
          return;
        }
      }
      localNdefFormatable = NdefFormatable.get(localTag);
    }
    while (localNdefFormatable == null);
    try
    {
      localNdefFormatable.connect();
      localNdefFormatable.format(localNdefMessage);
      finish();
      return;
    }
    catch (IOException localIOException1)
    {
      Log.e("Su.TagWriterActivity", "IOException", localIOException1);
      return;
    }
    catch (FormatException localFormatException1)
    {
      Log.e("Su.TagWriterActivity", "FormatException", localFormatException1);
    }
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
    PendingIntent localPendingIntent = PendingIntent.getActivity(this, 0, new Intent(this, super.getClass()).addFlags(536870912), 0);
    IntentFilter localIntentFilter = new IntentFilter("android.nfc.action.NDEF_DISCOVERED");
    try
    {
      localIntentFilter.addDataType("*/*");
      IntentFilter[] arrayOfIntentFilter = { localIntentFilter };
      String[][] arrayOfString; = new String[2][];
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = Ndef.class.getName();
      arrayOfString;[0] = arrayOfString1;
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = NdefFormatable.class.getName();
      arrayOfString;[1] = arrayOfString2;
      this.mNfcAdapter.enableForegroundDispatch(this, localPendingIntent, arrayOfIntentFilter, arrayOfString;);
      return;
    }
    catch (IntentFilter.MalformedMimeTypeException localMalformedMimeTypeException)
    {
      Log.e("Su.TagWriterActivity", "Bad MIME type declared", localMalformedMimeTypeException);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.TagWriterActivity
 * JD-Core Version:    0.5.3
 */