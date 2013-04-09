package com.noshufou.android.su;

import android.app.NotificationManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.ListFragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class UpdaterFragment extends ListFragment
  implements View.OnClickListener
{
  private static final String TAG = "Su.UpdaterFragment";
  private int CONSOLE_GREEN;
  private int CONSOLE_RED;
  private String MANIFEST_URL;
  private Button mActionButton;
  private String mBusyboxPath = null;
  private Step mCurrentStep = Step.DOWNLOAD_MANIFEST;
  private Manifest mManifest;
  private ProgressBar mProgressBar;
  private TextView mStatusText;
  private ProgressBar mTitleProgress;

  private void addConsoleEntry(int paramInt)
  {
    ConsoleEntry localConsoleEntry = new ConsoleEntry(paramInt);
    getListAdapter().add(localConsoleEntry);
  }

  private void addStatusToEntry(int paramInt1, int paramInt2)
  {
    addStatusToEntry(getActivity().getString(paramInt1), paramInt2);
  }

  private void addStatusToEntry(String paramString, int paramInt)
  {
    ConsoleEntry localConsoleEntry = (ConsoleEntry)getListAdapter().getItem(getListAdapter().getCount() - 1);
    localConsoleEntry.status = paramString;
    localConsoleEntry.statusColor = paramInt;
  }

  // ERROR //
  private boolean downloadFile(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 158	java/io/BufferedInputStream
    //   3: dup
    //   4: new 160	java/net/URL
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 163	java/net/URL:<init>	(Ljava/lang/String;)V
    //   12: invokevirtual 167	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   15: invokevirtual 173	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   18: invokespecial 176	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   21: astore_3
    //   22: new 178	org/apache/http/util/ByteArrayBuffer
    //   25: dup
    //   26: bipush 50
    //   28: invokespecial 180	org/apache/http/util/ByteArrayBuffer:<init>	(I)V
    //   31: astore 4
    //   33: aload_3
    //   34: invokevirtual 183	java/io/BufferedInputStream:read	()I
    //   37: istore 11
    //   39: iload 11
    //   41: iconst_m1
    //   42: if_icmpne +140 -> 182
    //   45: aload_3
    //   46: invokevirtual 186	java/io/BufferedInputStream:close	()V
    //   49: aload_2
    //   50: ldc 188
    //   52: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   55: istore 12
    //   57: iload 12
    //   59: ifeq +219 -> 278
    //   62: new 196	org/json/JSONObject
    //   65: dup
    //   66: new 190	java/lang/String
    //   69: dup
    //   70: aload 4
    //   72: invokevirtual 200	org/apache/http/util/ByteArrayBuffer:toByteArray	()[B
    //   75: invokespecial 203	java/lang/String:<init>	([B)V
    //   78: invokespecial 204	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   81: astore 14
    //   83: aload_0
    //   84: new 206	com/noshufou/android/su/UpdaterFragment$Manifest
    //   87: dup
    //   88: aload_0
    //   89: aconst_null
    //   90: invokespecial 209	com/noshufou/android/su/UpdaterFragment$Manifest:<init>	(Lcom/noshufou/android/su/UpdaterFragment;Lcom/noshufou/android/su/UpdaterFragment$Manifest;)V
    //   93: putfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   96: aload_0
    //   97: getfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   100: aload 14
    //   102: ldc 211
    //   104: invokevirtual 214	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   107: putfield 216	com/noshufou/android/su/UpdaterFragment$Manifest:version	Ljava/lang/String;
    //   110: aload_0
    //   111: getfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   114: aload 14
    //   116: ldc 218
    //   118: invokevirtual 222	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   121: putfield 225	com/noshufou/android/su/UpdaterFragment$Manifest:versionCode	I
    //   124: aload_0
    //   125: getfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   128: aload 14
    //   130: ldc 227
    //   132: invokevirtual 214	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   135: putfield 230	com/noshufou/android/su/UpdaterFragment$Manifest:binaryUrl	Ljava/lang/String;
    //   138: aload_0
    //   139: getfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   142: aload 14
    //   144: ldc 232
    //   146: invokevirtual 214	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   149: putfield 235	com/noshufou/android/su/UpdaterFragment$Manifest:binaryMd5	Ljava/lang/String;
    //   152: aload_0
    //   153: getfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   156: aload 14
    //   158: ldc 237
    //   160: invokevirtual 214	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   163: putfield 240	com/noshufou/android/su/UpdaterFragment$Manifest:busyboxUrl	Ljava/lang/String;
    //   166: aload_0
    //   167: getfield 114	com/noshufou/android/su/UpdaterFragment:mManifest	Lcom/noshufou/android/su/UpdaterFragment$Manifest;
    //   170: aload 14
    //   172: ldc 242
    //   174: invokevirtual 214	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   177: putfield 245	com/noshufou/android/su/UpdaterFragment$Manifest:busyboxMd5	Ljava/lang/String;
    //   180: iconst_1
    //   181: ireturn
    //   182: iload 11
    //   184: i2b
    //   185: istore 17
    //   187: aload 4
    //   189: iload 17
    //   191: invokevirtual 248	org/apache/http/util/ByteArrayBuffer:append	(I)V
    //   194: goto -161 -> 33
    //   197: astore 8
    //   199: aload 8
    //   201: astore 9
    //   203: ldc 10
    //   205: new 250	java/lang/StringBuilder
    //   208: dup
    //   209: ldc 252
    //   211: invokespecial 253	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   214: aload_1
    //   215: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   221: aload 9
    //   223: invokestatic 265	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   226: pop
    //   227: iconst_0
    //   228: ireturn
    //   229: astore 15
    //   231: ldc 10
    //   233: ldc_w 267
    //   236: aload 15
    //   238: invokestatic 265	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   241: pop
    //   242: goto -62 -> 180
    //   245: astore 5
    //   247: aload 5
    //   249: astore 6
    //   251: ldc 10
    //   253: new 250	java/lang/StringBuilder
    //   256: dup
    //   257: ldc_w 269
    //   260: invokespecial 253	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   263: aload_2
    //   264: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   270: aload 6
    //   272: invokestatic 265	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   275: pop
    //   276: iconst_0
    //   277: ireturn
    //   278: aload_0
    //   279: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   282: aload_2
    //   283: iconst_0
    //   284: invokevirtual 273	android/support/v4/app/FragmentActivity:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   287: astore 13
    //   289: aload 13
    //   291: aload 4
    //   293: invokevirtual 200	org/apache/http/util/ByteArrayBuffer:toByteArray	()[B
    //   296: invokevirtual 278	java/io/FileOutputStream:write	([B)V
    //   299: aload 13
    //   301: invokevirtual 279	java/io/FileOutputStream:close	()V
    //   304: aload_2
    //   305: ldc 237
    //   307: invokevirtual 194	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   310: ifeq +23 -> 333
    //   313: aload_0
    //   314: aload_0
    //   315: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
    //   318: invokevirtual 283	android/support/v4/app/FragmentActivity:getFilesDir	()Ljava/io/File;
    //   321: invokevirtual 288	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   324: ldc_w 290
    //   327: invokevirtual 293	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   330: putfield 32	com/noshufou/android/su/UpdaterFragment:mBusyboxPath	Ljava/lang/String;
    //   333: iconst_1
    //   334: ireturn
    //   335: astore 19
    //   337: aload 19
    //   339: astore 6
    //   341: goto -90 -> 251
    //   344: astore 18
    //   346: aload 18
    //   348: astore 9
    //   350: goto -147 -> 203
    //
    // Exception table:
    //   from	to	target	type
    //   22	33	197	java/net/MalformedURLException
    //   33	39	197	java/net/MalformedURLException
    //   45	57	197	java/net/MalformedURLException
    //   62	180	197	java/net/MalformedURLException
    //   187	194	197	java/net/MalformedURLException
    //   231	242	197	java/net/MalformedURLException
    //   278	333	197	java/net/MalformedURLException
    //   62	180	229	org/json/JSONException
    //   22	33	245	java/io/IOException
    //   33	39	245	java/io/IOException
    //   45	57	245	java/io/IOException
    //   62	180	245	java/io/IOException
    //   187	194	245	java/io/IOException
    //   231	242	245	java/io/IOException
    //   278	333	245	java/io/IOException
    //   0	22	335	java/io/IOException
    //   0	22	344	java/net/MalformedURLException
  }

  private String executeCommand(DataOutputStream paramDataOutputStream, BufferedReader paramBufferedReader, String[] paramArrayOfString)
    throws IOException
  {
    if (paramArrayOfString.length == 0)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfString.length;
    int j = 0;
    label23: int k;
    if (j >= i)
    {
      localStringBuilder.append("\n");
      Log.d("Su.UpdaterFragment", localStringBuilder.toString());
      paramDataOutputStream.writeBytes(localStringBuilder.toString());
      if (paramBufferedReader == null)
        break label145;
      k = 0;
    }
    while (true)
    {
      if (k >= 200);
      do
      {
        if (!(paramBufferedReader.ready()))
          break;
        return paramBufferedReader.readLine();
        localStringBuilder.append(paramArrayOfString[j]).append(" ");
        ++j;
        break label23:
      }
      while (paramBufferedReader.ready());
      try
      {
        Thread.sleep(5L);
        label121: ++k;
      }
      catch (InterruptedException localInterruptedException)
      {
        Log.w("Su.UpdaterFragment", "Sleep timer interrupted", localInterruptedException);
        break label121:
        return null;
      }
    }
    label145: return null;
  }

  private boolean verifyFile(String paramString1, String paramString2)
  {
    if (this.mBusyboxPath == null)
    {
      Log.e("Su.UpdaterFragment", "Busybox not present");
      return false;
    }
    while (true)
    {
      int i;
      try
      {
        Runtime localRuntime = Runtime.getRuntime();
        String[] arrayOfString = new String[3];
        arrayOfString[0] = this.mBusyboxPath;
        arrayOfString[1] = "md5sum";
        arrayOfString[2] = paramString1;
        Process localProcess = localRuntime.exec(arrayOfString);
        BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(new DataInputStream(localProcess.getInputStream())), 64);
        BufferedReader localBufferedReader2 = new BufferedReader(new InputStreamReader(new DataInputStream(localProcess.getErrorStream())), 64);
        i = 0;
        break label255:
        boolean bool;
        do
        {
          if (localBufferedReader2.ready())
            Log.d("Su.UpdaterFragment", localBufferedReader2.readLine());
          if (localBufferedReader1.ready())
          {
            String str = localBufferedReader1.readLine();
            localProcess.destroy();
            if (str.split(" ")[0].equals(paramString2))
              break label253;
            Log.e("Su.UpdaterFragment", "Checksum mismatch");
            return false;
            label209: bool = localBufferedReader1.ready();
          }
        }
        while (bool);
      }
      catch (IOException localIOException)
      {
        try
        {
          Thread.sleep(5L);
          ++i;
        }
        catch (InterruptedException localInterruptedException)
        {
          Log.w("Su.UpdaterFragment", "Sleep timer got interrupted...");
          break label209:
          localIOException = localIOException;
          Log.e("Su.UpdaterFragment", "Checking of md5sum failed", localIOException);
          return false;
        }
      }
      Log.e("Su.UpdaterFragment", "Could not check md5sum");
      return false;
      label253: return true;
      label255: if (i < 200)
        continue;
    }
  }

  private String whichSu()
  {
    Object localObject2;
    if (this.mBusyboxPath == null)
    {
      Log.e("Su.UpdaterFragment", "Busybox not present");
      localObject2 = null;
      return localObject2;
    }
    Process localProcess = null;
    while (true)
    {
      int i;
      try
      {
        String str1 = this.mBusyboxPath + " which su";
        Log.d("Su.UpdaterFragment", str1);
        localProcess = Runtime.getRuntime().exec(str1);
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new DataInputStream(localProcess.getInputStream())), 64);
        i = 0;
        break label192:
        boolean bool;
        do
        {
          String str2 = localBufferedReader.readLine();
          localObject2 = str2;
          if (localProcess != null);
          label141: localProcess.destroy();
        }
        while (bool);
      }
      catch (IOException localIOException)
      {
      }
      finally
      {
        if (localProcess != null)
          localProcess.destroy();
      }
      label192: if (i < 200)
        continue;
    }
  }

  public ConsoleAdapter getListAdapter()
  {
    return ((ConsoleAdapter)super.getListAdapter());
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setListAdapter(new ConsoleAdapter(getActivity()));
    getListAdapter().setNotifyOnChange(false);
    this.mProgressBar.setInterpolator(getActivity(), 17432580);
    new UpdateTask(null).execute(new Void[0]);
  }

  public void onClick(View paramView)
  {
    new UpdateTask(null).execute(new Void[0]);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (Integer.parseInt(Build.VERSION.SDK) < 5);
    for (int i = 2131165318; ; i = 2131165319)
    {
      this.MANIFEST_URL = getString(i);
      this.CONSOLE_RED = getActivity().getResources().getColor(2131296263);
      this.CONSOLE_GREEN = getActivity().getResources().getColor(2131296264);
      View localView = paramLayoutInflater.inflate(2130903054, paramViewGroup, false);
      ((TextView)localView.findViewById(2131427330)).setText(2131165311);
      this.mTitleProgress = ((ProgressBar)localView.findViewById(2131427342));
      this.mProgressBar = ((ProgressBar)localView.findViewById(2131427385));
      this.mStatusText = ((TextView)localView.findViewById(2131427372));
      this.mActionButton = ((Button)localView.findViewById(2131427386));
      this.mActionButton.setOnClickListener(this);
      return localView;
    }
  }

  private class ConsoleAdapter extends ArrayAdapter<UpdaterFragment.ConsoleEntry>
  {
    ConsoleAdapter(Context paramContext)
    {
      super(paramContext, 2130903049, 2131427354);
    }

    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = super.getView(paramInt, paramView, paramViewGroup);
      TextView localTextView = (TextView)localView.findViewById(2131427355);
      localTextView.setText(((UpdaterFragment.ConsoleEntry)getItem(paramInt)).status);
      localTextView.setTextColor(((UpdaterFragment.ConsoleEntry)getItem(paramInt)).statusColor);
      return localView;
    }

    public void notifyDataSetChanged()
    {
      super.notifyDataSetChanged();
      setNotifyOnChange(false);
    }
  }

  private class ConsoleEntry
  {
    public String entry;
    public String status;
    public int statusColor;

    public ConsoleEntry(int paramInt)
    {
      this.entry = UpdaterFragment.this.getActivity().getString(paramInt);
    }

    public String toString()
    {
      return this.entry;
    }
  }

  private class Manifest
  {
    public String binaryMd5;
    public String binaryUrl;
    public String busyboxMd5;
    public String busyboxUrl;
    public String version;
    public int versionCode;
  }

  private static enum Step
  {
    static
    {
      DOWNLOAD_BUSYBOX = new Step("DOWNLOAD_BUSYBOX", 1);
      Step[] arrayOfStep = new Step[2];
      arrayOfStep[0] = DOWNLOAD_MANIFEST;
      arrayOfStep[1] = DOWNLOAD_BUSYBOX;
      ENUM$VALUES = arrayOfStep;
    }
  }

  private class UpdateTask extends AsyncTask<Void, Object, Integer>
  {
    public static final int STATUS_AWAITING_ACTION = 1;
    public static final int STATUS_FINISHED_FAIL = 3;
    public static final int STATUS_FINISHED_NO_NEED = 4;
    public static final int STATUS_FINISHED_SUCCESSFUL = 2;

    // ERROR //
    protected Integer doInBackground(Void[] paramArrayOfVoid)
    {
      // Byte code:
      //   0: invokestatic 60	com/noshufou/android/su/UpdaterFragment$UpdateTask:$SWITCH_TABLE$com$noshufou$android$su$UpdaterFragment$Step	()[I
      //   3: aload_0
      //   4: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   7: invokestatic 66	com/noshufou/android/su/UpdaterFragment:access$4	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Step;
      //   10: invokevirtual 37	com/noshufou/android/su/UpdaterFragment$Step:ordinal	()I
      //   13: iaload
      //   14: tableswitch	default:+22 -> 36, 1:+31->45, 2:+774->788
      //   37: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   40: astore 130
      //   42: aload 130
      //   44: areturn
      //   45: iconst_0
      //   46: iconst_1
      //   47: iadd
      //   48: istore 132
      //   50: iconst_4
      //   51: anewarray 74	java/lang/Object
      //   54: astore 133
      //   56: aload 133
      //   58: iconst_0
      //   59: iconst_4
      //   60: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   63: aastore
      //   64: aload 133
      //   66: iconst_1
      //   67: iload 132
      //   69: iconst_1
      //   70: isub
      //   71: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   74: aastore
      //   75: aload 133
      //   77: iconst_2
      //   78: iload 132
      //   80: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   83: aastore
      //   84: aload 133
      //   86: iconst_3
      //   87: ldc 75
      //   89: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   92: aastore
      //   93: aload_0
      //   94: aload 133
      //   96: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   99: aload_0
      //   100: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   103: aload_0
      //   104: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   107: invokestatic 83	com/noshufou/android/su/UpdaterFragment:access$5	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   110: ldc 85
      //   112: invokestatic 89	com/noshufou/android/su/UpdaterFragment:access$6	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/lang/String;Ljava/lang/String;)Z
      //   115: ifeq +197 -> 312
      //   118: iconst_5
      //   119: anewarray 74	java/lang/Object
      //   122: astore 135
      //   124: aload 135
      //   126: iconst_0
      //   127: iconst_4
      //   128: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   131: aastore
      //   132: aload 135
      //   134: iconst_1
      //   135: iload 132
      //   137: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   140: aastore
      //   141: aload 135
      //   143: iconst_2
      //   144: iload 132
      //   146: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   149: aastore
      //   150: aload 135
      //   152: iconst_3
      //   153: ldc 90
      //   155: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   158: aastore
      //   159: aload 135
      //   161: iconst_4
      //   162: aload_0
      //   163: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   166: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   169: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   172: aastore
      //   173: aload_0
      //   174: aload 135
      //   176: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   179: iload 132
      //   181: iconst_1
      //   182: iadd
      //   183: istore 136
      //   185: iconst_4
      //   186: anewarray 74	java/lang/Object
      //   189: astore 137
      //   191: aload 137
      //   193: iconst_0
      //   194: iconst_4
      //   195: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   198: aastore
      //   199: aload 137
      //   201: iconst_1
      //   202: iload 136
      //   204: iconst_1
      //   205: isub
      //   206: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   209: aastore
      //   210: aload 137
      //   212: iconst_2
      //   213: iload 136
      //   215: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   218: aastore
      //   219: aload 137
      //   221: iconst_3
      //   222: ldc 95
      //   224: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   227: aastore
      //   228: aload_0
      //   229: aload 137
      //   231: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   234: aload_0
      //   235: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   238: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   241: ifnonnull +139 -> 380
      //   244: iconst_5
      //   245: anewarray 74	java/lang/Object
      //   248: astore 148
      //   250: aload 148
      //   252: iconst_0
      //   253: iconst_4
      //   254: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   257: aastore
      //   258: aload 148
      //   260: iconst_1
      //   261: iload 136
      //   263: iconst_1
      //   264: isub
      //   265: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   268: aastore
      //   269: aload 148
      //   271: iconst_2
      //   272: iload 136
      //   274: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   277: aastore
      //   278: aload 148
      //   280: iconst_3
      //   281: ldc 100
      //   283: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   286: aastore
      //   287: aload 148
      //   289: iconst_4
      //   290: aload_0
      //   291: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   294: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   297: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   300: aastore
      //   301: aload_0
      //   302: aload 148
      //   304: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   307: iconst_3
      //   308: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   311: areturn
      //   312: iconst_5
      //   313: anewarray 74	java/lang/Object
      //   316: astore 134
      //   318: aload 134
      //   320: iconst_0
      //   321: iconst_4
      //   322: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   325: aastore
      //   326: aload 134
      //   328: iconst_1
      //   329: iload 132
      //   331: iconst_1
      //   332: isub
      //   333: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   336: aastore
      //   337: aload 134
      //   339: iconst_2
      //   340: iload 132
      //   342: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   345: aastore
      //   346: aload 134
      //   348: iconst_3
      //   349: ldc 100
      //   351: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   354: aastore
      //   355: aload 134
      //   357: iconst_4
      //   358: aload_0
      //   359: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   362: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   365: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   368: aastore
      //   369: aload_0
      //   370: aload 134
      //   372: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   375: iconst_3
      //   376: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   379: areturn
      //   380: iconst_5
      //   381: anewarray 74	java/lang/Object
      //   384: astore 138
      //   386: aload 138
      //   388: iconst_0
      //   389: iconst_4
      //   390: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   393: aastore
      //   394: aload 138
      //   396: iconst_1
      //   397: iload 136
      //   399: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   402: aastore
      //   403: aload 138
      //   405: iconst_2
      //   406: iload 136
      //   408: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   411: aastore
      //   412: aload 138
      //   414: iconst_3
      //   415: ldc 90
      //   417: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   420: aastore
      //   421: aload 138
      //   423: iconst_4
      //   424: aload_0
      //   425: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   428: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   431: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   434: aastore
      //   435: aload_0
      //   436: aload 138
      //   438: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   441: iload 136
      //   443: iconst_1
      //   444: iadd
      //   445: istore 139
      //   447: iconst_4
      //   448: anewarray 74	java/lang/Object
      //   451: astore 140
      //   453: aload 140
      //   455: iconst_0
      //   456: iconst_4
      //   457: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   460: aastore
      //   461: aload 140
      //   463: iconst_1
      //   464: iload 139
      //   466: iconst_1
      //   467: isub
      //   468: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   471: aastore
      //   472: aload 140
      //   474: iconst_2
      //   475: iload 139
      //   477: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   480: aastore
      //   481: aload 140
      //   483: iconst_3
      //   484: ldc 104
      //   486: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   489: aastore
      //   490: aload_0
      //   491: aload 140
      //   493: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   496: iconst_5
      //   497: anewarray 74	java/lang/Object
      //   500: astore 141
      //   502: aload 141
      //   504: iconst_0
      //   505: iconst_4
      //   506: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   509: aastore
      //   510: aload 141
      //   512: iconst_1
      //   513: iload 139
      //   515: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   518: aastore
      //   519: aload 141
      //   521: iconst_2
      //   522: iload 139
      //   524: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   527: aastore
      //   528: aload 141
      //   530: iconst_3
      //   531: aload_0
      //   532: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   535: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   538: getfield 110	com/noshufou/android/su/UpdaterFragment$Manifest:version	Ljava/lang/String;
      //   541: aastore
      //   542: aload 141
      //   544: iconst_4
      //   545: aload_0
      //   546: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   549: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   552: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   555: aastore
      //   556: aload_0
      //   557: aload 141
      //   559: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   562: iload 139
      //   564: iconst_1
      //   565: iadd
      //   566: istore 142
      //   568: iconst_4
      //   569: anewarray 74	java/lang/Object
      //   572: astore 143
      //   574: aload 143
      //   576: iconst_0
      //   577: iconst_4
      //   578: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   581: aastore
      //   582: aload 143
      //   584: iconst_1
      //   585: iload 142
      //   587: iconst_1
      //   588: isub
      //   589: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   592: aastore
      //   593: aload 143
      //   595: iconst_2
      //   596: iload 142
      //   598: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   601: aastore
      //   602: aload 143
      //   604: iconst_3
      //   605: ldc 111
      //   607: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   610: aastore
      //   611: aload_0
      //   612: aload 143
      //   614: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   617: invokestatic 116	com/noshufou/android/su/util/Util:getSuVersionCode	()I
      //   620: istore 144
      //   622: invokestatic 120	com/noshufou/android/su/util/Util:getSuVersion	()Ljava/lang/String;
      //   625: astore 145
      //   627: iload 144
      //   629: aload_0
      //   630: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   633: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   636: getfield 123	com/noshufou/android/su/UpdaterFragment$Manifest:versionCode	I
      //   639: if_icmpge +76 -> 715
      //   642: iconst_5
      //   643: anewarray 74	java/lang/Object
      //   646: astore 147
      //   648: aload 147
      //   650: iconst_0
      //   651: iconst_4
      //   652: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   655: aastore
      //   656: aload 147
      //   658: iconst_1
      //   659: iload 142
      //   661: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   664: aastore
      //   665: aload 147
      //   667: iconst_2
      //   668: iload 142
      //   670: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   673: aastore
      //   674: aload 147
      //   676: iconst_3
      //   677: aload 145
      //   679: aastore
      //   680: aload 147
      //   682: iconst_4
      //   683: aload_0
      //   684: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   687: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   690: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   693: aastore
      //   694: aload_0
      //   695: aload 147
      //   697: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   700: aload_0
      //   701: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   704: getstatic 33	com/noshufou/android/su/UpdaterFragment$Step:DOWNLOAD_BUSYBOX	Lcom/noshufou/android/su/UpdaterFragment$Step;
      //   707: invokestatic 127	com/noshufou/android/su/UpdaterFragment:access$10	(Lcom/noshufou/android/su/UpdaterFragment;Lcom/noshufou/android/su/UpdaterFragment$Step;)V
      //   710: iconst_1
      //   711: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   714: areturn
      //   715: iconst_5
      //   716: anewarray 74	java/lang/Object
      //   719: astore 146
      //   721: aload 146
      //   723: iconst_0
      //   724: iconst_4
      //   725: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   728: aastore
      //   729: aload 146
      //   731: iconst_1
      //   732: iload 142
      //   734: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   737: aastore
      //   738: aload 146
      //   740: iconst_2
      //   741: iload 142
      //   743: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   746: aastore
      //   747: aload 146
      //   749: iconst_3
      //   750: aload 145
      //   752: aastore
      //   753: aload 146
      //   755: iconst_4
      //   756: aload_0
      //   757: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   760: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   763: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   766: aastore
      //   767: aload_0
      //   768: aload 146
      //   770: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   773: aload_0
      //   774: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   777: getstatic 33	com/noshufou/android/su/UpdaterFragment$Step:DOWNLOAD_BUSYBOX	Lcom/noshufou/android/su/UpdaterFragment$Step;
      //   780: invokestatic 127	com/noshufou/android/su/UpdaterFragment:access$10	(Lcom/noshufou/android/su/UpdaterFragment;Lcom/noshufou/android/su/UpdaterFragment$Step;)V
      //   783: iconst_4
      //   784: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   787: areturn
      //   788: invokestatic 116	com/noshufou/android/su/util/Util:getSuVersionCode	()I
      //   791: ifne +762 -> 1553
      //   794: iconst_1
      //   795: istore_2
      //   796: iload_2
      //   797: ifeq +874 -> 1671
      //   800: bipush 16
      //   802: istore_3
      //   803: iconst_1
      //   804: istore 4
      //   806: iconst_4
      //   807: anewarray 74	java/lang/Object
      //   810: astore 123
      //   812: aload 123
      //   814: iconst_0
      //   815: iload_3
      //   816: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   819: aastore
      //   820: aload 123
      //   822: iconst_1
      //   823: iload 4
      //   825: iconst_1
      //   826: isub
      //   827: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   830: aastore
      //   831: aload 123
      //   833: iconst_2
      //   834: iload 4
      //   836: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   839: aastore
      //   840: aload 123
      //   842: iconst_3
      //   843: ldc 128
      //   845: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   848: aastore
      //   849: aload_0
      //   850: aload 123
      //   852: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   855: aconst_null
      //   856: astore 124
      //   858: aload_0
      //   859: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   862: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
      //   865: ldc 134
      //   867: iconst_0
      //   868: aconst_null
      //   869: invokevirtual 140	android/support/v4/app/FragmentActivity:openOrCreateDatabase	(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
      //   872: astore 124
      //   874: aload 124
      //   876: ldc 142
      //   878: invokevirtual 148	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   881: aload 124
      //   883: ldc 150
      //   885: invokevirtual 148	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   888: aload 124
      //   890: ldc 152
      //   892: invokevirtual 148	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
      //   895: aload 124
      //   897: ifnull +8 -> 905
      //   900: aload 124
      //   902: invokevirtual 155	android/database/sqlite/SQLiteDatabase:close	()V
      //   905: iconst_5
      //   906: anewarray 74	java/lang/Object
      //   909: astore 131
      //   911: aload 131
      //   913: iconst_0
      //   914: iload_3
      //   915: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   918: aastore
      //   919: aload 131
      //   921: iconst_1
      //   922: iload 4
      //   924: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   927: aastore
      //   928: aload 131
      //   930: iconst_2
      //   931: iload 4
      //   933: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   936: aastore
      //   937: aload 131
      //   939: iconst_3
      //   940: ldc 90
      //   942: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   945: aastore
      //   946: aload 131
      //   948: iconst_4
      //   949: aload_0
      //   950: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   953: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   956: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   959: aastore
      //   960: aload_0
      //   961: aload 131
      //   963: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   966: iload 4
      //   968: iconst_1
      //   969: iadd
      //   970: istore 5
      //   972: iconst_4
      //   973: anewarray 74	java/lang/Object
      //   976: astore 6
      //   978: aload 6
      //   980: iconst_0
      //   981: iload_3
      //   982: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   985: aastore
      //   986: aload 6
      //   988: iconst_1
      //   989: iload 5
      //   991: iconst_1
      //   992: isub
      //   993: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   996: aastore
      //   997: aload 6
      //   999: iconst_2
      //   1000: iload 5
      //   1002: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1005: aastore
      //   1006: aload 6
      //   1008: iconst_3
      //   1009: ldc 156
      //   1011: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1014: aastore
      //   1015: aload_0
      //   1016: aload 6
      //   1018: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1021: aload_0
      //   1022: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1025: aload_0
      //   1026: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1029: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   1032: getfield 159	com/noshufou/android/su/UpdaterFragment$Manifest:busyboxUrl	Ljava/lang/String;
      //   1035: ldc 161
      //   1037: invokestatic 89	com/noshufou/android/su/UpdaterFragment:access$6	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/lang/String;Ljava/lang/String;)Z
      //   1040: ifeq +735 -> 1775
      //   1043: new 163	java/lang/ProcessBuilder
      //   1046: dup
      //   1047: iconst_0
      //   1048: anewarray 165	java/lang/String
      //   1051: invokespecial 168	java/lang/ProcessBuilder:<init>	([Ljava/lang/String;)V
      //   1054: astore 9
      //   1056: iconst_3
      //   1057: anewarray 165	java/lang/String
      //   1060: astore 119
      //   1062: aload 119
      //   1064: iconst_0
      //   1065: ldc 170
      //   1067: aastore
      //   1068: aload 119
      //   1070: iconst_1
      //   1071: ldc 172
      //   1073: aastore
      //   1074: aload 119
      //   1076: iconst_2
      //   1077: aload_0
      //   1078: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1081: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   1084: aastore
      //   1085: aload 9
      //   1087: aload 119
      //   1089: invokevirtual 179	java/lang/ProcessBuilder:command	([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
      //   1092: iconst_1
      //   1093: invokevirtual 183	java/lang/ProcessBuilder:redirectErrorStream	(Z)Ljava/lang/ProcessBuilder;
      //   1096: invokevirtual 187	java/lang/ProcessBuilder:start	()Ljava/lang/Process;
      //   1099: astore 120
      //   1101: ldc 189
      //   1103: new 191	java/lang/StringBuilder
      //   1106: dup
      //   1107: ldc 193
      //   1109: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   1112: aload_0
      //   1113: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1116: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   1119: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1122: invokevirtual 202	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1125: invokestatic 208	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   1128: pop
      //   1129: aload 120
      //   1131: invokevirtual 213	java/lang/Process:waitFor	()I
      //   1134: pop
      //   1135: aload 120
      //   1137: invokevirtual 216	java/lang/Process:destroy	()V
      //   1140: iconst_5
      //   1141: anewarray 74	java/lang/Object
      //   1144: astore 12
      //   1146: aload 12
      //   1148: iconst_0
      //   1149: iload_3
      //   1150: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1153: aastore
      //   1154: aload 12
      //   1156: iconst_1
      //   1157: iload 5
      //   1159: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1162: aastore
      //   1163: aload 12
      //   1165: iconst_2
      //   1166: iload 5
      //   1168: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1171: aastore
      //   1172: aload 12
      //   1174: iconst_3
      //   1175: ldc 90
      //   1177: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1180: aastore
      //   1181: aload 12
      //   1183: iconst_4
      //   1184: aload_0
      //   1185: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1188: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1191: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1194: aastore
      //   1195: aload_0
      //   1196: aload 12
      //   1198: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1201: iload 5
      //   1203: iconst_1
      //   1204: iadd
      //   1205: istore 13
      //   1207: iconst_4
      //   1208: anewarray 74	java/lang/Object
      //   1211: astore 14
      //   1213: aload 14
      //   1215: iconst_0
      //   1216: iload_3
      //   1217: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1220: aastore
      //   1221: aload 14
      //   1223: iconst_1
      //   1224: iload 13
      //   1226: iconst_1
      //   1227: isub
      //   1228: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1231: aastore
      //   1232: aload 14
      //   1234: iconst_2
      //   1235: iload 13
      //   1237: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1240: aastore
      //   1241: aload 14
      //   1243: iconst_3
      //   1244: ldc 217
      //   1246: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1249: aastore
      //   1250: aload_0
      //   1251: aload 14
      //   1253: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1256: aload_0
      //   1257: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1260: aload_0
      //   1261: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1264: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   1267: aload_0
      //   1268: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1271: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   1274: getfield 220	com/noshufou/android/su/UpdaterFragment$Manifest:busyboxMd5	Ljava/lang/String;
      //   1277: invokestatic 223	com/noshufou/android/su/UpdaterFragment:access$12	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/lang/String;Ljava/lang/String;)Z
      //   1280: ifeq +557 -> 1837
      //   1283: iconst_5
      //   1284: anewarray 74	java/lang/Object
      //   1287: astore 16
      //   1289: aload 16
      //   1291: iconst_0
      //   1292: iload_3
      //   1293: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1296: aastore
      //   1297: aload 16
      //   1299: iconst_1
      //   1300: iload 13
      //   1302: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1305: aastore
      //   1306: aload 16
      //   1308: iconst_2
      //   1309: iload 13
      //   1311: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1314: aastore
      //   1315: aload 16
      //   1317: iconst_3
      //   1318: ldc 90
      //   1320: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1323: aastore
      //   1324: aload 16
      //   1326: iconst_4
      //   1327: aload_0
      //   1328: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1331: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1334: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1337: aastore
      //   1338: aload_0
      //   1339: aload 16
      //   1341: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1344: iload 13
      //   1346: iconst_1
      //   1347: iadd
      //   1348: istore 17
      //   1350: iconst_4
      //   1351: anewarray 74	java/lang/Object
      //   1354: astore 18
      //   1356: aload 18
      //   1358: iconst_0
      //   1359: iload_3
      //   1360: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1363: aastore
      //   1364: aload 18
      //   1366: iconst_1
      //   1367: iload 17
      //   1369: iconst_1
      //   1370: isub
      //   1371: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1374: aastore
      //   1375: aload 18
      //   1377: iconst_2
      //   1378: iload 17
      //   1380: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1383: aastore
      //   1384: aload 18
      //   1386: iconst_3
      //   1387: ldc 224
      //   1389: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1392: aastore
      //   1393: aload_0
      //   1394: aload 18
      //   1396: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1399: aload_0
      //   1400: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1403: invokestatic 227	com/noshufou/android/su/UpdaterFragment:access$13	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   1406: astore 19
      //   1408: ldc 189
      //   1410: new 191	java/lang/StringBuilder
      //   1413: dup
      //   1414: ldc 229
      //   1416: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   1419: aload 19
      //   1421: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   1424: invokevirtual 202	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   1427: invokestatic 208	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   1430: pop
      //   1431: aload 19
      //   1433: ifnonnull +472 -> 1905
      //   1436: iconst_5
      //   1437: anewarray 74	java/lang/Object
      //   1440: astore 114
      //   1442: aload 114
      //   1444: iconst_0
      //   1445: iload_3
      //   1446: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1449: aastore
      //   1450: aload 114
      //   1452: iconst_1
      //   1453: iload 17
      //   1455: iconst_1
      //   1456: isub
      //   1457: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1460: aastore
      //   1461: aload 114
      //   1463: iconst_2
      //   1464: iload 17
      //   1466: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1469: aastore
      //   1470: aload 114
      //   1472: iconst_3
      //   1473: ldc 100
      //   1475: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1478: aastore
      //   1479: aload 114
      //   1481: iconst_4
      //   1482: aload_0
      //   1483: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1486: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1489: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1492: aastore
      //   1493: aload_0
      //   1494: aload 114
      //   1496: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1499: iconst_4
      //   1500: anewarray 74	java/lang/Object
      //   1503: astore 115
      //   1505: aload 115
      //   1507: iconst_0
      //   1508: iload_3
      //   1509: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1512: aastore
      //   1513: aload 115
      //   1515: iconst_1
      //   1516: iload 17
      //   1518: iconst_1
      //   1519: isub
      //   1520: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1523: aastore
      //   1524: aload 115
      //   1526: iconst_2
      //   1527: iload 17
      //   1529: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1532: aastore
      //   1533: aload 115
      //   1535: iconst_3
      //   1536: ldc 230
      //   1538: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1541: aastore
      //   1542: aload_0
      //   1543: aload 115
      //   1545: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1548: iconst_3
      //   1549: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1552: areturn
      //   1553: iconst_0
      //   1554: istore_2
      //   1555: goto -759 -> 796
      //   1558: astore 126
      //   1560: ldc 189
      //   1562: ldc 232
      //   1564: aload 126
      //   1566: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   1569: pop
      //   1570: iconst_5
      //   1571: anewarray 74	java/lang/Object
      //   1574: astore 128
      //   1576: aload 128
      //   1578: iconst_0
      //   1579: iload_3
      //   1580: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1583: aastore
      //   1584: aload 128
      //   1586: iconst_1
      //   1587: iload 4
      //   1589: iconst_1
      //   1590: isub
      //   1591: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1594: aastore
      //   1595: aload 128
      //   1597: iconst_2
      //   1598: iload 4
      //   1600: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1603: aastore
      //   1604: aload 128
      //   1606: iconst_3
      //   1607: ldc 100
      //   1609: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1612: aastore
      //   1613: aload 128
      //   1615: iconst_4
      //   1616: aload_0
      //   1617: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1620: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1623: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1626: aastore
      //   1627: aload_0
      //   1628: aload 128
      //   1630: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1633: iconst_3
      //   1634: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1637: astore 129
      //   1639: aload 129
      //   1641: astore 130
      //   1643: aload 124
      //   1645: ifnull -1603 -> 42
      //   1648: aload 124
      //   1650: invokevirtual 155	android/database/sqlite/SQLiteDatabase:close	()V
      //   1653: aload 130
      //   1655: areturn
      //   1656: astore 125
      //   1658: aload 124
      //   1660: ifnull +8 -> 1668
      //   1663: aload 124
      //   1665: invokevirtual 155	android/database/sqlite/SQLiteDatabase:close	()V
      //   1668: aload 125
      //   1670: athrow
      //   1671: bipush 15
      //   1673: istore_3
      //   1674: iconst_0
      //   1675: istore 4
      //   1677: goto -711 -> 966
      //   1680: astore 116
      //   1682: ldc 189
      //   1684: ldc 238
      //   1686: aload 116
      //   1688: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   1691: pop
      //   1692: iconst_5
      //   1693: anewarray 74	java/lang/Object
      //   1696: astore 118
      //   1698: aload 118
      //   1700: iconst_0
      //   1701: iload_3
      //   1702: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1705: aastore
      //   1706: aload 118
      //   1708: iconst_1
      //   1709: iload 5
      //   1711: iconst_1
      //   1712: isub
      //   1713: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1716: aastore
      //   1717: aload 118
      //   1719: iconst_2
      //   1720: iload 5
      //   1722: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1725: aastore
      //   1726: aload 118
      //   1728: iconst_3
      //   1729: ldc 100
      //   1731: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1734: aastore
      //   1735: aload 118
      //   1737: iconst_4
      //   1738: aload_0
      //   1739: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1742: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1745: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1748: aastore
      //   1749: aload_0
      //   1750: aload 118
      //   1752: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1755: iconst_3
      //   1756: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1759: areturn
      //   1760: astore 10
      //   1762: ldc 189
      //   1764: ldc 240
      //   1766: aload 10
      //   1768: invokestatic 243	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   1771: pop
      //   1772: goto -632 -> 1140
      //   1775: ldc 189
      //   1777: ldc 245
      //   1779: invokestatic 247	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   1782: pop
      //   1783: iconst_4
      //   1784: anewarray 74	java/lang/Object
      //   1787: astore 8
      //   1789: aload 8
      //   1791: iconst_0
      //   1792: iload_3
      //   1793: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1796: aastore
      //   1797: aload 8
      //   1799: iconst_1
      //   1800: iload 5
      //   1802: iconst_1
      //   1803: isub
      //   1804: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1807: aastore
      //   1808: aload 8
      //   1810: iconst_2
      //   1811: iload 5
      //   1813: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1816: aastore
      //   1817: aload 8
      //   1819: iconst_3
      //   1820: ldc 100
      //   1822: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1825: aastore
      //   1826: aload_0
      //   1827: aload 8
      //   1829: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1832: iconst_3
      //   1833: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1836: areturn
      //   1837: iconst_5
      //   1838: anewarray 74	java/lang/Object
      //   1841: astore 15
      //   1843: aload 15
      //   1845: iconst_0
      //   1846: iload_3
      //   1847: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1850: aastore
      //   1851: aload 15
      //   1853: iconst_1
      //   1854: iload 13
      //   1856: iconst_1
      //   1857: isub
      //   1858: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1861: aastore
      //   1862: aload 15
      //   1864: iconst_2
      //   1865: iload 13
      //   1867: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1870: aastore
      //   1871: aload 15
      //   1873: iconst_3
      //   1874: ldc 100
      //   1876: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1879: aastore
      //   1880: aload 15
      //   1882: iconst_4
      //   1883: aload_0
      //   1884: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1887: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1890: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1893: aastore
      //   1894: aload_0
      //   1895: aload 15
      //   1897: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1900: iconst_3
      //   1901: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1904: areturn
      //   1905: aload 19
      //   1907: ldc 249
      //   1909: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   1912: ifeq +117 -> 2029
      //   1915: iconst_5
      //   1916: anewarray 74	java/lang/Object
      //   1919: astore 112
      //   1921: aload 112
      //   1923: iconst_0
      //   1924: iload_3
      //   1925: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1928: aastore
      //   1929: aload 112
      //   1931: iconst_1
      //   1932: iload 17
      //   1934: iconst_1
      //   1935: isub
      //   1936: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1939: aastore
      //   1940: aload 112
      //   1942: iconst_2
      //   1943: iload 17
      //   1945: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1948: aastore
      //   1949: aload 112
      //   1951: iconst_3
      //   1952: aload 19
      //   1954: aastore
      //   1955: aload 112
      //   1957: iconst_4
      //   1958: aload_0
      //   1959: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   1962: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   1965: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1968: aastore
      //   1969: aload_0
      //   1970: aload 112
      //   1972: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   1975: iconst_4
      //   1976: anewarray 74	java/lang/Object
      //   1979: astore 113
      //   1981: aload 113
      //   1983: iconst_0
      //   1984: iload_3
      //   1985: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1988: aastore
      //   1989: aload 113
      //   1991: iconst_1
      //   1992: iload 17
      //   1994: iconst_1
      //   1995: isub
      //   1996: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   1999: aastore
      //   2000: aload 113
      //   2002: iconst_2
      //   2003: iload 17
      //   2005: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2008: aastore
      //   2009: aload 113
      //   2011: iconst_3
      //   2012: ldc 254
      //   2014: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2017: aastore
      //   2018: aload_0
      //   2019: aload 113
      //   2021: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2024: iconst_3
      //   2025: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2028: areturn
      //   2029: iconst_5
      //   2030: anewarray 74	java/lang/Object
      //   2033: astore 21
      //   2035: aload 21
      //   2037: iconst_0
      //   2038: iload_3
      //   2039: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2042: aastore
      //   2043: aload 21
      //   2045: iconst_1
      //   2046: iload 17
      //   2048: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2051: aastore
      //   2052: aload 21
      //   2054: iconst_2
      //   2055: iload 17
      //   2057: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2060: aastore
      //   2061: aload 21
      //   2063: iconst_3
      //   2064: aload 19
      //   2066: aastore
      //   2067: aload 21
      //   2069: iconst_4
      //   2070: aload_0
      //   2071: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2074: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2077: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2080: aastore
      //   2081: aload_0
      //   2082: aload 21
      //   2084: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2087: iload 17
      //   2089: iconst_1
      //   2090: iadd
      //   2091: istore 22
      //   2093: iconst_4
      //   2094: anewarray 74	java/lang/Object
      //   2097: astore 23
      //   2099: aload 23
      //   2101: iconst_0
      //   2102: iload_3
      //   2103: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2106: aastore
      //   2107: aload 23
      //   2109: iconst_1
      //   2110: iload 22
      //   2112: iconst_1
      //   2113: isub
      //   2114: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2117: aastore
      //   2118: aload 23
      //   2120: iconst_2
      //   2121: iload 22
      //   2123: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2126: aastore
      //   2127: aload 23
      //   2129: iconst_3
      //   2130: ldc 255
      //   2132: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2135: aastore
      //   2136: aload_0
      //   2137: aload 23
      //   2139: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2142: aload_0
      //   2143: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2146: aload_0
      //   2147: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2150: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   2153: getfield 258	com/noshufou/android/su/UpdaterFragment$Manifest:binaryUrl	Ljava/lang/String;
      //   2156: ldc_w 260
      //   2159: invokestatic 89	com/noshufou/android/su/UpdaterFragment:access$6	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/lang/String;Ljava/lang/String;)Z
      //   2162: ifeq +431 -> 2593
      //   2165: aload_0
      //   2166: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2169: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
      //   2172: ldc_w 260
      //   2175: invokevirtual 264	android/support/v4/app/FragmentActivity:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
      //   2178: invokevirtual 267	java/io/File:toString	()Ljava/lang/String;
      //   2181: astore 25
      //   2183: iconst_5
      //   2184: anewarray 74	java/lang/Object
      //   2187: astore 26
      //   2189: aload 26
      //   2191: iconst_0
      //   2192: iload_3
      //   2193: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2196: aastore
      //   2197: aload 26
      //   2199: iconst_1
      //   2200: iload 22
      //   2202: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2205: aastore
      //   2206: aload 26
      //   2208: iconst_2
      //   2209: iload 22
      //   2211: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2214: aastore
      //   2215: aload 26
      //   2217: iconst_3
      //   2218: ldc 90
      //   2220: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2223: aastore
      //   2224: aload 26
      //   2226: iconst_4
      //   2227: aload_0
      //   2228: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2231: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2234: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2237: aastore
      //   2238: aload_0
      //   2239: aload 26
      //   2241: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2244: iload 22
      //   2246: iconst_1
      //   2247: iadd
      //   2248: istore 27
      //   2250: iconst_4
      //   2251: anewarray 74	java/lang/Object
      //   2254: astore 28
      //   2256: aload 28
      //   2258: iconst_0
      //   2259: iload_3
      //   2260: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2263: aastore
      //   2264: aload 28
      //   2266: iconst_1
      //   2267: iload 27
      //   2269: iconst_1
      //   2270: isub
      //   2271: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2274: aastore
      //   2275: aload 28
      //   2277: iconst_2
      //   2278: iload 27
      //   2280: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2283: aastore
      //   2284: aload 28
      //   2286: iconst_3
      //   2287: ldc 217
      //   2289: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2292: aastore
      //   2293: aload_0
      //   2294: aload 28
      //   2296: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2299: aload_0
      //   2300: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2303: aload 25
      //   2305: aload_0
      //   2306: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2309: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   2312: getfield 270	com/noshufou/android/su/UpdaterFragment$Manifest:binaryMd5	Ljava/lang/String;
      //   2315: invokestatic 223	com/noshufou/android/su/UpdaterFragment:access$12	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/lang/String;Ljava/lang/String;)Z
      //   2318: ifeq +343 -> 2661
      //   2321: iconst_5
      //   2322: anewarray 74	java/lang/Object
      //   2325: astore 30
      //   2327: aload 30
      //   2329: iconst_0
      //   2330: iload_3
      //   2331: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2334: aastore
      //   2335: aload 30
      //   2337: iconst_1
      //   2338: iload 27
      //   2340: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2343: aastore
      //   2344: aload 30
      //   2346: iconst_2
      //   2347: iload 27
      //   2349: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2352: aastore
      //   2353: aload 30
      //   2355: iconst_3
      //   2356: ldc 90
      //   2358: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2361: aastore
      //   2362: aload 30
      //   2364: iconst_4
      //   2365: aload_0
      //   2366: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2369: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2372: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2375: aastore
      //   2376: aload_0
      //   2377: aload 30
      //   2379: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2382: aconst_null
      //   2383: astore 31
      //   2385: iload 27
      //   2387: iconst_1
      //   2388: iadd
      //   2389: istore 32
      //   2391: iconst_4
      //   2392: anewarray 74	java/lang/Object
      //   2395: astore 48
      //   2397: aload 48
      //   2399: iconst_0
      //   2400: iload_3
      //   2401: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2404: aastore
      //   2405: aload 48
      //   2407: iconst_1
      //   2408: iload 32
      //   2410: iconst_1
      //   2411: isub
      //   2412: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2415: aastore
      //   2416: aload 48
      //   2418: iconst_2
      //   2419: iload 32
      //   2421: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2424: aastore
      //   2425: aload 48
      //   2427: iconst_3
      //   2428: ldc_w 271
      //   2431: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2434: aastore
      //   2435: aload_0
      //   2436: aload 48
      //   2438: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2441: invokestatic 277	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
      //   2444: ldc_w 260
      //   2447: invokevirtual 281	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
      //   2450: astore 31
      //   2452: new 283	java/io/DataOutputStream
      //   2455: dup
      //   2456: aload 31
      //   2458: invokevirtual 287	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
      //   2461: invokespecial 290	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
      //   2464: astore 49
      //   2466: new 292	java/io/BufferedReader
      //   2469: dup
      //   2470: new 294	java/io/InputStreamReader
      //   2473: dup
      //   2474: new 296	java/io/DataInputStream
      //   2477: dup
      //   2478: aload 31
      //   2480: invokevirtual 300	java/lang/Process:getInputStream	()Ljava/io/InputStream;
      //   2483: invokespecial 303	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
      //   2486: invokespecial 304	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
      //   2489: bipush 64
      //   2491: invokespecial 307	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
      //   2494: astore 50
      //   2496: aload 49
      //   2498: ldc_w 309
      //   2501: invokevirtual 312	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
      //   2504: aload 50
      //   2506: invokevirtual 315	java/io/BufferedReader:readLine	()Ljava/lang/String;
      //   2509: astore 51
      //   2511: aload 51
      //   2513: ifnonnull +216 -> 2729
      //   2516: iconst_5
      //   2517: anewarray 74	java/lang/Object
      //   2520: astore 52
      //   2522: aload 52
      //   2524: iconst_0
      //   2525: iload_3
      //   2526: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2529: aastore
      //   2530: aload 52
      //   2532: iconst_1
      //   2533: iload 32
      //   2535: iconst_1
      //   2536: isub
      //   2537: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2540: aastore
      //   2541: aload 52
      //   2543: iconst_2
      //   2544: iload 32
      //   2546: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2549: aastore
      //   2550: aload 52
      //   2552: iconst_3
      //   2553: ldc 100
      //   2555: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2558: aastore
      //   2559: aload 52
      //   2561: iconst_4
      //   2562: aload_0
      //   2563: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2566: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2569: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2572: aastore
      //   2573: aload_0
      //   2574: aload 52
      //   2576: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2579: iconst_3
      //   2580: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2583: astore 53
      //   2585: aload 31
      //   2587: invokevirtual 216	java/lang/Process:destroy	()V
      //   2590: aload 53
      //   2592: areturn
      //   2593: iconst_5
      //   2594: anewarray 74	java/lang/Object
      //   2597: astore 24
      //   2599: aload 24
      //   2601: iconst_0
      //   2602: iload_3
      //   2603: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2606: aastore
      //   2607: aload 24
      //   2609: iconst_1
      //   2610: iload 22
      //   2612: iconst_1
      //   2613: isub
      //   2614: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2617: aastore
      //   2618: aload 24
      //   2620: iconst_2
      //   2621: iload 22
      //   2623: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2626: aastore
      //   2627: aload 24
      //   2629: iconst_3
      //   2630: ldc 100
      //   2632: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2635: aastore
      //   2636: aload 24
      //   2638: iconst_4
      //   2639: aload_0
      //   2640: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2643: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2646: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2649: aastore
      //   2650: aload_0
      //   2651: aload 24
      //   2653: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2656: iconst_3
      //   2657: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2660: areturn
      //   2661: iconst_5
      //   2662: anewarray 74	java/lang/Object
      //   2665: astore 29
      //   2667: aload 29
      //   2669: iconst_0
      //   2670: iload_3
      //   2671: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2674: aastore
      //   2675: aload 29
      //   2677: iconst_1
      //   2678: iload 27
      //   2680: iconst_1
      //   2681: isub
      //   2682: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2685: aastore
      //   2686: aload 29
      //   2688: iconst_2
      //   2689: iload 27
      //   2691: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2694: aastore
      //   2695: aload 29
      //   2697: iconst_3
      //   2698: ldc 100
      //   2700: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2703: aastore
      //   2704: aload 29
      //   2706: iconst_4
      //   2707: aload_0
      //   2708: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2711: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2714: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2717: aastore
      //   2718: aload_0
      //   2719: aload 29
      //   2721: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2724: iconst_3
      //   2725: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2728: areturn
      //   2729: ldc_w 317
      //   2732: invokestatic 323	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
      //   2735: aload 51
      //   2737: invokevirtual 327	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
      //   2740: astore 54
      //   2742: aload 54
      //   2744: invokevirtual 333	java/util/regex/Matcher:find	()Z
      //   2747: ifeq +18 -> 2765
      //   2750: aload 54
      //   2752: iconst_1
      //   2753: invokevirtual 337	java/util/regex/Matcher:group	(I)Ljava/lang/String;
      //   2756: ldc_w 339
      //   2759: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   2762: ifne +80 -> 2842
      //   2765: iconst_5
      //   2766: anewarray 74	java/lang/Object
      //   2769: astore 55
      //   2771: aload 55
      //   2773: iconst_0
      //   2774: iload_3
      //   2775: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2778: aastore
      //   2779: aload 55
      //   2781: iconst_1
      //   2782: iload 32
      //   2784: iconst_1
      //   2785: isub
      //   2786: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2789: aastore
      //   2790: aload 55
      //   2792: iconst_2
      //   2793: iload 32
      //   2795: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2798: aastore
      //   2799: aload 55
      //   2801: iconst_3
      //   2802: ldc 100
      //   2804: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2807: aastore
      //   2808: aload 55
      //   2810: iconst_4
      //   2811: aload_0
      //   2812: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2815: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2818: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2821: aastore
      //   2822: aload_0
      //   2823: aload 55
      //   2825: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2828: iconst_3
      //   2829: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2832: astore 56
      //   2834: aload 31
      //   2836: invokevirtual 216	java/lang/Process:destroy	()V
      //   2839: aload 56
      //   2841: areturn
      //   2842: iconst_5
      //   2843: anewarray 74	java/lang/Object
      //   2846: astore 57
      //   2848: aload 57
      //   2850: iconst_0
      //   2851: iload_3
      //   2852: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2855: aastore
      //   2856: aload 57
      //   2858: iconst_1
      //   2859: iload 32
      //   2861: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2864: aastore
      //   2865: aload 57
      //   2867: iconst_2
      //   2868: iload 32
      //   2870: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2873: aastore
      //   2874: aload 57
      //   2876: iconst_3
      //   2877: ldc 90
      //   2879: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2882: aastore
      //   2883: aload 57
      //   2885: iconst_4
      //   2886: aload_0
      //   2887: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2890: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   2893: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2896: aastore
      //   2897: aload_0
      //   2898: aload 57
      //   2900: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2903: iinc 32 1
      //   2906: iconst_4
      //   2907: anewarray 74	java/lang/Object
      //   2910: astore 58
      //   2912: aload 58
      //   2914: iconst_0
      //   2915: iload_3
      //   2916: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2919: aastore
      //   2920: aload 58
      //   2922: iconst_1
      //   2923: iload 32
      //   2925: iconst_1
      //   2926: isub
      //   2927: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2930: aastore
      //   2931: aload 58
      //   2933: iconst_2
      //   2934: iload 32
      //   2936: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2939: aastore
      //   2940: aload 58
      //   2942: iconst_3
      //   2943: ldc_w 340
      //   2946: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   2949: aastore
      //   2950: aload_0
      //   2951: aload 58
      //   2953: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   2956: aload_0
      //   2957: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2960: astore 59
      //   2962: iconst_1
      //   2963: anewarray 165	java/lang/String
      //   2966: astore 60
      //   2968: aload 60
      //   2970: iconst_0
      //   2971: new 191	java/lang/StringBuilder
      //   2974: dup
      //   2975: aload_0
      //   2976: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   2979: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   2982: invokestatic 343	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   2985: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   2988: ldc_w 345
      //   2991: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   2994: invokevirtual 202	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   2997: aastore
      //   2998: aload 59
      //   3000: aload 49
      //   3002: aconst_null
      //   3003: aload 60
      //   3005: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   3008: pop
      //   3009: aload_0
      //   3010: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3013: astore 62
      //   3015: iconst_1
      //   3016: anewarray 165	java/lang/String
      //   3019: astore 63
      //   3021: aload 63
      //   3023: iconst_0
      //   3024: new 191	java/lang/StringBuilder
      //   3027: dup
      //   3028: aload_0
      //   3029: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3032: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3035: invokestatic 343	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
      //   3038: invokespecial 195	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   3041: ldc_w 351
      //   3044: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   3047: aload_0
      //   3048: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3051: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3054: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   3057: ldc_w 353
      //   3060: invokevirtual 199	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   3063: invokevirtual 202	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   3066: aastore
      //   3067: aload 62
      //   3069: aload 49
      //   3071: aload 50
      //   3073: aload 63
      //   3075: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   3078: astore 64
      //   3080: aload 64
      //   3082: ifnull +14 -> 3096
      //   3085: aload 64
      //   3087: ldc_w 355
      //   3090: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   3093: ifne +80 -> 3173
      //   3096: iconst_5
      //   3097: anewarray 74	java/lang/Object
      //   3100: astore 65
      //   3102: aload 65
      //   3104: iconst_0
      //   3105: iload_3
      //   3106: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3109: aastore
      //   3110: aload 65
      //   3112: iconst_1
      //   3113: iload 32
      //   3115: iconst_1
      //   3116: isub
      //   3117: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3120: aastore
      //   3121: aload 65
      //   3123: iconst_2
      //   3124: iload 32
      //   3126: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3129: aastore
      //   3130: aload 65
      //   3132: iconst_3
      //   3133: ldc 90
      //   3135: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3138: aastore
      //   3139: aload 65
      //   3141: iconst_4
      //   3142: aload_0
      //   3143: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3146: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3149: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3152: aastore
      //   3153: aload_0
      //   3154: aload 65
      //   3156: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3159: iconst_3
      //   3160: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3163: astore 66
      //   3165: aload 31
      //   3167: invokevirtual 216	java/lang/Process:destroy	()V
      //   3170: aload 66
      //   3172: areturn
      //   3173: iconst_5
      //   3174: anewarray 74	java/lang/Object
      //   3177: astore 67
      //   3179: aload 67
      //   3181: iconst_0
      //   3182: iload_3
      //   3183: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3186: aastore
      //   3187: aload 67
      //   3189: iconst_1
      //   3190: iload 32
      //   3192: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3195: aastore
      //   3196: aload 67
      //   3198: iconst_2
      //   3199: iload 32
      //   3201: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3204: aastore
      //   3205: aload 67
      //   3207: iconst_3
      //   3208: ldc 90
      //   3210: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3213: aastore
      //   3214: aload 67
      //   3216: iconst_4
      //   3217: aload_0
      //   3218: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3221: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3224: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3227: aastore
      //   3228: aload_0
      //   3229: aload 67
      //   3231: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3234: iinc 32 1
      //   3237: iconst_4
      //   3238: anewarray 74	java/lang/Object
      //   3241: astore 68
      //   3243: aload 68
      //   3245: iconst_0
      //   3246: iload_3
      //   3247: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3250: aastore
      //   3251: aload 68
      //   3253: iconst_1
      //   3254: iload 32
      //   3256: iconst_1
      //   3257: isub
      //   3258: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3261: aastore
      //   3262: aload 68
      //   3264: iconst_2
      //   3265: iload 32
      //   3267: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3270: aastore
      //   3271: aload 68
      //   3273: iconst_3
      //   3274: ldc_w 356
      //   3277: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3280: aastore
      //   3281: aload_0
      //   3282: aload 68
      //   3284: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3287: aload_0
      //   3288: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3291: astore 69
      //   3293: bipush 6
      //   3295: anewarray 165	java/lang/String
      //   3298: astore 70
      //   3300: aload 70
      //   3302: iconst_0
      //   3303: aload_0
      //   3304: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3307: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3310: aastore
      //   3311: aload 70
      //   3313: iconst_1
      //   3314: ldc_w 358
      //   3317: aastore
      //   3318: aload 70
      //   3320: iconst_2
      //   3321: aload 25
      //   3323: aastore
      //   3324: aload 70
      //   3326: iconst_3
      //   3327: ldc_w 360
      //   3330: aastore
      //   3331: aload 70
      //   3333: iconst_4
      //   3334: aload_0
      //   3335: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3338: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3341: aastore
      //   3342: aload 70
      //   3344: iconst_5
      //   3345: ldc_w 362
      //   3348: aastore
      //   3349: aload 69
      //   3351: aload 49
      //   3353: aload 50
      //   3355: aload 70
      //   3357: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   3360: astore 71
      //   3362: aload 71
      //   3364: ifnull +14 -> 3378
      //   3367: aload 71
      //   3369: ldc_w 355
      //   3372: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   3375: ifne +80 -> 3455
      //   3378: iconst_5
      //   3379: anewarray 74	java/lang/Object
      //   3382: astore 72
      //   3384: aload 72
      //   3386: iconst_0
      //   3387: iload_3
      //   3388: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3391: aastore
      //   3392: aload 72
      //   3394: iconst_1
      //   3395: iload 32
      //   3397: iconst_1
      //   3398: isub
      //   3399: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3402: aastore
      //   3403: aload 72
      //   3405: iconst_2
      //   3406: iload 32
      //   3408: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3411: aastore
      //   3412: aload 72
      //   3414: iconst_3
      //   3415: ldc 100
      //   3417: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3420: aastore
      //   3421: aload 72
      //   3423: iconst_4
      //   3424: aload_0
      //   3425: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3428: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3431: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3434: aastore
      //   3435: aload_0
      //   3436: aload 72
      //   3438: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3441: iconst_3
      //   3442: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3445: astore 73
      //   3447: aload 31
      //   3449: invokevirtual 216	java/lang/Process:destroy	()V
      //   3452: aload 73
      //   3454: areturn
      //   3455: iconst_5
      //   3456: anewarray 74	java/lang/Object
      //   3459: astore 74
      //   3461: aload 74
      //   3463: iconst_0
      //   3464: iload_3
      //   3465: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3468: aastore
      //   3469: aload 74
      //   3471: iconst_1
      //   3472: iload 32
      //   3474: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3477: aastore
      //   3478: aload 74
      //   3480: iconst_2
      //   3481: iload 32
      //   3483: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3486: aastore
      //   3487: aload 74
      //   3489: iconst_3
      //   3490: ldc 90
      //   3492: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3495: aastore
      //   3496: aload 74
      //   3498: iconst_4
      //   3499: aload_0
      //   3500: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3503: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3506: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3509: aastore
      //   3510: aload_0
      //   3511: aload 74
      //   3513: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3516: iinc 32 1
      //   3519: iconst_4
      //   3520: anewarray 74	java/lang/Object
      //   3523: astore 75
      //   3525: aload 75
      //   3527: iconst_0
      //   3528: iload_3
      //   3529: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3532: aastore
      //   3533: aload 75
      //   3535: iconst_1
      //   3536: iload 32
      //   3538: iconst_1
      //   3539: isub
      //   3540: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3543: aastore
      //   3544: aload 75
      //   3546: iconst_2
      //   3547: iload 32
      //   3549: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3552: aastore
      //   3553: aload 75
      //   3555: iconst_3
      //   3556: ldc 217
      //   3558: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3561: aastore
      //   3562: aload_0
      //   3563: aload 75
      //   3565: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3568: aload_0
      //   3569: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3572: astore 76
      //   3574: iconst_2
      //   3575: anewarray 165	java/lang/String
      //   3578: astore 77
      //   3580: aload 77
      //   3582: iconst_0
      //   3583: aload_0
      //   3584: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3587: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3590: aastore
      //   3591: aload 77
      //   3593: iconst_1
      //   3594: ldc_w 364
      //   3597: aastore
      //   3598: aload 76
      //   3600: aload 49
      //   3602: aload 50
      //   3604: aload 77
      //   3606: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   3609: astore 78
      //   3611: aload 78
      //   3613: ifnull +29 -> 3642
      //   3616: aload 78
      //   3618: ldc_w 366
      //   3621: invokevirtual 370	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
      //   3624: iconst_0
      //   3625: aaload
      //   3626: aload_0
      //   3627: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3630: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   3633: getfield 270	com/noshufou/android/su/UpdaterFragment$Manifest:binaryMd5	Ljava/lang/String;
      //   3636: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   3639: ifne +80 -> 3719
      //   3642: iconst_5
      //   3643: anewarray 74	java/lang/Object
      //   3646: astore 79
      //   3648: aload 79
      //   3650: iconst_0
      //   3651: iload_3
      //   3652: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3655: aastore
      //   3656: aload 79
      //   3658: iconst_1
      //   3659: iload 32
      //   3661: iconst_1
      //   3662: isub
      //   3663: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3666: aastore
      //   3667: aload 79
      //   3669: iconst_2
      //   3670: iload 32
      //   3672: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3675: aastore
      //   3676: aload 79
      //   3678: iconst_3
      //   3679: ldc 100
      //   3681: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3684: aastore
      //   3685: aload 79
      //   3687: iconst_4
      //   3688: aload_0
      //   3689: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3692: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3695: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3698: aastore
      //   3699: aload_0
      //   3700: aload 79
      //   3702: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3705: iconst_3
      //   3706: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3709: astore 80
      //   3711: aload 31
      //   3713: invokevirtual 216	java/lang/Process:destroy	()V
      //   3716: aload 80
      //   3718: areturn
      //   3719: iconst_5
      //   3720: anewarray 74	java/lang/Object
      //   3723: astore 81
      //   3725: aload 81
      //   3727: iconst_0
      //   3728: iload_3
      //   3729: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3732: aastore
      //   3733: aload 81
      //   3735: iconst_1
      //   3736: iload 32
      //   3738: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3741: aastore
      //   3742: aload 81
      //   3744: iconst_2
      //   3745: iload 32
      //   3747: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3750: aastore
      //   3751: aload 81
      //   3753: iconst_3
      //   3754: ldc 90
      //   3756: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3759: aastore
      //   3760: aload 81
      //   3762: iconst_4
      //   3763: aload_0
      //   3764: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3767: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3770: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3773: aastore
      //   3774: aload_0
      //   3775: aload 81
      //   3777: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3780: iinc 32 1
      //   3783: iconst_4
      //   3784: anewarray 74	java/lang/Object
      //   3787: astore 82
      //   3789: aload 82
      //   3791: iconst_0
      //   3792: iload_3
      //   3793: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3796: aastore
      //   3797: aload 82
      //   3799: iconst_1
      //   3800: iload 32
      //   3802: iconst_1
      //   3803: isub
      //   3804: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3807: aastore
      //   3808: aload 82
      //   3810: iconst_2
      //   3811: iload 32
      //   3813: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3816: aastore
      //   3817: aload 82
      //   3819: iconst_3
      //   3820: ldc_w 371
      //   3823: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3826: aastore
      //   3827: aload_0
      //   3828: aload 82
      //   3830: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3833: aload_0
      //   3834: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3837: astore 83
      //   3839: bipush 6
      //   3841: anewarray 165	java/lang/String
      //   3844: astore 84
      //   3846: aload 84
      //   3848: iconst_0
      //   3849: aload_0
      //   3850: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3853: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3856: aastore
      //   3857: aload 84
      //   3859: iconst_1
      //   3860: ldc_w 373
      //   3863: aastore
      //   3864: aload 84
      //   3866: iconst_2
      //   3867: aload 19
      //   3869: aastore
      //   3870: aload 84
      //   3872: iconst_3
      //   3873: ldc_w 375
      //   3876: aastore
      //   3877: aload 84
      //   3879: iconst_4
      //   3880: aload_0
      //   3881: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3884: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   3887: aastore
      //   3888: aload 84
      //   3890: iconst_5
      //   3891: ldc_w 362
      //   3894: aastore
      //   3895: aload 83
      //   3897: aload 49
      //   3899: aload 50
      //   3901: aload 84
      //   3903: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   3906: astore 85
      //   3908: aload 85
      //   3910: ifnull +14 -> 3924
      //   3913: aload 85
      //   3915: ldc_w 355
      //   3918: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   3921: ifne +80 -> 4001
      //   3924: iconst_5
      //   3925: anewarray 74	java/lang/Object
      //   3928: astore 86
      //   3930: aload 86
      //   3932: iconst_0
      //   3933: iload_3
      //   3934: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3937: aastore
      //   3938: aload 86
      //   3940: iconst_1
      //   3941: iload 32
      //   3943: iconst_1
      //   3944: isub
      //   3945: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3948: aastore
      //   3949: aload 86
      //   3951: iconst_2
      //   3952: iload 32
      //   3954: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3957: aastore
      //   3958: aload 86
      //   3960: iconst_3
      //   3961: ldc 100
      //   3963: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3966: aastore
      //   3967: aload 86
      //   3969: iconst_4
      //   3970: aload_0
      //   3971: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   3974: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   3977: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3980: aastore
      //   3981: aload_0
      //   3982: aload 86
      //   3984: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   3987: iconst_3
      //   3988: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   3991: astore 87
      //   3993: aload 31
      //   3995: invokevirtual 216	java/lang/Process:destroy	()V
      //   3998: aload 87
      //   4000: areturn
      //   4001: iconst_5
      //   4002: anewarray 74	java/lang/Object
      //   4005: astore 88
      //   4007: aload 88
      //   4009: iconst_0
      //   4010: iload_3
      //   4011: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4014: aastore
      //   4015: aload 88
      //   4017: iconst_1
      //   4018: iload 32
      //   4020: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4023: aastore
      //   4024: aload 88
      //   4026: iconst_2
      //   4027: iload 32
      //   4029: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4032: aastore
      //   4033: aload 88
      //   4035: iconst_3
      //   4036: ldc 90
      //   4038: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4041: aastore
      //   4042: aload 88
      //   4044: iconst_4
      //   4045: aload_0
      //   4046: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4049: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4052: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4055: aastore
      //   4056: aload_0
      //   4057: aload 88
      //   4059: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4062: iinc 32 1
      //   4065: iconst_4
      //   4066: anewarray 74	java/lang/Object
      //   4069: astore 89
      //   4071: aload 89
      //   4073: iconst_0
      //   4074: iload_3
      //   4075: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4078: aastore
      //   4079: aload 89
      //   4081: iconst_1
      //   4082: iload 32
      //   4084: iconst_1
      //   4085: isub
      //   4086: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4089: aastore
      //   4090: aload 89
      //   4092: iconst_2
      //   4093: iload 32
      //   4095: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4098: aastore
      //   4099: aload 89
      //   4101: iconst_3
      //   4102: ldc 217
      //   4104: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4107: aastore
      //   4108: aload_0
      //   4109: aload 89
      //   4111: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4114: aload_0
      //   4115: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4118: astore 90
      //   4120: iconst_3
      //   4121: anewarray 165	java/lang/String
      //   4124: astore 91
      //   4126: aload 91
      //   4128: iconst_0
      //   4129: aload_0
      //   4130: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4133: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   4136: aastore
      //   4137: aload 91
      //   4139: iconst_1
      //   4140: ldc_w 377
      //   4143: aastore
      //   4144: aload 91
      //   4146: iconst_2
      //   4147: aload 19
      //   4149: aastore
      //   4150: aload 90
      //   4152: aload 49
      //   4154: aload 50
      //   4156: aload 91
      //   4158: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   4161: astore 92
      //   4163: aload 92
      //   4165: ifnull +29 -> 4194
      //   4168: aload 92
      //   4170: ldc_w 366
      //   4173: invokevirtual 370	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
      //   4176: iconst_0
      //   4177: aaload
      //   4178: aload_0
      //   4179: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4182: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   4185: getfield 270	com/noshufou/android/su/UpdaterFragment$Manifest:binaryMd5	Ljava/lang/String;
      //   4188: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   4191: ifne +80 -> 4271
      //   4194: iconst_5
      //   4195: anewarray 74	java/lang/Object
      //   4198: astore 93
      //   4200: aload 93
      //   4202: iconst_0
      //   4203: iload_3
      //   4204: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4207: aastore
      //   4208: aload 93
      //   4210: iconst_1
      //   4211: iload 32
      //   4213: iconst_1
      //   4214: isub
      //   4215: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4218: aastore
      //   4219: aload 93
      //   4221: iconst_2
      //   4222: iload 32
      //   4224: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4227: aastore
      //   4228: aload 93
      //   4230: iconst_3
      //   4231: ldc 100
      //   4233: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4236: aastore
      //   4237: aload 93
      //   4239: iconst_4
      //   4240: aload_0
      //   4241: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4244: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4247: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4250: aastore
      //   4251: aload_0
      //   4252: aload 93
      //   4254: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4257: iconst_3
      //   4258: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4261: astore 94
      //   4263: aload 31
      //   4265: invokevirtual 216	java/lang/Process:destroy	()V
      //   4268: aload 94
      //   4270: areturn
      //   4271: iconst_5
      //   4272: anewarray 74	java/lang/Object
      //   4275: astore 95
      //   4277: aload 95
      //   4279: iconst_0
      //   4280: iload_3
      //   4281: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4284: aastore
      //   4285: aload 95
      //   4287: iconst_1
      //   4288: iload 32
      //   4290: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4293: aastore
      //   4294: aload 95
      //   4296: iconst_2
      //   4297: iload 32
      //   4299: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4302: aastore
      //   4303: aload 95
      //   4305: iconst_3
      //   4306: ldc 90
      //   4308: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4311: aastore
      //   4312: aload 95
      //   4314: iconst_4
      //   4315: aload_0
      //   4316: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4319: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4322: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4325: aastore
      //   4326: aload_0
      //   4327: aload 95
      //   4329: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4332: iinc 32 1
      //   4335: iconst_4
      //   4336: anewarray 74	java/lang/Object
      //   4339: astore 96
      //   4341: aload 96
      //   4343: iconst_0
      //   4344: iload_3
      //   4345: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4348: aastore
      //   4349: aload 96
      //   4351: iconst_1
      //   4352: iload 32
      //   4354: iconst_1
      //   4355: isub
      //   4356: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4359: aastore
      //   4360: aload 96
      //   4362: iconst_2
      //   4363: iload 32
      //   4365: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4368: aastore
      //   4369: aload 96
      //   4371: iconst_3
      //   4372: ldc_w 378
      //   4375: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4378: aastore
      //   4379: aload_0
      //   4380: aload 96
      //   4382: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4385: aload_0
      //   4386: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4389: astore 97
      //   4391: bipush 6
      //   4393: anewarray 165	java/lang/String
      //   4396: astore 98
      //   4398: aload 98
      //   4400: iconst_0
      //   4401: aload_0
      //   4402: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4405: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   4408: aastore
      //   4409: aload 98
      //   4411: iconst_1
      //   4412: ldc_w 380
      //   4415: aastore
      //   4416: aload 98
      //   4418: iconst_2
      //   4419: aload 19
      //   4421: aastore
      //   4422: aload 98
      //   4424: iconst_3
      //   4425: ldc_w 375
      //   4428: aastore
      //   4429: aload 98
      //   4431: iconst_4
      //   4432: aload_0
      //   4433: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4436: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   4439: aastore
      //   4440: aload 98
      //   4442: iconst_5
      //   4443: ldc_w 362
      //   4446: aastore
      //   4447: aload 97
      //   4449: aload 49
      //   4451: aload 50
      //   4453: aload 98
      //   4455: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   4458: astore 99
      //   4460: aload 99
      //   4462: ifnull +14 -> 4476
      //   4465: aload 99
      //   4467: ldc_w 355
      //   4470: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   4473: ifne +66 -> 4539
      //   4476: iconst_5
      //   4477: anewarray 74	java/lang/Object
      //   4480: astore 100
      //   4482: aload 100
      //   4484: iconst_0
      //   4485: iload_3
      //   4486: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4489: aastore
      //   4490: aload 100
      //   4492: iconst_1
      //   4493: iload 32
      //   4495: iconst_1
      //   4496: isub
      //   4497: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4500: aastore
      //   4501: aload 100
      //   4503: iconst_2
      //   4504: iload 32
      //   4506: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4509: aastore
      //   4510: aload 100
      //   4512: iconst_3
      //   4513: ldc 100
      //   4515: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4518: aastore
      //   4519: aload 100
      //   4521: iconst_4
      //   4522: aload_0
      //   4523: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4526: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4529: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4532: aastore
      //   4533: aload_0
      //   4534: aload 100
      //   4536: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4539: iconst_5
      //   4540: anewarray 74	java/lang/Object
      //   4543: astore 101
      //   4545: aload 101
      //   4547: iconst_0
      //   4548: iload_3
      //   4549: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4552: aastore
      //   4553: aload 101
      //   4555: iconst_1
      //   4556: iload 32
      //   4558: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4561: aastore
      //   4562: aload 101
      //   4564: iconst_2
      //   4565: iload 32
      //   4567: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4570: aastore
      //   4571: aload 101
      //   4573: iconst_3
      //   4574: ldc 90
      //   4576: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4579: aastore
      //   4580: aload 101
      //   4582: iconst_4
      //   4583: aload_0
      //   4584: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4587: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4590: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4593: aastore
      //   4594: aload_0
      //   4595: aload 101
      //   4597: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4600: iinc 32 1
      //   4603: iconst_4
      //   4604: anewarray 74	java/lang/Object
      //   4607: astore 102
      //   4609: aload 102
      //   4611: iconst_0
      //   4612: iload_3
      //   4613: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4616: aastore
      //   4617: aload 102
      //   4619: iconst_1
      //   4620: iload 32
      //   4622: iconst_1
      //   4623: isub
      //   4624: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4627: aastore
      //   4628: aload 102
      //   4630: iconst_2
      //   4631: iload 32
      //   4633: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4636: aastore
      //   4637: aload 102
      //   4639: iconst_3
      //   4640: ldc_w 381
      //   4643: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4646: aastore
      //   4647: aload_0
      //   4648: aload 102
      //   4650: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4653: aload_0
      //   4654: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4657: astore 103
      //   4659: iconst_2
      //   4660: anewarray 165	java/lang/String
      //   4663: astore 104
      //   4665: aload 104
      //   4667: iconst_0
      //   4668: aload_0
      //   4669: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4672: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   4675: aastore
      //   4676: aload 104
      //   4678: iconst_1
      //   4679: ldc_w 383
      //   4682: aastore
      //   4683: aload 103
      //   4685: aload 49
      //   4687: aconst_null
      //   4688: aload 104
      //   4690: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   4693: pop
      //   4694: aload_0
      //   4695: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4698: astore 106
      //   4700: iconst_4
      //   4701: anewarray 165	java/lang/String
      //   4704: astore 107
      //   4706: aload 107
      //   4708: iconst_0
      //   4709: aload_0
      //   4710: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4713: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   4716: aastore
      //   4717: aload 107
      //   4719: iconst_1
      //   4720: ldc_w 385
      //   4723: aastore
      //   4724: aload 107
      //   4726: iconst_2
      //   4727: aload_0
      //   4728: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4731: invokestatic 175	com/noshufou/android/su/UpdaterFragment:access$11	(Lcom/noshufou/android/su/UpdaterFragment;)Ljava/lang/String;
      //   4734: aastore
      //   4735: aload 107
      //   4737: iconst_3
      //   4738: ldc_w 362
      //   4741: aastore
      //   4742: aload 106
      //   4744: aload 49
      //   4746: aload 50
      //   4748: aload 107
      //   4750: invokestatic 349	com/noshufou/android/su/UpdaterFragment:access$14	(Lcom/noshufou/android/su/UpdaterFragment;Ljava/io/DataOutputStream;Ljava/io/BufferedReader;[Ljava/lang/String;)Ljava/lang/String;
      //   4753: astore 108
      //   4755: aload 108
      //   4757: ifnull +14 -> 4771
      //   4760: aload 108
      //   4762: ldc_w 355
      //   4765: invokevirtual 253	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   4768: ifne +114 -> 4882
      //   4771: iconst_5
      //   4772: anewarray 74	java/lang/Object
      //   4775: astore 109
      //   4777: aload 109
      //   4779: iconst_0
      //   4780: iload_3
      //   4781: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4784: aastore
      //   4785: aload 109
      //   4787: iconst_1
      //   4788: iload 32
      //   4790: iconst_1
      //   4791: isub
      //   4792: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4795: aastore
      //   4796: aload 109
      //   4798: iconst_2
      //   4799: iload 32
      //   4801: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4804: aastore
      //   4805: aload 109
      //   4807: iconst_3
      //   4808: ldc 100
      //   4810: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4813: aastore
      //   4814: aload 109
      //   4816: iconst_4
      //   4817: aload_0
      //   4818: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4821: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4824: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4827: aastore
      //   4828: aload_0
      //   4829: aload 109
      //   4831: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4834: iconst_4
      //   4835: anewarray 74	java/lang/Object
      //   4838: astore 110
      //   4840: aload 110
      //   4842: iconst_0
      //   4843: iload_3
      //   4844: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4847: aastore
      //   4848: aload 110
      //   4850: iconst_1
      //   4851: iload 32
      //   4853: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4856: aastore
      //   4857: aload 110
      //   4859: iconst_2
      //   4860: iload 32
      //   4862: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4865: aastore
      //   4866: aload 110
      //   4868: iconst_3
      //   4869: ldc_w 386
      //   4872: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4875: aastore
      //   4876: aload_0
      //   4877: aload 110
      //   4879: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4882: iconst_5
      //   4883: anewarray 74	java/lang/Object
      //   4886: astore 111
      //   4888: aload 111
      //   4890: iconst_0
      //   4891: iload_3
      //   4892: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4895: aastore
      //   4896: aload 111
      //   4898: iconst_1
      //   4899: iload 32
      //   4901: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4904: aastore
      //   4905: aload 111
      //   4907: iconst_2
      //   4908: iload 32
      //   4910: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4913: aastore
      //   4914: aload 111
      //   4916: iconst_3
      //   4917: ldc 90
      //   4919: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4922: aastore
      //   4923: aload 111
      //   4925: iconst_4
      //   4926: aload_0
      //   4927: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   4930: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   4933: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4936: aastore
      //   4937: aload_0
      //   4938: aload 111
      //   4940: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   4943: aload 49
      //   4945: ldc_w 388
      //   4948: invokevirtual 312	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
      //   4951: aload 31
      //   4953: invokevirtual 216	java/lang/Process:destroy	()V
      //   4956: iload 32
      //   4958: iconst_1
      //   4959: iadd
      //   4960: istore 36
      //   4962: iconst_4
      //   4963: anewarray 74	java/lang/Object
      //   4966: astore 37
      //   4968: aload 37
      //   4970: iconst_0
      //   4971: iload_3
      //   4972: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4975: aastore
      //   4976: aload 37
      //   4978: iconst_1
      //   4979: iload 36
      //   4981: iconst_1
      //   4982: isub
      //   4983: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4986: aastore
      //   4987: aload 37
      //   4989: iconst_2
      //   4990: iload 36
      //   4992: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   4995: aastore
      //   4996: aload 37
      //   4998: iconst_3
      //   4999: ldc 111
      //   5001: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5004: aastore
      //   5005: aload_0
      //   5006: aload 37
      //   5008: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   5011: invokestatic 116	com/noshufou/android/su/util/Util:getSuVersionCode	()I
      //   5014: istore 38
      //   5016: invokestatic 120	com/noshufou/android/su/util/Util:getSuVersion	()Ljava/lang/String;
      //   5019: astore 39
      //   5021: iload 38
      //   5023: aload_0
      //   5024: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5027: invokestatic 99	com/noshufou/android/su/UpdaterFragment:access$9	(Lcom/noshufou/android/su/UpdaterFragment;)Lcom/noshufou/android/su/UpdaterFragment$Manifest;
      //   5030: getfield 123	com/noshufou/android/su/UpdaterFragment$Manifest:versionCode	I
      //   5033: if_icmpne +258 -> 5291
      //   5036: iconst_5
      //   5037: anewarray 74	java/lang/Object
      //   5040: astore 41
      //   5042: aload 41
      //   5044: iconst_0
      //   5045: iload_3
      //   5046: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5049: aastore
      //   5050: aload 41
      //   5052: iconst_1
      //   5053: iload 36
      //   5055: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5058: aastore
      //   5059: aload 41
      //   5061: iconst_2
      //   5062: iload 36
      //   5064: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5067: aastore
      //   5068: aload 41
      //   5070: iconst_3
      //   5071: aload 39
      //   5073: aastore
      //   5074: aload 41
      //   5076: iconst_4
      //   5077: aload_0
      //   5078: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5081: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   5084: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5087: aastore
      //   5088: aload_0
      //   5089: aload 41
      //   5091: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   5094: iload 36
      //   5096: iconst_1
      //   5097: iadd
      //   5098: istore 42
      //   5100: iconst_4
      //   5101: anewarray 74	java/lang/Object
      //   5104: astore 43
      //   5106: aload 43
      //   5108: iconst_0
      //   5109: iload_3
      //   5110: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5113: aastore
      //   5114: aload 43
      //   5116: iconst_1
      //   5117: iload 42
      //   5119: iconst_1
      //   5120: isub
      //   5121: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5124: aastore
      //   5125: aload 43
      //   5127: iconst_2
      //   5128: iload 42
      //   5130: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5133: aastore
      //   5134: aload 43
      //   5136: iconst_3
      //   5137: ldc_w 389
      //   5140: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5143: aastore
      //   5144: aload_0
      //   5145: aload 43
      //   5147: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   5150: aload_0
      //   5151: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5154: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
      //   5157: ldc 161
      //   5159: invokevirtual 393	android/support/v4/app/FragmentActivity:deleteFile	(Ljava/lang/String;)Z
      //   5162: pop
      //   5163: aload_0
      //   5164: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5167: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
      //   5170: ldc_w 260
      //   5173: invokevirtual 393	android/support/v4/app/FragmentActivity:deleteFile	(Ljava/lang/String;)Z
      //   5176: pop
      //   5177: iload_2
      //   5178: ifeq +16 -> 5194
      //   5181: aload_0
      //   5182: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5185: invokevirtual 132	com/noshufou/android/su/UpdaterFragment:getActivity	()Landroid/support/v4/app/FragmentActivity;
      //   5188: ldc 134
      //   5190: invokevirtual 396	android/support/v4/app/FragmentActivity:deleteDatabase	(Ljava/lang/String;)Z
      //   5193: pop
      //   5194: iconst_5
      //   5195: anewarray 74	java/lang/Object
      //   5198: astore 46
      //   5200: aload 46
      //   5202: iconst_0
      //   5203: iload_3
      //   5204: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5207: aastore
      //   5208: aload 46
      //   5210: iconst_1
      //   5211: iload 42
      //   5213: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5216: aastore
      //   5217: aload 46
      //   5219: iconst_2
      //   5220: iload 42
      //   5222: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5225: aastore
      //   5226: aload 46
      //   5228: iconst_3
      //   5229: ldc 90
      //   5231: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5234: aastore
      //   5235: aload 46
      //   5237: iconst_4
      //   5238: aload_0
      //   5239: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5242: invokestatic 94	com/noshufou/android/su/UpdaterFragment:access$7	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   5245: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5248: aastore
      //   5249: aload_0
      //   5250: aload 46
      //   5252: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   5255: iconst_2
      //   5256: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5259: areturn
      //   5260: astore 34
      //   5262: ldc 189
      //   5264: ldc_w 398
      //   5267: aload 34
      //   5269: invokestatic 236	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   5272: pop
      //   5273: aload 31
      //   5275: invokevirtual 216	java/lang/Process:destroy	()V
      //   5278: goto -322 -> 4956
      //   5281: astore 33
      //   5283: aload 31
      //   5285: invokevirtual 216	java/lang/Process:destroy	()V
      //   5288: aload 33
      //   5290: athrow
      //   5291: iconst_5
      //   5292: anewarray 74	java/lang/Object
      //   5295: astore 40
      //   5297: aload 40
      //   5299: iconst_0
      //   5300: iload_3
      //   5301: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5304: aastore
      //   5305: aload 40
      //   5307: iconst_1
      //   5308: iload 36
      //   5310: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5313: aastore
      //   5314: aload 40
      //   5316: iconst_2
      //   5317: iload 36
      //   5319: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5322: aastore
      //   5323: aload 40
      //   5325: iconst_3
      //   5326: aload 39
      //   5328: aastore
      //   5329: aload 40
      //   5331: iconst_4
      //   5332: aload_0
      //   5333: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5336: invokestatic 103	com/noshufou/android/su/UpdaterFragment:access$8	(Lcom/noshufou/android/su/UpdaterFragment;)I
      //   5339: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5342: aastore
      //   5343: aload_0
      //   5344: aload 40
      //   5346: invokevirtual 79	com/noshufou/android/su/UpdaterFragment$UpdateTask:publishProgress	([Ljava/lang/Object;)V
      //   5349: aload_0
      //   5350: getfield 44	com/noshufou/android/su/UpdaterFragment$UpdateTask:this$0	Lcom/noshufou/android/su/UpdaterFragment;
      //   5353: getstatic 33	com/noshufou/android/su/UpdaterFragment$Step:DOWNLOAD_BUSYBOX	Lcom/noshufou/android/su/UpdaterFragment$Step;
      //   5356: invokestatic 127	com/noshufou/android/su/UpdaterFragment:access$10	(Lcom/noshufou/android/su/UpdaterFragment;Lcom/noshufou/android/su/UpdaterFragment$Step;)V
      //   5359: iconst_3
      //   5360: invokestatic 72	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   5363: areturn
      //
      // Exception table:
      //   from	to	target	type
      //   858	895	1558	android/database/SQLException
      //   858	895	1656	finally
      //   1560	1639	1656	finally
      //   1043	1140	1680	java/io/IOException
      //   1043	1140	1760	java/lang/InterruptedException
      //   2391	2511	5260	java/io/IOException
      //   2516	2585	5260	java/io/IOException
      //   2729	2765	5260	java/io/IOException
      //   2765	2834	5260	java/io/IOException
      //   2842	2903	5260	java/io/IOException
      //   2906	3080	5260	java/io/IOException
      //   3085	3096	5260	java/io/IOException
      //   3096	3165	5260	java/io/IOException
      //   3173	3234	5260	java/io/IOException
      //   3237	3362	5260	java/io/IOException
      //   3367	3378	5260	java/io/IOException
      //   3378	3447	5260	java/io/IOException
      //   3455	3516	5260	java/io/IOException
      //   3519	3611	5260	java/io/IOException
      //   3616	3642	5260	java/io/IOException
      //   3642	3711	5260	java/io/IOException
      //   3719	3780	5260	java/io/IOException
      //   3783	3908	5260	java/io/IOException
      //   3913	3924	5260	java/io/IOException
      //   3924	3993	5260	java/io/IOException
      //   4001	4062	5260	java/io/IOException
      //   4065	4163	5260	java/io/IOException
      //   4168	4194	5260	java/io/IOException
      //   4194	4263	5260	java/io/IOException
      //   4271	4332	5260	java/io/IOException
      //   4335	4460	5260	java/io/IOException
      //   4465	4476	5260	java/io/IOException
      //   4476	4539	5260	java/io/IOException
      //   4539	4600	5260	java/io/IOException
      //   4603	4755	5260	java/io/IOException
      //   4760	4771	5260	java/io/IOException
      //   4771	4882	5260	java/io/IOException
      //   4882	4951	5260	java/io/IOException
      //   2391	2511	5281	finally
      //   2516	2585	5281	finally
      //   2729	2765	5281	finally
      //   2765	2834	5281	finally
      //   2842	2903	5281	finally
      //   2906	3080	5281	finally
      //   3085	3096	5281	finally
      //   3096	3165	5281	finally
      //   3173	3234	5281	finally
      //   3237	3362	5281	finally
      //   3367	3378	5281	finally
      //   3378	3447	5281	finally
      //   3455	3516	5281	finally
      //   3519	3611	5281	finally
      //   3616	3642	5281	finally
      //   3642	3711	5281	finally
      //   3719	3780	5281	finally
      //   3783	3908	5281	finally
      //   3913	3924	5281	finally
      //   3924	3993	5281	finally
      //   4001	4062	5281	finally
      //   4065	4163	5281	finally
      //   4168	4194	5281	finally
      //   4194	4263	5281	finally
      //   4271	4332	5281	finally
      //   4335	4460	5281	finally
      //   4465	4476	5281	finally
      //   4476	4539	5281	finally
      //   4539	4600	5281	finally
      //   4603	4755	5281	finally
      //   4760	4771	5281	finally
      //   4771	4882	5281	finally
      //   4882	4951	5281	finally
      //   5262	5273	5281	finally
    }

    protected void onPostExecute(Integer paramInteger)
    {
      UpdaterFragment.this.mTitleProgress.setVisibility(8);
      UpdaterFragment.this.mActionButton.setEnabled(true);
      switch (paramInteger.intValue())
      {
      default:
        return;
      case 1:
        UpdaterFragment.this.mActionButton.setText(2131165314);
        UpdaterFragment.this.mStatusText.setText(2131165312);
        return;
      case 4:
        UpdaterFragment.this.mActionButton.setText(2131165315);
        UpdaterFragment.this.mStatusText.setText(2131165313);
        return;
      case 2:
        UpdaterFragment.this.mActionButton.setText(2131165316);
        UpdaterFragment.this.mStatusText.setText(2131165324);
        ((NotificationManager)UpdaterFragment.this.getActivity().getSystemService("notification")).cancel(1);
        return;
      case 3:
      }
      UpdaterFragment.this.mActionButton.setText(2131165323);
      UpdaterFragment.this.mStatusText.setText(2131165322);
    }

    protected void onPreExecute()
    {
      UpdaterFragment.this.mTitleProgress.setVisibility(0);
      UpdaterFragment.this.mStatusText.setText(2131165317);
      UpdaterFragment.this.mActionButton.setText(2131165317);
      UpdaterFragment.this.mActionButton.setEnabled(false);
    }

    protected void onProgressUpdate(Object[] paramArrayOfObject)
    {
      UpdaterFragment.this.getListAdapter().notifyDataSetChanged();
      UpdaterFragment.this.mProgressBar.setMax(((Integer)paramArrayOfObject[0]).intValue());
      UpdaterFragment.this.mProgressBar.setProgress(((Integer)paramArrayOfObject[1]).intValue());
      UpdaterFragment.this.mProgressBar.setSecondaryProgress(((Integer)paramArrayOfObject[2]).intValue());
      if (paramArrayOfObject.length == 4)
        UpdaterFragment.this.addConsoleEntry(((Integer)paramArrayOfObject[3]).intValue());
      do
        return;
      while (paramArrayOfObject.length != 5);
      if (paramArrayOfObject[3] instanceof String)
      {
        UpdaterFragment.this.addStatusToEntry((String)paramArrayOfObject[3], ((Integer)paramArrayOfObject[4]).intValue());
        return;
      }
      UpdaterFragment.this.addStatusToEntry(((Integer)paramArrayOfObject[3]).intValue(), ((Integer)paramArrayOfObject[4]).intValue());
    }
  }
}

/* Location:           C:\Users\changeme\Downloads\dex2jar-0.0.9.13\dex2jar-0.0.9.13\classes_dex2jar\
 * Qualified Name:     com.noshufou.android.su.UpdaterFragment
 * JD-Core Version:    0.5.3
 */