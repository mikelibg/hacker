package com.noshufou.android.su;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.noshufou.android.su.provider.PermissionsProvider.Apps;

public class UninstallReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("android.intent.extra.REPLACING", false))
      return;
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Uri localUri = PermissionsProvider.Apps.CONTENT_URI;
    String[] arrayOfString1 = { "_id" };
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(paramIntent.getIntExtra("android.intent.extra.UID", -1));
    Cursor localCursor = localContentResolver.query(localUri, arrayOfString1, "uid=?", arrayOfString2, null);
    if (localCursor.moveToFirst())
      localContentResolver.delete(ContentUris.withAppendedId(PermissionsProvider.Apps.CONTENT_URI, localCursor.getLong(0)), null, null);
    localCursor.close();
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.UninstallReceiver
 * JD-Core Version:    0.5.3
 */