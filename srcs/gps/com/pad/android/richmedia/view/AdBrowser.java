package com.pad.android.richmedia.view;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.Window;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class AdBrowser extends Activity
{
  public static final String SHOW_BACK_EXTRA = "open_show_back";
  public static final String SHOW_FORWARD_EXTRA = "open_show_forward";
  public static final String SHOW_REFRESH_EXTRA = "open_show_refresh";
  public static final String URL_EXTRA = "extra_url";

  // ERROR //
  public android.graphics.Bitmap bitmapFromJar(String paramString)
  {
    // Byte code:
    //   0: ldc 27
    //   2: invokevirtual 33	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   5: aload_1
    //   6: invokevirtual 39	java/lang/ClassLoader:getResource	(Ljava/lang/String;)Ljava/net/URL;
    //   9: invokevirtual 45	java/net/URL:getFile	()Ljava/lang/String;
    //   12: astore 9
    //   14: aload 9
    //   16: ldc 47
    //   18: invokevirtual 53	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   21: ifeq +11 -> 32
    //   24: aload 9
    //   26: iconst_5
    //   27: invokevirtual 57	java/lang/String:substring	(I)Ljava/lang/String;
    //   30: astore 9
    //   32: aload 9
    //   34: ldc 59
    //   36: invokevirtual 63	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   39: istore 10
    //   41: iload 10
    //   43: ifle +13 -> 56
    //   46: aload 9
    //   48: iconst_0
    //   49: iload 10
    //   51: invokevirtual 66	java/lang/String:substring	(II)Ljava/lang/String;
    //   54: astore 9
    //   56: new 68	java/util/jar/JarFile
    //   59: dup
    //   60: aload 9
    //   62: invokespecial 71	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   65: astore 11
    //   67: aload 11
    //   69: aload 11
    //   71: aload_1
    //   72: invokevirtual 75	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   75: invokevirtual 79	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   78: astore 12
    //   80: aload 12
    //   82: astore_3
    //   83: aload_3
    //   84: invokestatic 85	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   87: astore 13
    //   89: aload 13
    //   91: astore 7
    //   93: aload_3
    //   94: ifnull +7 -> 101
    //   97: aload_3
    //   98: invokevirtual 90	java/io/InputStream:close	()V
    //   101: aload 7
    //   103: areturn
    //   104: astore 6
    //   106: aconst_null
    //   107: astore_3
    //   108: aload 6
    //   110: invokevirtual 93	java/lang/Exception:printStackTrace	()V
    //   113: aconst_null
    //   114: astore 7
    //   116: aload_3
    //   117: ifnull -16 -> 101
    //   120: aload_3
    //   121: invokevirtual 90	java/io/InputStream:close	()V
    //   124: aconst_null
    //   125: areturn
    //   126: astore 8
    //   128: aconst_null
    //   129: areturn
    //   130: astore_2
    //   131: aconst_null
    //   132: astore_3
    //   133: aload_2
    //   134: astore 4
    //   136: aload_3
    //   137: ifnull +7 -> 144
    //   140: aload_3
    //   141: invokevirtual 90	java/io/InputStream:close	()V
    //   144: aload 4
    //   146: athrow
    //   147: astore 14
    //   149: aload 7
    //   151: areturn
    //   152: astore 5
    //   154: goto -10 -> 144
    //   157: astore 4
    //   159: goto -23 -> 136
    //   162: astore 6
    //   164: goto -56 -> 108
    //
    // Exception table:
    //   from	to	target	type
    //   0	32	104	java/lang/Exception
    //   32	41	104	java/lang/Exception
    //   46	56	104	java/lang/Exception
    //   56	80	104	java/lang/Exception
    //   120	124	126	java/lang/Exception
    //   0	32	130	finally
    //   32	41	130	finally
    //   46	56	130	finally
    //   56	80	130	finally
    //   97	101	147	java/lang/Exception
    //   140	144	152	java/lang/Exception
    //   83	89	157	finally
    //   108	113	157	finally
    //   83	89	162	java/lang/Exception
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    RelativeLayout localRelativeLayout = new RelativeLayout(this);
    WebView localWebView = new WebView(this);
    getWindow().requestFeature(2);
    getWindow().setFeatureInt(2, -1);
    Intent localIntent = getIntent();
    LinearLayout localLinearLayout = new LinearLayout(this);
    localLinearLayout.setOrientation(0);
    localLinearLayout.setId(100);
    localLinearLayout.setWeightSum(100.0F);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams1.addRule(2, 100);
    localLinearLayout.setBackgroundDrawable(new BitmapDrawable(bitmapFromJar("bitmaps/bkgrnd.png")));
    localRelativeLayout.addView(localWebView, localLayoutParams1);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
    localLayoutParams2.addRule(12);
    localRelativeLayout.addView(localLinearLayout, localLayoutParams2);
    LinearLayout.LayoutParams localLayoutParams3 = new LinearLayout.LayoutParams(-2, -1);
    localLayoutParams3.weight = 25.0F;
    localLayoutParams3.gravity = 16;
    ImageButton localImageButton1 = new ImageButton(this);
    localImageButton1.setBackgroundColor(17170445);
    localImageButton1.setId(103);
    localLinearLayout.addView(localImageButton1, localLayoutParams3);
    if (!(localIntent.getBooleanExtra("open_show_back", true)))
      localImageButton1.setVisibility(8);
    localImageButton1.setImageBitmap(bitmapFromJar("bitmaps/leftarrow.png"));
    localImageButton1.setOnClickListener(new b(this));
    ImageButton localImageButton2 = new ImageButton(this);
    localImageButton2.setBackgroundColor(17170445);
    localImageButton2.setId(102);
    LinearLayout.LayoutParams localLayoutParams4 = new LinearLayout.LayoutParams(-2, -1);
    localLayoutParams4.weight = 25.0F;
    localLayoutParams4.gravity = 16;
    localLinearLayout.addView(localImageButton2, localLayoutParams4);
    if (!(localIntent.getBooleanExtra("open_show_forward", true)))
      localImageButton2.setVisibility(8);
    localImageButton2.setOnClickListener(new c(this));
    ImageButton localImageButton3 = new ImageButton(this);
    localImageButton3.setImageBitmap(bitmapFromJar("bitmaps/refresh.png"));
    localImageButton3.setBackgroundColor(17170445);
    LinearLayout.LayoutParams localLayoutParams5 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams5.weight = 25.0F;
    localLayoutParams5.gravity = 16;
    localLinearLayout.addView(localImageButton3, localLayoutParams5);
    if (!(localIntent.getBooleanExtra("open_show_refresh", true)))
      localImageButton3.setVisibility(8);
    localImageButton3.setOnClickListener(new d(this));
    ImageButton localImageButton4 = new ImageButton(this);
    localImageButton4.setImageBitmap(bitmapFromJar("bitmaps/close.png"));
    localImageButton4.setBackgroundColor(17170445);
    LinearLayout.LayoutParams localLayoutParams6 = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams6.weight = 25.0F;
    localLayoutParams6.gravity = 16;
    localLinearLayout.addView(localImageButton4, localLayoutParams6);
    localImageButton4.setOnClickListener(new e(this));
    getWindow().requestFeature(2);
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
    localWebView.getSettings().setJavaScriptEnabled(true);
    localWebView.loadUrl(localIntent.getStringExtra("extra_url"));
    localWebView.setId(101);
    localWebView.setWebViewClient(new f(this));
    setContentView(localRelativeLayout);
    localWebView.setWebChromeClient(new g(this));
  }

  protected void onPause()
  {
    super.onPause();
    CookieSyncManager.getInstance().stopSync();
  }

  protected void onResume()
  {
    super.onResume();
    CookieSyncManager.getInstance().startSync();
  }
}

/* Location:           C:\Users\Aitor\Desktop\ProyectoWifiHacker\mano.tavo.gps-3-v1.3-dex2jar\
 * Qualified Name:     com.pad.android.richmedia.view.AdBrowser
 * JD-Core Version:    0.5.3
 */