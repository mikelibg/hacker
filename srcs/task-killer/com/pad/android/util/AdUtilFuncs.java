package com.pad.android.util;

public class AdUtilFuncs
{
  // ERROR //
  public static java.lang.String convertStreamToString(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 14	java/io/BufferedReader
    //   3: dup
    //   4: new 16	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 19	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: sipush 8192
    //   15: invokespecial 22	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   18: astore_1
    //   19: new 24	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 25	java/lang/StringBuilder:<init>	()V
    //   26: astore_2
    //   27: aload_1
    //   28: invokevirtual 29	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   31: astore 7
    //   33: aload 7
    //   35: ifnonnull +12 -> 47
    //   38: aload_0
    //   39: invokevirtual 34	java/io/InputStream:close	()V
    //   42: aload_2
    //   43: invokevirtual 37	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: areturn
    //   47: aload_2
    //   48: new 24	java/lang/StringBuilder
    //   51: dup
    //   52: aload 7
    //   54: invokestatic 43	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   57: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: ldc 48
    //   62: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 37	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: goto -45 -> 27
    //   75: astore 5
    //   77: ldc 54
    //   79: aload 5
    //   81: invokestatic 60	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   84: aload_0
    //   85: invokevirtual 34	java/io/InputStream:close	()V
    //   88: goto -46 -> 42
    //   91: astore 6
    //   93: ldc 54
    //   95: aload 6
    //   97: invokestatic 60	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   100: goto -58 -> 42
    //   103: astore_3
    //   104: aload_0
    //   105: invokevirtual 34	java/io/InputStream:close	()V
    //   108: aload_3
    //   109: athrow
    //   110: astore 4
    //   112: ldc 54
    //   114: aload 4
    //   116: invokestatic 60	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   119: goto -11 -> 108
    //   122: astore 9
    //   124: ldc 54
    //   126: aload 9
    //   128: invokestatic 60	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   131: goto -89 -> 42
    //
    // Exception table:
    //   from	to	target	type
    //   27	33	75	java/io/IOException
    //   47	72	75	java/io/IOException
    //   84	88	91	java/io/IOException
    //   27	33	103	finally
    //   47	72	103	finally
    //   77	84	103	finally
    //   104	108	110	java/io/IOException
    //   38	42	122	java/io/IOException
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\muu.task.killer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.util.AdUtilFuncs
 * JD-Core Version:    0.5.3
 */