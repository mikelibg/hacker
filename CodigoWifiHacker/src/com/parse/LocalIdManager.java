package com.parse;

import java.io.File;
import java.io.IOException;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;

class LocalIdManager
{
  private static LocalIdManager defaultInstance;
  private File diskPath = new File(Parse.getParseDir(), "LocalId");
  private Random random;

  private LocalIdManager()
  {
    this.diskPath.mkdirs();
    this.random = new Random();
  }

  public static LocalIdManager getDefaultInstance()
  {
    monitorenter;
    try
    {
      if (defaultInstance == null)
        defaultInstance = new LocalIdManager();
      LocalIdManager localLocalIdManager = defaultInstance;
      monitorexit;
      return localLocalIdManager;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  private MapEntry getMapEntry(String paramString)
  {
    monitorenter;
    try
    {
      throw new IllegalStateException("Tried to get invalid local id: \"" + paramString + "\".");
    }
    finally
    {
      monitorexit;
    }
    File localFile = new File(this.diskPath, paramString);
    MapEntry localMapEntry;
    if (!(localFile.exists()))
      localMapEntry = new MapEntry(null);
    while (true)
    {
      monitorexit;
      return localMapEntry;
      JSONObject localJSONObject = ParseObject.getDiskObject(localFile);
      localMapEntry = new MapEntry(null);
      localMapEntry.retainCount = localJSONObject.optInt("retainCount", 0);
      localMapEntry.objectId = localJSONObject.optString("objectId", null);
    }
  }

  private boolean isLocalId(String paramString)
  {
    boolean bool = paramString.startsWith("local_");
    int i = 0;
    if (!(bool));
    while (true)
    {
      return i;
      for (int j = 6; j < paramString.length(); ++j)
      {
        int k = paramString.charAt(j);
        if ((k >= 48) && (k <= 57))
          continue;
        i = 0;
        if (k >= 97);
        i = 0;
        if (k > 102);
      }
      i = 1;
    }
  }

  private void putMapEntry(String paramString, MapEntry paramMapEntry)
  {
    monitorenter;
    try
    {
      throw new IllegalStateException("Tried to get invalid local id: \"" + paramString + "\".");
    }
    finally
    {
      monitorexit;
    }
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("retainCount", paramMapEntry.retainCount);
      if (paramMapEntry.objectId != null)
        localJSONObject.put("objectId", paramMapEntry.objectId);
      File localFile = new File(this.diskPath, paramString);
      if (!(this.diskPath.exists()))
        this.diskPath.mkdirs();
      ParseObject.saveDiskObject(localFile, localJSONObject);
      monitorexit;
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new IllegalStateException("Error creating local id map entry.", localJSONException);
    }
  }

  private void removeMapEntry(String paramString)
  {
    monitorenter;
    try
    {
      throw new IllegalStateException("Tried to get invalid local id: \"" + paramString + "\".");
    }
    finally
    {
      monitorexit;
    }
    new File(this.diskPath, paramString).delete();
    monitorexit;
  }

  boolean clear()
    throws IOException
  {
    monitorenter;
    while (true)
    {
      int l;
      try
      {
        String[] arrayOfString = this.diskPath.list();
        i = 0;
        if (arrayOfString == null);
        int j;
        do
        {
          return i;
          j = arrayOfString.length;
          i = 0;
        }
        while (j == 0);
        int k = arrayOfString.length;
        l = 0;
        if (l >= k)
          break label114;
        String str = arrayOfString[l];
        throw new IOException("Unable to delete file " + str + " in localId cache.");
      }
      finally
      {
        monitorexit;
      }
      ++l;
      continue;
      label114: int i = 1;
    }
  }

  String createLocalId()
  {
    monitorenter;
    String str;
    try
    {
      long l = this.random.nextLong();
      str = "local_" + Long.toHexString(l);
      if (!(isLocalId(str)))
        throw new IllegalStateException("Generated an invalid local id: \"" + str + "\". " + "This should never happen. Please email feedback@parse.com");
    }
    finally
    {
      monitorexit;
    }
    monitorexit;
    return str;
  }

  String getObjectId(String paramString)
  {
    monitorenter;
    try
    {
      String str = getMapEntry(paramString).objectId;
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  void releaseLocalIdOnDisk(String paramString)
  {
    monitorenter;
    try
    {
      MapEntry localMapEntry = getMapEntry(paramString);
      localMapEntry.retainCount = (-1 + localMapEntry.retainCount);
      if (localMapEntry.retainCount > 0)
      {
        putMapEntry(paramString, localMapEntry);
        return;
      }
    }
    finally
    {
      monitorexit;
    }
  }

  void retainLocalIdOnDisk(String paramString)
  {
    monitorenter;
    try
    {
      MapEntry localMapEntry = getMapEntry(paramString);
      localMapEntry.retainCount = (1 + localMapEntry.retainCount);
      putMapEntry(paramString, localMapEntry);
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
      throw localObject;
    }
  }

  void setObjectId(String paramString1, String paramString2)
  {
    monitorenter;
    MapEntry localMapEntry;
    try
    {
      localMapEntry = getMapEntry(paramString1);
      if (localMapEntry.retainCount <= 0)
        break label53;
      throw new IllegalStateException("Tried to set an objectId for a localId that already has one.");
    }
    finally
    {
      monitorexit;
    }
    localMapEntry.objectId = paramString2;
    putMapEntry(paramString1, localMapEntry);
    label53: monitorexit;
  }

  private class MapEntry
  {
    String objectId;
    int retainCount;
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.parse.LocalIdManager
 * JD-Core Version:    0.5.3
 */