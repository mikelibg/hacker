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
import com.apperhand.device.android.c.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class e
  implements com.apperhand.device.a.a.e
{
  private Context a;
  private a b = null;
  private List<a> c = new ArrayList();

  public e(Context paramContext)
  {
    this.a = paramContext;
  }

  private Cursor a(a parama)
  {
    if (parama == null)
      return null;
    String str1 = a(parama.a);
    Cursor localCursor1;
    try
    {
      Uri localUri2 = Uri.parse(str1);
      Cursor localCursor3 = this.a.getContentResolver().query(localUri2, null, null, null, null);
      localCursor1 = localCursor3;
      String str2;
      if ((localCursor1 == null) && (parama.b != null) && (!(parama.b.equals(parama.a))))
        str2 = a(parama.b);
      try
      {
        Uri localUri1 = Uri.parse(str2);
        Cursor localCursor2 = this.a.getContentResolver().query(localUri1, null, null, null, null);
        return localCursor2;
      }
      catch (SecurityException localSecurityException2)
      {
        return localCursor1;
      }
    }
    catch (SecurityException localSecurityException1)
    {
      localCursor1 = null;
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
    Shortcut localShortcut;
    try
    {
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("title");
      int k = paramCursor.getColumnIndex("intent");
      int l = paramCursor.getColumnIndex("screen");
      if (!(paramCursor.moveToNext()))
        break label181;
      localShortcut = new Shortcut();
      localShortcut.setId(paramCursor.getLong(i));
      localShortcut.setName(paramCursor.getString(j));
      String str = paramCursor.getString(k);
      if ((str != null) && (!(str.equals(""))) && (str.indexOf("#") > 0))
        str = str.substring(0, str.indexOf("#"));
      localShortcut.setLink(str);
      localShortcut.setScreen(paramCursor.getInt(l));
    }
    finally
    {
      paramCursor.close();
    }
    label181: paramCursor.close();
    return localArrayList;
  }

  private static boolean a(Cursor paramCursor, Shortcut paramShortcut)
    throws Exception
  {
    if (paramCursor == null)
      return false;
    int i = paramCursor.getColumnIndex("intent");
    String str1 = b.a(paramShortcut.getLink());
    String str2;
    do
    {
      if (paramCursor.moveToNext());
      str2 = paramCursor.getString(i);
    }
    while ((str2 == null) || (str2.indexOf(str1) < 0));
    return true;
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
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      localArrayList.add(a((a)localIterator.next()));
    return localArrayList;
  }

  public final int a(String paramString, long paramLong)
  {
    int i = -999;
    long l1;
    if ((float)paramLong > 0.0F)
      l1 = 1000L * paramLong;
    try
    {
      Thread.sleep(l1);
      Cursor localCursor;
      if (this.b != null)
      {
        localCursor = a(this.b);
        if ((localCursor != null) && (localCursor == null));
      }
      try
      {
        int j = localCursor.getColumnIndex("screen");
        int k = localCursor.getColumnIndex("title");
        String str;
        do
        {
          if (!(localCursor.moveToNext()))
            break label123;
          str = localCursor.getString(k);
        }
        while ((str == null) || (!(str.equals(paramString))));
        int l = localCursor.getInt(j);
        i = l;
        label123: return i;
      }
      catch (Exception localException)
      {
        return i;
      }
      finally
      {
        localCursor.close();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }

  public final CommandInformation a(List<String> paramList)
  {
    CommandInformation localCommandInformation = new CommandInformation(Command.Commands.SHORTCUTS);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("Launchers = [").append(this.c.toString()).append("]#NL#");
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
            break label478;
          localCursor = (Cursor)localIterator1.next();
          locala = (a)this.c.get(i);
          j = i + 1;
          if (localCursor == null)
            break label445;
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
          break label437;
        str1 = Arrays.asList(arrayOfString).toString();
        localStringBuffer.append("Success reading cursor of ").append(locala).append(" with columns ").append(str1).append("#NL#");
        Iterator localIterator2 = localList2.iterator();
        if (!(localIterator2.hasNext()))
          break label493;
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
      label437: String str1 = "Unknown";
      continue;
      label445: localStringBuffer.append("Couldn't check ").append(locala.toString()).append("#NL#");
      localCommandInformation.setValid(false);
      int i = j;
      continue;
      label478: b(localList1);
      localCommandInformation.setMessage(localStringBuffer.toString());
      return localCommandInformation;
      label493: i = j;
    }
  }

  public final void a()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    PackageManager localPackageManager = this.a.getPackageManager();
    List localList = localPackageManager.queryIntentActivities(localIntent, 0);
    this.c.clear();
    this.b = null;
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      label65: ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      a locala = new a();
      this.c.add(locala);
      ActivityInfo localActivityInfo = localResolveInfo.activityInfo;
      String str1 = a.a().a("LAUNCHER_" + localActivityInfo.packageName, null, false);
      if (str1 != null)
      {
        locala.a = str1;
        label158: ArrayList localArrayList = new ArrayList();
        localPackageManager.getPreferredActivities(new ArrayList(), localArrayList, localActivityInfo.packageName);
        if (localArrayList.size() <= 0)
          break label272;
      }
      for (int i = 1; ; i = 0)
      {
        locala.c = i;
        if (locala.c)
          this.b = locala;
        String str2 = localActivityInfo.name;
        int j = str2.lastIndexOf(".");
        if (j > 0);
        locala.b = str2.substring(0, j);
        break label65:
        locala.a = localActivityInfo.packageName;
        label272: break label158:
      }
    }
    if (this.c.size() == 1)
    {
      this.b = ((a)this.c.get(0));
      this.b.c = true;
    }
  }

  public final boolean a(Shortcut paramShortcut)
    throws f
  {
    if (this.b != null)
    {
      Cursor localCursor2 = a(this.b);
      if (localCursor2 != null);
      boolean bool3;
      try
      {
        boolean bool4 = a(localCursor2, paramShortcut);
        bool3 = bool4;
        label34: localCursor2.close();
        return bool3;
      }
      catch (Exception localException2)
      {
        bool3 = true;
        break label34:
        return false;
      }
    }
    List localList = d();
    try
    {
      Iterator localIterator = localList.iterator();
      if (localIterator.hasNext());
      Cursor localCursor1;
      boolean bool1;
      try
      {
        boolean bool2 = a(localCursor1, paramShortcut);
        bool1 = bool2;
        label101: if (bool1);
        b(localList);
        return true;
      }
      catch (Exception localException1)
      {
        bool1 = true;
        break label101:
        b(localList);
        return false;
      }
    }
    finally
    {
      b(localList);
    }
  }

  public final String b()
  {
    return this.c.toString();
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
      this.a.sendBroadcast(localIntent2);
      return;
      localIntent2.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeByteArray(arrayOfByte1, 0, arrayOfByte1.length));
    }
  }

  public final boolean c()
  {
    int j;
    if (this.b != null)
    {
      Cursor localCursor = a(this.b);
      j = 0;
      if (localCursor != null)
      {
        localCursor.close();
        j = 1;
      }
    }
    List localList;
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
      return k;
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

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.security.booster-3-v1.3-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.e
 * JD-Core Version:    0.5.3
 */