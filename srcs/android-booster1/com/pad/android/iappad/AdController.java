package com.pad.android.iappad;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Color;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.AsyncTask.Status;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.pad.android.listener.AdAudioListener;
import com.pad.android.listener.AdListener;
import com.pad.android.listener.AdOptinListener;
import com.pad.android.richmedia.view.AdView;
import com.pad.android.util.AdLog;
import com.pad.android.util.AdNavigationStringEnum;
import com.pad.android.util.AdOptinRequest;
import com.pad.android.util.AdTransitionStringEnum;
import java.io.FileInputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class AdController
{
  public static final String EXIT = "exit";
  public static final String FULL_SCREEN = "fullscreen";
  public static final String LB_LOG = "LBAdController";
  public static final String SDK_LEVEL = "00a";
  public static final String SDK_VERSION = "4";
  public static final String STYLE_NORMAL = "normal";
  private View A;
  private TextView B;
  private Button C;
  private Button D;
  private Button E;
  private Button F;
  private Button G;
  private int H;
  private int I;
  private int J;
  private boolean K;
  private AdListener L;
  private String M;
  private List N;
  private int O;
  private Handler P;
  private Runnable Q;
  private boolean R;
  private boolean S;
  private int T;
  private int U;
  private int V;
  private boolean W;
  private AudioManager X;
  private MediaPlayer Y;
  private SensorManager Z;
  protected Context a;
  private FileInputStream aa;
  private float ab;
  private float ac;
  private float ad;
  private int ae;
  private boolean af;
  private boolean ag;
  private AdAudioListener ah;
  private boolean ai;
  private AdTask aj;
  private AdAudioTask ak;
  private boolean al;
  private p am;
  protected AdView b;
  private Activity c;
  private ViewGroup d;
  private View e;
  private AdWebView f;
  private WebView g;
  private String h;
  private boolean i;
  private JSONObject j;
  private boolean k;
  private boolean l;
  private boolean m;
  private s n;
  private Handler o;
  private boolean p;
  private boolean q;
  private boolean r;
  private ProgressDialog s;
  private boolean t;
  private RelativeLayout u;
  private RelativeLayout.LayoutParams v;
  private ViewGroup.MarginLayoutParams w;
  private String x;
  private View y;
  private TextView z;

  public AdController(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, new RelativeLayout(paramActivity));
  }

  public AdController(Activity paramActivity, String paramString, WebView paramWebView)
  {
    this.k = false;
    this.l = false;
    this.m = false;
    this.p = false;
    this.q = false;
    this.r = false;
    this.t = false;
    this.H = 0;
    this.K = true;
    this.L = null;
    this.O = 0;
    this.R = false;
    this.S = false;
    this.T = 0;
    this.U = 0;
    this.V = 0;
    this.W = false;
    this.af = false;
    this.ag = false;
    this.ai = true;
    this.aj = null;
    this.ak = null;
    this.al = false;
    this.am = new p(this, true);
    this.c = paramActivity;
    this.x = paramString;
    this.g = paramWebView;
    this.u = new RelativeLayout(this.c);
  }

  public AdController(Activity paramActivity, String paramString, RelativeLayout paramRelativeLayout)
  {
    this.k = false;
    this.l = false;
    this.m = false;
    this.p = false;
    this.q = false;
    this.r = false;
    this.t = false;
    this.H = 0;
    this.K = true;
    this.L = null;
    this.O = 0;
    this.R = false;
    this.S = false;
    this.T = 0;
    this.U = 0;
    this.V = 0;
    this.W = false;
    this.af = false;
    this.ag = false;
    this.ai = true;
    this.aj = null;
    this.ak = null;
    this.al = false;
    this.am = new p(this, true);
    this.c = paramActivity;
    this.x = paramString;
    if (paramRelativeLayout == null)
      paramRelativeLayout = new RelativeLayout(paramActivity);
    this.u = paramRelativeLayout;
    this.g = null;
  }

  public AdController(Activity paramActivity, String paramString, AdAudioListener paramAdAudioListener)
  {
    this(paramActivity, paramString, new RelativeLayout(paramActivity));
    this.ah = paramAdAudioListener;
  }

  public AdController(Activity paramActivity, String paramString, AdListener paramAdListener)
  {
    this(paramActivity, paramString, new RelativeLayout(paramActivity));
    this.L = paramAdListener;
  }

  public AdController(AdView paramAdView, Context paramContext)
  {
    this.k = false;
    this.l = false;
    this.m = false;
    this.p = false;
    this.q = false;
    this.r = false;
    this.t = false;
    this.H = 0;
    this.K = true;
    this.L = null;
    this.O = 0;
    this.R = false;
    this.S = false;
    this.T = 0;
    this.U = 0;
    this.V = 0;
    this.W = false;
    this.af = false;
    this.ag = false;
    this.ai = true;
    this.aj = null;
    this.ak = null;
    this.al = false;
    this.am = new p(this, true);
    this.b = paramAdView;
    this.a = paramContext;
  }

  protected static Object a(JSONObject paramJSONObject, Class paramClass)
  {
    Field[] arrayOfField = paramClass.getDeclaredFields();
    Object localObject = paramClass.newInstance();
    int i1 = 0;
    if (i1 >= arrayOfField.length)
      return localObject;
    Field localField = arrayOfField[i1];
    String str1 = localField.getName().replace('_', '-');
    String str2 = localField.getType().toString();
    String str3;
    try
    {
      if (str2.equals("int"))
      {
        str3 = paramJSONObject.getString(str1).toLowerCase();
        boolean bool = str3.startsWith("#");
        if (!(bool));
      }
    }
    catch (JSONException localJSONException)
    {
      int i2;
      try
      {
        if (str3.startsWith("#0x"))
        {
          int i4 = Integer.decode(str3.substring(1)).intValue();
          i2 = i4;
          label118: localField.set(localObject, Integer.valueOf(i2));
          label129: ++i1;
        }
        int i3 = Integer.parseInt(str3.substring(1), 16);
        i2 = i3;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        AdLog.printStackTrace("LBAdController", localNumberFormatException);
        i2 = -1;
        break label118:
        i2 = Integer.parseInt(str3);
        break label118:
        if (str2.equals("class java.lang.String"))
        {
          localField.set(localObject, paramJSONObject.getString(str1));
          break label129:
          localJSONException = localJSONException;
          AdLog.printStackTrace("LBAdController", localJSONException);
        }
        if (str2.equals("boolean"))
          localField.set(localObject, Boolean.valueOf(paramJSONObject.getBoolean(str1)));
        if (str2.equals("float"))
          localField.set(localObject, Float.valueOf(Float.parseFloat(paramJSONObject.getString(str1))));
        if (str2.equals("class com.pad.android.util.AdNavigationStringEnum"))
          localField.set(localObject, AdNavigationStringEnum.fromString(paramJSONObject.getString(str1)));
        if (str2.equals("class com.pad.android.util.AdTransitionStringEnum"));
        localField.set(localObject, AdTransitionStringEnum.fromString(paramJSONObject.getString(str1)));
        break label129:
      }
    }
  }

  private void a()
  {
    if ((this.K) && (adShowStatus().equals("hidden")))
    {
      AdLog.d("LBAdController", "Ad paused, will not show");
      if (this.L != null);
      try
      {
        AdLog.i("LBAdController", "onAdPaused triggered");
        this.L.onAdPaused();
        this.L.onAdHidden();
        return;
      }
      catch (Exception localException)
      {
        AdLog.i("LBAdController", "Error while calling onAdPaused");
        AdLog.printStackTrace("LBAdController", localException);
        return;
      }
    }
    AdLog.i("LBAdController", "initializing...");
    if (this.aj != null)
      if (this.aj.getStatus() != AsyncTask.Status.FINISHED);
    for (int i1 = 1; ; i1 = 1)
    {
      label110: if (i1 != 0);
      Activity localActivity = this.c;
      String str1 = this.x;
      if (this.af);
      for (String str2 = "audio"; ; str2 = "ad")
      {
        this.aj = new AdTask(this, localActivity, str1, str2);
        this.aj.setSubId(this.M);
        this.aj.setTokens(this.N);
        this.aj.setUseLocation(this.q);
        this.aj.execute(new String[] { "" });
        return;
        i1 = 0;
        break label110:
      }
    }
  }

  // ERROR //
  private void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   4: ifnonnull +12 -> 16
    //   7: ldc 14
    //   9: ldc_w 469
    //   12: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   15: return
    //   16: aload_0
    //   17: getfield 456	com/pad/android/iappad/AdController:Y	Landroid/media/MediaPlayer;
    //   20: ifnonnull -5 -> 15
    //   23: aload_0
    //   24: iconst_1
    //   25: putfield 167	com/pad/android/iappad/AdController:ag	Z
    //   28: aload_0
    //   29: aload_0
    //   30: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   33: ldc_w 473
    //   36: invokevirtual 479	android/app/Activity:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   39: putfield 481	com/pad/android/iappad/AdController:aa	Ljava/io/FileInputStream;
    //   42: ldc 14
    //   44: ldc_w 483
    //   47: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: new 485	android/media/MediaPlayer
    //   54: dup
    //   55: invokespecial 486	android/media/MediaPlayer:<init>	()V
    //   58: putfield 456	com/pad/android/iappad/AdController:Y	Landroid/media/MediaPlayer;
    //   61: aload_0
    //   62: getfield 456	com/pad/android/iappad/AdController:Y	Landroid/media/MediaPlayer;
    //   65: new 488	com/pad/android/iappad/k
    //   68: dup
    //   69: aload_0
    //   70: invokespecial 490	com/pad/android/iappad/k:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   73: invokevirtual 494	android/media/MediaPlayer:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
    //   76: aload_0
    //   77: getfield 456	com/pad/android/iappad/AdController:Y	Landroid/media/MediaPlayer;
    //   80: aload_0
    //   81: getfield 481	com/pad/android/iappad/AdController:aa	Ljava/io/FileInputStream;
    //   84: invokevirtual 500	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   87: invokevirtual 504	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;)V
    //   90: aload_0
    //   91: getfield 456	com/pad/android/iappad/AdController:Y	Landroid/media/MediaPlayer;
    //   94: invokevirtual 507	android/media/MediaPlayer:prepare	()V
    //   97: aload_0
    //   98: aload_0
    //   99: getfield 509	com/pad/android/iappad/AdController:X	Landroid/media/AudioManager;
    //   102: iconst_3
    //   103: invokevirtual 515	android/media/AudioManager:getStreamVolume	(I)I
    //   106: putfield 517	com/pad/android/iappad/AdController:ae	I
    //   109: aload_0
    //   110: getfield 517	com/pad/android/iappad/AdController:ae	I
    //   113: istore_3
    //   114: aload_0
    //   115: getfield 509	com/pad/android/iappad/AdController:X	Landroid/media/AudioManager;
    //   118: iconst_3
    //   119: invokevirtual 520	android/media/AudioManager:getStreamMaxVolume	(I)I
    //   122: istore 4
    //   124: iload 4
    //   126: istore 5
    //   128: aload_0
    //   129: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   132: ldc_w 522
    //   135: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   138: istore 9
    //   140: iload 9
    //   142: i2d
    //   143: dstore 10
    //   145: dload 10
    //   147: dconst_0
    //   148: dcmpl
    //   149: ifle +11 -> 160
    //   152: dload 10
    //   154: iload 5
    //   156: i2d
    //   157: dmul
    //   158: d2i
    //   159: istore_3
    //   160: iload_3
    //   161: iload 5
    //   163: if_icmple +214 -> 377
    //   166: aload_0
    //   167: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   170: ifnull +12 -> 182
    //   173: aload_0
    //   174: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   177: invokeinterface 530 1 0
    //   182: aload_0
    //   183: getfield 509	com/pad/android/iappad/AdController:X	Landroid/media/AudioManager;
    //   186: iconst_3
    //   187: iload 5
    //   189: bipush 8
    //   191: invokevirtual 534	android/media/AudioManager:setStreamVolume	(III)V
    //   194: aload_0
    //   195: getfield 456	com/pad/android/iappad/AdController:Y	Landroid/media/MediaPlayer;
    //   198: invokevirtual 537	android/media/MediaPlayer:start	()V
    //   201: ldc 14
    //   203: ldc_w 539
    //   206: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   209: aload_0
    //   210: getfield 182	com/pad/android/iappad/AdController:am	Lcom/pad/android/iappad/p;
    //   213: invokevirtual 541	com/pad/android/iappad/p:b	()V
    //   216: aload_0
    //   217: getfield 182	com/pad/android/iappad/AdController:am	Lcom/pad/android/iappad/p;
    //   220: aload_0
    //   221: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   224: ldc_w 543
    //   227: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   230: invokevirtual 546	com/pad/android/iappad/p:a	(I)V
    //   233: aload_0
    //   234: getfield 182	com/pad/android/iappad/AdController:am	Lcom/pad/android/iappad/p;
    //   237: sipush 1000
    //   240: aload_0
    //   241: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   244: ldc_w 548
    //   247: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   250: imul
    //   251: invokevirtual 550	com/pad/android/iappad/p:b	(I)V
    //   254: aload_0
    //   255: getfield 182	com/pad/android/iappad/AdController:am	Lcom/pad/android/iappad/p;
    //   258: invokevirtual 552	com/pad/android/iappad/p:a	()V
    //   261: return
    //   262: astore_2
    //   263: ldc 14
    //   265: new 554	java/lang/StringBuilder
    //   268: dup
    //   269: ldc_w 556
    //   272: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   275: aload_2
    //   276: invokevirtual 561	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   279: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   288: ldc 14
    //   290: aload_2
    //   291: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   294: return
    //   295: astore_1
    //   296: ldc 14
    //   298: ldc_w 568
    //   301: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   304: ldc 14
    //   306: aload_1
    //   307: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   310: goto -260 -> 50
    //   313: astore 8
    //   315: iload_3
    //   316: i2d
    //   317: ldc2_w 569
    //   320: iload_3
    //   321: i2d
    //   322: dmul
    //   323: dadd
    //   324: d2i
    //   325: istore_3
    //   326: goto -166 -> 160
    //   329: astore 7
    //   331: aload_0
    //   332: getfield 182	com/pad/android/iappad/AdController:am	Lcom/pad/android/iappad/p;
    //   335: aload_0
    //   336: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   339: ldc_w 572
    //   342: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   345: invokevirtual 546	com/pad/android/iappad/p:a	(I)V
    //   348: aload_0
    //   349: getfield 182	com/pad/android/iappad/AdController:am	Lcom/pad/android/iappad/p;
    //   352: sipush 1000
    //   355: aload_0
    //   356: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   359: ldc_w 574
    //   362: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   365: imul
    //   366: invokevirtual 550	com/pad/android/iappad/p:b	(I)V
    //   369: goto -115 -> 254
    //   372: astore 6
    //   374: goto -214 -> 160
    //   377: iload_3
    //   378: istore 5
    //   380: goto -214 -> 166
    //
    // Exception table:
    //   from	to	target	type
    //   76	124	262	java/lang/Exception
    //   166	182	262	java/lang/Exception
    //   182	216	262	java/lang/Exception
    //   254	261	262	java/lang/Exception
    //   331	369	262	java/lang/Exception
    //   28	50	295	java/io/FileNotFoundException
    //   128	140	313	org/json/JSONException
    //   216	254	329	java/lang/Exception
    //   128	140	372	java/lang/Exception
  }

  private void c()
  {
    if (this.ah != null)
      this.ah.onAdClosed();
    if (this.aj != null)
      this.aj.cancel(true);
    if (this.ak != null)
      this.ak.cancel(true);
    this.am.c();
    if (this.Y == null)
      return;
    if (this.Y.isPlaying())
      this.Y.stop();
    this.Y.release();
    this.Y = null;
  }

  // ERROR //
  private void d()
  {
    // Byte code:
    //   0: ldc 14
    //   2: ldc_w 602
    //   5: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   12: ifnonnull +12 -> 24
    //   15: ldc 14
    //   17: ldc_w 604
    //   20: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   23: return
    //   24: aload_0
    //   25: new 554	java/lang/StringBuilder
    //   28: dup
    //   29: aload_0
    //   30: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   33: ldc_w 606
    //   36: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   39: invokestatic 609	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   42: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   45: aload_0
    //   46: getfield 186	com/pad/android/iappad/AdController:x	Ljava/lang/String;
    //   49: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: putfield 611	com/pad/android/iappad/AdController:h	Ljava/lang/String;
    //   58: aload_0
    //   59: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   62: ldc_w 613
    //   65: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   68: astore 60
    //   70: aload 60
    //   72: astore_3
    //   73: aload_0
    //   74: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   77: ifnull +72 -> 149
    //   80: aload_0
    //   81: getfield 169	com/pad/android/iappad/AdController:ai	Z
    //   84: ifne +10 -> 94
    //   87: aload_0
    //   88: getfield 135	com/pad/android/iappad/AdController:m	Z
    //   91: ifeq +58 -> 149
    //   94: aload_0
    //   95: getfield 611	com/pad/android/iappad/AdController:h	Ljava/lang/String;
    //   98: ifnull +1983 -> 2081
    //   101: aload_0
    //   102: getfield 611	com/pad/android/iappad/AdController:h	Ljava/lang/String;
    //   105: ldc_w 441
    //   108: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   111: ifne +1970 -> 2081
    //   114: ldc 14
    //   116: ldc_w 615
    //   119: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   122: aload_0
    //   123: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   126: aload_0
    //   127: getfield 611	com/pad/android/iappad/AdController:h	Ljava/lang/String;
    //   130: invokevirtual 618	com/pad/android/iappad/AdWebView:setLoadingURL	(Ljava/lang/String;)V
    //   133: aload_0
    //   134: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   137: aload_0
    //   138: getfield 611	com/pad/android/iappad/AdController:h	Ljava/lang/String;
    //   141: invokevirtual 621	com/pad/android/iappad/AdWebView:loadUrl	(Ljava/lang/String;)V
    //   144: aload_0
    //   145: iconst_1
    //   146: putfield 623	com/pad/android/iappad/AdController:i	Z
    //   149: aload_0
    //   150: getfield 169	com/pad/android/iappad/AdController:ai	Z
    //   153: ifne -130 -> 23
    //   156: aload_0
    //   157: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   160: ldc_w 625
    //   163: invokevirtual 628	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   166: ifne +80 -> 246
    //   169: aload_0
    //   170: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   173: ldc_w 625
    //   176: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   179: ldc_w 630
    //   182: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   185: ifeq +61 -> 246
    //   188: aload_0
    //   189: iconst_0
    //   190: putfield 623	com/pad/android/iappad/AdController:i	Z
    //   193: aload_0
    //   194: iconst_0
    //   195: putfield 135	com/pad/android/iappad/AdController:m	Z
    //   198: ldc 14
    //   200: ldc_w 632
    //   203: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   206: aload_0
    //   207: invokespecial 634	com/pad/android/iappad/AdController:e	()V
    //   210: return
    //   211: astore 4
    //   213: ldc 14
    //   215: aload 4
    //   217: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   220: ldc 14
    //   222: new 554	java/lang/StringBuilder
    //   225: dup
    //   226: ldc_w 636
    //   229: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   232: aload 4
    //   234: invokevirtual 561	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   237: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   246: aload_0
    //   247: getfield 133	com/pad/android/iappad/AdController:l	Z
    //   250: ifne -227 -> 23
    //   253: ldc 14
    //   255: ldc_w 638
    //   258: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   261: aload_0
    //   262: iconst_1
    //   263: putfield 133	com/pad/android/iappad/AdController:l	Z
    //   266: aload_0
    //   267: iconst_0
    //   268: putfield 135	com/pad/android/iappad/AdController:m	Z
    //   271: aload_0
    //   272: iconst_1
    //   273: putfield 623	com/pad/android/iappad/AdController:i	Z
    //   276: aload_0
    //   277: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   280: ldc_w 640
    //   283: invokevirtual 644	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   286: ldc_w 630
    //   289: invokevirtual 645	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   292: ifeq +2077 -> 2369
    //   295: aload_0
    //   296: invokespecial 646	com/pad/android/iappad/AdController:c	()V
    //   299: aload_0
    //   300: getfield 131	com/pad/android/iappad/AdController:k	Z
    //   303: istore 9
    //   305: iload 9
    //   307: ifne +2052 -> 2359
    //   310: aload_0
    //   311: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   314: aload_0
    //   315: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   318: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   321: aload_0
    //   322: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   325: aload_0
    //   326: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   329: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   332: aload_0
    //   333: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   336: aload_0
    //   337: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   340: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   343: aload_0
    //   344: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   347: aload_0
    //   348: getfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   351: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   354: aload_0
    //   355: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   358: aload_0
    //   359: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   362: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   365: aload_0
    //   366: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   369: aload_0
    //   370: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   373: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   376: aload_0
    //   377: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   380: aload_0
    //   381: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   384: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   387: aload_0
    //   388: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   391: aload_0
    //   392: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   395: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   398: aload_0
    //   399: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   402: aload_0
    //   403: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   406: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   409: aload_0
    //   410: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   413: aconst_null
    //   414: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   417: aload_0
    //   418: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   421: aload_0
    //   422: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   425: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   428: aload_0
    //   429: getfield 652	com/pad/android/iappad/AdController:G	Landroid/widget/Button;
    //   432: ifnull +10 -> 442
    //   435: aload_0
    //   436: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   439: invokevirtual 655	android/widget/RelativeLayout:removeAllViews	()V
    //   442: aload_0
    //   443: new 657	android/view/View
    //   446: dup
    //   447: aload_0
    //   448: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   451: invokespecial 658	android/view/View:<init>	(Landroid/content/Context;)V
    //   454: putfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   457: aload_0
    //   458: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   461: iconst_m1
    //   462: invokevirtual 661	android/view/View:setMinimumHeight	(I)V
    //   465: aload_0
    //   466: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   469: iconst_m1
    //   470: invokevirtual 664	android/view/View:setMinimumWidth	(I)V
    //   473: aload_0
    //   474: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   477: ldc_w 665
    //   480: invokevirtual 668	android/view/View:setBackgroundColor	(I)V
    //   483: ldc2_w 669
    //   486: aload_0
    //   487: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   490: ldc_w 672
    //   493: invokevirtual 676	org/json/JSONObject:getDouble	(Ljava/lang/String;)D
    //   496: dmul
    //   497: dstore 58
    //   499: aload_0
    //   500: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   503: invokevirtual 680	android/view/View:getBackground	()Landroid/graphics/drawable/Drawable;
    //   506: dload 58
    //   508: d2i
    //   509: invokevirtual 685	android/graphics/drawable/Drawable:setAlpha	(I)V
    //   512: aload_0
    //   513: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   516: new 687	com/pad/android/iappad/l
    //   519: dup
    //   520: aload_0
    //   521: invokespecial 688	com/pad/android/iappad/l:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   524: invokevirtual 692	android/view/View:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   527: new 694	android/view/ViewGroup$MarginLayoutParams
    //   530: dup
    //   531: iconst_m1
    //   532: iconst_m1
    //   533: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   536: astore 13
    //   538: aload 13
    //   540: iconst_0
    //   541: iconst_0
    //   542: iconst_0
    //   543: iconst_0
    //   544: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   547: new 703	android/widget/RelativeLayout$LayoutParams
    //   550: dup
    //   551: aload 13
    //   553: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   556: astore 14
    //   558: aload_0
    //   559: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   562: ldc_w 708
    //   565: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   568: istore 15
    //   570: ldc_w 710
    //   573: astore 16
    //   575: aload_0
    //   576: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   579: ldc_w 712
    //   582: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   585: astore 57
    //   587: aload 57
    //   589: astore 16
    //   591: aload_0
    //   592: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   595: ldc_w 714
    //   598: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   601: ifne +148 -> 749
    //   604: aload_0
    //   605: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   608: astore 53
    //   610: aload 53
    //   612: ifnull +30 -> 642
    //   615: aload_0
    //   616: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   619: ldc_w 716
    //   622: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   625: ldc_w 630
    //   628: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   631: ifeq +11 -> 642
    //   634: aload_0
    //   635: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   638: iconst_0
    //   639: invokevirtual 717	com/pad/android/iappad/AdWebView:setBackgroundColor	(I)V
    //   642: aload_0
    //   643: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   646: astore 54
    //   648: aload 54
    //   650: ifnull +30 -> 680
    //   653: aload_0
    //   654: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   657: ldc_w 716
    //   660: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   663: ldc_w 630
    //   666: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   669: ifeq +11 -> 680
    //   672: aload_0
    //   673: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   676: iconst_0
    //   677: invokevirtual 718	com/pad/android/richmedia/view/AdView:setBackgroundColor	(I)V
    //   680: aload_0
    //   681: getfield 145	com/pad/android/iappad/AdController:H	I
    //   684: ifle +65 -> 749
    //   687: aload 16
    //   689: ldc_w 710
    //   692: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   695: ifne +54 -> 749
    //   698: ldc 14
    //   700: new 554	java/lang/StringBuilder
    //   703: dup
    //   704: ldc_w 720
    //   707: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   710: aload_0
    //   711: getfield 145	com/pad/android/iappad/AdController:H	I
    //   714: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   717: ldc_w 725
    //   720: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   723: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   726: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   729: aload 16
    //   731: ldc_w 727
    //   734: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   737: ifeq +1462 -> 2199
    //   740: iload 15
    //   742: aload_0
    //   743: getfield 145	com/pad/android/iappad/AdController:H	I
    //   746: iadd
    //   747: istore 15
    //   749: new 694	android/view/ViewGroup$MarginLayoutParams
    //   752: dup
    //   753: aload_0
    //   754: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   757: ldc_w 729
    //   760: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   763: aload_0
    //   764: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   767: ldc_w 731
    //   770: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   773: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   776: astore 18
    //   778: aload 18
    //   780: aload_0
    //   781: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   784: ldc_w 733
    //   787: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   790: iload 15
    //   792: iconst_0
    //   793: iconst_0
    //   794: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   797: new 703	android/widget/RelativeLayout$LayoutParams
    //   800: dup
    //   801: aload 18
    //   803: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   806: astore 19
    //   808: aload_0
    //   809: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   812: ldc_w 735
    //   815: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   818: istore 20
    //   820: aload_0
    //   821: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   824: ldc_w 737
    //   827: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   830: istore 21
    //   832: aload_0
    //   833: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   836: ldc_w 739
    //   839: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   842: istore 22
    //   844: aload_0
    //   845: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   848: ldc_w 741
    //   851: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   854: istore 23
    //   856: new 694	android/view/ViewGroup$MarginLayoutParams
    //   859: dup
    //   860: iload 22
    //   862: iload 23
    //   864: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   867: astore 24
    //   869: aload 24
    //   871: iload 20
    //   873: iload 21
    //   875: iconst_0
    //   876: iconst_0
    //   877: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   880: new 703	android/widget/RelativeLayout$LayoutParams
    //   883: dup
    //   884: aload 24
    //   886: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   889: astore 25
    //   891: aload_0
    //   892: new 657	android/view/View
    //   895: dup
    //   896: aload_0
    //   897: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   900: invokespecial 658	android/view/View:<init>	(Landroid/content/Context;)V
    //   903: putfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   906: aload_0
    //   907: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   910: ldc_w 743
    //   913: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   916: astore 26
    //   918: aload 26
    //   920: ldc_w 441
    //   923: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   926: ifne +1561 -> 2487
    //   929: aload 26
    //   931: ifnonnull +1549 -> 2480
    //   934: goto +1553 -> 2487
    //   937: aload_0
    //   938: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   941: aload 27
    //   943: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   946: invokevirtual 668	android/view/View:setBackgroundColor	(I)V
    //   949: aload_0
    //   950: new 750	android/widget/TextView
    //   953: dup
    //   954: aload_0
    //   955: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   958: invokespecial 751	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   961: putfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   964: aload_0
    //   965: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   968: aload_0
    //   969: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   972: ldc_w 753
    //   975: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   978: invokevirtual 757	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   981: aload_0
    //   982: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   985: ldc_w 759
    //   988: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   991: astore 28
    //   993: aload 28
    //   995: ldc_w 441
    //   998: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1001: ifne +1494 -> 2495
    //   1004: aload 28
    //   1006: ifnonnull +1467 -> 2473
    //   1009: goto +1486 -> 2495
    //   1012: aload_0
    //   1013: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   1016: aload 29
    //   1018: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1021: invokevirtual 762	android/widget/TextView:setTextColor	(I)V
    //   1024: aload_0
    //   1025: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1028: ldc_w 764
    //   1031: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1034: istore 30
    //   1036: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1039: dup
    //   1040: aload_0
    //   1041: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1044: ldc_w 766
    //   1047: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1050: iload 30
    //   1052: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1055: astore 31
    //   1057: aload 31
    //   1059: iload 20
    //   1061: bipush 20
    //   1063: iadd
    //   1064: iconst_4
    //   1065: iload 21
    //   1067: iload 23
    //   1069: iload 30
    //   1071: isub
    //   1072: iconst_2
    //   1073: idiv
    //   1074: iadd
    //   1075: iadd
    //   1076: iconst_0
    //   1077: iconst_0
    //   1078: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1081: new 703	android/widget/RelativeLayout$LayoutParams
    //   1084: dup
    //   1085: aload 31
    //   1087: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1090: astore 32
    //   1092: aload_0
    //   1093: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1096: ldc_w 768
    //   1099: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1102: istore 33
    //   1104: aload_0
    //   1105: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1108: ldc_w 770
    //   1111: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1114: istore 34
    //   1116: aload_0
    //   1117: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1120: ldc_w 772
    //   1123: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1126: istore 35
    //   1128: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1131: dup
    //   1132: aload_0
    //   1133: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1136: ldc_w 774
    //   1139: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1142: iload 35
    //   1144: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1147: astore 36
    //   1149: aload 36
    //   1151: iload 33
    //   1153: iload 34
    //   1155: iconst_0
    //   1156: iconst_0
    //   1157: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1160: new 703	android/widget/RelativeLayout$LayoutParams
    //   1163: dup
    //   1164: aload 36
    //   1166: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1169: astore 37
    //   1171: aload_0
    //   1172: new 657	android/view/View
    //   1175: dup
    //   1176: aload_0
    //   1177: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1180: invokespecial 658	android/view/View:<init>	(Landroid/content/Context;)V
    //   1183: putfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   1186: aload_0
    //   1187: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1190: ldc_w 776
    //   1193: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1196: astore 38
    //   1198: aload 38
    //   1200: ldc_w 441
    //   1203: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1206: ifne +1297 -> 2503
    //   1209: aload 38
    //   1211: ifnonnull +6 -> 1217
    //   1214: goto +1289 -> 2503
    //   1217: aload_0
    //   1218: getfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   1221: aload 38
    //   1223: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1226: invokevirtual 668	android/view/View:setBackgroundColor	(I)V
    //   1229: aload_0
    //   1230: new 750	android/widget/TextView
    //   1233: dup
    //   1234: aload_0
    //   1235: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1238: invokespecial 751	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   1241: putfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   1244: aload_0
    //   1245: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   1248: aload_0
    //   1249: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1252: ldc_w 778
    //   1255: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1258: invokevirtual 757	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   1261: aload_0
    //   1262: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   1265: ldc_w 779
    //   1268: invokevirtual 783	android/widget/TextView:setTextSize	(F)V
    //   1271: aload_0
    //   1272: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1275: ldc_w 785
    //   1278: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1281: istore 39
    //   1283: aload_0
    //   1284: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1287: ldc_w 787
    //   1290: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1293: astore 40
    //   1295: aload 40
    //   1297: ldc_w 441
    //   1300: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1303: ifne +1208 -> 2511
    //   1306: aload 40
    //   1308: ifnonnull +6 -> 1314
    //   1311: goto +1200 -> 2511
    //   1314: aload_0
    //   1315: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   1318: aload 40
    //   1320: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1323: invokevirtual 762	android/widget/TextView:setTextColor	(I)V
    //   1326: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1329: dup
    //   1330: aload_0
    //   1331: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1334: ldc_w 789
    //   1337: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1340: iload 39
    //   1342: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1345: astore 41
    //   1347: aload 41
    //   1349: iload 33
    //   1351: bipush 20
    //   1353: iadd
    //   1354: iload 34
    //   1356: iload 35
    //   1358: iload 39
    //   1360: isub
    //   1361: iconst_2
    //   1362: idiv
    //   1363: iadd
    //   1364: iconst_0
    //   1365: iconst_0
    //   1366: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1369: new 703	android/widget/RelativeLayout$LayoutParams
    //   1372: dup
    //   1373: aload 41
    //   1375: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1378: astore 42
    //   1380: iload 23
    //   1382: iconst_5
    //   1383: isub
    //   1384: iconst_0
    //   1385: invokestatic 795	java/lang/Math:max	(II)I
    //   1388: istore 43
    //   1390: iload 43
    //   1392: iconst_2
    //   1393: idiv
    //   1394: i2f
    //   1395: fstore 44
    //   1397: aload_0
    //   1398: new 797	android/widget/Button
    //   1401: dup
    //   1402: aload_0
    //   1403: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1406: invokespecial 798	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1409: putfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1412: aload_0
    //   1413: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1416: ldc_w 799
    //   1419: invokevirtual 800	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1422: aload_0
    //   1423: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1426: fload 44
    //   1428: invokevirtual 801	android/widget/Button:setTextSize	(F)V
    //   1431: aload_0
    //   1432: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1435: aload 29
    //   1437: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1440: invokevirtual 802	android/widget/Button:setTextColor	(I)V
    //   1443: aload_0
    //   1444: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1447: iconst_0
    //   1448: iconst_0
    //   1449: iconst_0
    //   1450: iconst_0
    //   1451: invokevirtual 805	android/widget/Button:setPadding	(IIII)V
    //   1454: aload_0
    //   1455: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1458: aload 27
    //   1460: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1463: invokevirtual 806	android/widget/Button:setBackgroundColor	(I)V
    //   1466: aload_0
    //   1467: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1470: new 808	com/pad/android/iappad/m
    //   1473: dup
    //   1474: aload_0
    //   1475: invokespecial 809	com/pad/android/iappad/m:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1478: invokevirtual 810	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1481: aload_0
    //   1482: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1485: dup
    //   1486: bipush 55
    //   1488: iload 43
    //   1490: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1493: putfield 812	com/pad/android/iappad/AdController:w	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1496: bipush 251
    //   1498: bipush 201
    //   1500: iload 22
    //   1502: iload 20
    //   1504: iadd
    //   1505: iadd
    //   1506: iadd
    //   1507: istore 45
    //   1509: iconst_2
    //   1510: iload 21
    //   1512: iload 23
    //   1514: iload 43
    //   1516: isub
    //   1517: iconst_2
    //   1518: idiv
    //   1519: iadd
    //   1520: iadd
    //   1521: istore 46
    //   1523: aload_0
    //   1524: getfield 812	com/pad/android/iappad/AdController:w	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1527: iload 45
    //   1529: iload 46
    //   1531: iconst_0
    //   1532: iconst_0
    //   1533: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1536: aload_0
    //   1537: new 703	android/widget/RelativeLayout$LayoutParams
    //   1540: dup
    //   1541: aload_0
    //   1542: getfield 812	com/pad/android/iappad/AdController:w	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1545: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1548: putfield 814	com/pad/android/iappad/AdController:v	Landroid/widget/RelativeLayout$LayoutParams;
    //   1551: aload_0
    //   1552: getfield 188	com/pad/android/iappad/AdController:g	Landroid/webkit/WebView;
    //   1555: ifnull +39 -> 1594
    //   1558: aload_0
    //   1559: aload_0
    //   1560: getfield 188	com/pad/android/iappad/AdController:g	Landroid/webkit/WebView;
    //   1563: invokevirtual 820	android/webkit/WebView:getParent	()Landroid/view/ViewParent;
    //   1566: checkcast 822	android/view/ViewGroup
    //   1569: putfield 824	com/pad/android/iappad/AdController:d	Landroid/view/ViewGroup;
    //   1572: aload_0
    //   1573: getfield 824	com/pad/android/iappad/AdController:d	Landroid/view/ViewGroup;
    //   1576: aload_0
    //   1577: getfield 188	com/pad/android/iappad/AdController:g	Landroid/webkit/WebView;
    //   1580: invokevirtual 825	android/view/ViewGroup:removeView	(Landroid/view/View;)V
    //   1583: aload_0
    //   1584: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1587: aload_0
    //   1588: getfield 188	com/pad/android/iappad/AdController:g	Landroid/webkit/WebView;
    //   1591: invokevirtual 828	android/widget/RelativeLayout:addView	(Landroid/view/View;)V
    //   1594: aload_0
    //   1595: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1598: ldc_w 830
    //   1601: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1604: iconst_1
    //   1605: if_icmpne +38 -> 1643
    //   1608: aload_0
    //   1609: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1612: aload_0
    //   1613: getfield 247	com/pad/android/iappad/AdController:e	Landroid/view/View;
    //   1616: aload 14
    //   1618: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1621: aload_0
    //   1622: getfield 188	com/pad/android/iappad/AdController:g	Landroid/webkit/WebView;
    //   1625: ifnull +18 -> 1643
    //   1628: aload_0
    //   1629: getfield 188	com/pad/android/iappad/AdController:g	Landroid/webkit/WebView;
    //   1632: new 835	com/pad/android/iappad/n
    //   1635: dup
    //   1636: aload_0
    //   1637: invokespecial 836	com/pad/android/iappad/n:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1640: invokevirtual 840	android/webkit/WebView:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   1643: aload_0
    //   1644: getfield 175	com/pad/android/iappad/AdController:al	Z
    //   1647: ifeq +583 -> 2230
    //   1650: ldc 14
    //   1652: ldc_w 842
    //   1655: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1658: aload_0
    //   1659: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1662: aload_0
    //   1663: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   1666: aload 19
    //   1668: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1671: aload_0
    //   1672: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1675: ldc_w 714
    //   1678: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1681: iconst_1
    //   1682: if_icmpne +77 -> 1759
    //   1685: aload_0
    //   1686: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1689: aload_0
    //   1690: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   1693: aload 25
    //   1695: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1698: aload_0
    //   1699: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1702: ldc_w 753
    //   1705: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1708: ldc_w 441
    //   1711: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1714: ifne +16 -> 1730
    //   1717: aload_0
    //   1718: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1721: aload_0
    //   1722: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   1725: aload 32
    //   1727: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1730: aload_0
    //   1731: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1734: ldc_w 844
    //   1737: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1740: iconst_1
    //   1741: if_icmpne +18 -> 1759
    //   1744: aload_0
    //   1745: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1748: aload_0
    //   1749: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1752: aload_0
    //   1753: getfield 814	com/pad/android/iappad/AdController:v	Landroid/widget/RelativeLayout$LayoutParams;
    //   1756: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1759: aload_0
    //   1760: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1763: ldc_w 846
    //   1766: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1769: iconst_1
    //   1770: if_icmpne +48 -> 1818
    //   1773: aload_0
    //   1774: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1777: aload_0
    //   1778: getfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   1781: aload 37
    //   1783: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1786: aload_0
    //   1787: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1790: ldc_w 778
    //   1793: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1796: ldc_w 441
    //   1799: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1802: ifne +16 -> 1818
    //   1805: aload_0
    //   1806: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1809: aload_0
    //   1810: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   1813: aload 42
    //   1815: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1818: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1821: dup
    //   1822: aload_0
    //   1823: getfield 848	com/pad/android/iappad/AdController:I	I
    //   1826: aload_0
    //   1827: getfield 850	com/pad/android/iappad/AdController:J	I
    //   1830: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1833: astore 47
    //   1835: aload 47
    //   1837: iconst_0
    //   1838: iconst_0
    //   1839: iconst_0
    //   1840: iconst_0
    //   1841: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1844: new 703	android/widget/RelativeLayout$LayoutParams
    //   1847: dup
    //   1848: aload 47
    //   1850: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1853: astore 48
    //   1855: aload_0
    //   1856: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1859: aload_0
    //   1860: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1863: aload 48
    //   1865: invokevirtual 853	android/app/Activity:addContentView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1868: aload_0
    //   1869: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1872: ldc_w 855
    //   1875: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1878: iconst_1
    //   1879: if_icmpne +448 -> 2327
    //   1882: aload_0
    //   1883: getfield 137	com/pad/android/iappad/AdController:p	Z
    //   1886: ifne +441 -> 2327
    //   1889: aload_0
    //   1890: getfield 157	com/pad/android/iappad/AdController:T	I
    //   1893: aload_0
    //   1894: getfield 159	com/pad/android/iappad/AdController:U	I
    //   1897: if_icmpgt +430 -> 2327
    //   1900: aload_0
    //   1901: getfield 157	com/pad/android/iappad/AdController:T	I
    //   1904: aload_0
    //   1905: getfield 161	com/pad/android/iappad/AdController:V	I
    //   1908: if_icmpge +419 -> 2327
    //   1911: ldc 14
    //   1913: ldc_w 857
    //   1916: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1919: aload_0
    //   1920: iconst_1
    //   1921: putfield 137	com/pad/android/iappad/AdController:p	Z
    //   1924: aload_0
    //   1925: new 859	com/pad/android/iappad/s
    //   1928: dup
    //   1929: aload_0
    //   1930: invokespecial 860	com/pad/android/iappad/s:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1933: putfield 462	com/pad/android/iappad/AdController:n	Lcom/pad/android/iappad/s;
    //   1936: aload_0
    //   1937: new 862	android/os/Handler
    //   1940: dup
    //   1941: invokespecial 863	android/os/Handler:<init>	()V
    //   1944: putfield 459	com/pad/android/iappad/AdController:o	Landroid/os/Handler;
    //   1947: ldc 14
    //   1949: new 554	java/lang/StringBuilder
    //   1952: dup
    //   1953: ldc_w 865
    //   1956: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1959: aload_0
    //   1960: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1963: ldc_w 867
    //   1966: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1969: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1972: ldc_w 868
    //   1975: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1978: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1981: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1984: aload_0
    //   1985: getfield 459	com/pad/android/iappad/AdController:o	Landroid/os/Handler;
    //   1988: aload_0
    //   1989: getfield 462	com/pad/android/iappad/AdController:n	Lcom/pad/android/iappad/s;
    //   1992: sipush 1000
    //   1995: aload_0
    //   1996: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1999: ldc_w 867
    //   2002: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   2005: imul
    //   2006: i2l
    //   2007: invokevirtual 872	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   2010: pop
    //   2011: return
    //   2012: astore 51
    //   2014: ldc 14
    //   2016: new 554	java/lang/StringBuilder
    //   2019: dup
    //   2020: ldc_w 874
    //   2023: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2026: aload 51
    //   2028: invokevirtual 561	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2031: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2034: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2037: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2040: ldc 14
    //   2042: aload 51
    //   2044: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2047: return
    //   2048: astore 6
    //   2050: aload_0
    //   2051: invokespecial 876	com/pad/android/iappad/AdController:g	()V
    //   2054: ldc 14
    //   2056: new 554	java/lang/StringBuilder
    //   2059: dup
    //   2060: ldc_w 878
    //   2063: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2066: aload 6
    //   2068: invokevirtual 879	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   2071: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2074: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2077: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   2080: return
    //   2081: aload_3
    //   2082: ifnull -1933 -> 149
    //   2085: aload_3
    //   2086: ldc_w 441
    //   2089: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2092: ifne -1943 -> 149
    //   2095: aload_0
    //   2096: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   2099: aload_3
    //   2100: ldc_w 881
    //   2103: ldc_w 883
    //   2106: invokevirtual 887	com/pad/android/iappad/AdWebView:loadData	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   2109: goto -1960 -> 149
    //   2112: astore 10
    //   2114: aload_0
    //   2115: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2118: aload_0
    //   2119: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   2122: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   2125: goto -1804 -> 321
    //   2128: astore 11
    //   2130: goto -1688 -> 442
    //   2133: astore 56
    //   2135: aload_0
    //   2136: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   2139: iconst_0
    //   2140: invokevirtual 717	com/pad/android/iappad/AdWebView:setBackgroundColor	(I)V
    //   2143: goto -1501 -> 642
    //   2146: astore 5
    //   2148: aload_0
    //   2149: invokespecial 876	com/pad/android/iappad/AdController:g	()V
    //   2152: ldc 14
    //   2154: aload 5
    //   2156: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2159: ldc 14
    //   2161: new 554	java/lang/StringBuilder
    //   2164: dup
    //   2165: ldc_w 889
    //   2168: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2171: aload 5
    //   2173: invokevirtual 561	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2176: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2179: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2182: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   2185: return
    //   2186: astore 55
    //   2188: aload_0
    //   2189: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   2192: iconst_0
    //   2193: invokevirtual 718	com/pad/android/richmedia/view/AdView:setBackgroundColor	(I)V
    //   2196: goto -1516 -> 680
    //   2199: aload 16
    //   2201: ldc_w 891
    //   2204: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2207: ifeq -1458 -> 749
    //   2210: iload 15
    //   2212: aload_0
    //   2213: getfield 145	com/pad/android/iappad/AdController:H	I
    //   2216: isub
    //   2217: istore 15
    //   2219: iload 15
    //   2221: ifge -1472 -> 749
    //   2224: iconst_0
    //   2225: istore 15
    //   2227: goto -1478 -> 749
    //   2230: ldc 14
    //   2232: ldc_w 893
    //   2235: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   2238: aload_0
    //   2239: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2242: aload_0
    //   2243: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   2246: aload 19
    //   2248: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   2251: goto -580 -> 1671
    //   2254: astore 49
    //   2256: aload_0
    //   2257: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2260: invokevirtual 894	android/widget/RelativeLayout:getParent	()Landroid/view/ViewParent;
    //   2263: checkcast 822	android/view/ViewGroup
    //   2266: aload_0
    //   2267: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2270: invokevirtual 825	android/view/ViewGroup:removeView	(Landroid/view/View;)V
    //   2273: aload_0
    //   2274: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   2277: aload_0
    //   2278: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2281: aload 48
    //   2283: invokevirtual 853	android/app/Activity:addContentView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   2286: goto -418 -> 1868
    //   2289: astore 50
    //   2291: ldc 14
    //   2293: aload 50
    //   2295: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2298: ldc 14
    //   2300: new 554	java/lang/StringBuilder
    //   2303: dup
    //   2304: ldc_w 896
    //   2307: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2310: aload 50
    //   2312: invokevirtual 561	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2315: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2318: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2321: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2324: goto -456 -> 1868
    //   2327: aload_0
    //   2328: getfield 157	com/pad/android/iappad/AdController:T	I
    //   2331: aload_0
    //   2332: getfield 159	com/pad/android/iappad/AdController:U	I
    //   2335: if_icmple -2312 -> 23
    //   2338: aload_0
    //   2339: getfield 157	com/pad/android/iappad/AdController:T	I
    //   2342: aload_0
    //   2343: getfield 161	com/pad/android/iappad/AdController:V	I
    //   2346: if_icmplt -2323 -> 23
    //   2349: aload_0
    //   2350: iconst_0
    //   2351: putfield 137	com/pad/android/iappad/AdController:p	Z
    //   2354: aload_0
    //   2355: invokespecial 898	com/pad/android/iappad/AdController:f	()V
    //   2358: return
    //   2359: aload_0
    //   2360: iconst_0
    //   2361: putfield 623	com/pad/android/iappad/AdController:i	Z
    //   2364: aload_0
    //   2365: invokespecial 876	com/pad/android/iappad/AdController:g	()V
    //   2368: return
    //   2369: aload_0
    //   2370: iconst_0
    //   2371: putfield 623	com/pad/android/iappad/AdController:i	Z
    //   2374: aload_0
    //   2375: invokespecial 876	com/pad/android/iappad/AdController:g	()V
    //   2378: aload_0
    //   2379: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   2382: astore 7
    //   2384: aload 7
    //   2386: ifnull +25 -> 2411
    //   2389: ldc 14
    //   2391: ldc_w 900
    //   2394: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2397: aload_0
    //   2398: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   2401: invokeinterface 903 1 0
    //   2406: aload_0
    //   2407: iconst_1
    //   2408: putfield 153	com/pad/android/iappad/AdController:R	Z
    //   2411: aload_0
    //   2412: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   2415: ifnull -2392 -> 23
    //   2418: aload_0
    //   2419: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   2422: invokeinterface 904 1 0
    //   2427: aload_0
    //   2428: iconst_1
    //   2429: putfield 167	com/pad/android/iappad/AdController:ag	Z
    //   2432: return
    //   2433: astore 8
    //   2435: ldc 14
    //   2437: ldc_w 906
    //   2440: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2443: ldc 14
    //   2445: aload 8
    //   2447: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2450: goto -39 -> 2411
    //   2453: astore 17
    //   2455: goto -1864 -> 591
    //   2458: astore 12
    //   2460: goto -1933 -> 527
    //   2463: astore_2
    //   2464: aconst_null
    //   2465: astore_3
    //   2466: goto -2393 -> 73
    //   2469: astore_1
    //   2470: goto -2412 -> 58
    //   2473: aload 28
    //   2475: astore 29
    //   2477: goto -1465 -> 1012
    //   2480: aload 26
    //   2482: astore 27
    //   2484: goto -1547 -> 937
    //   2487: ldc_w 908
    //   2490: astore 27
    //   2492: goto -1555 -> 937
    //   2495: ldc_w 908
    //   2498: astore 29
    //   2500: goto -1488 -> 1012
    //   2503: ldc_w 908
    //   2506: astore 38
    //   2508: goto -1291 -> 1217
    //   2511: ldc_w 908
    //   2514: astore 40
    //   2516: goto -1202 -> 1314
    //
    // Exception table:
    //   from	to	target	type
    //   156	210	211	java/lang/Exception
    //   1947	2011	2012	java/lang/Exception
    //   271	305	2048	org/json/JSONException
    //   310	321	2048	org/json/JSONException
    //   321	442	2048	org/json/JSONException
    //   442	527	2048	org/json/JSONException
    //   527	570	2048	org/json/JSONException
    //   575	587	2048	org/json/JSONException
    //   591	610	2048	org/json/JSONException
    //   615	642	2048	org/json/JSONException
    //   642	648	2048	org/json/JSONException
    //   653	680	2048	org/json/JSONException
    //   680	749	2048	org/json/JSONException
    //   749	929	2048	org/json/JSONException
    //   937	1004	2048	org/json/JSONException
    //   1012	1209	2048	org/json/JSONException
    //   1217	1306	2048	org/json/JSONException
    //   1314	1496	2048	org/json/JSONException
    //   1509	1594	2048	org/json/JSONException
    //   1594	1643	2048	org/json/JSONException
    //   1643	1671	2048	org/json/JSONException
    //   1671	1730	2048	org/json/JSONException
    //   1730	1759	2048	org/json/JSONException
    //   1759	1818	2048	org/json/JSONException
    //   1818	1855	2048	org/json/JSONException
    //   1855	1868	2048	org/json/JSONException
    //   1868	1947	2048	org/json/JSONException
    //   1947	2011	2048	org/json/JSONException
    //   2014	2047	2048	org/json/JSONException
    //   2114	2125	2048	org/json/JSONException
    //   2135	2143	2048	org/json/JSONException
    //   2188	2196	2048	org/json/JSONException
    //   2199	2219	2048	org/json/JSONException
    //   2230	2251	2048	org/json/JSONException
    //   2256	2286	2048	org/json/JSONException
    //   2291	2324	2048	org/json/JSONException
    //   2327	2358	2048	org/json/JSONException
    //   2359	2368	2048	org/json/JSONException
    //   2369	2384	2048	org/json/JSONException
    //   2389	2411	2048	org/json/JSONException
    //   2411	2432	2048	org/json/JSONException
    //   2435	2450	2048	org/json/JSONException
    //   310	321	2112	java/lang/Exception
    //   321	442	2128	java/lang/Exception
    //   2114	2125	2128	java/lang/Exception
    //   615	642	2133	java/lang/Exception
    //   271	305	2146	java/lang/Exception
    //   527	570	2146	java/lang/Exception
    //   591	610	2146	java/lang/Exception
    //   642	648	2146	java/lang/Exception
    //   680	749	2146	java/lang/Exception
    //   749	929	2146	java/lang/Exception
    //   937	1004	2146	java/lang/Exception
    //   1012	1209	2146	java/lang/Exception
    //   1217	1306	2146	java/lang/Exception
    //   1314	1496	2146	java/lang/Exception
    //   1509	1594	2146	java/lang/Exception
    //   1594	1643	2146	java/lang/Exception
    //   1643	1671	2146	java/lang/Exception
    //   1671	1730	2146	java/lang/Exception
    //   1730	1759	2146	java/lang/Exception
    //   1759	1818	2146	java/lang/Exception
    //   1818	1855	2146	java/lang/Exception
    //   1868	1947	2146	java/lang/Exception
    //   2014	2047	2146	java/lang/Exception
    //   2135	2143	2146	java/lang/Exception
    //   2188	2196	2146	java/lang/Exception
    //   2199	2219	2146	java/lang/Exception
    //   2230	2251	2146	java/lang/Exception
    //   2291	2324	2146	java/lang/Exception
    //   2327	2358	2146	java/lang/Exception
    //   2359	2368	2146	java/lang/Exception
    //   2369	2384	2146	java/lang/Exception
    //   2411	2432	2146	java/lang/Exception
    //   2435	2450	2146	java/lang/Exception
    //   653	680	2186	java/lang/Exception
    //   1855	1868	2254	java/lang/Exception
    //   2256	2286	2289	java/lang/Exception
    //   2389	2411	2433	java/lang/Exception
    //   575	587	2453	java/lang/Exception
    //   442	527	2458	java/lang/Exception
    //   58	70	2463	java/lang/Exception
    //   24	58	2469	java/lang/Exception
  }

  // ERROR //
  private void e()
  {
    // Byte code:
    //   0: ldc 14
    //   2: ldc_w 910
    //   5: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   8: aload_0
    //   9: invokespecial 646	com/pad/android/iappad/AdController:c	()V
    //   12: aload_0
    //   13: getfield 135	com/pad/android/iappad/AdController:m	Z
    //   16: ifne +2073 -> 2089
    //   19: ldc 14
    //   21: new 554	java/lang/StringBuilder
    //   24: dup
    //   25: ldc_w 912
    //   28: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: getfield 623	com/pad/android/iappad/AdController:i	Z
    //   35: invokevirtual 915	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   38: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload_0
    //   45: iconst_0
    //   46: putfield 133	com/pad/android/iappad/AdController:l	Z
    //   49: aload_0
    //   50: iconst_1
    //   51: putfield 135	com/pad/android/iappad/AdController:m	Z
    //   54: aload_0
    //   55: getfield 623	com/pad/android/iappad/AdController:i	Z
    //   58: ifne +2031 -> 2089
    //   61: ldc 14
    //   63: ldc_w 917
    //   66: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   69: aload_0
    //   70: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   73: aload_0
    //   74: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   77: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   80: aload_0
    //   81: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   84: aload_0
    //   85: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   88: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   91: aload_0
    //   92: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   95: aload_0
    //   96: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   99: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   102: aload_0
    //   103: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   106: aload_0
    //   107: getfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   110: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   113: aload_0
    //   114: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   117: aload_0
    //   118: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   121: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   124: aload_0
    //   125: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   128: aload_0
    //   129: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   132: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   135: aload_0
    //   136: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   139: aload_0
    //   140: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   143: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   146: aload_0
    //   147: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   150: aload_0
    //   151: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   154: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   157: aload_0
    //   158: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   161: aload_0
    //   162: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   165: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   168: aload_0
    //   169: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   172: aconst_null
    //   173: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   176: aload_0
    //   177: getfield 652	com/pad/android/iappad/AdController:G	Landroid/widget/Button;
    //   180: ifnull +10 -> 190
    //   183: aload_0
    //   184: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   187: invokevirtual 655	android/widget/RelativeLayout:removeAllViews	()V
    //   190: aload_0
    //   191: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   194: ldc_w 919
    //   197: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   200: istore 4
    //   202: aload_0
    //   203: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   206: ldc_w 921
    //   209: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   212: istore 5
    //   214: new 694	android/view/ViewGroup$MarginLayoutParams
    //   217: dup
    //   218: aload_0
    //   219: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   222: ldc_w 923
    //   225: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   228: aload_0
    //   229: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   232: ldc_w 925
    //   235: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   238: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   241: astore 6
    //   243: aload 6
    //   245: iload 4
    //   247: iload 5
    //   249: iconst_0
    //   250: iconst_0
    //   251: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   254: new 703	android/widget/RelativeLayout$LayoutParams
    //   257: dup
    //   258: aload 6
    //   260: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   263: astore 7
    //   265: aload_0
    //   266: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   269: ldc_w 927
    //   272: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   275: istore 8
    //   277: aload_0
    //   278: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   281: ldc_w 929
    //   284: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   287: istore 9
    //   289: aload_0
    //   290: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   293: ldc_w 931
    //   296: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   299: istore 10
    //   301: aload_0
    //   302: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   305: ldc_w 933
    //   308: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   311: istore 11
    //   313: new 694	android/view/ViewGroup$MarginLayoutParams
    //   316: dup
    //   317: iload 8
    //   319: iload 9
    //   321: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   324: astore 12
    //   326: aload 12
    //   328: iload 10
    //   330: iload 11
    //   332: iconst_0
    //   333: iconst_0
    //   334: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   337: new 703	android/widget/RelativeLayout$LayoutParams
    //   340: dup
    //   341: aload 12
    //   343: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   346: astore 13
    //   348: aload_0
    //   349: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   352: invokevirtual 936	android/view/View:invalidate	()V
    //   355: aload_0
    //   356: new 657	android/view/View
    //   359: dup
    //   360: aload_0
    //   361: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   364: invokespecial 658	android/view/View:<init>	(Landroid/content/Context;)V
    //   367: putfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   370: aload_0
    //   371: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   374: ldc_w 938
    //   377: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   380: astore 15
    //   382: aload 15
    //   384: ldc_w 441
    //   387: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   390: ifne +1974 -> 2364
    //   393: aload 15
    //   395: ifnonnull +1962 -> 2357
    //   398: goto +1966 -> 2364
    //   401: aload_0
    //   402: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   405: aload 16
    //   407: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   410: invokevirtual 668	android/view/View:setBackgroundColor	(I)V
    //   413: aload_0
    //   414: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   417: invokevirtual 939	android/widget/TextView:invalidate	()V
    //   420: aload_0
    //   421: new 750	android/widget/TextView
    //   424: dup
    //   425: aload_0
    //   426: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   429: invokespecial 751	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   432: putfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   435: aload_0
    //   436: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   439: aload_0
    //   440: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   443: ldc_w 941
    //   446: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   449: invokevirtual 757	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   452: aload_0
    //   453: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   456: ldc_w 943
    //   459: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   462: astore 18
    //   464: aload 18
    //   466: ldc_w 441
    //   469: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   472: ifne +1900 -> 2372
    //   475: aload 18
    //   477: ifnonnull +1873 -> 2350
    //   480: goto +1892 -> 2372
    //   483: aload_0
    //   484: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   487: aload 19
    //   489: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   492: invokevirtual 762	android/widget/TextView:setTextColor	(I)V
    //   495: new 694	android/view/ViewGroup$MarginLayoutParams
    //   498: dup
    //   499: aload_0
    //   500: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   503: ldc_w 945
    //   506: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   509: iload 9
    //   511: iconst_2
    //   512: isub
    //   513: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   516: astore 20
    //   518: aload 20
    //   520: iload 10
    //   522: bipush 20
    //   524: iadd
    //   525: iload 11
    //   527: bipush 8
    //   529: iadd
    //   530: iconst_0
    //   531: iconst_0
    //   532: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   535: new 703	android/widget/RelativeLayout$LayoutParams
    //   538: dup
    //   539: aload 20
    //   541: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   544: astore 21
    //   546: aload_0
    //   547: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   550: ldc_w 947
    //   553: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   556: istore 22
    //   558: aload_0
    //   559: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   562: ldc_w 949
    //   565: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   568: istore 23
    //   570: aload_0
    //   571: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   574: ldc_w 951
    //   577: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   580: istore 24
    //   582: new 694	android/view/ViewGroup$MarginLayoutParams
    //   585: dup
    //   586: aload_0
    //   587: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   590: ldc_w 953
    //   593: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   596: iload 24
    //   598: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   601: astore 25
    //   603: aload 25
    //   605: iload 22
    //   607: iload 23
    //   609: iconst_0
    //   610: iconst_0
    //   611: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   614: new 703	android/widget/RelativeLayout$LayoutParams
    //   617: dup
    //   618: aload 25
    //   620: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   623: astore 26
    //   625: aload_0
    //   626: new 657	android/view/View
    //   629: dup
    //   630: aload_0
    //   631: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   634: invokespecial 658	android/view/View:<init>	(Landroid/content/Context;)V
    //   637: putfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   640: aload_0
    //   641: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   644: ldc_w 955
    //   647: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   650: astore 27
    //   652: aload 27
    //   654: ldc_w 441
    //   657: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   660: ifne +1720 -> 2380
    //   663: aload 27
    //   665: ifnonnull +1678 -> 2343
    //   668: goto +1712 -> 2380
    //   671: aload_0
    //   672: getfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   675: aload 28
    //   677: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   680: invokevirtual 668	android/view/View:setBackgroundColor	(I)V
    //   683: aload_0
    //   684: new 750	android/widget/TextView
    //   687: dup
    //   688: aload_0
    //   689: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   692: invokespecial 751	android/widget/TextView:<init>	(Landroid/content/Context;)V
    //   695: putfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   698: aload_0
    //   699: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   702: aload_0
    //   703: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   706: ldc_w 957
    //   709: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   712: invokevirtual 757	android/widget/TextView:setText	(Ljava/lang/CharSequence;)V
    //   715: aload_0
    //   716: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   719: ldc_w 779
    //   722: invokevirtual 783	android/widget/TextView:setTextSize	(F)V
    //   725: aload_0
    //   726: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   729: ldc_w 959
    //   732: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   735: astore 29
    //   737: aload 29
    //   739: ldc_w 441
    //   742: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   745: ifne +1643 -> 2388
    //   748: aload 29
    //   750: ifnonnull +6 -> 756
    //   753: goto +1635 -> 2388
    //   756: aload_0
    //   757: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   760: aload 29
    //   762: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   765: invokevirtual 762	android/widget/TextView:setTextColor	(I)V
    //   768: new 694	android/view/ViewGroup$MarginLayoutParams
    //   771: dup
    //   772: aload_0
    //   773: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   776: ldc_w 961
    //   779: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   782: aload_0
    //   783: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   786: ldc_w 963
    //   789: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   792: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   795: astore 30
    //   797: aload_0
    //   798: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   801: ldc_w 965
    //   804: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   807: iconst_1
    //   808: if_icmpne +1301 -> 2109
    //   811: iload 22
    //   813: bipush 70
    //   815: iadd
    //   816: istore 31
    //   818: aload 30
    //   820: iload 31
    //   822: iload 23
    //   824: iconst_5
    //   825: iadd
    //   826: iconst_0
    //   827: iconst_0
    //   828: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   831: new 703	android/widget/RelativeLayout$LayoutParams
    //   834: dup
    //   835: aload 30
    //   837: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   840: astore 32
    //   842: iload 9
    //   844: iconst_5
    //   845: isub
    //   846: iconst_0
    //   847: invokestatic 795	java/lang/Math:max	(II)I
    //   850: istore 33
    //   852: iload 33
    //   854: iconst_2
    //   855: idiv
    //   856: i2f
    //   857: fstore 34
    //   859: fload 34
    //   861: ldc_w 779
    //   864: fcmpl
    //   865: ifle +1471 -> 2336
    //   868: ldc_w 779
    //   871: fstore 35
    //   873: iload 24
    //   875: iconst_5
    //   876: isub
    //   877: iconst_0
    //   878: invokestatic 795	java/lang/Math:max	(II)I
    //   881: istore 36
    //   883: iload 36
    //   885: iconst_2
    //   886: idiv
    //   887: i2f
    //   888: fstore 37
    //   890: fload 37
    //   892: ldc_w 779
    //   895: fcmpl
    //   896: ifle +8 -> 904
    //   899: ldc_w 779
    //   902: fstore 37
    //   904: aload_0
    //   905: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   908: ifnull +10 -> 918
    //   911: aload_0
    //   912: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   915: invokevirtual 966	android/widget/Button:invalidate	()V
    //   918: aload_0
    //   919: new 797	android/widget/Button
    //   922: dup
    //   923: aload_0
    //   924: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   927: invokespecial 798	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   930: putfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   933: aload_0
    //   934: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   937: ldc_w 968
    //   940: invokevirtual 800	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   943: aload_0
    //   944: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   947: fload 37
    //   949: invokevirtual 801	android/widget/Button:setTextSize	(F)V
    //   952: aload_0
    //   953: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   956: aload 19
    //   958: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   961: invokevirtual 802	android/widget/Button:setTextColor	(I)V
    //   964: aload_0
    //   965: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   968: iconst_0
    //   969: iconst_0
    //   970: iconst_0
    //   971: iconst_0
    //   972: invokevirtual 805	android/widget/Button:setPadding	(IIII)V
    //   975: aload_0
    //   976: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   979: aload 28
    //   981: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   984: invokevirtual 806	android/widget/Button:setBackgroundColor	(I)V
    //   987: aload_0
    //   988: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   991: astore 38
    //   993: new 970	com/pad/android/iappad/o
    //   996: dup
    //   997: aload_0
    //   998: invokespecial 971	com/pad/android/iappad/o:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1001: astore 39
    //   1003: aload 38
    //   1005: aload 39
    //   1007: invokevirtual 810	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1010: aload_0
    //   1011: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1014: ifnull +10 -> 1024
    //   1017: aload_0
    //   1018: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1021: invokevirtual 966	android/widget/Button:invalidate	()V
    //   1024: aload_0
    //   1025: new 797	android/widget/Button
    //   1028: dup
    //   1029: aload_0
    //   1030: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1033: invokespecial 798	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1036: putfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1039: aload_0
    //   1040: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1043: ldc_w 799
    //   1046: invokevirtual 800	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1049: aload_0
    //   1050: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1053: fload 35
    //   1055: invokevirtual 801	android/widget/Button:setTextSize	(F)V
    //   1058: aload_0
    //   1059: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1062: aload 19
    //   1064: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1067: invokevirtual 802	android/widget/Button:setTextColor	(I)V
    //   1070: aload_0
    //   1071: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1074: iconst_0
    //   1075: iconst_0
    //   1076: iconst_0
    //   1077: iconst_0
    //   1078: invokevirtual 805	android/widget/Button:setPadding	(IIII)V
    //   1081: aload_0
    //   1082: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1085: aload 16
    //   1087: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1090: invokevirtual 806	android/widget/Button:setBackgroundColor	(I)V
    //   1093: aload_0
    //   1094: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1097: new 973	com/pad/android/iappad/b
    //   1100: dup
    //   1101: aload_0
    //   1102: invokespecial 974	com/pad/android/iappad/b:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1105: invokevirtual 810	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1108: aload_0
    //   1109: new 797	android/widget/Button
    //   1112: dup
    //   1113: aload_0
    //   1114: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1117: invokespecial 798	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1120: putfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1123: aload_0
    //   1124: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1127: ldc_w 976
    //   1130: invokevirtual 800	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1133: aload_0
    //   1134: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1137: fload 37
    //   1139: invokevirtual 801	android/widget/Button:setTextSize	(F)V
    //   1142: aload_0
    //   1143: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1146: aload 19
    //   1148: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1151: invokevirtual 802	android/widget/Button:setTextColor	(I)V
    //   1154: aload_0
    //   1155: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1158: iconst_0
    //   1159: iconst_0
    //   1160: iconst_0
    //   1161: iconst_0
    //   1162: invokevirtual 805	android/widget/Button:setPadding	(IIII)V
    //   1165: aload_0
    //   1166: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1169: aload 28
    //   1171: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1174: invokevirtual 806	android/widget/Button:setBackgroundColor	(I)V
    //   1177: aload_0
    //   1178: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1181: new 978	com/pad/android/iappad/c
    //   1184: dup
    //   1185: aload_0
    //   1186: invokespecial 979	com/pad/android/iappad/c:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1189: invokevirtual 810	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1192: aload_0
    //   1193: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1196: ifnull +10 -> 1206
    //   1199: aload_0
    //   1200: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1203: invokevirtual 966	android/widget/Button:invalidate	()V
    //   1206: aload_0
    //   1207: new 797	android/widget/Button
    //   1210: dup
    //   1211: aload_0
    //   1212: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1215: invokespecial 798	android/widget/Button:<init>	(Landroid/content/Context;)V
    //   1218: putfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1221: aload_0
    //   1222: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1225: ldc_w 981
    //   1228: invokevirtual 800	android/widget/Button:setText	(Ljava/lang/CharSequence;)V
    //   1231: aload_0
    //   1232: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1235: fload 37
    //   1237: invokevirtual 801	android/widget/Button:setTextSize	(F)V
    //   1240: aload_0
    //   1241: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1244: aload 19
    //   1246: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1249: invokevirtual 802	android/widget/Button:setTextColor	(I)V
    //   1252: aload_0
    //   1253: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1256: iconst_0
    //   1257: iconst_0
    //   1258: iconst_0
    //   1259: iconst_0
    //   1260: invokevirtual 805	android/widget/Button:setPadding	(IIII)V
    //   1263: aload_0
    //   1264: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1267: aload 28
    //   1269: invokestatic 748	android/graphics/Color:parseColor	(Ljava/lang/String;)I
    //   1272: invokevirtual 806	android/widget/Button:setBackgroundColor	(I)V
    //   1275: aload_0
    //   1276: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1279: new 983	com/pad/android/iappad/d
    //   1282: dup
    //   1283: aload_0
    //   1284: invokespecial 984	com/pad/android/iappad/d:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   1287: invokevirtual 810	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   1290: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1293: dup
    //   1294: bipush 30
    //   1296: iload 36
    //   1298: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1301: astore 40
    //   1303: iconst_3
    //   1304: iload 23
    //   1306: aload_0
    //   1307: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1310: ldc_w 951
    //   1313: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1316: iload 36
    //   1318: isub
    //   1319: iconst_2
    //   1320: idiv
    //   1321: iadd
    //   1322: iadd
    //   1323: istore 41
    //   1325: aload 40
    //   1327: iload 22
    //   1329: iconst_5
    //   1330: iadd
    //   1331: iload 41
    //   1333: iconst_0
    //   1334: iconst_0
    //   1335: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1338: new 703	android/widget/RelativeLayout$LayoutParams
    //   1341: dup
    //   1342: aload 40
    //   1344: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1347: astore 42
    //   1349: aload 40
    //   1351: bipush 30
    //   1353: iload 22
    //   1355: iconst_5
    //   1356: iadd
    //   1357: iadd
    //   1358: iload 41
    //   1360: iconst_0
    //   1361: iconst_0
    //   1362: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1365: new 703	android/widget/RelativeLayout$LayoutParams
    //   1368: dup
    //   1369: aload 40
    //   1371: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1374: astore 43
    //   1376: aload_0
    //   1377: getfield 175	com/pad/android/iappad/AdController:al	Z
    //   1380: ifeq +739 -> 2119
    //   1383: ldc 14
    //   1385: ldc_w 986
    //   1388: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   1391: aload_0
    //   1392: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1395: aload_0
    //   1396: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   1399: aload 7
    //   1401: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1404: aload_0
    //   1405: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   1408: astore 44
    //   1410: aload 44
    //   1412: ifnull +39 -> 1451
    //   1415: aload_0
    //   1416: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1419: ldc_w 625
    //   1422: invokevirtual 644	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   1425: ldc_w 630
    //   1428: invokevirtual 645	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   1431: ifne +20 -> 1451
    //   1434: ldc 14
    //   1436: ldc_w 988
    //   1439: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1442: aload_0
    //   1443: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   1446: invokeinterface 991 1 0
    //   1451: aload_0
    //   1452: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1455: ldc_w 993
    //   1458: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1461: iconst_1
    //   1462: if_icmpne +147 -> 1609
    //   1465: aload_0
    //   1466: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1469: aload_0
    //   1470: getfield 229	com/pad/android/iappad/AdController:y	Landroid/view/View;
    //   1473: aload 13
    //   1475: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1478: aload_0
    //   1479: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1482: ldc_w 941
    //   1485: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1488: ldc_w 441
    //   1491: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1494: ifne +16 -> 1510
    //   1497: aload_0
    //   1498: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1501: aload_0
    //   1502: getfield 232	com/pad/android/iappad/AdController:z	Landroid/widget/TextView;
    //   1505: aload 21
    //   1507: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1510: aload_0
    //   1511: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1514: ldc_w 844
    //   1517: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1520: iconst_1
    //   1521: if_icmpne +88 -> 1609
    //   1524: aload_0
    //   1525: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1528: dup
    //   1529: bipush 55
    //   1531: iload 33
    //   1533: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1536: putfield 812	com/pad/android/iappad/AdController:w	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1539: bipush 251
    //   1541: bipush 201
    //   1543: iload 8
    //   1545: iload 10
    //   1547: iadd
    //   1548: iadd
    //   1549: iadd
    //   1550: istore 58
    //   1552: iconst_2
    //   1553: iload 11
    //   1555: iload 9
    //   1557: iload 33
    //   1559: isub
    //   1560: iconst_2
    //   1561: idiv
    //   1562: iadd
    //   1563: iadd
    //   1564: istore 59
    //   1566: aload_0
    //   1567: getfield 812	com/pad/android/iappad/AdController:w	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1570: iload 58
    //   1572: iload 59
    //   1574: iconst_0
    //   1575: iconst_0
    //   1576: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1579: aload_0
    //   1580: new 703	android/widget/RelativeLayout$LayoutParams
    //   1583: dup
    //   1584: aload_0
    //   1585: getfield 812	com/pad/android/iappad/AdController:w	Landroid/view/ViewGroup$MarginLayoutParams;
    //   1588: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1591: putfield 814	com/pad/android/iappad/AdController:v	Landroid/widget/RelativeLayout$LayoutParams;
    //   1594: aload_0
    //   1595: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1598: aload_0
    //   1599: getfield 243	com/pad/android/iappad/AdController:E	Landroid/widget/Button;
    //   1602: aload_0
    //   1603: getfield 814	com/pad/android/iappad/AdController:v	Landroid/widget/RelativeLayout$LayoutParams;
    //   1606: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1609: aload_0
    //   1610: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1613: ldc_w 995
    //   1616: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1619: iconst_1
    //   1620: if_icmpne +177 -> 1797
    //   1623: aload_0
    //   1624: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1627: aload_0
    //   1628: getfield 234	com/pad/android/iappad/AdController:A	Landroid/view/View;
    //   1631: aload 26
    //   1633: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1636: aload_0
    //   1637: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1640: ldc_w 957
    //   1643: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   1646: ldc_w 441
    //   1649: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1652: ifne +16 -> 1668
    //   1655: aload_0
    //   1656: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1659: aload_0
    //   1660: getfield 236	com/pad/android/iappad/AdController:B	Landroid/widget/TextView;
    //   1663: aload 32
    //   1665: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1668: aload_0
    //   1669: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1672: ldc_w 965
    //   1675: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1678: iconst_1
    //   1679: if_icmpne +29 -> 1708
    //   1682: aload_0
    //   1683: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1686: aload_0
    //   1687: getfield 239	com/pad/android/iappad/AdController:C	Landroid/widget/Button;
    //   1690: aload 42
    //   1692: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1695: aload_0
    //   1696: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1699: aload_0
    //   1700: getfield 241	com/pad/android/iappad/AdController:D	Landroid/widget/Button;
    //   1703: aload 43
    //   1705: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1708: aload_0
    //   1709: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1712: ldc_w 997
    //   1715: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1718: iconst_1
    //   1719: if_icmpne +78 -> 1797
    //   1722: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1725: dup
    //   1726: bipush 55
    //   1728: iload 36
    //   1730: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1733: astore 56
    //   1735: aload 56
    //   1737: bipush 251
    //   1739: bipush 201
    //   1741: iload 22
    //   1743: aload_0
    //   1744: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1747: ldc_w 953
    //   1750: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1753: iadd
    //   1754: iadd
    //   1755: iadd
    //   1756: iconst_2
    //   1757: iload 23
    //   1759: iload 24
    //   1761: iload 36
    //   1763: isub
    //   1764: iconst_2
    //   1765: idiv
    //   1766: iadd
    //   1767: iadd
    //   1768: iconst_0
    //   1769: iconst_0
    //   1770: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1773: new 703	android/widget/RelativeLayout$LayoutParams
    //   1776: dup
    //   1777: aload 56
    //   1779: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1782: astore 57
    //   1784: aload_0
    //   1785: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1788: aload_0
    //   1789: getfield 245	com/pad/android/iappad/AdController:F	Landroid/widget/Button;
    //   1792: aload 57
    //   1794: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1797: aload_0
    //   1798: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1801: ldc_w 625
    //   1804: invokevirtual 644	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   1807: ldc_w 630
    //   1810: invokevirtual 645	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   1813: istore 45
    //   1815: iload 45
    //   1817: ifeq +53 -> 1870
    //   1820: new 694	android/view/ViewGroup$MarginLayoutParams
    //   1823: dup
    //   1824: aload_0
    //   1825: getfield 848	com/pad/android/iappad/AdController:I	I
    //   1828: aload_0
    //   1829: getfield 850	com/pad/android/iappad/AdController:J	I
    //   1832: invokespecial 697	android/view/ViewGroup$MarginLayoutParams:<init>	(II)V
    //   1835: astore 53
    //   1837: aload 53
    //   1839: iconst_0
    //   1840: iconst_0
    //   1841: iconst_0
    //   1842: iconst_0
    //   1843: invokevirtual 701	android/view/ViewGroup$MarginLayoutParams:setMargins	(IIII)V
    //   1846: new 703	android/widget/RelativeLayout$LayoutParams
    //   1849: dup
    //   1850: aload 53
    //   1852: invokespecial 706	android/widget/RelativeLayout$LayoutParams:<init>	(Landroid/view/ViewGroup$MarginLayoutParams;)V
    //   1855: astore 55
    //   1857: aload_0
    //   1858: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   1861: aload_0
    //   1862: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   1865: aload 55
    //   1867: invokevirtual 853	android/app/Activity:addContentView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   1870: ldc 14
    //   1872: new 554	java/lang/StringBuilder
    //   1875: dup
    //   1876: ldc_w 999
    //   1879: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1882: aload_0
    //   1883: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1886: ldc_w 855
    //   1889: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1892: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1895: ldc_w 1001
    //   1898: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1901: aload_0
    //   1902: getfield 137	com/pad/android/iappad/AdController:p	Z
    //   1905: invokevirtual 915	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   1908: ldc_w 1003
    //   1911: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1914: aload_0
    //   1915: getfield 157	com/pad/android/iappad/AdController:T	I
    //   1918: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1921: ldc_w 1005
    //   1924: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1927: aload_0
    //   1928: getfield 159	com/pad/android/iappad/AdController:U	I
    //   1931: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1934: ldc_w 1007
    //   1937: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1940: aload_0
    //   1941: getfield 161	com/pad/android/iappad/AdController:V	I
    //   1944: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1947: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1950: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1953: aload_0
    //   1954: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   1957: ldc_w 855
    //   1960: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   1963: iconst_1
    //   1964: if_icmpne +263 -> 2227
    //   1967: aload_0
    //   1968: getfield 137	com/pad/android/iappad/AdController:p	Z
    //   1971: ifne +256 -> 2227
    //   1974: aload_0
    //   1975: getfield 157	com/pad/android/iappad/AdController:T	I
    //   1978: ifle +249 -> 2227
    //   1981: iconst_1
    //   1982: istore 48
    //   1984: iload 48
    //   1986: ifeq +319 -> 2305
    //   1989: ldc 14
    //   1991: ldc_w 1009
    //   1994: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   1997: aload_0
    //   1998: iconst_1
    //   1999: putfield 137	com/pad/android/iappad/AdController:p	Z
    //   2002: aload_0
    //   2003: new 859	com/pad/android/iappad/s
    //   2006: dup
    //   2007: aload_0
    //   2008: invokespecial 860	com/pad/android/iappad/s:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   2011: putfield 462	com/pad/android/iappad/AdController:n	Lcom/pad/android/iappad/s;
    //   2014: aload_0
    //   2015: new 862	android/os/Handler
    //   2018: dup
    //   2019: invokespecial 863	android/os/Handler:<init>	()V
    //   2022: putfield 459	com/pad/android/iappad/AdController:o	Landroid/os/Handler;
    //   2025: ldc 14
    //   2027: new 554	java/lang/StringBuilder
    //   2030: dup
    //   2031: ldc_w 865
    //   2034: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2037: aload_0
    //   2038: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   2041: ldc_w 867
    //   2044: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   2047: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2050: ldc_w 868
    //   2053: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2056: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2059: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   2062: aload_0
    //   2063: getfield 459	com/pad/android/iappad/AdController:o	Landroid/os/Handler;
    //   2066: aload_0
    //   2067: getfield 462	com/pad/android/iappad/AdController:n	Lcom/pad/android/iappad/s;
    //   2070: sipush 1000
    //   2073: aload_0
    //   2074: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   2077: ldc_w 867
    //   2080: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   2083: imul
    //   2084: i2l
    //   2085: invokevirtual 872	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   2088: pop
    //   2089: return
    //   2090: astore_2
    //   2091: aload_0
    //   2092: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2095: aload_0
    //   2096: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   2099: invokevirtual 650	android/widget/RelativeLayout:removeView	(Landroid/view/View;)V
    //   2102: goto -2022 -> 80
    //   2105: astore_3
    //   2106: goto -1916 -> 190
    //   2109: iload 22
    //   2111: bipush 20
    //   2113: iadd
    //   2114: istore 31
    //   2116: goto -1298 -> 818
    //   2119: ldc 14
    //   2121: ldc_w 1011
    //   2124: invokestatic 390	com/pad/android/util/AdLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   2127: aload_0
    //   2128: getfield 190	com/pad/android/iappad/AdController:u	Landroid/widget/RelativeLayout;
    //   2131: aload_0
    //   2132: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   2135: aload 7
    //   2137: invokevirtual 833	android/widget/RelativeLayout:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   2140: goto -736 -> 1404
    //   2143: astore_1
    //   2144: ldc 14
    //   2146: aload_1
    //   2147: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2150: ldc 14
    //   2152: new 554	java/lang/StringBuilder
    //   2155: dup
    //   2156: ldc_w 1013
    //   2159: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2162: aload_1
    //   2163: invokevirtual 879	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   2166: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2169: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2172: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2175: return
    //   2176: astore 60
    //   2178: ldc 14
    //   2180: ldc_w 1015
    //   2183: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2186: ldc 14
    //   2188: aload 60
    //   2190: invokestatic 336	com/pad/android/util/AdLog:printStackTrace	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   2193: goto -742 -> 1451
    //   2196: astore 54
    //   2198: ldc 14
    //   2200: new 554	java/lang/StringBuilder
    //   2203: dup
    //   2204: ldc_w 1017
    //   2207: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2210: aload 54
    //   2212: invokevirtual 561	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   2215: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2218: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2221: invokestatic 471	com/pad/android/util/AdLog:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   2224: goto -354 -> 1870
    //   2227: aload_0
    //   2228: getfield 157	com/pad/android/iappad/AdController:T	I
    //   2231: aload_0
    //   2232: getfield 159	com/pad/android/iappad/AdController:U	I
    //   2235: if_icmpgt +20 -> 2255
    //   2238: aload_0
    //   2239: getfield 157	com/pad/android/iappad/AdController:T	I
    //   2242: aload_0
    //   2243: getfield 161	com/pad/android/iappad/AdController:V	I
    //   2246: if_icmpge +9 -> 2255
    //   2249: iconst_1
    //   2250: istore 48
    //   2252: goto -268 -> 1984
    //   2255: aload_0
    //   2256: getfield 157	com/pad/android/iappad/AdController:T	I
    //   2259: istore 46
    //   2261: aload_0
    //   2262: getfield 159	com/pad/android/iappad/AdController:U	I
    //   2265: istore 47
    //   2267: iconst_0
    //   2268: istore 48
    //   2270: iload 46
    //   2272: iload 47
    //   2274: if_icmple -290 -> 1984
    //   2277: aload_0
    //   2278: getfield 157	com/pad/android/iappad/AdController:T	I
    //   2281: istore 49
    //   2283: aload_0
    //   2284: getfield 161	com/pad/android/iappad/AdController:V	I
    //   2287: istore 50
    //   2289: iconst_0
    //   2290: istore 48
    //   2292: iload 49
    //   2294: iload 50
    //   2296: if_icmplt -312 -> 1984
    //   2299: iconst_0
    //   2300: istore 48
    //   2302: goto -318 -> 1984
    //   2305: ldc 14
    //   2307: ldc_w 1019
    //   2310: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   2313: aload_0
    //   2314: iconst_0
    //   2315: putfield 137	com/pad/android/iappad/AdController:p	Z
    //   2318: aload_0
    //   2319: invokespecial 898	com/pad/android/iappad/AdController:f	()V
    //   2322: return
    //   2323: astore 51
    //   2325: return
    //   2326: astore 17
    //   2328: goto -1908 -> 420
    //   2331: astore 14
    //   2333: goto -1978 -> 355
    //   2336: fload 34
    //   2338: fstore 35
    //   2340: goto -1467 -> 873
    //   2343: aload 27
    //   2345: astore 28
    //   2347: goto -1676 -> 671
    //   2350: aload 18
    //   2352: astore 19
    //   2354: goto -1871 -> 483
    //   2357: aload 15
    //   2359: astore 16
    //   2361: goto -1960 -> 401
    //   2364: ldc_w 908
    //   2367: astore 16
    //   2369: goto -1968 -> 401
    //   2372: ldc_w 1021
    //   2375: astore 19
    //   2377: goto -1894 -> 483
    //   2380: ldc_w 908
    //   2383: astore 28
    //   2385: goto -1714 -> 671
    //   2388: ldc_w 1021
    //   2391: astore 29
    //   2393: goto -1637 -> 756
    //
    // Exception table:
    //   from	to	target	type
    //   69	80	2090	java/lang/Exception
    //   80	190	2105	java/lang/Exception
    //   2091	2102	2105	java/lang/Exception
    //   69	80	2143	org/json/JSONException
    //   80	190	2143	org/json/JSONException
    //   190	348	2143	org/json/JSONException
    //   348	355	2143	org/json/JSONException
    //   355	393	2143	org/json/JSONException
    //   401	413	2143	org/json/JSONException
    //   413	420	2143	org/json/JSONException
    //   420	475	2143	org/json/JSONException
    //   483	663	2143	org/json/JSONException
    //   671	748	2143	org/json/JSONException
    //   756	811	2143	org/json/JSONException
    //   818	859	2143	org/json/JSONException
    //   873	890	2143	org/json/JSONException
    //   904	918	2143	org/json/JSONException
    //   918	1024	2143	org/json/JSONException
    //   1024	1206	2143	org/json/JSONException
    //   1206	1404	2143	org/json/JSONException
    //   1404	1410	2143	org/json/JSONException
    //   1415	1451	2143	org/json/JSONException
    //   1451	1510	2143	org/json/JSONException
    //   1510	1539	2143	org/json/JSONException
    //   1552	1609	2143	org/json/JSONException
    //   1609	1668	2143	org/json/JSONException
    //   1668	1708	2143	org/json/JSONException
    //   1708	1797	2143	org/json/JSONException
    //   1797	1815	2143	org/json/JSONException
    //   1820	1870	2143	org/json/JSONException
    //   1870	1981	2143	org/json/JSONException
    //   1989	2025	2143	org/json/JSONException
    //   2025	2089	2143	org/json/JSONException
    //   2091	2102	2143	org/json/JSONException
    //   2119	2140	2143	org/json/JSONException
    //   2178	2193	2143	org/json/JSONException
    //   2198	2224	2143	org/json/JSONException
    //   2227	2249	2143	org/json/JSONException
    //   2255	2267	2143	org/json/JSONException
    //   2277	2289	2143	org/json/JSONException
    //   2305	2322	2143	org/json/JSONException
    //   1415	1451	2176	java/lang/Exception
    //   1820	1870	2196	java/lang/Exception
    //   2025	2089	2323	java/lang/Exception
    //   413	420	2326	java/lang/Exception
    //   348	355	2331	java/lang/Exception
  }

  private void f()
  {
    float f1 = 10.0F;
    try
    {
      boolean bool = this.j.getString("clickfootervisible").equals("1");
      if (bool)
        break label29;
      label156: label29: label413: label425: label177: label191: return;
    }
    catch (Exception localException1)
    {
      this.p = false;
      if (this.o != null)
        this.o.removeCallbacks(this.n);
      this.G = new Button(this.c);
      this.G.setText("Refresh");
      String str1 = "#E6E6E6";
      String str2 = "#000000";
      if (this.m);
      int i1;
      try
      {
        int i5 = Math.max(-5 + this.j.getInt("clickfooterheight"), 0);
        i1 = i5;
      }
      catch (Exception localException3)
      {
        float f2;
        try
        {
          str1 = this.j.getString("clickfootercolor");
          str2 = this.j.getString("clicktitletextcolor");
          if (str1.equals(""))
            break label425;
          if (str1 == null)
            break label425;
          if ((str2.equals("")) || (str2 == null))
            str2 = "#000000";
          f2 = i1 / 2;
          if (f2 <= f1)
            break label413;
          this.G.setPadding(0, 0, 0, 0);
          this.G.setTextSize(f1);
          this.G.setTextColor(Color.parseColor(str2));
          this.G.setBackgroundColor(Color.parseColor(str1));
          this.G.setOnClickListener(new e(this));
          if (this.m);
          try
          {
            int i2 = this.j.getInt("clickfooterx");
            int i3 = this.j.getInt("clickfootery");
            int i4 = this.j.getInt("clickfooterheight");
            ViewGroup.MarginLayoutParams localMarginLayoutParams = new ViewGroup.MarginLayoutParams(55, i1);
            localMarginLayoutParams.setMargins(-120 + i2 + this.j.getInt("clickfooterwidth"), 2 + i3 + (i4 - i1) / 2, 0, 0);
            RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(localMarginLayoutParams);
            this.u.addView(this.G, localLayoutParams);
            return;
          }
          catch (Exception localException2)
          {
            AdLog.e("LBAdController", "Error (add Manual Poll btn before click): " + localException2.getMessage());
            AdLog.printStackTrace("LBAdController", localException2);
            return;
          }
          localException3 = localException3;
          i1 = 0;
        }
        catch (Exception localException4)
        {
          break label177:
          f1 = f2;
          break label191:
          i1 = 0;
          break label177:
          str1 = "#E6E6E6";
          break label156:
        }
      }
    }
  }

  private void g()
  {
    if (this.f != null);
    for (int i1 = this.f.getVisibility(); i1 != 0; i1 = 4)
      while (true)
      {
        return;
        if (this.b == null)
          break;
        i1 = this.b.getVisibility();
      }
    if ((this.L != null) && (!(this.k)));
    try
    {
      AdLog.i("LBAdController", "onAdClosed triggered");
      label285: label88: this.L.onAdClosed();
    }
    catch (Exception localException1)
    {
      try
      {
        this.f.stopLoading();
      }
      catch (Exception localException1)
      {
        try
        {
          this.b.stopLoading();
          if (this.aj != null)
            this.aj.cancel(true);
          if (this.ak != null)
            this.ak.cancel(true);
          AdLog.i("LBAdController", "closeUnlocker called");
          this.k = false;
          this.l = false;
          this.m = false;
          this.p = false;
          this.S = true;
          this.t = false;
          this.K = true;
          this.R = false;
          this.W = false;
          this.af = false;
          this.ag = false;
          this.ai = true;
          this.al = false;
          if (this.o != null)
            this.o.removeCallbacks(this.n);
        }
        catch (Exception localException2)
        {
          try
          {
            Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(this.f, null);
            Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(this.b, null);
          }
          catch (Exception localException6)
          {
            while (true)
              try
              {
                this.c.runOnUiThread(new f(this));
                if (this.g != null)
                  this.g.setOnTouchListener(null);
                try
                {
                  ((ViewGroup)this.u.getParent()).removeView(this.u);
                  return;
                }
                catch (Exception localException5)
                {
                  AdLog.printStackTrace("LBAdController", localException5);
                  AdLog.e("LBAdController", "Error when trying to remove layout - " + localException5.getMessage());
                  return;
                }
                localException6 = localException6;
                AdLog.e("LBAdController", "error when onAdClosed triggered");
                AdLog.printStackTrace("LBAdController", localException6);
              }
              catch (Exception localException4)
              {
                AdLog.e("LBAdController", "CloseUnlocker error - " + localException4.getMessage());
                break label285:
                localException3 = localException3;
              }
            localException2 = localException2;
          }
          break label88:
          localException1 = localException1;
        }
      }
    }
  }

  public String adShowStatus()
  {
    if (this.c != null);
    for (Object localObject = this.c; ; localObject = this.a)
      return ((Context)localObject).getSharedPreferences("Preference", 2).getString("SD_ADSTATUS_" + this.x, "default");
  }

  public void audioAdRetrieved(Integer paramInteger)
  {
    if (paramInteger.intValue() == 0)
      b();
    do
      return;
    while (this.ah == null);
    this.ah.onAdFailed();
    this.ag = true;
  }

  public void checkForAudioAd(String paramString1, String paramString2)
  {
    if ((this.S) || (paramString1 == null) || (paramString1.equals("null")) || (paramString1.equals("")) || (this.j.isNull("adaudiourl")));
    try
    {
      this.j.put("adaudiourl", paramString1);
      this.j.put("adurl", paramString2);
      if ((!(this.ag)) && (!(this.j.isNull("adaudiourl"))))
      {
        if (this.am == null)
          this.am = new p(this, true);
        if (this.Z == null)
        {
          this.X = ((AudioManager)this.c.getSystemService("audio"));
          this.Z = ((SensorManager)this.c.getSystemService("sensor"));
          this.ab = 0.0F;
          this.ac = 9.80665F;
          this.ad = 9.80665F;
        }
        retrieveAudioAd();
      }
      return;
      AdLog.d("LBAdController", "No audio component");
      return;
    }
    catch (JSONException localJSONException)
    {
    }
  }

  public void destroyAd()
  {
    AdLog.i("LBAdController", "destroyAd called");
    this.S = true;
    c();
    g();
  }

  public boolean getAdDestroyed()
  {
    return this.S;
  }

  public boolean getAdLoaded()
  {
    return this.R;
  }

  public boolean getLoadInBackground()
  {
    return this.ai;
  }

  public boolean getOnAdLoaded()
  {
    return this.W;
  }

  public void hideAd()
  {
    pauseAd();
  }

  // ERROR //
  public void initialized()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: putfield 143	com/pad/android/iappad/AdController:t	Z
    //   5: aload_0
    //   6: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   9: ifnull +686 -> 695
    //   12: aload_0
    //   13: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   16: ldc_w 640
    //   19: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   22: ldc_w 1150
    //   25: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   28: ifeq +47 -> 75
    //   31: aload_0
    //   32: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   35: ifnull +17 -> 52
    //   38: aload_0
    //   39: iconst_1
    //   40: putfield 153	com/pad/android/iappad/AdController:R	Z
    //   43: aload_0
    //   44: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   47: invokeinterface 903 1 0
    //   52: aload_0
    //   53: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   56: ifnull +17 -> 73
    //   59: aload_0
    //   60: iconst_1
    //   61: putfield 167	com/pad/android/iappad/AdController:ag	Z
    //   64: aload_0
    //   65: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   68: invokeinterface 904 1 0
    //   73: return
    //   74: astore_1
    //   75: aload_0
    //   76: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   79: ifnull +108 -> 187
    //   82: new 1152	android/util/DisplayMetrics
    //   85: dup
    //   86: invokespecial 1153	android/util/DisplayMetrics:<init>	()V
    //   89: astore_2
    //   90: aload_0
    //   91: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   94: invokevirtual 1157	android/app/Activity:getWindowManager	()Landroid/view/WindowManager;
    //   97: invokeinterface 1163 1 0
    //   102: aload_2
    //   103: invokevirtual 1169	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   106: new 1171	android/graphics/Rect
    //   109: dup
    //   110: invokespecial 1172	android/graphics/Rect:<init>	()V
    //   113: astore_3
    //   114: aload_0
    //   115: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   118: invokevirtual 1176	android/app/Activity:getWindow	()Landroid/view/Window;
    //   121: astore 4
    //   123: aload 4
    //   125: invokevirtual 1182	android/view/Window:getDecorView	()Landroid/view/View;
    //   128: aload_3
    //   129: invokevirtual 1186	android/view/View:getWindowVisibleDisplayFrame	(Landroid/graphics/Rect;)V
    //   132: aload_3
    //   133: getfield 1189	android/graphics/Rect:top	I
    //   136: istore 5
    //   138: aload 4
    //   140: ldc_w 1190
    //   143: invokevirtual 1194	android/view/Window:findViewById	(I)Landroid/view/View;
    //   146: invokevirtual 1197	android/view/View:getTop	()I
    //   149: istore 6
    //   151: iload 6
    //   153: iload 5
    //   155: if_icmple +254 -> 409
    //   158: iload 6
    //   160: iload 5
    //   162: isub
    //   163: istore 7
    //   165: aload_0
    //   166: aload_2
    //   167: getfield 1200	android/util/DisplayMetrics:widthPixels	I
    //   170: putfield 848	com/pad/android/iappad/AdController:I	I
    //   173: aload_0
    //   174: aload_2
    //   175: getfield 1203	android/util/DisplayMetrics:heightPixels	I
    //   178: iload 5
    //   180: isub
    //   181: iload 7
    //   183: isub
    //   184: putfield 850	com/pad/android/iappad/AdController:J	I
    //   187: aload_0
    //   188: aload_0
    //   189: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   192: ldc_w 1205
    //   195: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   198: putfield 159	com/pad/android/iappad/AdController:U	I
    //   201: aload_0
    //   202: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   205: ldc_w 1207
    //   208: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   211: istore 26
    //   213: aload_0
    //   214: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   217: ldc_w 867
    //   220: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   223: istore 27
    //   225: iload 27
    //   227: ifle +188 -> 415
    //   230: aload_0
    //   231: iload 26
    //   233: bipush 60
    //   235: imul
    //   236: iload 27
    //   238: idiv
    //   239: putfield 161	com/pad/android/iappad/AdController:V	I
    //   242: aload_0
    //   243: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   246: ldc_w 1209
    //   249: invokevirtual 644	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   252: ldc_w 630
    //   255: invokevirtual 645	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   258: ifeq +8 -> 266
    //   261: aload_0
    //   262: iconst_1
    //   263: putfield 141	com/pad/android/iappad/AdController:r	Z
    //   266: aload_0
    //   267: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   270: ldc_w 1096
    //   273: iconst_2
    //   274: invokevirtual 1210	android/app/Activity:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   277: invokeinterface 1214 1 0
    //   282: astore 10
    //   284: aload 10
    //   286: new 554	java/lang/StringBuilder
    //   289: dup
    //   290: ldc_w 1216
    //   293: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   296: aload_0
    //   297: getfield 186	com/pad/android/iappad/AdController:x	Ljava/lang/String;
    //   300: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   306: aload_0
    //   307: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   310: ldc_w 1218
    //   313: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   316: invokeinterface 1224 3 0
    //   321: pop
    //   322: aload 10
    //   324: invokeinterface 1227 1 0
    //   329: pop
    //   330: aload_0
    //   331: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   334: ldc_w 1229
    //   337: invokevirtual 628	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   340: ifne +57 -> 397
    //   343: ldc_w 1150
    //   346: astore 20
    //   348: aload_0
    //   349: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   352: ldc_w 1229
    //   355: invokevirtual 293	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   358: astore 24
    //   360: aload 24
    //   362: astore 20
    //   364: aload 20
    //   366: ldc_w 630
    //   369: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   372: ifeq +25 -> 397
    //   375: aload 10
    //   377: ldc_w 1231
    //   380: ldc_w 1233
    //   383: invokeinterface 1224 3 0
    //   388: pop
    //   389: aload 10
    //   391: invokeinterface 1227 1 0
    //   396: pop
    //   397: aload_0
    //   398: getfield 165	com/pad/android/iappad/AdController:af	Z
    //   401: ifeq +77 -> 478
    //   404: aload_0
    //   405: invokevirtual 1134	com/pad/android/iappad/AdController:retrieveAudioAd	()V
    //   408: return
    //   409: iconst_0
    //   410: istore 7
    //   412: goto -247 -> 165
    //   415: aload_0
    //   416: bipush 10
    //   418: putfield 161	com/pad/android/iappad/AdController:V	I
    //   421: goto -179 -> 242
    //   424: astore 8
    //   426: aload_0
    //   427: sipush 500
    //   430: putfield 159	com/pad/android/iappad/AdController:U	I
    //   433: aload_0
    //   434: bipush 10
    //   436: putfield 161	com/pad/android/iappad/AdController:V	I
    //   439: goto -197 -> 242
    //   442: astore 11
    //   444: aload 10
    //   446: new 554	java/lang/StringBuilder
    //   449: dup
    //   450: ldc_w 1216
    //   453: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   456: aload_0
    //   457: getfield 186	com/pad/android/iappad/AdController:x	Ljava/lang/String;
    //   460: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: ldc_w 1150
    //   469: invokeinterface 1224 3 0
    //   474: pop
    //   475: goto -153 -> 322
    //   478: aload_0
    //   479: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   482: ifnonnull +38 -> 520
    //   485: aload_0
    //   486: new 214	com/pad/android/iappad/AdWebView
    //   489: dup
    //   490: aload_0
    //   491: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   494: aload_0
    //   495: aload_0
    //   496: getfield 141	com/pad/android/iappad/AdController:r	Z
    //   499: aload_0
    //   500: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   503: invokespecial 1236	com/pad/android/iappad/AdWebView:<init>	(Landroid/app/Activity;Lcom/pad/android/iappad/AdController;ZLcom/pad/android/listener/AdListener;)V
    //   506: putfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   509: aload_0
    //   510: getfield 212	com/pad/android/iappad/AdController:f	Lcom/pad/android/iappad/AdWebView;
    //   513: aload_0
    //   514: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   517: invokevirtual 1240	com/pad/android/iappad/AdWebView:setResults	(Lorg/json/JSONObject;)V
    //   520: aload_0
    //   521: getfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   524: ifnonnull +23 -> 547
    //   527: aload_0
    //   528: new 203	com/pad/android/richmedia/view/AdView
    //   531: dup
    //   532: aload_0
    //   533: getfield 184	com/pad/android/iappad/AdController:c	Landroid/app/Activity;
    //   536: aload_0
    //   537: aload_0
    //   538: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   541: invokespecial 1243	com/pad/android/richmedia/view/AdView:<init>	(Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/listener/AdListener;)V
    //   544: putfield 197	com/pad/android/iappad/AdController:b	Lcom/pad/android/richmedia/view/AdView;
    //   547: aload_0
    //   548: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   551: ldc_w 1245
    //   554: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   557: iconst_1
    //   558: if_icmpne +27 -> 585
    //   561: aload_0
    //   562: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   565: ifnull -492 -> 73
    //   568: aload_0
    //   569: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   572: invokeinterface 1248 1 0
    //   577: return
    //   578: astore 15
    //   580: aload_0
    //   581: invokespecial 1089	com/pad/android/iappad/AdController:d	()V
    //   584: return
    //   585: aload_0
    //   586: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   589: ldc_w 1245
    //   592: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   595: istore 16
    //   597: iload 16
    //   599: ifne -526 -> 73
    //   602: aload_0
    //   603: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   606: ldc_w 1250
    //   609: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   612: ifle +78 -> 690
    //   615: sipush 1000
    //   618: aload_0
    //   619: getfield 467	com/pad/android/iappad/AdController:j	Lorg/json/JSONObject;
    //   622: ldc_w 1250
    //   625: invokevirtual 525	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   628: imul
    //   629: istore 18
    //   631: ldc 14
    //   633: new 554	java/lang/StringBuilder
    //   636: dup
    //   637: ldc_w 1252
    //   640: invokespecial 558	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   643: iload 18
    //   645: invokevirtual 723	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   648: ldc_w 1254
    //   651: invokevirtual 565	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   654: invokevirtual 566	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   657: invokestatic 394	com/pad/android/util/AdLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   660: new 862	android/os/Handler
    //   663: dup
    //   664: invokespecial 863	android/os/Handler:<init>	()V
    //   667: new 1256	com/pad/android/iappad/h
    //   670: dup
    //   671: aload_0
    //   672: invokespecial 1257	com/pad/android/iappad/h:<init>	(Lcom/pad/android/iappad/AdController;)V
    //   675: iload 18
    //   677: i2l
    //   678: invokevirtual 872	android/os/Handler:postDelayed	(Ljava/lang/Runnable;J)Z
    //   681: pop
    //   682: return
    //   683: astore 17
    //   685: aload_0
    //   686: invokespecial 1089	com/pad/android/iappad/AdController:d	()V
    //   689: return
    //   690: aload_0
    //   691: invokespecial 1089	com/pad/android/iappad/AdController:d	()V
    //   694: return
    //   695: aload_0
    //   696: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   699: ifnull +17 -> 716
    //   702: aload_0
    //   703: iconst_1
    //   704: putfield 153	com/pad/android/iappad/AdController:R	Z
    //   707: aload_0
    //   708: getfield 149	com/pad/android/iappad/AdController:L	Lcom/pad/android/listener/AdListener;
    //   711: invokeinterface 903 1 0
    //   716: aload_0
    //   717: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   720: ifnull -647 -> 73
    //   723: aload_0
    //   724: iconst_1
    //   725: putfield 167	com/pad/android/iappad/AdController:ag	Z
    //   728: aload_0
    //   729: getfield 193	com/pad/android/iappad/AdController:ah	Lcom/pad/android/listener/AdAudioListener;
    //   732: invokeinterface 904 1 0
    //   737: return
    //   738: astore 14
    //   740: goto -343 -> 397
    //   743: astore 21
    //   745: goto -381 -> 364
    //   748: astore 9
    //   750: goto -484 -> 266
    //
    // Exception table:
    //   from	to	target	type
    //   12	52	74	java/lang/Exception
    //   52	73	74	java/lang/Exception
    //   187	225	424	java/lang/Exception
    //   230	242	424	java/lang/Exception
    //   415	421	424	java/lang/Exception
    //   284	322	442	java/lang/Exception
    //   547	577	578	java/lang/Exception
    //   585	597	578	java/lang/Exception
    //   685	689	578	java/lang/Exception
    //   602	682	683	java/lang/Exception
    //   690	694	683	java/lang/Exception
    //   330	343	738	java/lang/Exception
    //   364	397	738	java/lang/Exception
    //   348	360	743	java/lang/Exception
    //   242	266	748	org/json/JSONException
  }

  public void loadAd()
  {
    SharedPreferences localSharedPreferences = this.c.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN", "notset");
    if ((!(str1.equals("notset"))) && (str2.equals("0")))
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
      localEditor.commit();
    }
    AdLog.i("LBAdController", "loadAd called");
    this.W = false;
    if (!(this.t))
    {
      this.K = true;
      this.S = false;
      a();
    }
    while (true)
    {
      if ((this.L != null) && (this.O > 0))
      {
        if (this.Q == null)
          this.Q = new i(this);
        if (this.P == null)
        {
          this.P = new Handler();
          this.P.postDelayed(this.Q, 1000 * this.O);
        }
      }
      return;
      d();
    }
  }

  public void loadAudioAd()
  {
    if (this.Y != null)
      return;
    SharedPreferences localSharedPreferences = this.c.getSharedPreferences("Preference", 2);
    String str1 = localSharedPreferences.getString("SD_APP_OPTIN_SHOWN", "notset");
    String str2 = localSharedPreferences.getString("SD_APP_OPTIN", "notset");
    if ((!(str1.equals("notset"))) && (str2.equals("0")))
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("SD_APP_OPTIN_SHOWN", "invalid");
      localEditor.commit();
    }
    AdLog.i("LBAdController", "loadAudioAd called");
    if (!(this.t))
    {
      this.af = true;
      if (this.Z == null)
      {
        this.am = new p(this, true);
        this.X = ((AudioManager)this.c.getSystemService("audio"));
        this.Z = ((SensorManager)this.c.getSystemService("sensor"));
        this.ab = 0.0F;
        this.ac = 9.80665F;
        this.ad = 9.80665F;
      }
      a();
    }
    while (true)
    {
      if ((this.L != null) && (this.O > 0));
      if (this.Q == null)
        this.Q = new j(this);
      if (this.P == null);
      this.P = new Handler();
      this.P.postDelayed(this.Q, 1000 * this.O);
      return;
      b();
    }
  }

  public void loadOptin(Activity paramActivity, String paramString, AdOptinListener paramAdOptinListener)
  {
    if (paramActivity != null)
    {
      if (!(paramActivity instanceof Activity))
        break label34;
      new AdOptinRequest(paramActivity, paramString, null, paramAdOptinListener, "1").execute(new Void[0]);
    }
    return;
    label34: Log.e("com.pad.android.iappad.AdController", "Activity required for loadOptin - incorrect value passed");
  }

  public void loadStartAd(String paramString1, String paramString2)
  {
    try
    {
      Class.forName("com.pad.android.xappad.AdController");
      loadOptin(this.c, this.x, new a(this, paramString1, paramString2));
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.e("com.pad.android.iappad.AdController", "StartAds cannot be started. Packages not imported correctly!");
    }
  }

  public boolean onBackPressed()
  {
    if (this.m)
    {
      loadAd();
      return true;
    }
    return false;
  }

  public void onLinkClicked()
  {
    e();
  }

  public void pauseAd()
  {
    if (this.c != null);
    for (Object localObject = this.c; ; localObject = this.a)
    {
      SharedPreferences.Editor localEditor = ((Context)localObject).getSharedPreferences("Preference", 2).edit();
      localEditor.putString("SD_ADSTATUS_" + this.x, "hidden");
      localEditor.commit();
      return;
    }
  }

  public void resumeAd()
  {
    Object localObject;
    if (this.c != null)
      localObject = this.c;
    while (true)
    {
      SharedPreferences.Editor localEditor = ((Context)localObject).getSharedPreferences("Preference", 2).edit();
      localEditor.putString("SD_ADSTATUS_" + this.x, "default");
      localEditor.commit();
      if (this.L != null);
      try
      {
        this.L.onAdResumed();
        return;
        localObject = this.a;
      }
      catch (Exception localException)
      {
        AdLog.printStackTrace("LBAdController", localException);
        AdLog.e("LBAdController", "Error while triggering onAdResumed - " + localException.getMessage());
      }
    }
  }

  public void retrieveAudioAd()
  {
    while (true)
    {
      try
      {
        if (this.j.get("show").equals("1"))
          if (this.ak != null)
          {
            AsyncTask.Status localStatus1 = this.ak.getStatus();
            AsyncTask.Status localStatus2 = AsyncTask.Status.FINISHED;
            i1 = 0;
            if (localStatus1 != localStatus2)
              break label141;
            if (i1 == 0)
              break label140;
            this.ak = new AdAudioTask(this, this.c);
            AdAudioTask localAdAudioTask = this.ak;
            String[] arrayOfString = new String[1];
            arrayOfString[0] = this.j.getString("adaudiourl");
            localAdAudioTask.execute(arrayOfString);
            return;
          }
        this.af = false;
        return;
      }
      catch (JSONException localJSONException)
      {
        AdLog.d("LBAdController", "JSONException - " + localJSONException.getMessage());
        return;
      }
      int i1 = 1;
      continue;
      label140: return;
      label141: i1 = 1;
    }
  }

  public void setAdDestroyed(boolean paramBoolean)
  {
    this.S = paramBoolean;
  }

  public void setAdLoaded(boolean paramBoolean)
  {
    this.R = paramBoolean;
  }

  public void setAdditionalDockingMargin(int paramInt)
  {
    this.H = paramInt;
    AdLog.i("LBAdController", "setAdditionalDockingMargin: " + paramInt);
  }

  public void setAsynchTask(boolean paramBoolean)
  {
  }

  public void setCompleted(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public void setHTML(String paramString)
  {
    if (this.b == null)
      return;
    String str = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\"><html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">" + paramString + "</html>";
    this.b.loadHTMLWrap(str);
  }

  public void setHTMLAds(boolean paramBoolean)
  {
    this.al = paramBoolean;
  }

  public void setHomeLoaded(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public void setLayout(RelativeLayout paramRelativeLayout)
  {
    this.u = paramRelativeLayout;
  }

  public void setLoadInBackground(boolean paramBoolean)
  {
    this.ai = paramBoolean;
  }

  public void setLoading(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public void setOnAdLoaded(boolean paramBoolean)
  {
    this.W = paramBoolean;
    if ((!(this.ai)) || (this.S))
      return;
    this.c.runOnUiThread(new g(this));
  }

  public void setOnProgressInterval(int paramInt)
  {
    this.O = paramInt;
  }

  public void setResults(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return;
    this.j = paramJSONObject;
  }

  public void setSubId(String paramString)
  {
    this.M = paramString;
  }

  public void setTokens(List paramList)
  {
    this.N = paramList;
  }

  public void setUseLocation(boolean paramBoolean)
  {
    this.q = paramBoolean;
    AdLog.i("LBAdController", "setUseLocation: " + paramBoolean);
  }

  public void showAd()
  {
    resumeAd();
  }

  public void stopAllListeners()
  {
  }

  public void triggerAdCompleted()
  {
    if (this.L != null);
    try
    {
      AdLog.i("LBAdController", "onAdCompleted triggered");
      this.L.onAdCompleted();
      return;
    }
    catch (Exception localException)
    {
      AdLog.e("LBAdController", "error when onAdCompleted triggered");
      AdLog.printStackTrace("LBAdController", localException);
    }
  }

  public void triggerAdFailed()
  {
    AdLog.e("LBAdController", "No Internet connection detected. No Ads loaded");
    if (this.L != null);
    try
    {
      AdLog.i("LBAdController", "onAdFailed triggered");
      this.L.onAdFailed();
      this.R = true;
      if (this.ah != null)
      {
        this.ah.onAdFailed();
        this.ag = true;
      }
      return;
    }
    catch (Exception localException)
    {
      AdLog.i("LBAdController", "Error while calling onAdFailed");
      AdLog.printStackTrace("LBAdController", localException);
    }
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\tavo.android.booster-1-v1.0-dex2jar\
 * Qualified Name:     com.pad.android.iappad.AdController
 * JD-Core Version:    0.5.3
 */