package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import java.io.IOException;

class MMAdViewWebOverlay extends FrameLayout
{
  private static final int kTitleMarginX = 8;
  private static final int kTitleMarginY = 9;
  private static final int kTransitionDuration = 200;
  private Button backButton;
  private Drawable close;
  private Drawable closeDisabled;
  private LinearLayout content;
  private Button forwardButton;
  private Drawable leftArrow;
  private Drawable leftArrowDisabled;
  private RelativeLayout navBar;
  private Button navCloseButton;
  private String overlayUrl;
  private Drawable rightArrow;
  private Drawable rightArrowDisabled;
  private TextView title;
  Handler viewHandler;
  protected WebView webView;

  MMAdViewWebOverlay(Context paramContext, int paramInt, long paramLong, String paramString1, boolean paramBoolean1, String paramString2, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    super(paramContext);
    8 local8 = new Handler()
    {
      public void handleMessage(Message paramMessage)
      {
        switch (paramMessage.what)
        {
        default:
        case 2:
        }
        while (true)
        {
          return;
          MMAdViewWebOverlay.this.dismiss(true);
        }
      }
    };
    this.viewHandler = local8;
    setId(15062);
    if (paramContext == null)
      label32: return;
    NonConfigurationInstance localNonConfigurationInstance = (NonConfigurationInstance)((Activity)paramContext).getLastNonConfigurationInstance();
    if (localNonConfigurationInstance != null)
    {
      paramBoolean2 = localNonConfigurationInstance.bottomBarVisible;
      paramBoolean3 = localNonConfigurationInstance.bottomBarEnabled;
      this.webView = localNonConfigurationInstance.webView;
    }
    setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    float f = paramContext.getResources().getDisplayMetrics().density;
    Integer localInteger = Integer.valueOf((int)(0.0625F * f * paramInt));
    setPadding(localInteger.intValue(), localInteger.intValue(), localInteger.intValue(), localInteger.intValue());
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    this.content = localLinearLayout;
    this.content.setOrientation(1);
    this.content.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    addView(this.content);
    if (paramBoolean1)
    {
      RelativeLayout localRelativeLayout1 = new RelativeLayout(paramContext);
      localRelativeLayout1.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
      localRelativeLayout1.setBackgroundColor(-16777216);
      localRelativeLayout1.setId(100);
      TextView localTextView = new TextView(paramContext);
      this.title = localTextView;
      this.title.setText(paramString2);
      this.title.setTextColor(-1);
      this.title.setBackgroundColor(-16777216);
      this.title.setTypeface(Typeface.DEFAULT_BOLD);
      this.title.setPadding(8, 9, 8, 9);
      this.title.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      localRelativeLayout1.addView(this.title);
      Button localButton1 = new Button(paramContext);
      localButton1.setBackgroundColor(-16777216);
      localButton1.setText("Close");
      localButton1.setTextColor(-1);
      1 local1 = new View.OnTouchListener()
      {
        public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
        {
          boolean bool = true;
          switch (paramMotionEvent.getAction())
          {
          default:
            bool = false;
          case 0:
          case 1:
          }
          while (true)
          {
            return bool;
            MMAdViewSDK.Log.v("Close button down");
            continue;
            MMAdViewWebOverlay.this.title.setBackgroundColor(-7829368);
            MMAdViewSDK.Log.v("Close button up");
            MMAdViewWebOverlay.this.dismiss(bool);
          }
        }
      };
      localButton1.setOnTouchListener(local1);
      RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams1.addRule(11);
      localRelativeLayout1.addView(localButton1, localLayoutParams1);
      this.content.addView(localRelativeLayout1);
    }
    WebView localWebView1 = new WebView(paramContext);
    this.webView = localWebView1;
    this.webView.setId(200);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    localLayoutParams.weight = 1.0F;
    this.webView.setLayoutParams(localLayoutParams);
    WebView localWebView2 = this.webView;
    OverlayWebViewClient localOverlayWebViewClient = new OverlayWebViewClient();
    localWebView2.setWebViewClient(localOverlayWebViewClient);
    WebView localWebView3 = this.webView;
    OverlayJSInterface localOverlayJSInterface = new OverlayJSInterface();
    localWebView3.addJavascriptInterface(localOverlayJSInterface, "interface");
    WebSettings localWebSettings = this.webView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDefaultTextEncodingName("UTF-8");
    if (paramBoolean4)
    {
      this.webView.setBackgroundColor(0);
      this.content.setBackgroundColor(0);
    }
    while (true)
    {
      this.content.addView(this.webView);
      int i = (int)(0.5F + 50.0F * f);
      RelativeLayout localRelativeLayout2 = new RelativeLayout(paramContext);
      this.navBar = localRelativeLayout2;
      this.navBar.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
      this.navBar.setBackgroundColor(-3355444);
      this.navBar.setId(300);
      Button localButton2 = new Button(paramContext);
      this.navCloseButton = localButton2;
      this.navCloseButton.setBackgroundColor(-16777216);
      AssetManager localAssetManager = paramContext.getAssets();
      try
      {
        this.close = Drawable.createFromStream(localAssetManager.open("millennial_close.png"), "millennial_close.png");
        this.closeDisabled = Drawable.createFromStream(localAssetManager.open("millennial_close_disabled.png"), "millennial_close_disabled.png");
        label689: setCloseButtonListener(paramBoolean3);
        RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(i, i);
        localLayoutParams2.addRule(11);
        localLayoutParams2.addRule(15);
        this.navBar.addView(this.navCloseButton, localLayoutParams2);
        this.content.addView(this.navBar);
        if (!(paramBoolean2))
          break label803;
        this.navBar.setVisibility(0);
        label759: if (localNonConfigurationInstance == null);
        animateView(paramString1, paramLong);
        break label32:
        this.webView.setBackgroundColor(-1);
        label803: this.content.setBackgroundColor(-1);
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        break label689:
        this.navBar.setVisibility(8);
        break label759:
      }
    }
  }

