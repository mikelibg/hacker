package com.millennialmedia.android;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONArray;

class MMFileManager extends MMJSObject
{
  static final String CREATIVE_CACHE_DIR = "creativecache";
  private boolean isExternal;
  private boolean isInitialized;
  private File root;

  static void cleanupCache(Context paramContext, boolean paramBoolean)
  {
    File localFile;
    label63: long l;
    try
    {
      if (Environment.getExternalStorageState().equals("mounted"))
      {
        localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + "creativecache" + "/");
        boolean bool = localFile.exists();
        if (bool)
        {
          if (!(paramBoolean))
            break label105;
          l = 0L;
        }
      }
    }
    catch (Exception localException)
    {
      try
      {
        while (true)
        {
          cleanupDirectory(localFile, l);
          return;
          localFile = new File(paramContext.getCacheDir(), "creativecache/");
          break label63:
          label105: l = HandShake.sharedHandShake(paramContext).creativeCacheTimeout;
        }
        localException = localException;
      }
      catch (SecurityException localSecurityException)
      {
      }
    }
  }

  private static void cleanupDirectory(File paramFile, long paramLong)
    throws SecurityException
  {
    File[] arrayOfFile = paramFile.listFiles();
    int i = arrayOfFile.length;
    int j = 0;
    if (j >= i)
      label12: return;
    File localFile = arrayOfFile[j];
    if (localFile.isFile())
      if (System.currentTimeMillis() - localFile.lastModified() > paramLong)
        localFile.delete();
    while (true)
    {
      ++j;
      break label12:
      if (!(localFile.isDirectory()))
        continue;
      try
      {
        cleanupDirectory(localFile, paramLong);
        if (localFile.list().length == 0);
        localFile.delete();
      }
      catch (SecurityException localSecurityException)
      {
      }
    }
  }

  private boolean initialize()
  {
    if (!(this.isInitialized));
    try
    {
      Context localContext = (Context)this.contextRef.get();
      if (localContext != null)
      {
        boolean bool = Environment.getExternalStorageState().equals("mounted");
        this.isExternal = bool;
        if (!(bool))
          break label125;
      }
      for (this.root = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + ".mmsyscache" + "/" + "creativecache" + "/"); !(this.root.exists()); this.root = new File(localContext.getCacheDir(), "creativecache/"))
      {
        if (this.root.mkdirs())
          this.isInitialized = true;
        label125: return this.isInitialized;
      }
      this.isInitialized = true;
    }
    catch (Exception localException)
    {
    }
  }

  public MMJSResponse cleanupCache(HashMap<String, String> paramHashMap)
  {
    long l = 259200000L;
    if (initialize())
    {
      boolean bool1 = paramHashMap.containsKey("clear");
      boolean bool2 = false;
      if (bool1)
        bool2 = Boolean.parseBoolean((String)paramHashMap.get("clear"));
      if (!(bool2))
        break label58;
      l = 0L;
    }
    while (true)
      try
      {
        label56: label58: Context localContext;
        do
        {
          cleanupDirectory(this.root, l);
          return null;
          localContext = (Context)this.contextRef.get();
        }
        while (localContext == null);
        l = HandShake.sharedHandShake(localContext).creativeCacheTimeout;
      }
      catch (SecurityException localSecurityException)
      {
        break label56:
      }
  }

  // ERROR //
  public MMJSResponse downloadFile(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 142	com/millennialmedia/android/MMFileManager:initialize	()Z
    //   4: ifeq +214 -> 218
    //   7: aconst_null
    //   8: astore_3
    //   9: aconst_null
    //   10: astore 4
    //   12: aload_1
    //   13: ldc 161
    //   15: invokevirtual 149	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   18: ifeq +200 -> 218
    //   21: aload_1
    //   22: ldc 163
    //   24: invokevirtual 149	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   27: ifeq +191 -> 218
    //   30: new 165	java/net/URL
    //   33: dup
    //   34: aload_1
    //   35: ldc 163
    //   37: invokevirtual 152	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   40: checkcast 33	java/lang/String
    //   43: invokespecial 166	java/net/URL:<init>	(Ljava/lang/String;)V
    //   46: invokevirtual 170	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   49: checkcast 172	java/net/HttpURLConnection
    //   52: astore 4
    //   54: aload 4
    //   56: invokevirtual 176	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   59: astore 11
    //   61: sipush 4096
    //   64: newarray byte
    //   66: astore 12
    //   68: new 178	java/io/FileOutputStream
    //   71: dup
    //   72: new 39	java/io/File
    //   75: dup
    //   76: aload_0
    //   77: getfield 134	com/millennialmedia/android/MMFileManager:root	Ljava/io/File;
    //   80: aload_1
    //   81: ldc 161
    //   83: invokevirtual 152	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   86: checkcast 33	java/lang/String
    //   89: invokespecial 81	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   92: invokespecial 181	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   95: astore 13
    //   97: aload 11
    //   99: aload 12
    //   101: invokevirtual 187	java/io/InputStream:read	([B)I
    //   104: istore 15
    //   106: iload 15
    //   108: ifle +56 -> 164
    //   111: aload 13
    //   113: aload 12
    //   115: iconst_0
    //   116: iload 15
    //   118: invokevirtual 191	java/io/FileOutputStream:write	([BII)V
    //   121: goto -24 -> 97
    //   124: astore 14
    //   126: aload 13
    //   128: astore 6
    //   130: aload 4
    //   132: ifnull +8 -> 140
    //   135: aload 4
    //   137: invokevirtual 194	java/net/HttpURLConnection:disconnect	()V
    //   140: iconst_0
    //   141: istore 7
    //   143: aload 6
    //   145: ifnull +8 -> 153
    //   148: aload 6
    //   150: invokevirtual 197	java/io/FileOutputStream:close	()V
    //   153: iload 7
    //   155: ifeq +63 -> 218
    //   158: invokestatic 203	com/millennialmedia/android/MMJSResponse:responseWithSuccess	()Lcom/millennialmedia/android/MMJSResponse;
    //   161: astore_2
    //   162: aload_2
    //   163: areturn
    //   164: iconst_1
    //   165: istore 7
    //   167: aload 4
    //   169: ifnull +8 -> 177
    //   172: aload 4
    //   174: invokevirtual 194	java/net/HttpURLConnection:disconnect	()V
    //   177: aload 13
    //   179: ifnull +8 -> 187
    //   182: aload 13
    //   184: invokevirtual 197	java/io/FileOutputStream:close	()V
    //   187: goto -34 -> 153
    //   190: astore 16
    //   192: goto -39 -> 153
    //   195: astore 9
    //   197: aload 4
    //   199: ifnull +8 -> 207
    //   202: aload 4
    //   204: invokevirtual 194	java/net/HttpURLConnection:disconnect	()V
    //   207: aload_3
    //   208: ifnull +7 -> 215
    //   211: aload_3
    //   212: invokevirtual 197	java/io/FileOutputStream:close	()V
    //   215: aload 9
    //   217: athrow
    //   218: aconst_null
    //   219: astore_2
    //   220: goto -58 -> 162
    //   223: astore 8
    //   225: iconst_0
    //   226: istore 7
    //   228: goto -75 -> 153
    //   231: astore 10
    //   233: goto -18 -> 215
    //   236: astore 9
    //   238: aload 13
    //   240: astore_3
    //   241: goto -44 -> 197
    //   244: astore 5
    //   246: aconst_null
    //   247: astore 6
    //   249: goto -119 -> 130
    //
    // Exception table:
    //   from	to	target	type
    //   97	121	124	java/lang/Exception
    //   182	187	190	java/lang/Exception
    //   30	97	195	finally
    //   148	153	223	java/lang/Exception
    //   211	215	231	java/lang/Exception
    //   97	121	236	finally
    //   30	97	244	java/lang/Exception
  }

  public MMJSResponse getDirectoryContents(HashMap<String, String> paramHashMap)
  {
    MMJSResponse localMMJSResponse;
    if (initialize())
    {
      JSONArray localJSONArray = new JSONArray();
      String[] arrayOfString = this.root.list();
      int i = arrayOfString.length;
      for (int j = 0; j < i; ++j)
        localJSONArray.put(arrayOfString[j]);
      localMMJSResponse = new MMJSResponse();
      localMMJSResponse.result = 1;
      localMMJSResponse.response = localJSONArray;
    }
    while (true)
    {
      return localMMJSResponse;
      localMMJSResponse = null;
    }
  }

  // ERROR //
  public MMJSResponse getFileContents(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 142	com/millennialmedia/android/MMFileManager:initialize	()Z
    //   4: ifeq +146 -> 150
    //   7: aconst_null
    //   8: astore_3
    //   9: aload_1
    //   10: ldc 161
    //   12: invokevirtual 149	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   15: ifeq +135 -> 150
    //   18: new 39	java/io/File
    //   21: dup
    //   22: aload_0
    //   23: getfield 134	com/millennialmedia/android/MMFileManager:root	Ljava/io/File;
    //   26: aload_1
    //   27: ldc 161
    //   29: invokevirtual 152	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   32: checkcast 33	java/lang/String
    //   35: invokespecial 81	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   38: astore 4
    //   40: new 223	java/io/FileInputStream
    //   43: dup
    //   44: aload 4
    //   46: invokespecial 224	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   49: astore 5
    //   51: aload 4
    //   53: invokevirtual 227	java/io/File:length	()J
    //   56: l2i
    //   57: newarray byte
    //   59: astore 7
    //   61: aload 5
    //   63: aload 7
    //   65: invokevirtual 228	java/io/FileInputStream:read	([B)I
    //   68: pop
    //   69: aload 5
    //   71: ifnull +8 -> 79
    //   74: aload 5
    //   76: invokevirtual 229	java/io/FileInputStream:close	()V
    //   79: aload 7
    //   81: ifnull +69 -> 150
    //   84: new 199	com/millennialmedia/android/MMJSResponse
    //   87: dup
    //   88: invokespecial 212	com/millennialmedia/android/MMJSResponse:<init>	()V
    //   91: astore_2
    //   92: aload_2
    //   93: iconst_1
    //   94: putfield 216	com/millennialmedia/android/MMJSResponse:result	I
    //   97: aload_2
    //   98: aload 7
    //   100: putfield 233	com/millennialmedia/android/MMJSResponse:dataResponse	[B
    //   103: aload_2
    //   104: areturn
    //   105: astore 12
    //   107: goto -28 -> 79
    //   110: astore 13
    //   112: aconst_null
    //   113: astore 7
    //   115: aload_3
    //   116: ifnull -37 -> 79
    //   119: aload_3
    //   120: invokevirtual 229	java/io/FileInputStream:close	()V
    //   123: aconst_null
    //   124: astore 7
    //   126: goto -47 -> 79
    //   129: astore 8
    //   131: aconst_null
    //   132: astore 7
    //   134: goto -55 -> 79
    //   137: astore 9
    //   139: aload_3
    //   140: ifnull +7 -> 147
    //   143: aload_3
    //   144: invokevirtual 229	java/io/FileInputStream:close	()V
    //   147: aload 9
    //   149: athrow
    //   150: aconst_null
    //   151: astore_2
    //   152: goto -49 -> 103
    //   155: astore 10
    //   157: goto -10 -> 147
    //   160: astore 9
    //   162: aload 5
    //   164: astore_3
    //   165: goto -26 -> 139
    //   168: astore 6
    //   170: aload 5
    //   172: astore_3
    //   173: goto -61 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   74	79	105	java/lang/Exception
    //   18	51	110	java/lang/Exception
    //   119	123	129	java/lang/Exception
    //   18	51	137	finally
    //   143	147	155	java/lang/Exception
    //   51	69	160	finally
    //   51	69	168	java/lang/Exception
  }

  public MMJSResponse getFreeDiskSpace(HashMap<String, String> paramHashMap)
  {
    MMJSResponse localMMJSResponse;
    if (initialize())
    {
      localMMJSResponse = new MMJSResponse();
      localMMJSResponse.result = 1;
      StatFs localStatFs = new StatFs(this.root.getAbsolutePath());
      localMMJSResponse.response = new Long(localStatFs.getAvailableBlocks() * localStatFs.getBlockSize());
    }
    while (true)
    {
      return localMMJSResponse;
      localMMJSResponse = null;
    }
  }

  public MMJSResponse getMimeType(HashMap<String, String> paramHashMap)
  {
    MMJSResponse localMMJSResponse;
    if (initialize())
    {
      String[] arrayOfString = ((String)paramHashMap.get("path")).split("\\.");
      String str = MimeTypeMap.getSingleton().getMimeTypeFromExtension(arrayOfString[(-1 + arrayOfString.length)]);
      if (str != null)
      {
        localMMJSResponse = new MMJSResponse();
        localMMJSResponse.result = 1;
        localMMJSResponse.response = str;
      }
    }
    while (true)
    {
      return localMMJSResponse;
      localMMJSResponse = null;
    }
  }

  public MMJSResponse moveFile(HashMap<String, String> paramHashMap)
  {
    if (initialize());
    MMJSResponse localMMJSResponse1;
    try
    {
      String str1 = (String)paramHashMap.get("fromPath");
      String str2 = (String)paramHashMap.get("toPath");
      if ((str1 == null) || (str2 == null) || (!(new File(this.root, str1).renameTo(new File(this.root, str2)))))
        break label84;
      MMJSResponse localMMJSResponse2 = MMJSResponse.responseWithSuccess();
      localMMJSResponse1 = localMMJSResponse2;
      label84: return localMMJSResponse1;
    }
    catch (Exception localException)
    {
      localMMJSResponse1 = null;
    }
  }

  public MMJSResponse removeAtPath(HashMap<String, String> paramHashMap)
  {
    if (initialize());
    MMJSResponse localMMJSResponse1;
    try
    {
      String str = (String)paramHashMap.get("path");
      if ((str == null) || (!(new File(this.root, str).delete())))
        break label53;
      MMJSResponse localMMJSResponse2 = MMJSResponse.responseWithSuccess();
      localMMJSResponse1 = localMMJSResponse2;
      label53: return localMMJSResponse1;
    }
    catch (Exception localException)
    {
      localMMJSResponse1 = null;
    }
  }

  // ERROR //
  public MMJSResponse writeData(HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 142	com/millennialmedia/android/MMFileManager:initialize	()Z
    //   4: ifeq +148 -> 152
    //   7: aconst_null
    //   8: astore_3
    //   9: aload_1
    //   10: ldc 161
    //   12: invokevirtual 149	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   15: ifeq +137 -> 152
    //   18: aload_1
    //   19: ldc_w 279
    //   22: invokevirtual 149	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   25: ifeq +127 -> 152
    //   28: new 39	java/io/File
    //   31: dup
    //   32: aload_0
    //   33: getfield 134	com/millennialmedia/android/MMFileManager:root	Ljava/io/File;
    //   36: aload_1
    //   37: ldc 161
    //   39: invokevirtual 152	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   42: checkcast 33	java/lang/String
    //   45: invokespecial 81	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   48: astore 4
    //   50: aload_1
    //   51: ldc_w 279
    //   54: invokevirtual 152	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   57: checkcast 33	java/lang/String
    //   60: invokestatic 285	com/millennialmedia/android/Base64:decode	(Ljava/lang/String;)[B
    //   63: astore 10
    //   65: new 178	java/io/FileOutputStream
    //   68: dup
    //   69: aload 4
    //   71: invokespecial 181	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   74: astore 11
    //   76: aload 11
    //   78: aload 10
    //   80: invokevirtual 288	java/io/FileOutputStream:write	([B)V
    //   83: iconst_1
    //   84: istore 8
    //   86: aload 11
    //   88: ifnull +8 -> 96
    //   91: aload 11
    //   93: invokevirtual 197	java/io/FileOutputStream:close	()V
    //   96: iload 8
    //   98: ifeq +54 -> 152
    //   101: invokestatic 203	com/millennialmedia/android/MMJSResponse:responseWithSuccess	()Lcom/millennialmedia/android/MMJSResponse;
    //   104: astore_2
    //   105: aload_2
    //   106: areturn
    //   107: astore 13
    //   109: goto -13 -> 96
    //   112: astore 7
    //   114: iconst_0
    //   115: istore 8
    //   117: aload_3
    //   118: ifnull -22 -> 96
    //   121: aload_3
    //   122: invokevirtual 197	java/io/FileOutputStream:close	()V
    //   125: iconst_0
    //   126: istore 8
    //   128: goto -32 -> 96
    //   131: astore 9
    //   133: iconst_0
    //   134: istore 8
    //   136: goto -40 -> 96
    //   139: astore 5
    //   141: aload_3
    //   142: ifnull +7 -> 149
    //   145: aload_3
    //   146: invokevirtual 197	java/io/FileOutputStream:close	()V
    //   149: aload 5
    //   151: athrow
    //   152: aconst_null
    //   153: astore_2
    //   154: goto -49 -> 105
    //   157: astore 6
    //   159: goto -10 -> 149
    //   162: astore 5
    //   164: aload 11
    //   166: astore_3
    //   167: goto -26 -> 141
    //   170: astore 12
    //   172: aload 11
    //   174: astore_3
    //   175: goto -61 -> 114
    //
    // Exception table:
    //   from	to	target	type
    //   91	96	107	java/lang/Exception
    //   28	76	112	java/lang/Exception
    //   121	125	131	java/lang/Exception
    //   28	76	139	finally
    //   145	149	157	java/lang/Exception
    //   76	83	162	finally
    //   76	83	170	java/lang/Exception
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMFileManager
 * JD-Core Version:    0.5.3
 */