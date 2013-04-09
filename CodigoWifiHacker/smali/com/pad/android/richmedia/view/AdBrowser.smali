.class public Lcom/pad/android/richmedia/view/AdBrowser;
.super Landroid/app/Activity;
.source "AdBrowser.java"


# static fields
.field private static final BackwardId:I = 0x67

.field private static final ButtonId:I = 0x64

.field private static final ForwardId:I = 0x66

.field public static final SHOW_BACK_EXTRA:Ljava/lang/String; = "open_show_back"

.field public static final SHOW_FORWARD_EXTRA:Ljava/lang/String; = "open_show_forward"

.field public static final SHOW_REFRESH_EXTRA:Ljava/lang/String; = "open_show_refresh"

.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"

.field private static final WebViewId:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "source"

    .prologue
    .line 263
    const/4 v4, 0x0

    .line 265
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    const-class v8, Lcom/pad/android/iappad/controller/AdAssetController;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 267
    .local v7, url:Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, file:Ljava/lang/String;
    const-string v8, "file:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 269
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 271
    :cond_0
    const-string v8, "!"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 272
    .local v6, pos:I
    if-lez v6, :cond_1

    .line 273
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 274
    :cond_1
    new-instance v5, Ljava/util/jar/JarFile;

    invoke-direct {v5, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 275
    .local v5, jf:Ljava/util/jar/JarFile;
    invoke-virtual {v5, p1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 276
    .local v2, entry:Ljava/util/jar/JarEntry;
    invoke-virtual {v5, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 277
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 285
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_0
    const/4 v4, 0x0

    .line 292
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/jar/JarEntry;
    .end local v3           #file:Ljava/lang/String;
    .end local v5           #jf:Ljava/util/jar/JarFile;
    .end local v6           #pos:I
    .end local v7           #url:Ljava/net/URL;
    :cond_2
    :goto_1
    return-object v0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    if-eqz v4, :cond_3

    .line 285
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 289
    :goto_2
    const/4 v4, 0x0

    .line 292
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 282
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 283
    if-eqz v4, :cond_4

    .line 285
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 289
    :goto_3
    const/4 v4, 0x0

    .line 291
    :cond_4
    throw v8

    .line 286
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #entry:Ljava/util/jar/JarEntry;
    .restart local v3       #file:Ljava/lang/String;
    .restart local v5       #jf:Ljava/util/jar/JarFile;
    .restart local v6       #pos:I
    .restart local v7       #url:Ljava/net/URL;
    :catch_1
    move-exception v8

    goto :goto_0

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #entry:Ljava/util/jar/JarEntry;
    .end local v3           #file:Ljava/lang/String;
    .end local v5           #jf:Ljava/util/jar/JarFile;
    .end local v6           #pos:I
    .end local v7           #url:Ljava/net/URL;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v9, rl:Landroid/widget/RelativeLayout;
    new-instance v10, Landroid/webkit/WebView;

    invoke-direct {v10, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v10, webview:Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 59
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    .line 60
    const/4 v13, -0x1

    .line 59
    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setFeatureInt(II)V

    .line 62
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 65
    .local v5, i:Landroid/content/Intent;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, bll:Landroid/widget/LinearLayout;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    const/16 v11, 0x64

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 68
    const/high16 v11, 0x42c8

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 69
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    const/4 v11, -0x1

    .line 71
    const/4 v12, -0x1

    .line 69
    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    .local v6, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x2

    const/16 v12, 0x64

    invoke-virtual {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    const-string v11, "bitmaps/bkgrnd.png"

    invoke-virtual {p0, v11}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 73
    invoke-direct {v1, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v1, bkgDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v9, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, -0x1

    .line 80
    const/4 v12, -0x2

    .line 78
    invoke-direct {v6, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .restart local v6       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xc

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    invoke-virtual {v9, v2, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 85
    const/4 v11, -0x2

    .line 86
    const/4 v12, -0x1

    .line 84
    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .local v7, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c8

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 88
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 90
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, backButton:Landroid/widget/ImageButton;
    const v11, 0x106000d

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 92
    const/16 v11, 0x67

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setId(I)V

    .line 94
    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    const-string v11, "open_show_back"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 97
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 98
    :cond_0
    const-string v11, "bitmaps/leftarrow.png"

    invoke-virtual {p0, v11}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    new-instance v11, Lcom/pad/android/richmedia/view/AdBrowser$1;

    invoke-direct {v11, p0}, Lcom/pad/android/richmedia/view/AdBrowser$1;-><init>(Lcom/pad/android/richmedia/view/AdBrowser;)V

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 112
    .local v4, forwardButton:Landroid/widget/ImageButton;
    const v11, 0x106000d

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 113
    const/16 v11, 0x66

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setId(I)V

    .line 114
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 115
    .end local v7           #lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x2

    .line 116
    const/4 v12, -0x1

    .line 114
    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 117
    .restart local v7       #lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c8

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 118
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 120
    invoke-virtual {v2, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    const-string v11, "open_show_forward"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1

    .line 122
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    :cond_1
    new-instance v11, Lcom/pad/android/richmedia/view/AdBrowser$2;

    invoke-direct {v11, p0}, Lcom/pad/android/richmedia/view/AdBrowser$2;-><init>(Lcom/pad/android/richmedia/view/AdBrowser;)V

    invoke-virtual {v4, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    new-instance v8, Landroid/widget/ImageButton;

    invoke-direct {v8, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 132
    .local v8, refreshButton:Landroid/widget/ImageButton;
    const-string v11, "bitmaps/refresh.png"

    invoke-virtual {p0, v11}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    const v11, 0x106000d

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 134
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    .end local v7           #lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x2

    .line 136
    const/4 v12, -0x2

    .line 134
    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 137
    .restart local v7       #lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c8

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 138
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 140
    invoke-virtual {v2, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    const-string v11, "open_show_refresh"

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_2

    .line 143
    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 144
    :cond_2
    new-instance v11, Lcom/pad/android/richmedia/view/AdBrowser$3;

    invoke-direct {v11, p0}, Lcom/pad/android/richmedia/view/AdBrowser$3;-><init>(Lcom/pad/android/richmedia/view/AdBrowser;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 153
    .local v3, closeButton:Landroid/widget/ImageButton;
    const-string v11, "bitmaps/close.png"

    invoke-virtual {p0, v11}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    const v11, 0x106000d

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 155
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 156
    .end local v7           #lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, -0x2

    .line 157
    const/4 v12, -0x2

    .line 155
    invoke-direct {v7, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .restart local v7       #lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x41c8

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 159
    const/16 v11, 0x10

    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 161
    invoke-virtual {v2, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v11, Lcom/pad/android/richmedia/view/AdBrowser$4;

    invoke-direct {v11, p0}, Lcom/pad/android/richmedia/view/AdBrowser$4;-><init>(Lcom/pad/android/richmedia/view/AdBrowser;)V

    invoke-virtual {v3, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdBrowser;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 173
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 174
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 175
    invoke-virtual {v10}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 176
    const-string v11, "extra_url"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 177
    const/16 v11, 0x65

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setId(I)V

    .line 179
    new-instance v11, Lcom/pad/android/richmedia/view/AdBrowser$5;

    invoke-direct {v11, p0}, Lcom/pad/android/richmedia/view/AdBrowser$5;-><init>(Lcom/pad/android/richmedia/view/AdBrowser;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 217
    invoke-virtual {p0, v9}, Lcom/pad/android/richmedia/view/AdBrowser;->setContentView(Landroid/view/View;)V

    .line 219
    new-instance v11, Lcom/pad/android/richmedia/view/AdBrowser$6;

    invoke-direct {v11, p0}, Lcom/pad/android/richmedia/view/AdBrowser$6;-><init>(Lcom/pad/android/richmedia/view/AdBrowser;)V

    invoke-virtual {v10, v11}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 241
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 251
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 252
    return-void
.end method
