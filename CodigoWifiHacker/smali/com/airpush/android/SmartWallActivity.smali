.class public Lcom/airpush/android/SmartWallActivity;
.super Landroid/app/Activity;
.source "SmartWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/SmartWallActivity$AirpushWebClient;
    }
.end annotation


# instance fields
.field private adType:Ljava/lang/String;

.field private dialog:Landroid/app/ProgressDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private LandingPageAd()V
    .locals 21

    .prologue
    .line 99
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/SmartWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    .line 101
    .local v13, metrics:Landroid/util/DisplayMetrics;
    iget v7, v13, Landroid/util/DisplayMetrics;->density:F

    .line 102
    .local v7, density:F
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v11, linearLayout:Landroid/widget/LinearLayout;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v12, mainLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v9, imageView:Landroid/widget/ImageView;
    const-string v17, "#00B0F0"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 110
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    float-to-int v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    .local v4, borderLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11, v9, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 115
    .local v14, relativeLayout:Landroid/widget/RelativeLayout;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .local v10, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v16, txtLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xf

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 123
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 124
    .local v15, textView:Landroid/widget/TextView;
    const-string v17, "Ad "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setId(I)V

    .line 130
    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 131
    .local v5, button:Landroid/widget/Button;
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    .local v6, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const-string v17, "X"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/16 v17, 0x0

    float-to-int v0, v7

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    float-to-int v0, v7

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0xa

    float-to-int v0, v7

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 138
    const/high16 v17, 0x4170

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 139
    sget-object v17, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 140
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 141
    const-string v17, "#31849B"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 143
    new-instance v17, Lcom/airpush/android/SmartWallActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/airpush/android/SmartWallActivity$1;-><init>(Lcom/airpush/android/SmartWallActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v17, Landroid/webkit/WebView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/webkit/WebChromeClient;

    invoke-direct/range {v18 .. v18}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const/high16 v18, 0x200

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    new-instance v18, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;-><init>(Lcom/airpush/android/SmartWallActivity;Lcom/airpush/android/SmartWallActivity$AirpushWebClient;)V

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    invoke-static {}, Lcom/airpush/android/Util;->getLandingPageAdUrl()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 158
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 159
    const-string v17, "#31849B"

    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/airpush/android/SmartWallActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v4           #borderLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #button:Landroid/widget/Button;
    .end local v6           #buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7           #density:F
    .end local v9           #imageView:Landroid/widget/ImageView;
    .end local v10           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v11           #linearLayout:Landroid/widget/LinearLayout;
    .end local v12           #mainLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #metrics:Landroid/util/DisplayMetrics;
    .end local v14           #relativeLayout:Landroid/widget/RelativeLayout;
    .end local v15           #textView:Landroid/widget/TextView;
    .end local v16           #txtLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v8

    .line 166
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "AirpushSDK"

    const-string v18, "An error occured while starting LandingPageAd."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/airpush/android/SmartWallActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/airpush/android/SmartWallActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/airpush/android/SmartWallActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private appWallAd(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 74
    :try_start_0
    const-string v1, "url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, url:Ljava/lang/String;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/airpush/android/SmartWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    .line 77
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 79
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 80
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 81
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/airpush/android/SmartWallActivity$AirpushWebClient;-><init>(Lcom/airpush/android/SmartWallActivity;Lcom/airpush/android/SmartWallActivity$AirpushWebClient;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/airpush/android/SmartWallActivity;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Loading...."

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    .line 40
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/airpush/android/SmartWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "adtype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "AW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airpush/android/SmartWallActivity;->requestWindowFeature(I)Z

    .line 46
    const-string v1, "Appwall called: "

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/airpush/android/SmartWallActivity;->appWallAd(Landroid/content/Intent;)V

    .line 68
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 48
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "DAU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "DCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airpush/android/SmartWallActivity;->requestWindowFeature(I)Z

    .line 50
    const-string v1, "Dialog Ad called: "

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 51
    const v1, 0x103000f

    invoke-virtual {p0, v1}, Lcom/airpush/android/SmartWallActivity;->setTheme(I)V

    .line 52
    new-instance v1, Lcom/airpush/android/DialogAd;

    invoke-direct {v1, v0, p0}, Lcom/airpush/android/DialogAd;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_0

    .line 65
    .end local v0           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 53
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "FP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const-string v1, "Landing page called: "

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airpush/android/SmartWallActivity;->requestWindowFeature(I)Z

    .line 56
    invoke-virtual {p0}, Lcom/airpush/android/SmartWallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 58
    invoke-direct {p0}, Lcom/airpush/android/SmartWallActivity;->LandingPageAd()V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 62
    invoke-virtual {p0}, Lcom/airpush/android/SmartWallActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "DAU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->adType:Ljava/lang/String;

    const-string v2, "DCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    if-ne p1, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :goto_0
    return v0

    .line 189
    :cond_1
    if-ne p1, v3, :cond_4

    .line 190
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 191
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/airpush/android/SmartWallActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 194
    :cond_3
    invoke-virtual {p0}, Lcom/airpush/android/SmartWallActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/airpush/android/SmartWallActivity;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 181
    return-void

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0
.end method
