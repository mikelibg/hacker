package com.apperhand.device.android.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.apperhand.common.dto.AssetInformation;
import com.apperhand.common.dto.AssetInformation.State;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandInformation;
import com.apperhand.common.dto.Shortcut;
import com.apperhand.device.a.d.b;
import com.apperhand.device.a.d.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class e
  implements com.apperhand.device.a.a.e
{
  private static final Map<String, String> a;
  private Context b;
  private a c = null;
  private List<a> d = new ArrayList();

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("com.motorola.blur.home", "com.android.launcher");
  }

  public e(Context paramContext)
  {
    this.b = paramContext;
  }

  private Cursor a(a parama)
  {
    Object localObject;
    if (parama == null)
      localObject = null;
    while (true)
    {
      return localObject;
      String str1 = a(parama.a);
      Cursor localCursor1;
      try
      {
        while (true)
        {
          Uri localUri2 = Uri.parse(str1);
          Cursor localCursor3 = this.b.getContentResolver().query(localUri2, null, null, null, null);
          localCursor1 = localCursor3;
          label46: String str2;
          if ((localCursor1 == null) && (parama.b != null) && (!(parama.b.equals(parama.a))))
            str2 = a(parama.b);
          try
          {
            Uri localUri1 = Uri.parse(str2);
            Cursor localCursor2 = this.b.getContentResolver().query(localUri1, null, null, null, null);
            localObject = localCursor2;
          }
          catch (SecurityException localSecurityException2)
          {
            localObject = localCursor1;
          }
        }
        
      }
      catch (SecurityException localSecurityException1)
      {
        localCursor1 = null;
        break label46:
      }
    }
  }

  private static String a(String paramString)
  {
    return "content://" + paramString + ".settings/favorites?notify=false";
  }

  private static List<Shortcut> a(Cursor paramCursor)
    throws Exception
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("title");
      int k = paramCursor.getColumnIndex("intent");
      int l = paramCursor.getColumnIndex("screen");
      if (!(paramCursor.moveToNext()))
        break label172;
      Shortcut localShortcut = new Shortcut();
      localShortcut.setId(paramCursor.getLong(i));
      localShortcut.setName(paramCursor.getString(j));
      String str = paramCursor.getString(k);
      if ((str != null) && (!(str.equals(""))) && (str.indexOf("#") > 0))
        str = str.substring(0, str.indexOf("#"));
      localShortcut.setLink(str);
      localShortcut.setScreen(paramCursor.getInt(l));
      label172: localArrayList.add(localShortcut);
    }
    finally
    {
      paramCursor.close();
    }
    return localArrayList;
  }

  private static boolean a(Cursor paramCursor, Shortcut paramShortcut)
    throws Exception
  {
    int i = 0;
    if (paramCursor == null);
    while (true)
    {
      return i;
      int j = paramCursor.getColumnIndex("intent");
      String str1 = b.a(paramShortcut.getLink());
      String str2;
      do
      {
        boolean bool = paramCursor.moveToNext();
        i = 0;
        if (bool);
        str2 = paramCursor.getString(j);
      }
      while ((str2 == null) || (str2.indexOf(str1) < 0));
      i = 1;
    }
  }

  private static void b(List<Cursor> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Cursor localCursor = (Cursor)localIterator.next();
      if (localCursor == null)
        continue;
      localCursor.close();
    }
  }

  private List<Cursor> d()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
      localArrayList.add(a((a)localIterator.next()));
    return localArrayList;
  }

  // ERROR //
  public final int a(String paramString, long paramLong)
  {
    // Byte code:
    //   0: sipush -999
    //   3: istore 4
    //   5: lload_2
    //   6: l2f
    //   7: fconst_0
    //   8: fcmpl
    //   9: ifle +15 -> 24
    //   12: ldc2_w 197
    //   15: lload_2
    //   16: lmul
    //   17: lstore 12
    //   19: lload 12
    //   21: invokestatic 203	java/lang/Thread:sleep	(J)V
    //   24: aload_0
    //   25: getfield 39	com/apperhand/device/android/a/e:c	Lcom/apperhand/device/android/a/e$a;
    //   28: ifnull +102 -> 130
    //   31: aload_0
    //   32: aload_0
    //   33: getfield 39	com/apperhand/device/android/a/e:c	Lcom/apperhand/device/android/a/e$a;
    //   36: invokespecial 193	com/apperhand/device/android/a/e:a	(Lcom/apperhand/device/android/a/e$a;)Landroid/database/Cursor;
    //   39: astore 5
    //   41: aload 5
    //   43: ifnull +87 -> 130
    //   46: aload 5
    //   48: ifnull +75 -> 123
    //   51: aload 5
    //   53: ldc 117
    //   55: invokeinterface 111 2 0
    //   60: istore 8
    //   62: aload 5
    //   64: ldc 113
    //   66: invokeinterface 111 2 0
    //   71: istore 9
    //   73: aload 5
    //   75: invokeinterface 121 1 0
    //   80: ifeq +43 -> 123
    //   83: aload 5
    //   85: iload 9
    //   87: invokeinterface 136 2 0
    //   92: astore 10
    //   94: aload 10
    //   96: ifnull -23 -> 73
    //   99: aload 10
    //   101: aload_1
    //   102: invokevirtual 83	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   105: ifeq -32 -> 73
    //   108: aload 5
    //   110: iload 8
    //   112: invokeinterface 157 2 0
    //   117: istore 11
    //   119: iload 11
    //   121: istore 4
    //   123: aload 5
    //   125: invokeinterface 169 1 0
    //   130: iload 4
    //   132: ireturn
    //   133: astore 7
    //   135: aload 5
    //   137: invokeinterface 169 1 0
    //   142: goto -12 -> 130
    //   145: astore 6
    //   147: aload 5
    //   149: invokeinterface 169 1 0
    //   154: aload 6
    //   156: athrow
    //   157: astore 14
    //   159: goto -135 -> 24
    //
    // Exception table:
    //   from	to	target	type
    //   51	119	133	Exception
    //   51	119	145	finally
    //   19	24	157	java/lang/InterruptedException
  }

  public final CommandInformation a(List<String> paramList)
  {
    CommandInformation localCommandInformation = new CommandInformation(Command.Commands.SHORTCUTS);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("Launchers = [").append(this.d.toString()).append("]#NL#");
    ArrayList localArrayList = new ArrayList();
    localCommandInformation.setAssets(localArrayList);
    localCommandInformation.setValid(true);
    List localList1 = d();
    while (true)
    {
      a locala;
      int j;
      label208: AssetInformation localAssetInformation;
      HashMap localHashMap;
      try
      {
        Iterator localIterator1 = localList1.iterator();
        i = 0;
        Cursor localCursor;
        List localList2;
        while (true)
        {
          if (!(localIterator1.hasNext()))
            break label479;
          localCursor = (Cursor)localIterator1.next();
          locala = (a)this.d.get(i);
          j = i + 1;
          if (localCursor == null)
            break label446;
          try
          {
            localList2 = a(localCursor);
            if (localList2 != null)
              break label208;
            localStringBuffer.append("Success reading cursor of ").append(locala).append(", but the cursor is empty#NL#");
            localCommandInformation.setValid(false);
            i = j;
          }
          catch (Exception localException)
          {
            localStringBuffer.append("Error reading cursor of ").append(locala).append(localException.getMessage()).append("#NL#");
            localCommandInformation.setValid(false);
            i = j;
          }
        }
        String[] arrayOfString = localCursor.getColumnNames();
        if (arrayOfString == null)
          break label438;
        str1 = Arrays.asList(arrayOfString).toString();
        localStringBuffer.append("Success reading cursor of ").append(locala).append(" with columns ").append(str1).append("#NL#");
        Iterator localIterator2 = localList2.iterator();
        if (!(localIterator2.hasNext()))
          break label494;
        Shortcut localShortcut = (Shortcut)localIterator2.next();
        Iterator localIterator3 = paramList.iterator();
        String str2;
        String str3;
        do
        {
          if (localIterator3.hasNext());
          str2 = (String)localIterator3.next();
          str3 = localShortcut.getLink();
        }
        while ((str3 == null) || (str3.indexOf(str2) == -1));
        localAssetInformation = new AssetInformation();
        localAssetInformation.setUrl(str3);
        localAssetInformation.setPosition(localShortcut.getScreen());
        localAssetInformation.setState(AssetInformation.State.EXIST);
        localArrayList.add(localAssetInformation);
        localHashMap = new HashMap();
      }
      finally
      {
        b(localList1);
        localCommandInformation.setMessage(localStringBuffer.toString());
      }
      label438: String str1 = "Unknown";
      continue;
      label446: localStringBuffer.append("Couldn't check ").append(locala.toString()).append("#NL#");
      localCommandInformation.setValid(false);
      int i = j;
      continue;
      label479: b(localList1);
      localCommandInformation.setMessage(localStringBuffer.toString());
      return localCommandInformation;
      label494: i = j;
    }
  }

  public final void a()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    PackageManager localPackageManager = this.b.getPackageManager();
    List localList = localPackageManager.queryIntentActivities(localIntent, 0);
    this.d.clear();
    this.c = null;
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      label65: ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      a locala = new a();
      this.d.add(locala);
      ActivityInfo localActivityInfo = localResolveInfo.activityInfo;
      String str1 = (String)a.get(localActivityInfo.packageName);
      if (str1 != null)
      {
        locala.a = str1;
        label145: ArrayList localArrayList = new ArrayList();
        localPackageManager.getPreferredActivities(new ArrayList(), localArrayList, localActivityInfo.packageName);
        if (localArrayList.size() <= 0)
          break label259;
      }
      for (int i = 1; ; i = 0)
      {
        locala.c = i;
        if (locala.c)
          this.c = locala;
        String str2 = localActivityInfo.name;
        int j = str2.lastIndexOf(".");
        if (j > 0);
        locala.b = str2.substring(0, j);
        break label65:
        locala.a = localActivityInfo.packageName;
        label259: break label145:
      }
    }
    if (this.d.size() == 1)
    {
      this.c = ((a)this.d.get(0));
      this.c.c = true;
    }
  }

  public final boolean a(Shortcut paramShortcut)
    throws f
  {
    Cursor localCursor2;
    if (this.c != null)
    {
      localCursor2 = a(this.c);
      if (localCursor2 == null);
    }
    boolean bool1;
    try
    {
      boolean bool4 = a(localCursor2, paramShortcut);
      bool1 = bool4;
      label34: localCursor2.close();
      label41: label105: return bool1;
    }
    catch (Exception localException2)
    {
      while (true)
      {
        bool1 = true;
        break label34:
        bool1 = false;
        break label41:
        List localList = d();
        Cursor localCursor1;
        try
        {
          Iterator localIterator = localList.iterator();
          if (localIterator.hasNext())
            localCursor1 = (Cursor)localIterator.next();
        }
        finally
        {
          boolean bool2;
          b(localList);
        }
      }
    }
  }

  public final String b()
  {
    return this.d.toString();
  }

  public final void b(Shortcut paramShortcut)
  {
    String str1 = paramShortcut.getName();
    String str2 = paramShortcut.getLink();
    byte[] arrayOfByte1 = paramShortcut.getIcon();
    Intent localIntent1 = new Intent("android.intent.action.VIEW", Uri.parse(str2));
    localIntent1.addFlags(268435456);
    localIntent1.addFlags(67108864);
    Intent localIntent2 = new Intent();
    localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", str1);
    if (arrayOfByte1 == null)
    {
      byte[] arrayOfByte2 = new byte[0];
      localIntent2.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeByteArray(arrayOfByte2, 0, arrayOfByte2.length));
    }
    while (true)
    {
      localIntent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
      this.b.sendBroadcast(localIntent2);
      return;
      localIntent2.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeByteArray(arrayOfByte1, 0, arrayOfByte1.length));
    }
  }

  public final boolean c()
  {
    int j;
    if (this.c != null)
    {
      Cursor localCursor = a(this.c);
      j = 0;
      if (localCursor != null)
      {
        localCursor.close();
        j = 1;
      }
    }
    label33: List localList;
    int i;
    do
    {
      return j;
      localList = d();
      i = localList.size();
      j = 0;
    }
    while (i <= 0);
    Iterator localIterator = localList.iterator();
    do
      if (!(localIterator.hasNext()))
        break;
    while ((Cursor)localIterator.next() != null);
    for (int k = 0; ; k = 1)
    {
      b(localList);
      j = k;
      break label33:
    }
  }

  static final class a
  {
    public String a;
    public String b;
    public boolean c;

    public final String toString()
    {
      return "LauncherNames [packageName=" + this.a + ", name=" + this.b + ", default4User=" + this.c + "]";
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.apperhand.device.android.a.e
 * JD-Core Version:    0.5.3
 */