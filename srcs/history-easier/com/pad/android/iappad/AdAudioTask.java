package com.pad.android.iappad;

import android.app.Activity;
import android.os.AsyncTask;
import com.pad.android.util.AdLog;

public class AdAudioTask extends AsyncTask
{
  private AdController a;
  private Activity b;

  public AdAudioTask(AdController paramAdController, Activity paramActivity)
  {
    this.a = paramAdController;
    this.b = paramActivity;
  }

  // ERROR //
  private java.lang.Integer a(java.lang.String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 26	java/net/URL
    //   5: dup
    //   6: aload_1
    //   7: iconst_0
    //   8: aaload
    //   9: invokespecial 29	java/net/URL:<init>	(Ljava/lang/String;)V
    //   12: invokevirtual 33	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   15: checkcast 35	java/net/HttpURLConnection
    //   18: astore 10
    //   20: aload 10
    //   22: ldc 37
    //   24: invokevirtual 40	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   27: aload 10
    //   29: sipush 5000
    //   32: invokevirtual 44	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   35: aload 10
    //   37: invokevirtual 47	java/net/HttpURLConnection:connect	()V
    //   40: aload 10
    //   42: invokevirtual 51	java/net/HttpURLConnection:getResponseCode	()I
    //   45: istore 15
    //   47: iload 15
    //   49: lookupswitch	default:+27->76, 200:+37->86, 404:+131->180
    //   77: lconst_1
    //   78: invokevirtual 54	java/net/HttpURLConnection:disconnect	()V
    //   81: iconst_0
    //   82: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   85: areturn
    //   86: aload 10
    //   88: invokevirtual 64	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   91: astore 17
    //   93: aload_0
    //   94: getfield 17	com/pad/android/iappad/AdAudioTask:b	Landroid/app/Activity;
    //   97: ldc 66
    //   99: iconst_0
    //   100: invokevirtual 72	android/app/Activity:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   103: astore 18
    //   105: sipush 128
    //   108: newarray byte
    //   110: astore 19
    //   112: aload 17
    //   114: aload 19
    //   116: invokevirtual 78	java/io/InputStream:read	([B)I
    //   119: istore 20
    //   121: iload 20
    //   123: ifgt +26 -> 149
    //   126: aload 17
    //   128: invokevirtual 81	java/io/InputStream:close	()V
    //   131: aload 18
    //   133: invokevirtual 86	java/io/FileOutputStream:flush	()V
    //   136: aload 18
    //   138: invokevirtual 87	java/io/FileOutputStream:close	()V
    //   141: goto -65 -> 76
    //   144: astore 21
    //   146: goto -70 -> 76
    //   149: aload 18
    //   151: aload 19
    //   153: iconst_0
    //   154: iload 20
    //   156: invokevirtual 91	java/io/FileOutputStream:write	([BII)V
    //   159: goto -47 -> 112
    //   162: astore 14
    //   164: aload 10
    //   166: astore_2
    //   167: iconst_2
    //   168: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   171: astore 5
    //   173: aload_2
    //   174: invokevirtual 54	java/net/HttpURLConnection:disconnect	()V
    //   177: aload 5
    //   179: areturn
    //   180: iconst_4
    //   181: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   184: astore 16
    //   186: aload 10
    //   188: invokevirtual 54	java/net/HttpURLConnection:disconnect	()V
    //   191: aload 16
    //   193: areturn
    //   194: astore 8
    //   196: iconst_3
    //   197: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   200: astore 9
    //   202: aload_2
    //   203: invokevirtual 54	java/net/HttpURLConnection:disconnect	()V
    //   206: aload 9
    //   208: areturn
    //   209: astore 6
    //   211: iconst_3
    //   212: invokestatic 60	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   215: astore 7
    //   217: aload_2
    //   218: invokevirtual 54	java/net/HttpURLConnection:disconnect	()V
    //   221: aload 7
    //   223: areturn
    //   224: astore 4
    //   226: aload_2
    //   227: invokevirtual 54	java/net/HttpURLConnection:disconnect	()V
    //   230: aload 4
    //   232: athrow
    //   233: astore 13
    //   235: aload 10
    //   237: astore_2
    //   238: aload 13
    //   240: astore 4
    //   242: goto -16 -> 226
    //   245: astore 12
    //   247: aload 10
    //   249: astore_2
    //   250: goto -39 -> 211
    //   253: astore 11
    //   255: aload 10
    //   257: astore_2
    //   258: goto -62 -> 196
    //   261: astore_3
    //   262: aconst_null
    //   263: astore_2
    //   264: goto -97 -> 167
    //
    // Exception table:
    //   from	to	target	type
    //   126	141	144	java/io/IOException
    //   20	47	162	java/net/MalformedURLException
    //   86	112	162	java/net/MalformedURLException
    //   112	121	162	java/net/MalformedURLException
    //   126	141	162	java/net/MalformedURLException
    //   149	159	162	java/net/MalformedURLException
    //   180	186	162	java/net/MalformedURLException
    //   2	20	194	java/io/IOException
    //   2	20	209	java/lang/Exception
    //   2	20	224	finally
    //   167	173	224	finally
    //   196	202	224	finally
    //   211	217	224	finally
    //   20	47	233	finally
    //   86	112	233	finally
    //   112	121	233	finally
    //   126	141	233	finally
    //   149	159	233	finally
    //   180	186	233	finally
    //   20	47	245	java/lang/Exception
    //   86	112	245	java/lang/Exception
    //   112	121	245	java/lang/Exception
    //   126	141	245	java/lang/Exception
    //   149	159	245	java/lang/Exception
    //   180	186	245	java/lang/Exception
    //   20	47	253	java/io/IOException
    //   86	112	253	java/io/IOException
    //   112	121	253	java/io/IOException
    //   149	159	253	java/io/IOException
    //   180	186	253	java/io/IOException
    //   2	20	261	java/net/MalformedURLException
  }

  protected void onCancelled()
  {
    AdLog.d("LBAdController", "AdAudioTask cancelled");
    super.onCancelled();
  }

  protected void onPreExecute()
  {
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\pusk.history.easer-2-v1.2-dex2jar\
 * Qualified Name:     com.pad.android.iappad.AdAudioTask
 * JD-Core Version:    0.5.3
 */