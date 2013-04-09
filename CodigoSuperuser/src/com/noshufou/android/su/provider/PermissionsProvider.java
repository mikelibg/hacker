package com.noshufou.android.su.provider;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.noshufou.android.su.UpdaterActivity;
import com.noshufou.android.su.util.Util;
import java.util.HashMap;
import java.util.List;

public class PermissionsProvider extends ContentProvider
{
  private static final int APPS = 100;
  private static final int APP_COUNT = 105;
  private static final int APP_COUNT_TYPE = 106;
  private static final int APP_ID = 101;
  private static final int APP_ID_LOGS = 102;
  private static final int APP_UID = 103;
  private static final int APP_UID_LOGS = 104;
  public static final String AUTHORITY = "com.noshufou.android.su.provider";
  private static final int LOGS = 200;
  private static final int LOGS_APP_ID = 202;
  private static final int LOGS_TYPE = 203;
  private static final String TAG = "Su.PermissionsProvider";
  private static final HashMap<String, String> sAppsProjectionMap;
  private static final HashMap<String, String> sLogsProjectionMap;
  private static final UriMatcher sUriMatcher = new UriMatcher(-1);
  private Context mContext;
  private SQLiteDatabase mDb = null;
  private DBOpenHelper mDbHelper = null;

  static
  {
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps", 100);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps/#", 101);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps/#/logs", 102);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps/uid/#", 103);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps/uid/#/logs", 104);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps/count", 105);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "apps/count/#", 106);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "logs", 200);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "logs/#", 202);
    sUriMatcher.addURI("com.noshufou.android.su.provider", "logs/type/#", 203);
    sAppsProjectionMap = new HashMap();
    sAppsProjectionMap.put("_id", "apps._id AS _id");
    sAppsProjectionMap.put("uid", "apps.uid");
    sAppsProjectionMap.put("package", "apps.package");
    sAppsProjectionMap.put("name", "apps.name");
    sAppsProjectionMap.put("exec_uid", "apps.exec_uid");
    sAppsProjectionMap.put("exec_cmd", "apps.exec_cmd");
    sAppsProjectionMap.put("allow", "apps.allow");
    sAppsProjectionMap.put("date", "logs.date");
    sAppsProjectionMap.put("type", "logs.type");
    sAppsProjectionMap.put("notifications", "apps.notifications");
    sAppsProjectionMap.put("logging", "apps.logging");
    sLogsProjectionMap = new HashMap();
    sLogsProjectionMap.put("_id", "logs._id AS _id");
    sLogsProjectionMap.put("app_id", "logs.app_id");
    sLogsProjectionMap.put("uid", "apps.uid");
    sLogsProjectionMap.put("name", "apps.name");
    sLogsProjectionMap.put("package", "apps.package");
    sLogsProjectionMap.put("date", "logs.date");
    sLogsProjectionMap.put("type", "logs.type");
  }

  private boolean ensureDb()
  {
    if (this.mDb == null)
      if (Util.isSuCurrent())
      {
        this.mDb = this.mDbHelper.getWritableDatabase();
        if (this.mDb == null)
          return false;
      }
      else
      {
        NotificationManager localNotificationManager = (NotificationManager)this.mContext.getSystemService("notification");
        Notification localNotification = new Notification(2130837553, this.mContext.getString(2131165346), System.currentTimeMillis());
        PendingIntent localPendingIntent = PendingIntent.getActivity(this.mContext, 0, new Intent(this.mContext, UpdaterActivity.class), 0);
        localNotification.setLatestEventInfo(this.mContext, this.mContext.getString(2131165347), this.mContext.getString(2131165348), localPendingIntent);
        localNotification.flags = (0x18 | localNotification.flags);
        localNotificationManager.notify(1, localNotification);
        return false;
      }
    return true;
  }

  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    if (!(ensureDb()))
      return -1;
    int i = sUriMatcher.match(paramUri);
    int j = 0;
    switch (i)
    {
    default:
      throw new IllegalArgumentException("Unsupported URI: " + paramUri);
    case 100:
    case 101:
    case 102:
    case 202:
    case 103:
    case 200:
    }
    for (int k = this.mDb.delete("apps", paramString, paramArrayOfString); ; k = this.mDb.delete("logs", paramString, paramArrayOfString))
    {
      label117: getContext().getContentResolver().notifyChange(paramUri, null);
      getContext().getContentResolver().notifyChange(Apps.CONTENT_URI, null);
      return k;
      SQLiteDatabase localSQLiteDatabase3 = this.mDb;
      StringBuilder localStringBuilder3 = new StringBuilder("_id=").append((String)paramUri.getPathSegments().get(1));
      String str3;
      label212: SQLiteDatabase localSQLiteDatabase2;
      StringBuilder localStringBuilder2;
      if (!(TextUtils.isEmpty(paramString)))
      {
        str3 = " AND (" + paramString + ")";
        j = localSQLiteDatabase3.delete("apps", str3, paramArrayOfString);
        localSQLiteDatabase2 = this.mDb;
        localStringBuilder2 = new StringBuilder("app_id=").append((String)paramUri.getPathSegments().get(1));
        if (TextUtils.isEmpty(paramString))
          break label332;
      }
      for (String str2 = " AND (" + paramString + ")"; ; str2 = "")
      {
        k = j + localSQLiteDatabase2.delete("logs", str2, paramArrayOfString);
        break label117:
        str3 = "";
        label332: break label212:
      }
      SQLiteDatabase localSQLiteDatabase1 = this.mDb;
      StringBuilder localStringBuilder1 = new StringBuilder("uid=").append((String)paramUri.getPathSegments().get(2));
      if (!(TextUtils.isEmpty(paramString)));
      for (String str1 = " AND (" + paramString + ")"; ; str1 = "")
      {
        k = localSQLiteDatabase1.delete("apps", str1, paramArrayOfString);
        break label117:
      }
    }
  }

  public String getType(Uri paramUri)
  {
    switch (sUriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unsupported URI: " + paramUri);
    case 100:
      return "vnd.android.cursor.dir/vnd.noshufou.superuser.apps ";
    case 101:
    case 103:
    case 105:
    case 106:
      return "vnd.android.cursor.item/vnd.noshufou.superuser.apps ";
    case 102:
    case 104:
    case 200:
    case 202:
    case 203:
    }
    return "vnd.android.cursor.dir/vnd.noshufou.superuser.logs ";
  }

  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    if (!(ensureDb()))
      return null;
    long l1 = 0L;
    switch (sUriMatcher.match(paramUri))
    {
    default:
      throw new IllegalArgumentException("Unsupported URI: " + paramUri);
    case 100:
    case 102:
    case 202:
    }
    label92: Uri localUri;
    try
    {
      long l2 = this.mDb.insertOrThrow("apps", null, paramContentValues);
      l1 = l2;
      Log.d("Su.PermissionsProvider", "rowId = " + l1);
      if (paramContentValues.getAsInteger("allow").intValue() != -1)
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("app_id", Long.valueOf(l1));
        localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
        localContentValues.put("type", Integer.valueOf(2));
        this.mDb.insert("logs", null, localContentValues);
      }
      localUri = ContentUris.withAppendedId(Apps.CONTENT_URI, l1);
      label194: if (l1 <= -1L)
        break label427;
      getContext().getContentResolver().notifyChange(localUri, null);
      label427: return localUri;
    }
    catch (SQLException localSQLException)
    {
      SQLiteDatabase localSQLiteDatabase1 = this.mDb;
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = paramContentValues.getAsString("uid");
      localSQLiteDatabase1.update("apps", paramContentValues, "uid=?", arrayOfString1);
      SQLiteDatabase localSQLiteDatabase2 = this.mDb;
      String[] arrayOfString2 = { "_id" };
      String[] arrayOfString3 = new String[1];
      arrayOfString3[0] = paramContentValues.getAsString("uid");
      Cursor localCursor = localSQLiteDatabase2.query("apps", arrayOfString2, "uid=?", arrayOfString3, null, null, null);
      if (localCursor.moveToFirst())
        l1 = localCursor.getLong(0);
      localCursor.close();
      break label92:
      paramContentValues.put("app_id", (String)paramUri.getPathSegments().get(1));
      l1 = this.mDb.insert("logs", null, paramContentValues);
      localUri = ContentUris.withAppendedId(Logs.CONTENT_URI, l1);
      getContext().getContentResolver().notifyChange(ContentUris.withAppendedId(Logs.CONTENT_URI, Long.parseLong((String)paramUri.getPathSegments().get(1))), null);
      getContext().getContentResolver().notifyChange(Apps.CONTENT_URI, null);
      break label194:
      throw new SQLException("Failed to insert row into " + paramUri);
    }
  }

  public boolean onCreate()
  {
    this.mContext = getContext();
    this.mDbHelper = new DBOpenHelper(this.mContext);
    return (this.mDbHelper != null);
  }

  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (!(ensureDb()))
      return null;
    SQLiteQueryBuilder localSQLiteQueryBuilder = new SQLiteQueryBuilder();
    ((String[])null);
    int i = sUriMatcher.match(paramUri);
    String[] arrayOfString;
    String str1;
    String str2;
    switch (i)
    {
    default:
      throw new IllegalArgumentException("Unsupported URI: " + paramUri);
    case 100:
    case 101:
    case 103:
      localSQLiteQueryBuilder.setTables("apps LEFT OUTER JOIN logs ON apps._id=logs.app_id");
      localSQLiteQueryBuilder.setProjectionMap(sAppsProjectionMap);
      arrayOfString = Apps.DEFAULT_PROJECTION;
      str1 = "apps._id";
      if (paramString2 == null)
        paramString2 = "apps.allow DESC, apps.name ASC";
      StringBuilder localStringBuilder = new StringBuilder(String.valueOf(paramString2));
      if (TextUtils.isEmpty(paramString2))
        break label365;
      str2 = ", ";
      label211: paramString2 = localStringBuilder.append(str2).toString() + "date" + " DESC";
      label247: switch (i)
      {
      default:
      case 101:
      case 102:
      case 202:
      case 103:
      case 104:
      case 203:
      case 106:
      }
    case 102:
    case 104:
    case 200:
    case 202:
    case 203:
    case 105:
    case 106:
    }
    while (true)
    {
      if (paramArrayOfString1 == null)
        label316: paramArrayOfString1 = arrayOfString;
      Cursor localCursor1;
      try
      {
        Cursor localCursor2 = localSQLiteQueryBuilder.query(this.mDb, paramArrayOfString1, paramString1, paramArrayOfString2, str1, null, paramString2);
        localCursor1 = localCursor2;
        label347: localCursor1.setNotificationUri(this.mContext.getContentResolver(), paramUri);
        return localCursor1;
        label365: str2 = "";
        break label211:
        localSQLiteQueryBuilder.setTables("logs LEFT OUTER JOIN apps ON logs.app_id=apps._id");
        localSQLiteQueryBuilder.setProjectionMap(sLogsProjectionMap);
        arrayOfString = Logs.DEFAULT_PROJECTION;
        if (paramString2 == null)
          paramString2 = "logs.date DESC";
        str1 = null;
        break label247:
        localSQLiteQueryBuilder.setTables("apps");
        arrayOfString = new String[] { "COUNT() as rows" };
        str1 = null;
        break label247:
        localSQLiteQueryBuilder.appendWhere(" apps._id=" + ((String)paramUri.getPathSegments().get(1)));
        break label316:
        localSQLiteQueryBuilder.appendWhere("apps._id=" + ((String)paramUri.getPathSegments().get(1)));
        break label316:
        localSQLiteQueryBuilder.appendWhere(" apps.uid=" + ((String)paramUri.getPathSegments().get(2)));
        break label316:
        localSQLiteQueryBuilder.appendWhere("apps.uid=" + ((String)paramUri.getPathSegments().get(2)));
        break label316:
        localSQLiteQueryBuilder.appendWhere("logs.type=" + ((String)paramUri.getPathSegments().get(2)));
        break label316:
        localSQLiteQueryBuilder.appendWhere("apps.allow=" + ((String)paramUri.getPathSegments().get(2)));
      }
      catch (SQLiteException localSQLiteException)
      {
        Log.e("Su.PermissionsProvider", "Query failed, returning null cursor.", localSQLiteException);
        localCursor1 = null;
        break label347:
      }
    }
  }

  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    if (!(ensureDb()))
      return -1;
    int i;
    switch (sUriMatcher.match(paramUri))
    {
    case 102:
    default:
      throw new IllegalArgumentException("Unsupported URI: " + paramUri);
    case 100:
      i = this.mDb.update("apps", paramContentValues, paramString, paramArrayOfString);
      getContext().getContentResolver().notifyChange(paramUri, null);
      return i;
    case 101:
      label87: SQLiteDatabase localSQLiteDatabase2 = this.mDb;
      StringBuilder localStringBuilder2 = new StringBuilder("_id=").append((String)paramUri.getPathSegments().get(1));
      if (!(TextUtils.isEmpty(paramString)));
      for (String str2 = " AND (" + paramString + ")"; ; str2 = "")
      {
        i = localSQLiteDatabase2.update("apps", paramContentValues, str2, paramArrayOfString);
        break label87:
      }
    case 103:
    }
    SQLiteDatabase localSQLiteDatabase1 = this.mDb;
    StringBuilder localStringBuilder1 = new StringBuilder("uid=").append((String)paramUri.getPathSegments().get(2));
    if (!(TextUtils.isEmpty(paramString)));
    for (String str1 = " AND (" + paramString + ")"; ; str1 = "")
    {
      i = localSQLiteDatabase1.update("apps", paramContentValues, str1, paramArrayOfString);
      break label87:
    }
  }

  public static class Apps
  {
    public static final String ALLOW = "allow";
    public static final String APPS_LOGS_JOIN = "apps LEFT OUTER JOIN logs ON apps._id=logs.app_id";
    public static final Uri CONTENT_URI = Uri.parse("content://com.noshufou.android.su.provider/apps");
    public static final Uri COUNT_CONTENT_URI = Uri.parse("content://com.noshufou.android.su.provider/apps/count");
    public static final String[] DEFAULT_PROJECTION = { "_id", "uid", "package", "name", "exec_uid", "exec_cmd", "allow", "date", "type", "notifications", "logging" };
    public static final String DEFAULT_SORT_ORDER = "apps.allow DESC, apps.name ASC";
    public static final String EXEC_CMD = "exec_cmd";
    public static final String EXEC_UID = "exec_uid";
    public static final String LAST_ACCESS = "date";
    public static final String LAST_ACCESS_TYPE = "type";
    public static final String LOGGING = "logging";
    public static final String NAME = "name";
    public static final String NOTIFICATIONS = "notifications";
    public static final String PACKAGE = "package";
    public static final String TABLE_NAME = "apps";
    public static final String UID = "uid";
    public static final String _ID = "_id";

    public static final class AllowType
    {
      public static final int ALLOW = 1;
      public static final int ASK = -1;
      public static final int DENY;
    }
  }

  private class DBOpenHelper extends SQLiteOpenHelper
  {
    private static final String CREATE_APPS = "CREATE TABLE IF NOT EXISTS apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid INTEGER, package TEXT, name TEXT,  exec_uid INTEGER, exec_cmd TEXT, allow INTEGER, notifications INTEGER, logging INTEGER, UNIQUE (uid,exec_uid,exec_cmd));";
    private static final String CREATE_LOGS = "CREATE TABLE IF NOT EXISTS logs (_id INTEGER PRIMARY KEY AUTOINCREMENT, app_id INTEGER, date INTEGER, type INTEGER);";
    private static final String DATABASE_NAME = "permissions.sqlite";
    private static final int DATABASE_VERSION = 7;

    DBOpenHelper(Context paramContext)
    {
      super(paramContext, "permissions.sqlite", null, 7);
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS apps");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, uid INTEGER, package TEXT, name TEXT,  exec_uid INTEGER, exec_cmd TEXT, allow INTEGER, notifications INTEGER, logging INTEGER, UNIQUE (uid,exec_uid,exec_cmd));");
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS logs");
      paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS logs (_id INTEGER PRIMARY KEY AUTOINCREMENT, app_id INTEGER, date INTEGER, type INTEGER);");
    }

    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      int i = paramInt1;
      if (i < 5)
      {
        onCreate(paramSQLiteDatabase);
        return;
      }
      if (i == 5);
      label33: Cursor localCursor;
      try
      {
        paramSQLiteDatabase.execSQL("ALTER TABLE apps ADD COLUMN notifications INTEGER");
        paramSQLiteDatabase.execSQL("ALTER TABLE apps ADD COLUMN logging INTEGER");
        i = 6;
        if (i == 6);
        localCursor = paramSQLiteDatabase.query("apps", new String[] { "_id", "uid" }, null, null, null, null, null);
        if (localCursor.moveToNext())
          break label104;
        localCursor.close();
        label104: return;
      }
      catch (SQLiteException localSQLiteException)
      {
        Log.e("Su.PermissionsProvider", "notifications and logging columns already exist... wut?", localSQLiteException);
        break label33:
        int j = localCursor.getInt(localCursor.getColumnIndex("uid"));
        long l = localCursor.getLong(localCursor.getColumnIndex("_id"));
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("name", Util.getAppName(PermissionsProvider.this.mContext, j, false));
        localContentValues.put("package", Util.getAppPackage(PermissionsProvider.this.mContext, j));
        String[] arrayOfString = new String[1];
        arrayOfString[0] = String.valueOf(l);
        paramSQLiteDatabase.update("apps", localContentValues, "_id=?", arrayOfString);
      }
    }
  }

  public static class Logs
  {
    public static final String APP_ID = "app_id";
    public static final Uri CONTENT_URI = Uri.parse("content://com.noshufou.android.su.provider/logs");
    public static final String DATE = "date";
    public static final String[] DEFAULT_PROJECTION = { "_id", "app_id", "uid", "name", "package", "date", "type" };
    public static final String DEFAULT_SORT_ORDER = "logs.date DESC";
    public static final String LOGS_APPS_JOIN = "logs LEFT OUTER JOIN apps ON logs.app_id=apps._id";
    public static final String NAME = "name";
    public static final String PACKAGE = "package";
    public static final String TABLE_NAME = "logs";
    public static final String TYPE = "type";
    public static final String UID = "uid";
    public static final String _ID = "_id";

    public static final class LogType
    {
      public static final int ALLOW = 1;
      public static final int CREATE = 2;
      public static final int DENY = 0;
      public static final int TOGGLE = 3;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.provider.PermissionsProvider
 * JD-Core Version:    0.5.3
 */