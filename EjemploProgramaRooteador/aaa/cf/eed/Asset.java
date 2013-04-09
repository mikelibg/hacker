package aaa.cf.eed;

import android.content.Context;
import java.io.File;

public class Asset
{
  public static String assetFolder(Context paramContext)
  {
    return paramContext.getFilesDir() + File.separator;
  }

  // ERROR //
  public static String extractAssetToFile(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: astore_2
    //   2: aload_2
    //   3: ldc 42
    //   5: invokevirtual 48	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   8: iconst_m1
    //   9: if_icmpgt +75 -> 84
    //   12: new 12	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   19: aload_0
    //   20: invokevirtual 19	android/content/Context:getFilesDir	()Ljava/io/File;
    //   23: invokevirtual 23	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   26: getstatic 29	java/io/File:separator	Ljava/lang/String;
    //   29: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload_2
    //   33: invokevirtual 32	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 36	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: astore 4
    //   41: new 25	java/io/File
    //   44: dup
    //   45: aload 4
    //   47: invokespecial 51	java/io/File:<init>	(Ljava/lang/String;)V
    //   50: astore 5
    //   52: aload 5
    //   54: invokevirtual 55	java/io/File:exists	()Z
    //   57: ifeq +9 -> 66
    //   60: aload 5
    //   62: invokevirtual 58	java/io/File:delete	()Z
    //   65: pop
    //   66: new 25	java/io/File
    //   69: dup
    //   70: aload 4
    //   72: invokespecial 51	java/io/File:<init>	(Ljava/lang/String;)V
    //   75: invokevirtual 55	java/io/File:exists	()Z
    //   78: ifeq +22 -> 100
    //   81: aload 4
    //   83: areturn
    //   84: aload_2
    //   85: iconst_1
    //   86: aload_2
    //   87: ldc 42
    //   89: invokevirtual 48	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   92: iadd
    //   93: invokevirtual 62	java/lang/String:substring	(I)Ljava/lang/String;
    //   96: astore_2
    //   97: goto -95 -> 2
    //   100: aload_0
    //   101: invokevirtual 66	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   104: aload_1
    //   105: invokevirtual 72	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   108: astore 6
    //   110: new 74	java/io/FileOutputStream
    //   113: dup
    //   114: aload 4
    //   116: invokespecial 75	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   119: astore 7
    //   121: sipush 4096
    //   124: newarray byte
    //   126: astore 9
    //   128: aload 6
    //   130: invokevirtual 81	java/io/InputStream:available	()I
    //   133: istore 10
    //   135: iload 10
    //   137: ifgt +24 -> 161
    //   140: aload 7
    //   142: invokevirtual 84	java/io/FileOutputStream:close	()V
    //   145: aload 6
    //   147: invokevirtual 85	java/io/InputStream:close	()V
    //   150: aload 4
    //   152: areturn
    //   153: astore_3
    //   154: aload_3
    //   155: invokevirtual 88	java/lang/Exception:printStackTrace	()V
    //   158: ldc 90
    //   160: areturn
    //   161: aload 7
    //   163: aload 9
    //   165: iconst_0
    //   166: aload 6
    //   168: aload 9
    //   170: iconst_0
    //   171: sipush 4096
    //   174: invokevirtual 94	java/io/InputStream:read	([BII)I
    //   177: invokevirtual 98	java/io/FileOutputStream:write	([BII)V
    //   180: goto -52 -> 128
    //   183: astore 8
    //   185: aload 7
    //   187: invokevirtual 84	java/io/FileOutputStream:close	()V
    //   190: aload 6
    //   192: invokevirtual 85	java/io/InputStream:close	()V
    //   195: aload 8
    //   197: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	66	153	java/lang/Exception
    //   66	81	153	java/lang/Exception
    //   84	97	153	java/lang/Exception
    //   100	121	153	java/lang/Exception
    //   140	150	153	java/lang/Exception
    //   185	198	153	java/lang/Exception
    //   121	128	183	finally
    //   128	135	183	finally
    //   161	180	183	finally
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     aaa.cf.eed.Asset
 * JD-Core Version:    0.5.3
 */