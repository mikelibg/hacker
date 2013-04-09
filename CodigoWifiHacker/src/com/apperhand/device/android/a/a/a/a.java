package com.apperhand.device.android.a.a.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.apperhand.common.dto.Homepage;

public final class a extends com.apperhand.device.android.a.a.a
{
  public final boolean a(Context paramContext, Homepage paramHomepage)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    Cursor localCursor = localContentResolver.query(Uri.parse(a(i)), null, null, null, null);
    if (localCursor != null)
    {
      int i = localCursor.getColumnIndexOrThrow(a(j));
      Parcel localParcel2;
      for (byte[] arrayOfByte1 = null; localCursor.moveToNext(); arrayOfByte1 = localParcel2.marshall())
      {
        byte[] arrayOfByte2 = localCursor.getBlob(i);
        Parcel localParcel1 = Parcel.obtain();
        localParcel1.unmarshall(arrayOfByte2, 0, arrayOfByte2.length);
        localParcel1.setDataPosition(0);
        Bundle localBundle = new Bundle();
        localBundle.readFromParcel(localParcel1);
        localBundle.getBundle(a(k)).putString(a(l), paramHomepage.getPageURL());
        localParcel2 = Parcel.obtain();
        localBundle.writeToParcel(localParcel2, 0);
      }
      localCursor.close();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put(a(j), arrayOfByte1);
      localContentValues.put(a(m), a(n));
      Uri localUri = Uri.parse(a(o));
      localContentResolver.insert(localUri, localContentValues);
      localContentResolver.notifyChange(localUri, null);
      Intent localIntent = a(a(f));
      b(localIntent, a(p), a(h));
      a(paramContext, localIntent);
    }
    return true;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.android.a.a.a.a
 * JD-Core Version:    0.5.3
 */