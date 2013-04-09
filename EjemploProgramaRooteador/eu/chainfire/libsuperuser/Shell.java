package eu.chainfire.libsuperuser;

import java.util.Iterator;
import java.util.List;

public class Shell
{
  // ERROR //
  public static List<String> run(String paramString, String[] paramArrayOfString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 20	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   4: astore_3
    //   5: new 22	java/util/ArrayList
    //   8: dup
    //   9: invokespecial 23	java/util/ArrayList:<init>	()V
    //   12: invokestatic 29	java/util/Collections:synchronizedList	(Ljava/util/List;)Ljava/util/List;
    //   15: astore 4
    //   17: invokestatic 35	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   20: aload_0
    //   21: invokevirtual 39	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   24: astore 7
    //   26: new 41	java/io/DataOutputStream
    //   29: dup
    //   30: aload 7
    //   32: invokevirtual 47	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   35: invokespecial 50	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   38: astore 8
    //   40: new 52	eu/chainfire/libsuperuser/StreamGobbler
    //   43: dup
    //   44: aload_3
    //   45: aload 7
    //   47: invokevirtual 56	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   50: aload 4
    //   52: invokespecial 59	eu/chainfire/libsuperuser/StreamGobbler:<init>	(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V
    //   55: astore 9
    //   57: aload 7
    //   59: invokevirtual 62	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   62: astore 10
    //   64: iload_2
    //   65: ifeq +159 -> 224
    //   68: aload 4
    //   70: astore 11
    //   72: new 52	eu/chainfire/libsuperuser/StreamGobbler
    //   75: dup
    //   76: aload_3
    //   77: aload 10
    //   79: aload 11
    //   81: invokespecial 59	eu/chainfire/libsuperuser/StreamGobbler:<init>	(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/List;)V
    //   84: astore 12
    //   86: aload 9
    //   88: invokevirtual 65	eu/chainfire/libsuperuser/StreamGobbler:start	()V
    //   91: aload 12
    //   93: invokevirtual 65	eu/chainfire/libsuperuser/StreamGobbler:start	()V
    //   96: aload_1
    //   97: arraylength
    //   98: istore 13
    //   100: iconst_0
    //   101: istore 14
    //   103: iload 14
    //   105: iload 13
    //   107: if_icmplt +63 -> 170
    //   110: aload 8
    //   112: ldc 67
    //   114: invokevirtual 71	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   117: aload 8
    //   119: invokevirtual 74	java/io/DataOutputStream:flush	()V
    //   122: aload 7
    //   124: invokevirtual 78	java/lang/Process:waitFor	()I
    //   127: pop
    //   128: aload 8
    //   130: invokevirtual 81	java/io/DataOutputStream:close	()V
    //   133: aload 9
    //   135: invokevirtual 84	eu/chainfire/libsuperuser/StreamGobbler:join	()V
    //   138: aload 12
    //   140: invokevirtual 84	eu/chainfire/libsuperuser/StreamGobbler:join	()V
    //   143: aload 7
    //   145: invokevirtual 87	java/lang/Process:destroy	()V
    //   148: aload_0
    //   149: ldc 89
    //   151: invokevirtual 93	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   154: ifeq +67 -> 221
    //   157: aload 7
    //   159: invokevirtual 96	java/lang/Process:exitValue	()I
    //   162: sipush 255
    //   165: if_icmpne +56 -> 221
    //   168: aconst_null
    //   169: areturn
    //   170: aload 8
    //   172: new 98	java/lang/StringBuilder
    //   175: dup
    //   176: aload_1
    //   177: iload 14
    //   179: aaload
    //   180: invokestatic 102	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   183: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   186: ldc 106
    //   188: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 113	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokevirtual 71	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   197: aload 8
    //   199: invokevirtual 74	java/io/DataOutputStream:flush	()V
    //   202: iinc 14 1
    //   205: goto -102 -> 103
    //   208: astore 6
    //   210: aconst_null
    //   211: areturn
    //   212: astore 5
    //   214: aconst_null
    //   215: areturn
    //   216: astore 16
    //   218: goto -85 -> 133
    //   221: aload 4
    //   223: areturn
    //   224: aconst_null
    //   225: astore 11
    //   227: goto -155 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   17	64	208	java/io/IOException
    //   72	100	208	java/io/IOException
    //   110	128	208	java/io/IOException
    //   133	168	208	java/io/IOException
    //   170	202	208	java/io/IOException
    //   17	64	212	java/lang/InterruptedException
    //   72	100	212	java/lang/InterruptedException
    //   110	128	212	java/lang/InterruptedException
    //   128	133	212	java/lang/InterruptedException
    //   133	168	212	java/lang/InterruptedException
    //   170	202	212	java/lang/InterruptedException
    //   128	133	216	java/io/IOException
  }

  public static class SH
  {
    public static List<String> run(String paramString)
    {
      return Shell.run("sh", new String[] { paramString }, false);
    }

    public static List<String> run(List<String> paramList)
    {
      return Shell.run("sh", (String[])paramList.toArray(new String[paramList.size()]), false);
    }

    public static List<String> run(String[] paramArrayOfString)
    {
      return Shell.run("sh", paramArrayOfString, false);
    }
  }

  public static class SU
  {
    public static boolean available()
    {
      List localList = run(new String[] { "id", "echo -EOC-" });
      if (localList == null)
        return false;
      Iterator localIterator = localList.iterator();
      String str;
      do
      {
        if (localIterator.hasNext());
        str = (String)localIterator.next();
        if (str.contains("uid="))
          return str.contains("uid=0");
      }
      while (!(str.contains("-EOC-")));
      return true;
    }

    public static List<String> run(String paramString)
    {
      return Shell.run("su", new String[] { paramString }, false);
    }

    public static List<String> run(List<String> paramList)
    {
      return Shell.run("su", (String[])paramList.toArray(new String[paramList.size()]), false);
    }

    public static List<String> run(String[] paramArrayOfString)
    {
      return Shell.run("su", paramArrayOfString, false);
    }

    public static String version(boolean paramBoolean)
    {
      String[] arrayOfString = new String[2];
      if (paramBoolean);
      List localList;
      for (String str1 = "su -V"; ; str1 = "su -v")
      {
        arrayOfString[0] = str1;
        arrayOfString[1] = "exit";
        localList = Shell.run("sh", arrayOfString, false);
        if (localList != null)
          break;
        return null;
      }
      Iterator localIterator = localList.iterator();
      while (true)
      {
        if (!(localIterator.hasNext()))
          return null;
        String str2 = (String)localIterator.next();
        if (!(paramBoolean))
        {
          if (str2.contains("."));
          return str2;
        }
        try
        {
          int i = Integer.parseInt(str2);
          if (i > 0);
          return str2;
        }
        catch (NumberFormatException localNumberFormatException)
        {
        }
      }
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     eu.chainfire.libsuperuser.Shell
 * JD-Core Version:    0.5.3
 */