  private void animateView(String paramString, long paramLong)
  {
    if (paramString == null)
      paramString = "bottomtotop";
    if (paramString.equals("toptobottom"))
    {
      TranslateAnimation localTranslateAnimation1 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, -1.0F, 1, 0.0F);
      localTranslateAnimation1.setDuration(paramLong);
      localTranslateAnimation1.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnimation)
        {
        }

        public void onAnimationRepeat(Animation paramAnimation)
        {
        }

        public void onAnimationStart(Animation paramAnimation)
        {
        }
      });
      MMAdViewSDK.Log.v("Translate down");
      startAnimation(localTranslateAnimation1);
    }
    while (true)
    {
      return;
      if (paramString.equals("explode"))
      {
        ScaleAnimation localScaleAnimation = new ScaleAnimation(1.1F, 0.9F, 0.1F, 0.9F, 1, 0.5F, 1, 0.5F);
        localScaleAnimation.setDuration(paramLong);
        localScaleAnimation.setAnimationListener(new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnimation)
          {
          }

          public void onAnimationRepeat(Animation paramAnimation)
          {
          }

          public void onAnimationStart(Animation paramAnimation)
          {
          }
        });
        MMAdViewSDK.Log.v("Explode");
        startAnimation(localScaleAnimation);
      }
      TranslateAnimation localTranslateAnimation2 = new TranslateAnimation(1, 0.0F, 1, 0.0F, 1, 1.0F, 1, 0.0F);
      localTranslateAnimation2.setDuration(paramLong);
      localTranslateAnimation2.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnimation)
        {
        }

        public void onAnimationRepeat(Animation paramAnimation)
        {
        }

        public void onAnimationStart(Animation paramAnimation)
        {
        }
      });
      MMAdViewSDK.Log.v("Translate up");
      startAnimation(localTranslateAnimation2);
    }
  }

  private void dismiss(boolean paramBoolean)
  {
    MMAdViewSDK.Log.d("Ad overlay closed");
    Activity localActivity = (Activity)getContext();
    if (localActivity == null);
    while (true)
    {
      return;
      if (paramBoolean)
      {
        AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
        localAlphaAnimation.setDuration(200L);
        localActivity.finish();
        startAnimation(localAlphaAnimation);
      }
      localActivity.finish();
    }
  }

  Object getNonConfigurationInstance()
  {
    NonConfigurationInstance localNonConfigurationInstance = new NonConfigurationInstance(null);
    this.webView.setWebViewClient(null);
    ((ViewGroup)this.webView.getParent()).removeView(this.webView);
    if (this.navBar.getVisibility() == 0);
    for (int i = 1; ; i = 0)
    {
      localNonConfigurationInstance.bottomBarVisible = i;
      localNonConfigurationInstance.bottomBarEnabled = this.navBar.isEnabled();
      localNonConfigurationInstance.webView = this.webView;
      return localNonConfigurationInstance;
    }
  }

  boolean goBack()
  {
    if (this.webView.canGoBack())
      this.webView.goBack();
    for (int i = 1; ; i = 0)
      return i;
  }

  void injectJS(String paramString)
  {
    this.webView.loadUrl(paramString);
  }

  void loadWebContent(String paramString)
  {
    this.overlayUrl = paramString;
    if (MMAdViewSDK.isConnected(getContext()))
      this.webView.loadUrl(this.overlayUrl);
    while (true)
    {
      return;
      Log.e("MillennialMediaSDK", "No network available, can't load overlay.");
    }
  }

  protected void setBackButtonListener(boolean paramBoolean)
  {
    if (this.backButton != null)
    {
      if (!(paramBoolean))
        break label46;
      this.backButton.setBackgroundDrawable(this.leftArrow);
      this.backButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          MMAdViewWebOverlay.this.webView.goBack();
          MMAdViewSDK.Log.v("Back button up");
        }
      });
      this.backButton.setEnabled(true);
    }
    while (true)
    {
      return;
      label46: this.backButton.setBackgroundDrawable(this.leftArrowDisabled);
      this.backButton.setEnabled(false);
    }
  }

  protected void setCloseButtonListener(boolean paramBoolean)
  {
    if (this.navCloseButton != null)
    {
      if (!(paramBoolean))
        break label46;
      this.navCloseButton.setBackgroundDrawable(this.close);
      this.navCloseButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          MMAdViewSDK.Log.v("Close button");
          MMAdViewWebOverlay.this.dismiss(true);
        }
      });
      this.navCloseButton.setEnabled(true);
    }
    while (true)
    {
      return;
      label46: this.navCloseButton.setBackgroundDrawable(this.closeDisabled);
      this.navCloseButton.setEnabled(false);
    }
  }

  protected void setForwardButtonListener(boolean paramBoolean)
  {
    if (this.forwardButton != null)
    {
      if (!(paramBoolean))
        break label46;
      this.forwardButton.setBackgroundDrawable(this.rightArrow);
      this.forwardButton.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramView)
        {
          MMAdViewSDK.Log.v("Forward button up");
          MMAdViewWebOverlay.this.webView.goForward();
        }
      });
      this.forwardButton.setEnabled(true);
    }
    while (true)
    {
      return;
      label46: this.forwardButton.setBackgroundDrawable(this.rightArrowDisabled);
      this.forwardButton.setEnabled(false);
    }
  }

  private static final class NonConfigurationInstance
  {
    boolean bottomBarEnabled;
    boolean bottomBarVisible;
    WebView webView;
  }

  class OverlayJSInterface
  {
    public void shouldCloseOverlay()
    {
      MMAdViewWebOverlay.this.viewHandler.sendEmptyMessage(2);
    }

    public void shouldEnableBottomBar(boolean paramBoolean)
    {
      MMAdViewSDK.Log.d("Should Enable Bottom Bar: " + paramBoolean);
      MMAdViewWebOverlay.this.viewHandler.post(new Runnable(paramBoolean)
      {
        public void run()
        {
          MMAdViewWebOverlay.this.setCloseButtonListener(this.val$enabled);
          MMAdViewWebOverlay.this.setForwardButtonListener(this.val$enabled);
          MMAdViewWebOverlay.this.setBackButtonListener(this.val$enabled);
        }
      });
    }

    public void shouldShowBottomBar(boolean paramBoolean)
    {
      MMAdViewSDK.Log.d("Should show Bottom Bar: " + paramBoolean);
      MMAdViewWebOverlay.this.viewHandler.post(new Runnable(paramBoolean)
      {
        public void run()
        {
          if (MMAdViewWebOverlay.this.navBar != null)
          {
            if (!(this.val$show))
              break label35;
            MMAdViewWebOverlay.this.navBar.setVisibility(0);
          }
          while (true)
          {
            return;
            label35: MMAdViewWebOverlay.this.navBar.setVisibility(8);
          }
        }
      });
    }

    public void shouldVibrate(long paramLong)
    {
      if (MMAdViewWebOverlay.this.getContext().checkCallingOrSelfPermission("android.permission.VIBRATE") != 0)
        return;
      ((Vibrator)MMAdViewWebOverlay.this.getContext().getSystemService("vibrator")).vibrate(paramLong);
    }
  }

  final class OverlayWebViewClient extends MMWebViewClient
  {
    // ERROR //
    public void onPageStarted(WebView paramWebView, String paramString, android.graphics.Bitmap paramBitmap)
    {
      // Byte code:
      //   0: new 21	java/lang/StringBuilder
      //   3: dup
      //   4: invokespecial 22	java/lang/StringBuilder:<init>	()V
      //   7: ldc 24
      //   9: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   12: aload_2
      //   13: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   16: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   19: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   22: aload_2
      //   23: ifnull +25 -> 48
      //   26: aload_0
      //   27: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   30: invokevirtual 44	com/millennialmedia/android/MMAdViewWebOverlay:getContext	()Landroid/content/Context;
      //   33: checkcast 46	android/app/Activity
      //   36: astore 4
      //   38: aload 4
      //   40: ifnonnull +9 -> 49
      //   43: ldc 48
      //   45: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   48: return
      //   49: aload_2
      //   50: invokestatic 54	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   53: astore 5
      //   55: aload 5
      //   57: ifnull -9 -> 48
      //   60: aload 5
      //   62: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   65: ifnull -17 -> 48
      //   68: aload 5
      //   70: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   73: ldc 59
      //   75: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   78: ifeq +259 -> 337
      //   81: aload 5
      //   83: invokevirtual 68	android/net/Uri:getHost	()Ljava/lang/String;
      //   86: astore 20
      //   88: aload 20
      //   90: ifnull +189 -> 279
      //   93: aconst_null
      //   94: astore 21
      //   96: aconst_null
      //   97: astore 22
      //   99: new 70	com/millennialmedia/android/AdDatabaseHelper
      //   102: dup
      //   103: aload 4
      //   105: invokespecial 73	com/millennialmedia/android/AdDatabaseHelper:<init>	(Landroid/content/Context;)V
      //   108: astore 23
      //   110: aload 23
      //   112: aload 20
      //   114: invokevirtual 77	com/millennialmedia/android/AdDatabaseHelper:getVideoAd	(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
      //   117: astore 21
      //   119: aload 23
      //   121: invokevirtual 80	com/millennialmedia/android/AdDatabaseHelper:close	()V
      //   124: aload 21
      //   126: ifnull +153 -> 279
      //   129: aload 21
      //   131: aload 4
      //   133: invokevirtual 86	com/millennialmedia/android/VideoAd:isOnDisk	(Landroid/content/Context;)Z
      //   136: ifeq +143 -> 279
      //   139: aload 21
      //   141: invokevirtual 90	com/millennialmedia/android/VideoAd:isExpired	()Z
      //   144: ifne +135 -> 279
      //   147: new 92	android/content/Intent
      //   150: dup
      //   151: invokespecial 93	android/content/Intent:<init>	()V
      //   154: aload 4
      //   156: ldc 95
      //   158: invokevirtual 99	android/content/Intent:setClass	(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
      //   161: astore 25
      //   163: aload 25
      //   165: ldc 100
      //   167: invokevirtual 104	android/content/Intent:setFlags	(I)Landroid/content/Intent;
      //   170: pop
      //   171: aload 25
      //   173: ldc 106
      //   175: iconst_1
      //   176: invokevirtual 110	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
      //   179: pop
      //   180: aload 25
      //   182: ldc 112
      //   184: aload 20
      //   186: invokevirtual 115	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
      //   189: pop
      //   190: aload 25
      //   192: ldc 117
      //   194: aload 20
      //   196: invokevirtual 115	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
      //   199: pop
      //   200: aload 21
      //   202: getfield 121	com/millennialmedia/android/VideoAd:storedOnSdCard	Z
      //   205: ifeq +118 -> 323
      //   208: invokestatic 126	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
      //   211: ldc 128
      //   213: invokevirtual 132	java/lang/String:equals	(Ljava/lang/Object;)Z
      //   216: ifeq +107 -> 323
      //   219: aload 25
      //   221: new 21	java/lang/StringBuilder
      //   224: dup
      //   225: invokespecial 22	java/lang/StringBuilder:<init>	()V
      //   228: invokestatic 136	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
      //   231: invokevirtual 141	java/io/File:getAbsolutePath	()Ljava/lang/String;
      //   234: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   237: ldc 143
      //   239: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   242: ldc 145
      //   244: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   247: ldc 143
      //   249: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   252: aload 20
      //   254: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   257: ldc 147
      //   259: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   262: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   265: invokestatic 54	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   268: invokevirtual 151	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
      //   271: pop
      //   272: aload 4
      //   274: aload 25
      //   276: invokevirtual 155	android/app/Activity:startActivity	(Landroid/content/Intent;)V
      //   279: aload_0
      //   280: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   283: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   286: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   289: goto -241 -> 48
      //   292: astore 6
      //   294: ldc 166
      //   296: aload 6
      //   298: invokevirtual 169	android/content/ActivityNotFoundException:getMessage	()Ljava/lang/String;
      //   301: invokestatic 175	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
      //   304: pop
      //   305: goto -257 -> 48
      //   308: astore 32
      //   310: aload 22
      //   312: ifnull -188 -> 124
      //   315: aload 22
      //   317: invokevirtual 80	com/millennialmedia/android/AdDatabaseHelper:close	()V
      //   320: goto -196 -> 124
      //   323: aload 25
      //   325: aload 20
      //   327: invokestatic 54	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
      //   330: invokevirtual 151	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
      //   333: pop
      //   334: goto -62 -> 272
      //   337: aload 5
      //   339: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   342: ldc 177
      //   344: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   347: ifeq +49 -> 396
      //   350: ldc 179
      //   352: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   355: new 92	android/content/Intent
      //   358: dup
      //   359: ldc 181
      //   361: aload 5
      //   363: invokespecial 184	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   366: astore 18
      //   368: aload 18
      //   370: ldc 100
      //   372: invokevirtual 104	android/content/Intent:setFlags	(I)Landroid/content/Intent;
      //   375: pop
      //   376: aload 4
      //   378: aload 18
      //   380: invokevirtual 155	android/app/Activity:startActivity	(Landroid/content/Intent;)V
      //   383: aload_0
      //   384: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   387: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   390: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   393: goto -345 -> 48
      //   396: aload 5
      //   398: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   401: ldc 186
      //   403: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   406: ifeq +73 -> 479
      //   409: ldc 188
      //   411: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   414: new 21	java/lang/StringBuilder
      //   417: dup
      //   418: invokespecial 22	java/lang/StringBuilder:<init>	()V
      //   421: ldc 190
      //   423: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   426: aload 5
      //   428: invokevirtual 193	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   431: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   434: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   437: new 92	android/content/Intent
      //   440: dup
      //   441: aload 4
      //   443: ldc 95
      //   445: invokespecial 196	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
      //   448: astore 16
      //   450: aload 16
      //   452: aload 5
      //   454: invokevirtual 151	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
      //   457: pop
      //   458: aload 4
      //   460: aload 16
      //   462: iconst_0
      //   463: invokevirtual 200	android/app/Activity:startActivityForResult	(Landroid/content/Intent;I)V
      //   466: aload_0
      //   467: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   470: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   473: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   476: goto -428 -> 48
      //   479: aload 5
      //   481: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   484: ldc 202
      //   486: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   489: ifeq +49 -> 538
      //   492: ldc 204
      //   494: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   497: new 92	android/content/Intent
      //   500: dup
      //   501: ldc 206
      //   503: aload 5
      //   505: invokespecial 184	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   508: astore 14
      //   510: aload 14
      //   512: ldc 100
      //   514: invokevirtual 104	android/content/Intent:setFlags	(I)Landroid/content/Intent;
      //   517: pop
      //   518: aload 4
      //   520: aload 14
      //   522: invokevirtual 155	android/app/Activity:startActivity	(Landroid/content/Intent;)V
      //   525: aload_0
      //   526: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   529: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   532: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   535: goto -487 -> 48
      //   538: aload 5
      //   540: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   543: ldc 208
      //   545: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   548: ifeq +49 -> 597
      //   551: ldc 210
      //   553: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   556: new 92	android/content/Intent
      //   559: dup
      //   560: ldc 181
      //   562: aload 5
      //   564: invokespecial 184	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   567: astore 12
      //   569: aload 12
      //   571: ldc 100
      //   573: invokevirtual 104	android/content/Intent:setFlags	(I)Landroid/content/Intent;
      //   576: pop
      //   577: aload 4
      //   579: aload 12
      //   581: invokevirtual 155	android/app/Activity:startActivity	(Landroid/content/Intent;)V
      //   584: aload_0
      //   585: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   588: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   591: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   594: goto -546 -> 48
      //   597: aload 5
      //   599: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   602: ldc 212
      //   604: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   607: ifeq +49 -> 656
      //   610: ldc 214
      //   612: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   615: new 92	android/content/Intent
      //   618: dup
      //   619: ldc 181
      //   621: aload 5
      //   623: invokespecial 184	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
      //   626: astore 10
      //   628: aload 10
      //   630: ldc 100
      //   632: invokevirtual 104	android/content/Intent:setFlags	(I)Landroid/content/Intent;
      //   635: pop
      //   636: aload 4
      //   638: aload 10
      //   640: invokevirtual 155	android/app/Activity:startActivity	(Landroid/content/Intent;)V
      //   643: aload_0
      //   644: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   647: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   650: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   653: goto -605 -> 48
      //   656: aload 5
      //   658: invokevirtual 57	android/net/Uri:getScheme	()Ljava/lang/String;
      //   661: ldc 216
      //   663: invokevirtual 65	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
      //   666: ifeq +109 -> 775
      //   669: aload 5
      //   671: invokevirtual 219	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
      //   674: ifnull +101 -> 775
      //   677: aload 5
      //   679: invokevirtual 219	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
      //   682: ldc 221
      //   684: invokevirtual 224	java/lang/String:endsWith	(Ljava/lang/String;)Z
      //   687: ifne +16 -> 703
      //   690: aload 5
      //   692: invokevirtual 219	android/net/Uri:getLastPathSegment	()Ljava/lang/String;
      //   695: ldc 226
      //   697: invokevirtual 224	java/lang/String:endsWith	(Ljava/lang/String;)Z
      //   700: ifeq +68 -> 768
      //   703: new 21	java/lang/StringBuilder
      //   706: dup
      //   707: invokespecial 22	java/lang/StringBuilder:<init>	()V
      //   710: ldc 190
      //   712: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   715: aload 5
      //   717: invokevirtual 193	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   720: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   723: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   726: new 92	android/content/Intent
      //   729: dup
      //   730: aload 4
      //   732: ldc 95
      //   734: invokespecial 196	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
      //   737: astore 8
      //   739: aload 8
      //   741: aload 5
      //   743: invokevirtual 151	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
      //   746: pop
      //   747: aload 4
      //   749: aload 8
      //   751: iconst_0
      //   752: invokevirtual 200	android/app/Activity:startActivityForResult	(Landroid/content/Intent;I)V
      //   755: aload_0
      //   756: getfield 10	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:this$0	Lcom/millennialmedia/android/MMAdViewWebOverlay;
      //   759: getfield 159	com/millennialmedia/android/MMAdViewWebOverlay:webView	Landroid/webkit/WebView;
      //   762: invokevirtual 164	android/webkit/WebView:goBack	()V
      //   765: goto -717 -> 48
      //   768: aload_0
      //   769: invokevirtual 229	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:shouldShowAndEnableBottomBar	()V
      //   772: goto -724 -> 48
      //   775: ldc 231
      //   777: invokestatic 38	com/millennialmedia/android/MMAdViewSDK$Log:d	(Ljava/lang/String;)V
      //   780: aload_0
      //   781: invokevirtual 229	com/millennialmedia/android/MMAdViewWebOverlay$OverlayWebViewClient:shouldShowAndEnableBottomBar	()V
      //   784: goto -736 -> 48
      //   787: astore 24
      //   789: aload 23
      //   791: astore 22
      //   793: goto -483 -> 310
      //
      // Exception table:
      //   from	to	target	type
      //   68	88	292	android/content/ActivityNotFoundException
      //   99	110	292	android/content/ActivityNotFoundException
      //   110	124	292	android/content/ActivityNotFoundException
      //   129	289	292	android/content/ActivityNotFoundException
      //   315	784	292	android/content/ActivityNotFoundException
      //   99	110	308	android/database/sqlite/SQLiteException
      //   110	124	787	android/database/sqlite/SQLiteException
    }

    public void onReceivedError(WebView paramWebView, Error paramError, String paramString1, String paramString2)
    {
      Log.e("MillennialMediaSDK", "Error: " + paramError + "  " + paramString1);
    }

    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      MMAdViewSDK.Log.d("shouldOverrideUrlLoading: " + paramString);
      if (super.shouldOverrideUrlLoading(paramWebView, paramString));
      for (int i = 1; ; i = 0)
        return i;
    }

    public void shouldShowAndEnableBottomBar()
    {
      MMAdViewSDK.Log.v("Showing and enabling bottom bar");
      if (MMAdViewWebOverlay.this.navBar == null)
        return;
      MMAdViewWebOverlay.this.navBar.setVisibility(0);
      MMAdViewWebOverlay.this.setCloseButtonListener(true);
    }
  }
}

/* Location:           C:\Users\changeme\Desktop\browserStartApp\decompilebrowser\
 * Qualified Name:     com.millennialmedia.android.MMAdViewWebOverlay
 * JD-Core Version:    0.5.3
 */