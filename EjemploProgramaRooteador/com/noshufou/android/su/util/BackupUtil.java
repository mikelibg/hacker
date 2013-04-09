package com.noshufou.android.su.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.preference.PreferenceManager;
import android.util.Log;
import com.noshufou.android.su.provider.PermissionsProvider.Apps;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

public class BackupUtil
{
  private static final String TAG = "Su.BackupUtil";

  private static boolean backupApps(Context paramContext, XmlSerializer paramXmlSerializer)
  {
    Cursor localCursor = paramContext.getContentResolver().query(PermissionsProvider.Apps.CONTENT_URI, null, null, null, null);
    if (localCursor == null)
      return false;
    if (localCursor.getCount() == 0)
    {
      localCursor.close();
      return true;
    }
    String str2;
    try
    {
      paramXmlSerializer.startTag("", "apps");
      if (!(localCursor.moveToNext()))
      {
        paramXmlSerializer.endTag("", "apps");
        return true;
      }
      paramXmlSerializer.startTag("", "app");
      paramXmlSerializer.attribute("", "package", localCursor.getString(localCursor.getColumnIndex("package")));
      paramXmlSerializer.attribute("", "name", localCursor.getString(localCursor.getColumnIndex("name")));
      paramXmlSerializer.attribute("", "exec_uid", localCursor.getString(localCursor.getColumnIndex("exec_uid")));
      paramXmlSerializer.attribute("", "exec_cmd", localCursor.getString(localCursor.getColumnIndex("exec_cmd")));
      paramXmlSerializer.attribute("", "allow", localCursor.getString(localCursor.getColumnIndex("allow")));
      String str1 = localCursor.getString(localCursor.getColumnIndex("notifications"));
      if (str1 != null)
        paramXmlSerializer.attribute("", "notifications", str1);
      str2 = localCursor.getString(localCursor.getColumnIndex("logging"));
      if (str2 == null);
    }
    catch (IOException localIOException)
    {
      Log.e("Su.BackupUtil", "Problem backing up apps", localIOException);
      return false;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  private static boolean backupPrefs(Context paramContext, XmlSerializer paramXmlSerializer)
    throws IOException
  {
    Map localMap = PreferenceManager.getDefaultSharedPreferences(paramContext).getAll();
    if (localMap.isEmpty())
      return true;
    paramXmlSerializer.startTag("", "prefs");
    Iterator localIterator = localMap.keySet().iterator();
    label45: String str1;
    String str2;
    do
    {
      if (!(localIterator.hasNext()))
      {
        paramXmlSerializer.endTag("", "prefs");
        return true;
      }
      str1 = (String)localIterator.next();
      str2 = "unknown";
    }
    while (!(str1.startsWith("pref_")));
    Object localObject = localMap.get(str1);
    if (localObject instanceof Boolean)
    {
      str2 = "boolean";
      label116: paramXmlSerializer.startTag("", str2);
      paramXmlSerializer.attribute("", "name", str1);
      if (!(str2.equals("string")))
        break label221;
      paramXmlSerializer.text(String.valueOf(localObject));
    }
    while (true)
    {
      paramXmlSerializer.endTag("", str2);
      break label45:
      if (localObject instanceof String)
        str2 = "string";
      if (localObject instanceof Integer)
        str2 = "int";
      if (localObject instanceof Long);
      str2 = "long";
      break label116:
      label221: paramXmlSerializer.attribute("", "value", String.valueOf(localObject));
    }
  }

  // ERROR //
  public static boolean makeBackup(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 189	android/util/Xml:newSerializer	()Lorg/xmlpull/v1/XmlSerializer;
    //   3: astore_1
    //   4: new 191	java/io/FileOutputStream
    //   7: dup
    //   8: new 193	java/io/File
    //   11: dup
    //   12: new 195	java/lang/StringBuilder
    //   15: dup
    //   16: invokestatic 201	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   19: invokevirtual 205	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   22: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   25: invokespecial 208	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   28: ldc 210
    //   30: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: invokespecial 218	java/io/File:<init>	(Ljava/lang/String;)V
    //   39: invokespecial 221	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   42: astore_2
    //   43: aload_1
    //   44: aload_2
    //   45: ldc 223
    //   47: invokeinterface 227 3 0
    //   52: aload_1
    //   53: aconst_null
    //   54: iconst_1
    //   55: invokestatic 230	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   58: invokeinterface 234 3 0
    //   63: aload_1
    //   64: ldc 236
    //   66: iconst_1
    //   67: invokeinterface 240 3 0
    //   72: aload_1
    //   73: ldc 45
    //   75: ldc 242
    //   77: invokeinterface 53 3 0
    //   82: pop
    //   83: aload_0
    //   84: aload_1
    //   85: invokestatic 244	com/noshufou/android/su/util/BackupUtil:backupApps	(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;)Z
    //   88: pop
    //   89: aload_0
    //   90: aload_1
    //   91: invokestatic 246	com/noshufou/android/su/util/BackupUtil:backupPrefs	(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;)Z
    //   94: istore 14
    //   96: aload_1
    //   97: ldc 45
    //   99: ldc 242
    //   101: invokeinterface 60 3 0
    //   106: pop
    //   107: aload_1
    //   108: invokeinterface 249 1 0
    //   113: aload_1
    //   114: invokeinterface 252 1 0
    //   119: aload_2
    //   120: invokevirtual 253	java/io/FileOutputStream:close	()V
    //   123: iload 14
    //   125: ireturn
    //   126: astore 18
    //   128: aload 18
    //   130: astore 4
    //   132: ldc 8
    //   134: ldc 255
    //   136: aload 4
    //   138: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   141: pop
    //   142: iconst_0
    //   143: ireturn
    //   144: astore 17
    //   146: aload 17
    //   148: astore 7
    //   150: ldc 8
    //   152: ldc_w 257
    //   155: aload 7
    //   157: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   160: pop
    //   161: iconst_0
    //   162: ireturn
    //   163: astore 16
    //   165: aload 16
    //   167: astore 10
    //   169: ldc 8
    //   171: ldc_w 259
    //   174: aload 10
    //   176: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   179: pop
    //   180: iconst_0
    //   181: ireturn
    //   182: astore 9
    //   184: aload 9
    //   186: astore 10
    //   188: goto -19 -> 169
    //   191: astore 6
    //   193: aload 6
    //   195: astore 7
    //   197: goto -47 -> 150
    //   200: astore_3
    //   201: aload_3
    //   202: astore 4
    //   204: goto -72 -> 132
    //
    // Exception table:
    //   from	to	target	type
    //   4	43	126	java/lang/IllegalArgumentException
    //   4	43	144	java/lang/IllegalStateException
    //   4	43	163	IOException
    //   43	123	182	IOException
    //   43	123	191	java/lang/IllegalStateException
    //   43	123	200	java/lang/IllegalArgumentException
  }

  private static int restoreApps(Context paramContext, XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    int i = 0;
    PackageManager localPackageManager = paramContext.getPackageManager();
    ContentResolver localContentResolver = paramContext.getContentResolver();
    int j = paramXmlPullParser.getEventType();
    if ((j == 1) || ((j == 3) && (paramXmlPullParser.getName().equalsIgnoreCase("apps"))))
      return i;
    String str;
    if ((j == 2) && (paramXmlPullParser.getName().equalsIgnoreCase("app")))
      str = paramXmlPullParser.getAttributeValue("", "package");
    try
    {
      int k = localPackageManager.getApplicationInfo(str, 0).uid;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("uid", Integer.valueOf(k));
      int l = 0;
      if (l >= paramXmlPullParser.getAttributeCount())
      {
        localContentResolver.insert(PermissionsProvider.Apps.CONTENT_URI, localContentValues);
        ++i;
        label143: j = paramXmlPullParser.next();
      }
      localContentValues.put(paramXmlPullParser.getAttributeName(l), paramXmlPullParser.getAttributeValue(l));
      ++l;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.i("Su.BackupUtil", "package" + str + " not installed, skipping restore");
      break label143:
    }
  }

  // ERROR //
  public static int restoreBackup(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 336	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   3: astore_1
    //   4: iconst_m1
    //   5: istore_2
    //   6: new 338	java/io/FileInputStream
    //   9: dup
    //   10: new 193	java/io/File
    //   13: dup
    //   14: new 195	java/lang/StringBuilder
    //   17: dup
    //   18: invokestatic 201	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   21: invokevirtual 205	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   24: invokestatic 163	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   27: invokespecial 208	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   30: ldc 210
    //   32: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokespecial 218	java/io/File:<init>	(Ljava/lang/String;)V
    //   41: invokespecial 339	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   44: astore_3
    //   45: aload_1
    //   46: aload_3
    //   47: ldc 223
    //   49: invokeinterface 343 3 0
    //   54: aload_1
    //   55: invokeinterface 274 1 0
    //   60: istore 10
    //   62: goto +129 -> 191
    //   65: aload_1
    //   66: invokeinterface 316 1 0
    //   71: istore 10
    //   73: goto +118 -> 191
    //   76: aload_1
    //   77: invokeinterface 277 1 0
    //   82: ldc 47
    //   84: invokevirtual 280	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   87: ifeq +19 -> 106
    //   90: aload_1
    //   91: invokeinterface 316 1 0
    //   96: pop
    //   97: aload_0
    //   98: aload_1
    //   99: invokestatic 345	com/noshufou/android/su/util/BackupUtil:restoreApps	(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    //   102: istore_2
    //   103: goto -38 -> 65
    //   106: aload_1
    //   107: invokeinterface 277 1 0
    //   112: ldc 116
    //   114: invokevirtual 280	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   117: ifeq -52 -> 65
    //   120: aload_1
    //   121: invokeinterface 316 1 0
    //   126: pop
    //   127: aload_0
    //   128: aload_1
    //   129: invokestatic 349	com/noshufou/android/su/util/BackupUtil:restorePrefs	(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    //   132: goto -67 -> 65
    //   135: astore 7
    //   137: aload 7
    //   139: astore 8
    //   141: ldc 8
    //   143: ldc_w 351
    //   146: aload 8
    //   148: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   151: pop
    //   152: iconst_m1
    //   153: ireturn
    //   154: astore 14
    //   156: aload 14
    //   158: astore 5
    //   160: ldc 8
    //   162: ldc_w 351
    //   165: aload 5
    //   167: invokestatic 96	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   170: pop
    //   171: iconst_m1
    //   172: ireturn
    //   173: astore 4
    //   175: aload 4
    //   177: astore 5
    //   179: goto -19 -> 160
    //   182: astore 13
    //   184: aload 13
    //   186: astore 8
    //   188: goto -47 -> 141
    //   191: iload 10
    //   193: iconst_1
    //   194: if_icmpne +5 -> 199
    //   197: iload_2
    //   198: ireturn
    //   199: iload 10
    //   201: tableswitch	default:+-136 -> 65, 2:+-125->76
    //
    // Exception table:
    //   from	to	target	type
    //   45	62	135	XmlPullParserException
    //   65	73	135	XmlPullParserException
    //   76	103	135	XmlPullParserException
    //   106	132	135	XmlPullParserException
    //   6	45	154	IOException
    //   45	62	173	IOException
    //   65	73	173	IOException
    //   76	103	173	IOException
    //   106	132	173	IOException
    //   6	45	182	XmlPullParserException
  }

  private static void restorePrefs(Context paramContext, XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    localEditor.clear();
    int i = paramXmlPullParser.getEventType();
    if ((i == 1) || ((i == 3) && (paramXmlPullParser.getName().equalsIgnoreCase("prefs"))))
    {
      label25: localEditor.commit();
      return;
    }
    if (i == 2)
    {
      if (!(paramXmlPullParser.getName().equalsIgnoreCase("boolean")))
        break label120;
      localEditor.putBoolean(paramXmlPullParser.getAttributeValue("", "name"), Boolean.parseBoolean(paramXmlPullParser.getAttributeValue("", "value")));
    }
    while (true)
    {
      i = paramXmlPullParser.next();
      break label25:
      if (paramXmlPullParser.getName().equalsIgnoreCase("string"))
        label120: localEditor.putString(paramXmlPullParser.getAttributeValue("", "name"), paramXmlPullParser.nextText());
      if (paramXmlPullParser.getName().equalsIgnoreCase("int"))
        localEditor.putInt(paramXmlPullParser.getAttributeValue("", "name"), Integer.parseInt(paramXmlPullParser.getAttributeValue("", "value")));
      if (!(paramXmlPullParser.getName().equalsIgnoreCase("long")))
        continue;
      localEditor.putLong(paramXmlPullParser.getAttributeValue("", "name"), Long.parseLong(paramXmlPullParser.getAttributeValue("", "value")));
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.util.BackupUtil
 * JD-Core Version:    0.5.3
 */