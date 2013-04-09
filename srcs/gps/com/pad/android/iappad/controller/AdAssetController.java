package com.pad.android.iappad.controller;

import android.content.Context;
import android.os.StatFs;
import com.pad.android.iappad.AdController;
import com.pad.android.richmedia.view.AdView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class AdAssetController extends AdController
{
  private static final char[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };

  public AdAssetController(AdView paramAdView, Context paramContext)
  {
    super(paramAdView, paramContext);
  }

  private String a()
  {
    return this.a.getFilesDir().getPath();
  }

  private static String a(String paramString1, String paramString2, String paramString3)
  {
    File localFile1 = new File(paramString2 + File.separator + paramString1);
    new File(paramString2 + File.separator + "ad").mkdir();
    File localFile2 = new File(paramString2 + File.separator + "ad" + File.separator + paramString3);
    localFile2.mkdir();
    localFile1.renameTo(new File(localFile2, localFile1.getName()));
    return localFile2.getPath() + File.separator;
  }

  private static String a(MessageDigest paramMessageDigest)
  {
    int i = 0;
    byte[] arrayOfByte = paramMessageDigest.digest();
    char[] arrayOfChar = new char[arrayOfByte.length << 1];
    for (int j = 0; ; ++j)
    {
      if (j >= arrayOfByte.length)
        return new String(arrayOfChar);
      int k = i + 1;
      arrayOfChar[i] = c[(0xF & arrayOfByte[j] >>> 4)];
      i = k + 1;
      arrayOfChar[k] = c[(0xF & arrayOfByte[j])];
    }
  }

  private static HttpEntity a(String paramString)
  {
    try
    {
      HttpEntity localHttpEntity = new DefaultHttpClient().execute(new HttpGet(paramString)).getEntity();
      return localHttpEntity;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private File b(String paramString)
  {
    return new File(this.a.getFilesDir().getPath() + File.separator + paramString);
  }

  private static String c(String paramString)
  {
    int i = paramString.lastIndexOf(File.separatorChar);
    String str = "/";
    if (i >= 0)
      str = paramString.substring(0, paramString.lastIndexOf(File.separatorChar));
    return str;
  }

  private static String d(String paramString)
  {
    if (paramString.lastIndexOf(File.separatorChar) >= 0)
      paramString = paramString.substring(1 + paramString.lastIndexOf(File.separatorChar));
    return paramString;
  }

  public static boolean deleteDirectory(File paramFile)
  {
    File[] arrayOfFile;
    int i;
    if (paramFile.exists())
    {
      arrayOfFile = paramFile.listFiles();
      i = 0;
      label14: if (i < arrayOfFile.length)
        break label25;
    }
    return paramFile.delete();
    if (arrayOfFile[i].isDirectory())
      label25: deleteDirectory(arrayOfFile[i]);
    while (true)
    {
      ++i;
      break label14:
      arrayOfFile[i].delete();
    }
  }

  public static boolean deleteDirectory(String paramString)
  {
    if (paramString != null)
      return deleteDirectory(new File(paramString));
    return false;
  }

  // ERROR //
  public void addAsset(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 161	com/pad/android/iappad/controller/AdAssetController:a	(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_3
    //   9: invokeinterface 167 1 0
    //   14: astore 4
    //   16: aload_0
    //   17: aload 4
    //   19: aload_1
    //   20: iconst_0
    //   21: invokevirtual 171	com/pad/android/iappad/controller/AdAssetController:writeToDisk	(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    //   24: pop
    //   25: new 49	java/lang/StringBuilder
    //   28: dup
    //   29: ldc 173
    //   31: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   34: aload_1
    //   35: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 175
    //   40: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: astore 11
    //   48: aload_0
    //   49: getfield 178	com/pad/android/iappad/controller/AdAssetController:b	Lcom/pad/android/richmedia/view/AdView;
    //   52: aload 11
    //   54: invokevirtual 183	com/pad/android/richmedia/view/AdView:injectJavaScript	(Ljava/lang/String;)V
    //   57: aload 4
    //   59: ifnull +8 -> 67
    //   62: aload 4
    //   64: invokevirtual 188	java/io/InputStream:close	()V
    //   67: aload_3
    //   68: invokeinterface 191 1 0
    //   73: return
    //   74: astore 7
    //   76: aload 7
    //   78: invokevirtual 119	java/lang/Exception:printStackTrace	()V
    //   81: aload 4
    //   83: ifnull -16 -> 67
    //   86: aload 4
    //   88: invokevirtual 188	java/io/InputStream:close	()V
    //   91: goto -24 -> 67
    //   94: astore 8
    //   96: goto -29 -> 67
    //   99: astore 5
    //   101: aload 4
    //   103: ifnull +8 -> 111
    //   106: aload 4
    //   108: invokevirtual 188	java/io/InputStream:close	()V
    //   111: aload 5
    //   113: athrow
    //   114: astore 9
    //   116: aload 9
    //   118: invokevirtual 119	java/lang/Exception:printStackTrace	()V
    //   121: return
    //   122: astore 6
    //   124: goto -13 -> 111
    //   127: astore 12
    //   129: goto -62 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   8	57	74	java/lang/Exception
    //   86	91	94	java/lang/Exception
    //   8	57	99	finally
    //   76	81	99	finally
    //   67	73	114	java/lang/Exception
    //   106	111	122	java/lang/Exception
    //   62	67	127	java/lang/Exception
  }

  public int cacheRemaining()
  {
    StatFs localStatFs = new StatFs(this.a.getFilesDir().getPath());
    return (localStatFs.getFreeBlocks() * localStatFs.getBlockSize());
  }

  // ERROR //
  public String copyTextFromJarIntoAssetDir(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 2
    //   2: invokevirtual 210	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   5: aload_2
    //   6: invokevirtual 216	java/lang/ClassLoader:getResource	(Ljava/lang/String;)Ljava/net/URL;
    //   9: invokevirtual 221	java/net/URL:getFile	()Ljava/lang/String;
    //   12: astore 10
    //   14: aload 10
    //   16: ldc 223
    //   18: invokevirtual 226	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   21: ifeq +11 -> 32
    //   24: aload 10
    //   26: iconst_5
    //   27: invokevirtual 140	java/lang/String:substring	(I)Ljava/lang/String;
    //   30: astore 10
    //   32: aload 10
    //   34: ldc 228
    //   36: invokevirtual 232	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   39: istore 11
    //   41: iload 11
    //   43: ifle +13 -> 56
    //   46: aload 10
    //   48: iconst_0
    //   49: iload 11
    //   51: invokevirtual 136	java/lang/String:substring	(II)Ljava/lang/String;
    //   54: astore 10
    //   56: new 234	java/util/jar/JarFile
    //   59: dup
    //   60: aload 10
    //   62: invokespecial 235	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   65: astore 12
    //   67: aload 12
    //   69: aload 12
    //   71: aload_2
    //   72: invokevirtual 239	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   75: invokevirtual 243	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   78: astore 13
    //   80: aload 13
    //   82: astore 4
    //   84: aload_0
    //   85: aload 4
    //   87: aload_1
    //   88: iconst_0
    //   89: invokevirtual 171	com/pad/android/iappad/controller/AdAssetController:writeToDisk	(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    //   92: astore 14
    //   94: aload 14
    //   96: astore 8
    //   98: aload 4
    //   100: ifnull +8 -> 108
    //   103: aload 4
    //   105: invokevirtual 188	java/io/InputStream:close	()V
    //   108: aload 8
    //   110: areturn
    //   111: astore 7
    //   113: aconst_null
    //   114: astore 4
    //   116: aload 7
    //   118: invokevirtual 119	java/lang/Exception:printStackTrace	()V
    //   121: aconst_null
    //   122: astore 8
    //   124: aload 4
    //   126: ifnull -18 -> 108
    //   129: aload 4
    //   131: invokevirtual 188	java/io/InputStream:close	()V
    //   134: aconst_null
    //   135: areturn
    //   136: astore 9
    //   138: aconst_null
    //   139: areturn
    //   140: astore_3
    //   141: aconst_null
    //   142: astore 4
    //   144: aload_3
    //   145: astore 5
    //   147: aload 4
    //   149: ifnull +8 -> 157
    //   152: aload 4
    //   154: invokevirtual 188	java/io/InputStream:close	()V
    //   157: aload 5
    //   159: athrow
    //   160: astore 15
    //   162: aload 8
    //   164: areturn
    //   165: astore 6
    //   167: goto -10 -> 157
    //   170: astore 5
    //   172: goto -25 -> 147
    //   175: astore 7
    //   177: goto -61 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   0	32	111	java/lang/Exception
    //   32	41	111	java/lang/Exception
    //   46	56	111	java/lang/Exception
    //   56	80	111	java/lang/Exception
    //   129	134	136	java/lang/Exception
    //   0	32	140	finally
    //   32	41	140	finally
    //   46	56	140	finally
    //   56	80	140	finally
    //   103	108	160	java/lang/Exception
    //   152	157	165	java/lang/Exception
    //   84	94	170	finally
    //   116	121	170	finally
    //   84	94	175	java/lang/Exception
  }

  public void deleteOldAds()
  {
    deleteDirectory(new File(a() + File.separator + "ad"));
  }

  public FileOutputStream getAssetOutputString(String paramString)
  {
    File localFile = b(c(paramString));
    localFile.mkdirs();
    return new FileOutputStream(new File(localFile, d(paramString)));
  }

  public String getAssetPath()
  {
    return "file://" + this.a.getFilesDir() + "/";
  }

  public void removeAsset(String paramString)
  {
    File localFile = b(c(paramString));
    localFile.mkdirs();
    new File(localFile, d(paramString)).delete();
    String str = "AdOrmmaAdController.assetRemoved('" + paramString + "' )";
    this.b.injectJavaScript(str);
  }

  public void stopAllListeners()
  {
  }

  // ERROR //
  public String writeHTMLToDiskWrap(String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4, String paramString5)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: new 282	java/lang/StringBuffer
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 283	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   11: astore 8
    //   13: iload_3
    //   14: ifeq +194 -> 208
    //   17: ldc_w 285
    //   20: invokestatic 289	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   23: astore 25
    //   25: aload 25
    //   27: astore 9
    //   29: aload_1
    //   30: ifnull +105 -> 135
    //   33: aload_1
    //   34: ldc_w 291
    //   37: invokevirtual 295	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   40: ifne +95 -> 135
    //   43: aload 8
    //   45: ldc_w 297
    //   48: invokevirtual 298	java/lang/StringBuffer:indexOf	(Ljava/lang/String;)I
    //   51: istore 22
    //   53: iload 22
    //   55: ifle +34 -> 89
    //   58: aload 8
    //   60: iload 22
    //   62: iload 22
    //   64: bipush 8
    //   66: iadd
    //   67: new 49	java/lang/StringBuilder
    //   70: dup
    //   71: ldc_w 265
    //   74: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   77: aload 6
    //   79: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokevirtual 302	java/lang/StringBuffer:replace	(IILjava/lang/String;)Ljava/lang/StringBuffer;
    //   88: pop
    //   89: aload 8
    //   91: ldc_w 304
    //   94: invokevirtual 298	java/lang/StringBuffer:indexOf	(Ljava/lang/String;)I
    //   97: istore 20
    //   99: iload 20
    //   101: ifle +34 -> 135
    //   104: aload 8
    //   106: iload 20
    //   108: iload 20
    //   110: bipush 8
    //   112: iadd
    //   113: new 49	java/lang/StringBuilder
    //   116: dup
    //   117: ldc_w 265
    //   120: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload 6
    //   125: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokevirtual 302	java/lang/StringBuffer:replace	(IILjava/lang/String;)Ljava/lang/StringBuffer;
    //   134: pop
    //   135: aload_0
    //   136: aload_2
    //   137: invokevirtual 306	com/pad/android/iappad/controller/AdAssetController:getAssetOutputString	(Ljava/lang/String;)Ljava/io/FileOutputStream;
    //   140: astore 7
    //   142: aload 7
    //   144: aload 8
    //   146: invokevirtual 307	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   149: invokevirtual 310	java/lang/String:getBytes	()[B
    //   152: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   155: aload 7
    //   157: invokevirtual 317	java/io/FileOutputStream:flush	()V
    //   160: aload 7
    //   162: ifnull +8 -> 170
    //   165: aload 7
    //   167: invokevirtual 318	java/io/FileOutputStream:close	()V
    //   170: aload_0
    //   171: invokespecial 246	com/pad/android/iappad/controller/AdAssetController:a	()Ljava/lang/String;
    //   174: astore 14
    //   176: iload_3
    //   177: ifeq +21 -> 198
    //   180: aload 9
    //   182: ifnull +16 -> 198
    //   185: aload_2
    //   186: aload 14
    //   188: aload 9
    //   190: invokestatic 320	com/pad/android/iappad/controller/AdAssetController:a	(Ljava/security/MessageDigest;)Ljava/lang/String;
    //   193: invokestatic 322	com/pad/android/iappad/controller/AdAssetController:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   196: astore 14
    //   198: aload 14
    //   200: areturn
    //   201: astore 24
    //   203: aload 24
    //   205: invokevirtual 323	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   208: aconst_null
    //   209: astore 9
    //   211: goto -182 -> 29
    //   214: astore 18
    //   216: ldc_w 325
    //   219: aload 18
    //   221: invokestatic 330	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   224: goto -135 -> 89
    //   227: astore 19
    //   229: ldc_w 325
    //   232: aload 19
    //   234: invokestatic 330	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   237: goto -102 -> 135
    //   240: astore 15
    //   242: aload 15
    //   244: invokevirtual 331	java/io/FileNotFoundException:printStackTrace	()V
    //   247: aload 7
    //   249: ifnull -79 -> 170
    //   252: aload 7
    //   254: invokevirtual 318	java/io/FileOutputStream:close	()V
    //   257: goto -87 -> 170
    //   260: astore 16
    //   262: goto -92 -> 170
    //   265: astore 12
    //   267: aload 12
    //   269: invokevirtual 332	java/io/IOException:printStackTrace	()V
    //   272: aload 7
    //   274: ifnull -104 -> 170
    //   277: aload 7
    //   279: invokevirtual 318	java/io/FileOutputStream:close	()V
    //   282: goto -112 -> 170
    //   285: astore 13
    //   287: goto -117 -> 170
    //   290: astore 10
    //   292: aload 7
    //   294: ifnull +8 -> 302
    //   297: aload 7
    //   299: invokevirtual 318	java/io/FileOutputStream:close	()V
    //   302: aload 10
    //   304: athrow
    //   305: astore 11
    //   307: goto -5 -> 302
    //   310: astore 17
    //   312: goto -142 -> 170
    //
    // Exception table:
    //   from	to	target	type
    //   17	25	201	java/security/NoSuchAlgorithmException
    //   43	53	214	java/lang/Exception
    //   58	89	214	java/lang/Exception
    //   89	99	227	java/lang/Exception
    //   104	135	227	java/lang/Exception
    //   135	160	240	java/io/FileNotFoundException
    //   252	257	260	java/lang/Exception
    //   135	160	265	java/io/IOException
    //   277	282	285	java/lang/Exception
    //   135	160	290	finally
    //   242	247	290	finally
    //   267	272	290	finally
    //   297	302	305	java/lang/Exception
    //   165	170	310	java/lang/Exception
  }

  public String writeToDisk(InputStream paramInputStream, String paramString, boolean paramBoolean)
  {
    FileOutputStream localFileOutputStream = null;
    byte[] arrayOfByte = new byte[1024];
    if (paramBoolean);
    MessageDigest localMessageDigest1;
    try
    {
      MessageDigest localMessageDigest2 = MessageDigest.getInstance("MD5");
      label146: label26: label176: label103: label118: localMessageDigest1 = localMessageDigest2;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      int i;
      try
      {
        localFileOutputStream = getAssetOutputString(paramString);
        i = paramInputStream.read(arrayOfByte);
        if (i <= 0)
          break label103;
        if ((!(paramBoolean)) || (localMessageDigest1 == null));
      }
      finally
      {
        if (localFileOutputStream != null);
        try
        {
          localFileOutputStream.close();
          throw localObject;
          localNoSuchAlgorithmException = localNoSuchAlgorithmException;
          localNoSuchAlgorithmException.printStackTrace();
          localMessageDigest1 = null;
          break label26:
          localFileOutputStream.flush();
          if (localFileOutputStream == null);
        }
        catch (Exception localException1)
        {
          String str1;
          String str2;
          try
          {
            localFileOutputStream.close();
            str1 = a();
            if ((!(paramBoolean)) || (localMessageDigest1 == null))
              break label176;
            str2 = a(paramString, str1, a(localMessageDigest1));
            return str2 + paramString;
            localException1 = localException1;
          }
          catch (Exception localException2)
          {
            break label118:
            str2 = str1;
            break label146:
          }
        }
      }
    }
  }

  // ERROR //
  public String writeToDiskWrap(InputStream paramInputStream, String paramString1, boolean paramBoolean, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: sipush 1024
    //   6: newarray byte
    //   8: astore 8
    //   10: iload_3
    //   11: ifeq +96 -> 107
    //   14: ldc_w 285
    //   17: invokestatic 289	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   20: astore 31
    //   22: aload 31
    //   24: astore 9
    //   26: new 346	java/io/ByteArrayOutputStream
    //   29: dup
    //   30: invokespecial 347	java/io/ByteArrayOutputStream:<init>	()V
    //   33: astore 10
    //   35: aload_1
    //   36: aload 8
    //   38: invokevirtual 336	java/io/InputStream:read	([B)I
    //   41: istore 14
    //   43: iload 14
    //   45: ifle +68 -> 113
    //   48: iload_3
    //   49: ifeq +18 -> 67
    //   52: aconst_null
    //   53: astore 7
    //   55: aload 9
    //   57: ifnull +10 -> 67
    //   60: aload 9
    //   62: aload 8
    //   64: invokevirtual 339	java/security/MessageDigest:update	([B)V
    //   67: aload 10
    //   69: aload 8
    //   71: iconst_0
    //   72: iload 14
    //   74: invokevirtual 348	java/io/ByteArrayOutputStream:write	([BII)V
    //   77: goto -42 -> 35
    //   80: astore 11
    //   82: aload 10
    //   84: invokevirtual 349	java/io/ByteArrayOutputStream:close	()V
    //   87: aload 7
    //   89: ifnull +8 -> 97
    //   92: aload 7
    //   94: invokevirtual 318	java/io/FileOutputStream:close	()V
    //   97: aload 11
    //   99: athrow
    //   100: astore 30
    //   102: aload 30
    //   104: invokevirtual 323	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   107: aconst_null
    //   108: astore 9
    //   110: goto -84 -> 26
    //   113: aload 10
    //   115: invokevirtual 350	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   118: astore 15
    //   120: aload 15
    //   122: ldc_w 352
    //   125: invokevirtual 232	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   128: iflt +469 -> 597
    //   131: iconst_1
    //   132: istore 16
    //   134: ldc_w 354
    //   137: new 49	java/lang/StringBuilder
    //   140: dup
    //   141: aload 15
    //   143: invokestatic 55	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   146: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: ldc_w 356
    //   152: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: iload 16
    //   157: invokevirtual 359	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   160: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: invokestatic 364	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   166: pop
    //   167: aconst_null
    //   168: astore 7
    //   170: iload 16
    //   172: ifeq +496 -> 668
    //   175: new 282	java/lang/StringBuffer
    //   178: dup
    //   179: aload 15
    //   181: invokespecial 283	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   184: astore 18
    //   186: aload 18
    //   188: ldc_w 297
    //   191: invokevirtual 298	java/lang/StringBuffer:indexOf	(Ljava/lang/String;)I
    //   194: istore 28
    //   196: iload 28
    //   198: ifle +34 -> 232
    //   201: aload 18
    //   203: iload 28
    //   205: iload 28
    //   207: bipush 8
    //   209: iadd
    //   210: new 49	java/lang/StringBuilder
    //   213: dup
    //   214: ldc_w 265
    //   217: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   220: aload 6
    //   222: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokevirtual 302	java/lang/StringBuffer:replace	(IILjava/lang/String;)Ljava/lang/StringBuffer;
    //   231: pop
    //   232: aload 18
    //   234: ldc_w 304
    //   237: invokevirtual 298	java/lang/StringBuffer:indexOf	(Ljava/lang/String;)I
    //   240: istore 26
    //   242: iload 26
    //   244: ifle +430 -> 674
    //   247: aload 18
    //   249: iload 26
    //   251: iload 26
    //   253: bipush 8
    //   255: iadd
    //   256: new 49	java/lang/StringBuilder
    //   259: dup
    //   260: ldc_w 265
    //   263: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload 6
    //   268: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokevirtual 302	java/lang/StringBuffer:replace	(IILjava/lang/String;)Ljava/lang/StringBuffer;
    //   277: pop
    //   278: aload 18
    //   280: astore 21
    //   282: ldc_w 366
    //   285: new 49	java/lang/StringBuilder
    //   288: dup
    //   289: ldc_w 368
    //   292: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   295: aload 21
    //   297: invokevirtual 268	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   300: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   303: invokestatic 364	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   306: pop
    //   307: aload_0
    //   308: aload_2
    //   309: invokevirtual 306	com/pad/android/iappad/controller/AdAssetController:getAssetOutputString	(Ljava/lang/String;)Ljava/io/FileOutputStream;
    //   312: astore 7
    //   314: iload 16
    //   316: ifne +181 -> 497
    //   319: aload 7
    //   321: ldc_w 370
    //   324: invokevirtual 310	java/lang/String:getBytes	()[B
    //   327: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   330: aload 7
    //   332: ldc_w 372
    //   335: invokevirtual 310	java/lang/String:getBytes	()[B
    //   338: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   341: aload 7
    //   343: ldc_w 374
    //   346: invokevirtual 310	java/lang/String:getBytes	()[B
    //   349: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   352: aload 7
    //   354: ldc_w 376
    //   357: invokevirtual 310	java/lang/String:getBytes	()[B
    //   360: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   363: aload 7
    //   365: new 49	java/lang/StringBuilder
    //   368: dup
    //   369: ldc_w 378
    //   372: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   375: aload 5
    //   377: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: ldc_w 380
    //   383: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   386: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: invokevirtual 310	java/lang/String:getBytes	()[B
    //   392: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   395: aload 7
    //   397: new 49	java/lang/StringBuilder
    //   400: dup
    //   401: ldc_w 378
    //   404: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   407: aload 6
    //   409: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: ldc_w 380
    //   415: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   421: invokevirtual 310	java/lang/String:getBytes	()[B
    //   424: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   427: aload 4
    //   429: ifnull +35 -> 464
    //   432: aload 7
    //   434: ldc_w 382
    //   437: invokevirtual 310	java/lang/String:getBytes	()[B
    //   440: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   443: aload 7
    //   445: aload 4
    //   447: invokevirtual 310	java/lang/String:getBytes	()[B
    //   450: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   453: aload 7
    //   455: ldc_w 384
    //   458: invokevirtual 310	java/lang/String:getBytes	()[B
    //   461: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   464: aload 7
    //   466: ldc_w 386
    //   469: invokevirtual 310	java/lang/String:getBytes	()[B
    //   472: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   475: aload 7
    //   477: ldc_w 388
    //   480: invokevirtual 310	java/lang/String:getBytes	()[B
    //   483: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   486: aload 7
    //   488: ldc_w 390
    //   491: invokevirtual 310	java/lang/String:getBytes	()[B
    //   494: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   497: iload 16
    //   499: ifne +130 -> 629
    //   502: aload 7
    //   504: aload 10
    //   506: invokevirtual 393	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   509: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   512: iload 16
    //   514: ifne +36 -> 550
    //   517: aload 7
    //   519: ldc_w 395
    //   522: invokevirtual 310	java/lang/String:getBytes	()[B
    //   525: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   528: aload 7
    //   530: ldc_w 397
    //   533: invokevirtual 310	java/lang/String:getBytes	()[B
    //   536: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   539: aload 7
    //   541: ldc_w 399
    //   544: invokevirtual 310	java/lang/String:getBytes	()[B
    //   547: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   550: aload 7
    //   552: invokevirtual 317	java/io/FileOutputStream:flush	()V
    //   555: aload 10
    //   557: invokevirtual 349	java/io/ByteArrayOutputStream:close	()V
    //   560: aload 7
    //   562: ifnull +8 -> 570
    //   565: aload 7
    //   567: invokevirtual 318	java/io/FileOutputStream:close	()V
    //   570: aload_0
    //   571: invokespecial 246	com/pad/android/iappad/controller/AdAssetController:a	()Ljava/lang/String;
    //   574: astore 24
    //   576: iload_3
    //   577: ifeq +88 -> 665
    //   580: aload 9
    //   582: ifnull +83 -> 665
    //   585: aload_2
    //   586: aload 24
    //   588: aload 9
    //   590: invokestatic 320	com/pad/android/iappad/controller/AdAssetController:a	(Ljava/security/MessageDigest;)Ljava/lang/String;
    //   593: invokestatic 322	com/pad/android/iappad/controller/AdAssetController:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   596: areturn
    //   597: iconst_0
    //   598: istore 16
    //   600: goto -466 -> 134
    //   603: astore 19
    //   605: ldc_w 325
    //   608: aload 19
    //   610: invokestatic 330	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   613: goto -381 -> 232
    //   616: astore 20
    //   618: ldc_w 325
    //   621: aload 20
    //   623: invokestatic 330	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   626: goto +48 -> 674
    //   629: aload 7
    //   631: aload 21
    //   633: invokevirtual 307	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   636: invokevirtual 310	java/lang/String:getBytes	()[B
    //   639: invokevirtual 314	java/io/FileOutputStream:write	([B)V
    //   642: goto -130 -> 512
    //   645: astore 12
    //   647: goto -560 -> 87
    //   650: astore 13
    //   652: goto -555 -> 97
    //   655: astore 23
    //   657: goto -97 -> 560
    //   660: astore 25
    //   662: goto -92 -> 570
    //   665: aload 24
    //   667: areturn
    //   668: aconst_null
    //   669: astore 21
    //   671: goto -389 -> 282
    //   674: aload 18
    //   676: astore 21
    //   678: goto -396 -> 282
    //
    // Exception table:
    //   from	to	target	type
    //   35	43	80	finally
    //   60	67	80	finally
    //   67	77	80	finally
    //   113	131	80	finally
    //   134	167	80	finally
    //   175	186	80	finally
    //   186	196	80	finally
    //   201	232	80	finally
    //   232	242	80	finally
    //   247	278	80	finally
    //   282	314	80	finally
    //   319	427	80	finally
    //   432	464	80	finally
    //   464	497	80	finally
    //   502	512	80	finally
    //   517	550	80	finally
    //   550	555	80	finally
    //   605	613	80	finally
    //   618	626	80	finally
    //   629	642	80	finally
    //   14	22	100	java/security/NoSuchAlgorithmException
    //   186	196	603	java/lang/Exception
    //   201	232	603	java/lang/Exception
    //   232	242	616	java/lang/Exception
    //   247	278	616	java/lang/Exception
    //   82	87	645	java/lang/Exception
    //   92	97	650	java/lang/Exception
    //   555	560	655	java/lang/Exception
    //   565	570	660	java/lang/Exception
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.iappad.controller.AdAssetController
 * JD-Core Version:    0.5.3
 */