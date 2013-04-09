package com.apperhand.device.android.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.Browser;
import com.apperhand.common.dto.AssetInformation;
import com.apperhand.common.dto.AssetInformation.State;
import com.apperhand.common.dto.BaseBrowserItem;
import com.apperhand.common.dto.Bookmark;
import com.apperhand.common.dto.Command.Commands;
import com.apperhand.common.dto.CommandInformation;
import com.apperhand.common.dto.Status;
import com.apperhand.device.a.d.f;
import com.apperhand.device.a.d.f.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class b extends g
  implements com.apperhand.device.a.a.b
{
  private ContentResolver a;

  public b(ContentResolver paramContentResolver)
  {
    this.a = paramContentResolver;
  }

  private List<Bookmark> a(String paramString)
    throws f
  {
    ArrayList localArrayList = new ArrayList();
    String str = "bookmark = 1 AND url like '%" + paramString + "%'";
    Cursor localCursor = this.a.query(Browser.BOOKMARKS_URI, new String[] { "_id", "title", "url", "visits", "date", "created", "favicon" }, str, null, null);
    if (localCursor == null)
      throw new f(f.a.c, "Unable to load bookmarks");
    try
    {
      if (localCursor.moveToFirst())
      {
        boolean bool;
        do
        {
          Bookmark localBookmark = new Bookmark();
          localBookmark.setId(localCursor.getLong(localCursor.getColumnIndex("_id")));
          localBookmark.setTitle(localCursor.getString(localCursor.getColumnIndex("title")));
          localBookmark.setUrl(localCursor.getString(localCursor.getColumnIndex("url")));
          localBookmark.setFavicon(localCursor.getBlob(localCursor.getColumnIndex("favicon")));
          localBookmark.setStatus(Status.EXISTS);
          localArrayList.add(localBookmark);
          bool = localCursor.moveToNext();
        }
        while (bool);
      }
      return localArrayList;
    }
    finally
    {
      localCursor.close();
    }
  }

  public final long a(Bookmark paramBookmark)
    throws f
  {
    ContentResolver localContentResolver = this.a;
    Uri localUri = Browser.BOOKMARKS_URI;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("title", paramBookmark.getTitle());
    localContentValues.put("bookmark", "1");
    localContentValues.put("url", paramBookmark.getUrl());
    localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("visits", Integer.valueOf(100));
    localContentValues.put("created", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("favicon", paramBookmark.getFavicon());
    String str = localContentResolver.insert(localUri, localContentValues).toString();
    return Long.parseLong(str.substring(1 + str.lastIndexOf("/")));
  }

  public final CommandInformation a(List<String> paramList)
  {
    CommandInformation localCommandInformation = new CommandInformation(Command.Commands.BOOKMARKS);
    try
    {
      localCommandInformation.setValid(true);
      ArrayList localArrayList = new ArrayList();
      localCommandInformation.setAssets(localArrayList);
      Iterator localIterator1 = paramList.iterator();
      Iterator localIterator2;
      do
      {
        if (!(localIterator1.hasNext()))
          break label216;
        localIterator2 = a((String)localIterator1.next()).iterator();
      }
      while (!(localIterator2.hasNext()));
      Bookmark localBookmark = (Bookmark)localIterator2.next();
      AssetInformation localAssetInformation = new AssetInformation();
      localAssetInformation.setUrl(localBookmark.getUrl());
      localAssetInformation.setPosition((int)localBookmark.getId());
      localAssetInformation.setState(AssetInformation.State.EXIST);
      HashMap localHashMap = new HashMap();
      localHashMap.put("Title", localBookmark.getTitle());
      localAssetInformation.setParameters(localHashMap);
      localArrayList.add(localAssetInformation);
    }
    catch (Exception localException)
    {
      localCommandInformation.setMessage("Exception in getting bookmarks, msg = [" + localException.getMessage() + "]");
      localCommandInformation.setValid(false);
      localCommandInformation.setAssets(null);
    }
    label216: return localCommandInformation;
  }

  public final Map<String, List<Bookmark>> a(Set<String> paramSet)
    throws f
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      List localList = a(str);
      if ((localList == null) || (localList.size() <= 0))
        continue;
      localHashMap.put(str, localList);
    }
    return localHashMap;
  }

  public final void a()
    throws f
  {
    throw new f(f.a.c, "Update bookmarks is not supported for now!!!!");
  }

  public final void b(Bookmark paramBookmark)
    throws f
  {
    ContentResolver localContentResolver = this.a;
    Uri localUri = Browser.BOOKMARKS_URI;
    long l = paramBookmark.getId();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(l);
    localContentResolver.delete(localUri, "_id=?", arrayOfString);
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.apperhand.device.android.a.b
 * JD-Core Version:    0.5.3
 */