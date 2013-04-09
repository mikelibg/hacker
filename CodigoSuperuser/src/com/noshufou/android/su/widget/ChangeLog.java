package com.noshufou.android.su.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.util.Log;
import android.webkit.WebView;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class ChangeLog
{
  private static final int EOCL = -1;
  private static final String TAG = "ChangeLog";
  private static final String VERSION_KEY = "pref_version_key";
  private final Context context;
  private int lastVersion;
  private Listmode listMode = Listmode.NONE;
  private StringBuffer sb = null;
  private int thisVersion;

  public ChangeLog(Context paramContext)
  {
    this.context = paramContext;
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    try
    {
      this.lastVersion = localSharedPreferences.getInt("pref_version_key", 0);
      label83: Log.d("ChangeLog", "lastVersion: " + this.lastVersion);
    }
    catch (ClassCastException localClassCastException)
    {
      try
      {
        this.thisVersion = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
        Log.d("ChangeLog", "appVersion: " + this.thisVersion);
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putInt("pref_version_key", this.thisVersion);
        localEditor.commit();
        return;
        localClassCastException = localClassCastException;
        this.lastVersion = 0;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        this.thisVersion = 0;
        Log.e("ChangeLog", "could not get version name from manifest!");
        localNameNotFoundException.printStackTrace();
        break label83:
      }
    }
  }

  private void closeList()
  {
    if (this.listMode == Listmode.ORDERED)
      this.sb.append("</ol></div>\n");
    while (true)
    {
      this.listMode = Listmode.NONE;
      return;
      if (this.listMode != Listmode.UNORDERED)
        continue;
      this.sb.append("</ul></div>\n");
    }
  }

  private AlertDialog getDialog(boolean paramBoolean)
  {
    WebView localWebView = new WebView(this.context);
    localWebView.setBackgroundColor(0);
    localWebView.loadData(getLog(paramBoolean), "text/html", "UTF-8");
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.context);
    Resources localResources = this.context.getResources();
    if (paramBoolean);
    for (int i = 2131165364; ; i = 2131165365)
    {
      localBuilder.setTitle(localResources.getString(i)).setView(localWebView).setCancelable(true).setPositiveButton(this.context.getResources().getString(2131165208), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramDialogInterface, int paramInt)
        {
          paramDialogInterface.cancel();
        }
      });
      return localBuilder.create();
    }
  }

  private String getLog(boolean paramBoolean)
  {
    this.sb = new StringBuffer();
    int i;
    label40: label59: String str2;
    int j;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.context.getResources().openRawResource(2131099648)));
      i = 0;
      do
        while (true)
        {
          String str1 = localBufferedReader.readLine();
          if (str1 == null)
          {
            closeList();
            localBufferedReader.close();
            return this.sb.toString();
          }
          str2 = str1.trim();
          if (!(str2.startsWith("$")))
            break;
          closeList();
          j = Integer.parseInt(str2.substring(1).trim());
          if (paramBoolean)
            continue;
          if (j >= 1 + this.lastVersion)
            break label461;
          i = 1;
        }
      while (i != 0);
      if (!(str2.startsWith("%")))
        break label191;
      closeList();
      label191: label461: this.sb.append("<div class='title'>" + str2.substring(1).trim() + "</div>\n");
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      break label59:
      if (str2.startsWith("_"))
      {
        closeList();
        this.sb.append("<div class='subtitle'>" + str2.substring(1).trim() + "</div>\n");
      }
      if (str2.startsWith("!"))
      {
        closeList();
        this.sb.append("<div class='freetext'>" + str2.substring(1).trim() + "</div>\n");
      }
      if (str2.startsWith("#"))
      {
        openList(Listmode.ORDERED);
        this.sb.append("<li>" + str2.substring(1).trim() + "</li>\n");
      }
      if (str2.startsWith("*"))
      {
        openList(Listmode.UNORDERED);
        this.sb.append("<li>" + str2.substring(1).trim() + "</li>\n");
      }
      closeList();
      this.sb.append(str2 + "\n");
      break label40:
      if (j == -1);
      i = 0;
    }
  }

  private void openList(Listmode paramListmode)
  {
    if (this.listMode != paramListmode)
    {
      closeList();
      if (paramListmode != Listmode.ORDERED)
        break label36;
      this.sb.append("<div class='list'><ol>\n");
    }
    while (true)
    {
      this.listMode = paramListmode;
      return;
      label36: if (paramListmode != Listmode.UNORDERED)
        continue;
      this.sb.append("<div class='list'><ul>\n");
    }
  }

  public boolean firstRun()
  {
    return (this.lastVersion < this.thisVersion);
  }

  public boolean firstRunEver()
  {
    return "".equals(Integer.valueOf(this.lastVersion));
  }

  public String getFullLog()
  {
    return getLog(true);
  }

  public AlertDialog getFullLogDialog()
  {
    return getDialog(true);
  }

  public int getLastVersion()
  {
    return this.lastVersion;
  }

  public String getLog()
  {
    return getLog(false);
  }

  public AlertDialog getLogDialog()
  {
    return getDialog(false);
  }

  public int getThisVersion()
  {
    return this.thisVersion;
  }

  void setLastVersion(int paramInt)
  {
    this.lastVersion = paramInt;
  }

  private static enum Listmode
  {
    static
    {
      Listmode[] arrayOfListmode = new Listmode[3];
      arrayOfListmode[0] = NONE;
      arrayOfListmode[1] = ORDERED;
      arrayOfListmode[2] = UNORDERED;
      ENUM$VALUES = arrayOfListmode;
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\update\system\app\Superuser\src\
 * Qualified Name:     com.noshufou.android.su.widget.ChangeLog
 * JD-Core Version:    0.5.3
 */