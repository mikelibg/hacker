.class public Lcom/mopub/mobileads/AdView;
.super Landroid/webkit/WebView;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdView$AdWebViewClient;
    }
.end annotation


# static fields
.field public static final AD_ORIENTATION_BOTH:Ljava/lang/String; = "b"

.field public static final AD_ORIENTATION_LANDSCAPE_ONLY:Ljava/lang/String; = "l"

.field public static final AD_ORIENTATION_PORTRAIT_ONLY:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field public static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field public static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field public static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field public static final EXTRA_AD_CLICK_DATA:Ljava/lang/String; = "com.mopub.intent.extra.AD_CLICK_DATA"

.field private static final HTTP_CLIENT_TIMEOUT_MILLISECONDS:I = 0x2710

.field private static final MINIMUM_REFRESH_TIME_MILLISECONDS:I = 0x2710


# instance fields
.field private mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

.field private mAdOrientation:Ljava/lang/String;

.field private mAdUnitId:Ljava/lang/String;

.field private mAutorefreshEnabled:Z

.field private mClickthroughUrl:Ljava/lang/String;

.field private mFailUrl:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImpressionUrl:Ljava/lang/String;

.field private mIsDestroyed:Z

.field private mIsLoading:Z

.field private mKeywords:Ljava/lang/String;

.field private mLocation:Landroid/location/Location;

.field protected mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mRedirectUrl:Ljava/lang/String;

.field private mRefreshHandler:Landroid/os/Handler;

.field private mRefreshRunnable:Ljava/lang/Runnable;

.field private mRefreshTimeMilliseconds:I

.field private mResponseString:Ljava/lang/String;

.field private mTimeoutMilliseconds:I

.field private mUrl:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 96
    const v0, 0xea60

    iput v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    .line 97
    const/16 v0, 0x2710

    iput v0, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mHandler:Landroid/os/Handler;

    .line 665
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshHandler:Landroid/os/Handler;

    .line 666
    new-instance v0, Lcom/mopub/mobileads/AdView$4;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdView$4;-><init>(Lcom/mopub/mobileads/AdView;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 115
    iput-object p2, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 116
    iput-boolean v2, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    .line 121
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/mopub/mobileads/AdFetcher;

    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/AdFetcher;-><init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    .line 125
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->disableScrollingAndZoom()V

    .line 126
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setBackgroundColor(I)V

    .line 129
    new-instance v0, Lcom/mopub/mobileads/AdView$AdWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mopub/mobileads/AdView$AdWebViewClient;-><init>(Lcom/mopub/mobileads/AdView;Lcom/mopub/mobileads/AdView$1;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 131
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->addMoPubUriJavascriptInterface()V

    .line 132
    return-void
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidLoad()V

    return-void
.end method

.method static synthetic access$200(Lcom/mopub/mobileads/AdView;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView;->postHandlerRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mobileads/AdView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidClose()V

    return-void
.end method

.method static synthetic access$400(Lcom/mopub/mobileads/AdView;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView;->handleCustomIntentFromUri(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mopub/mobileads/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdView;->showBrowserForUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mopub/mobileads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method private adDidClose()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    .line 501
    return-void
.end method

.method private adDidFail()V
    .locals 2

    .prologue
    .line 493
    const-string v0, "MoPub"

    const-string v1, "Ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 495
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 496
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adFailed()V

    .line 497
    return-void
.end method

.method private adDidLoad()V
    .locals 2

    .prologue
    .line 476
    const-string v0, "MoPub"

    const-string v1, "Ad successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 478
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 479
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/AdView;->setAdContentView(Landroid/view/View;)V

    .line 480
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adLoaded()V

    .line 481
    return-void
.end method

.method private addMoPubUriJavascriptInterface()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdView$1MoPubUriJavascriptInterface;-><init>(Lcom/mopub/mobileads/AdView;)V

    const-string v1, "mopubUriInterface"

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/AdView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private disableScrollingAndZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setHorizontalScrollBarEnabled(Z)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setHorizontalScrollbarOverlay(Z)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setVerticalScrollBarEnabled(Z)V

    .line 138
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AdView;->setVerticalScrollbarOverlay(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 140
    return-void
.end method

.method private generateAdUrl()Ljava/lang/String;
    .locals 11

    .prologue
    .line 336
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "http://ads.mopub.com/m/ad"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .local v5, sz:Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "?v=6&id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v8, "&nv=1.6.0.1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 341
    .local v6, udid:Ljava/lang/String;
    if-nez v6, :cond_4

    const-string v7, ""

    .line 342
    .local v7, udidDigest:Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&udid=sha:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v8, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    iget-object v8, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    if-eqz v8, :cond_1

    .line 347
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&ll="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&z="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->getTimeZoneOffsetString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v4, v8, Landroid/content/res/Configuration;->orientation:I

    .line 353
    .local v4, orientation:I
    const-string v3, "u"

    .line 354
    .local v3, orString:Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 355
    const-string v3, "p"

    .line 361
    :cond_2
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&o="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 364
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 365
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "&sc_a="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const/4 v2, 0x1

    .line 369
    .local v2, mraid:Z
    :try_start_0
    const-string v8, "com.mopub.mraid.MraidView"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_2
    if-eqz v2, :cond_3

    const-string v8, "&mr=1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 341
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #mraid:Z
    .end local v3           #orString:Ljava/lang/String;
    .end local v4           #orientation:I
    .end local v7           #udidDigest:Ljava/lang/String;
    :cond_4
    invoke-static {v6}, Lcom/mopub/mobileads/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 356
    .restart local v3       #orString:Ljava/lang/String;
    .restart local v4       #orientation:I
    .restart local v7       #udidDigest:Ljava/lang/String;
    :cond_5
    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    .line 357
    const-string v3, "l"

    goto :goto_1

    .line 358
    :cond_6
    const/4 v8, 0x3

    if-ne v4, v8, :cond_2

    .line 359
    const-string v3, "s"

    goto :goto_1

    .line 370
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #mraid:Z
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .locals 21

    .prologue
    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/MoPubView;->getLocationAwareness()Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-result-object v7

    .line 280
    .local v7, locationAwareness:Lcom/mopub/mobileads/MoPubView$LocationAwareness;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/MoPubView;->getLocationPrecision()I

    move-result v8

    .line 281
    .local v8, locationPrecision:I
    const/4 v12, 0x0

    .line 283
    .local v12, result:Landroid/location/Location;
    sget-object v17, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_DISABLED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 284
    const/16 v17, 0x0

    .line 332
    :goto_0
    return-object v17

    .line 287
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "location"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/LocationManager;

    .line 289
    .local v6, lm:Landroid/location/LocationManager;
    const/4 v3, 0x0

    .line 291
    .local v3, gpsLocation:Landroid/location/Location;
    :try_start_0
    const-string v17, "gps"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 298
    :goto_1
    const/4 v11, 0x0

    .line 300
    .local v11, networkLocation:Landroid/location/Location;
    :try_start_1
    const-string v17, "network"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    .line 307
    :goto_2
    if-nez v3, :cond_1

    if-nez v11, :cond_1

    .line 308
    const/16 v17, 0x0

    goto :goto_0

    .line 292
    .end local v11           #networkLocation:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 293
    .local v2, e:Ljava/lang/SecurityException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve GPS location: access appears to be disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 294
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    .line 295
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve GPS location: device has no GPS provider."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v11       #networkLocation:Landroid/location/Location;
    :catch_2
    move-exception v2

    .line 302
    .local v2, e:Ljava/lang/SecurityException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve network location: access appears to be disabled."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 303
    .end local v2           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "MoPub"

    const-string v18, "Failed to retrieve network location: device has no network provider."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 310
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    if-eqz v3, :cond_4

    if-eqz v11, :cond_4

    .line 311
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v17

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-lez v17, :cond_3

    move-object v12, v3

    .line 318
    :goto_3
    sget-object v17, Lcom/mopub/mobileads/MoPubView$LocationAwareness;->LOCATION_AWARENESS_TRUNCATED:Lcom/mopub/mobileads/MoPubView$LocationAwareness;

    move-object/from16 v0, v17

    if-ne v7, v0, :cond_2

    .line 319
    invoke-virtual {v12}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 320
    .local v4, lat:D
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v17

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v13

    .line 323
    .local v13, truncatedLat:D
    invoke-virtual {v12, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    .line 325
    invoke-virtual {v12}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 326
    .local v9, lon:D
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v17

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v15

    .line 329
    .local v15, truncatedLon:D
    move-wide v0, v15

    invoke-virtual {v12, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .end local v4           #lat:D
    .end local v9           #lon:D
    .end local v13           #truncatedLat:D
    .end local v15           #truncatedLon:D
    :cond_2
    move-object/from16 v17, v12

    .line 332
    goto/16 :goto_0

    .line 312
    :cond_3
    move-object v12, v11

    goto :goto_3

    .line 314
    :cond_4
    if-eqz v3, :cond_5

    move-object v12, v3

    goto :goto_3

    .line 315
    :cond_5
    move-object v12, v11

    goto :goto_3
.end method

.method private getTimeZoneOffsetString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, format:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 381
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCustomIntentFromUri(Landroid/net/Uri;)V
    .locals 7
    .parameter "uri"

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->registerClick()V

    .line 505
    const-string v4, "fnc"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, action:Ljava/lang/String;
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, adData:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v2, customIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 509
    if-eqz v1, :cond_0

    const-string v4, "com.mopub.intent.extra.AD_CLICK_DATA"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v3

    .line 513
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not handle custom intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Is your intent spelled correctly?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 257
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 260
    .local v1, context:Landroid/content/Context;
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 261
    .local v3, permission:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    .line 262
    .local v4, result:I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v5

    .line 265
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 267
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 268
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private postHandlerRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method private setWebViewScrollingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    :goto_0
    return-void

    .line 467
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/AdView$1;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AdView$1;-><init>(Lcom/mopub/mobileads/AdView;)V

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method private showBrowserForUrl(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    const/high16 v8, 0x1000

    .line 519
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 547
    :goto_0
    return-void

    .line 521
    :cond_0
    if-eqz p1, :cond_1

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string p1, "about:blank"

    .line 522
    :cond_2
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final URI to show in browser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 525
    .local v1, context:Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mopub/mobileads/MraidBrowser;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 526
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "extra_url"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v2

    .line 532
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v4, "market://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 534
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not handle market action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Perhaps you\'re running in the emulator, which does not have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "the Android Market?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "about:blank"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 538
    :cond_3
    const-string v4, "MoPub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not handle intent action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Perhaps you forgot to declare com.mopub.mobileads.MraidBrowser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in your Android manifest file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected adAppeared()V
    .locals 1

    .prologue
    .line 662
    const-string v0, "javascript:webviewDidAppear();"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method protected cancelRefreshTimer()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->setAutorefreshEnabled(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->cancelRefreshTimer()V

    .line 577
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->destroy()V

    .line 583
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdFetcher;->cleanup()V

    .line 584
    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    .line 586
    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mResponseString:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/MoPubView;->removeView(Landroid/view/View;)V

    .line 589
    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsDestroyed:Z

    goto :goto_0
.end method

.method protected configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 14
    .parameter "response"

    .prologue
    .line 407
    const-string v11, "X-Networktype"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 408
    .local v5, ntHeader:Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    const-string v11, "MoPub"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fetching ad network type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    const-string v11, "X-Launchpage"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 412
    .local v7, rdHeader:Lorg/apache/http/Header;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mRedirectUrl:Ljava/lang/String;

    .line 416
    :goto_0
    const-string v11, "X-Clickthrough"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 417
    .local v0, ctHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    .line 421
    :goto_1
    const-string v11, "X-Failurl"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    .line 422
    .local v2, flHeader:Lorg/apache/http/Header;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    .line 426
    :goto_2
    const-string v11, "X-Imptracker"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 427
    .local v4, imHeader:Lorg/apache/http/Header;
    if-eqz v4, :cond_6

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    .line 431
    :goto_3
    const-string v11, "X-Scrollable"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    .line 432
    .local v9, scHeader:Lorg/apache/http/Header;
    const/4 v1, 0x0

    .line 433
    .local v1, enabled:Z
    if-eqz v9, :cond_1

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 434
    :cond_1
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/AdView;->setWebViewScrollingEnabled(Z)V

    .line 437
    const-string v11, "X-Width"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 438
    .local v10, wHeader:Lorg/apache/http/Header;
    const-string v11, "X-Height"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 439
    .local v3, hHeader:Lorg/apache/http/Header;
    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    .line 440
    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mWidth:I

    .line 441
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mHeight:I

    .line 449
    :goto_4
    const-string v11, "X-Refreshtime"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 450
    .local v8, rtHeader:Lorg/apache/http/Header;
    if-eqz v8, :cond_8

    .line 451
    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit16 v11, v11, 0x3e8

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    .line 452
    iget v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    const/16 v12, 0x2710

    if-ge v11, v12, :cond_2

    .line 453
    const/16 v11, 0x2710

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    .line 459
    :cond_2
    :goto_5
    const-string v11, "X-Orientation"

    invoke-interface {p1, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 460
    .local v6, orHeader:Lorg/apache/http/Header;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    :goto_6
    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mAdOrientation:Ljava/lang/String;

    .line 461
    return-void

    .line 413
    .end local v0           #ctHeader:Lorg/apache/http/Header;
    .end local v1           #enabled:Z
    .end local v2           #flHeader:Lorg/apache/http/Header;
    .end local v3           #hHeader:Lorg/apache/http/Header;
    .end local v4           #imHeader:Lorg/apache/http/Header;
    .end local v6           #orHeader:Lorg/apache/http/Header;
    .end local v8           #rtHeader:Lorg/apache/http/Header;
    .end local v9           #scHeader:Lorg/apache/http/Header;
    .end local v10           #wHeader:Lorg/apache/http/Header;
    :cond_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mRedirectUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 418
    .restart local v0       #ctHeader:Lorg/apache/http/Header;
    :cond_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 423
    .restart local v2       #flHeader:Lorg/apache/http/Header;
    :cond_5
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    goto/16 :goto_2

    .line 428
    .restart local v4       #imHeader:Lorg/apache/http/Header;
    :cond_6
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    goto/16 :goto_3

    .line 444
    .restart local v1       #enabled:Z
    .restart local v3       #hHeader:Lorg/apache/http/Header;
    .restart local v9       #scHeader:Lorg/apache/http/Header;
    .restart local v10       #wHeader:Lorg/apache/http/Header;
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mWidth:I

    .line 445
    const/4 v11, 0x0

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mHeight:I

    goto :goto_4

    .line 456
    .restart local v8       #rtHeader:Lorg/apache/http/Header;
    :cond_8
    const/4 v11, 0x0

    iput v11, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    goto :goto_5

    .line 460
    .restart local v6       #orHeader:Lorg/apache/http/Header;
    :cond_9
    const/4 v11, 0x0

    goto :goto_6
.end method

.method public customEventActionWillBegin()V
    .locals 0

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->registerClick()V

    .line 561
    return-void
.end method

.method public customEventDidFailToLoadAd()V
    .locals 0

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->loadFailUrl()V

    .line 557
    return-void
.end method

.method public customEventDidLoadAd()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 551
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->trackImpression()V

    .line 552
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    .line 553
    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/mopub/mobileads/AdView;->mHeight:I

    return v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/mopub/mobileads/AdView;->mWidth:I

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    return v0
.end method

.method public getClickthroughUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mRedirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mResponseString:Ljava/lang/String;

    return-object v0
.end method

.method protected isDestroyed()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsDestroyed:Z

    return v0
.end method

.method public loadAd()V
    .locals 3

    .prologue
    .line 237
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 238
    const-string v1, "MoPub"

    const-string v2, "Can\'t load an ad in this ad view because the ad unit ID is null. Did you forget to call setAdUnitId()?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    const-string v1, "MoPub"

    const-string v2, "Can\'t load an ad because there is no network connectivity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->generateAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, adUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->adWillLoad(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadFailUrl()V
    .locals 3

    .prologue
    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 603
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 604
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading failover url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mFailUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    .line 610
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/AdView;->adDidFail()V

    goto :goto_0
.end method

.method protected loadResponseString(Ljava/lang/String;)V
    .locals 6
    .parameter "responseString"

    .prologue
    .line 613
    const-string v1, "http://ads.mopub.com/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mopub/mobileads/AdView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 389
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    if-eqz v0, :cond_1

    .line 395
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already loading an ad for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wait to finish."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_1
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 402
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdFetcher;->fetchAdForUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerClick()V
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/AdView$3;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdView$3;-><init>(Lcom/mopub/mobileads/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 597
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reload ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdView;->loadUrl(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method protected scheduleRefreshTimerIfEnabled()V
    .locals 4

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->cancelRefreshTimer()V

    .line 674
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    if-gtz v0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mRefreshHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mRefreshRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mopub/mobileads/AdView;->mRefreshTimeMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setAdContentView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, -0x2

    .line 484
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->removeAllViews()V

    .line 485
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 489
    .local v0, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/mopub/mobileads/AdView;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, p1, v0}, Lcom/mopub/mobileads/MoPubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0
    .parameter "adUnitId"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public setAutorefreshEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    .line 751
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Automatic refresh for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdView;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdView;->mAutorefreshEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->cancelRefreshTimer()V

    .line 755
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdView;->scheduleRefreshTimerIfEnabled()V

    goto :goto_0
.end method

.method public setClickthroughUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 729
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mClickthroughUrl:Ljava/lang/String;

    .line 730
    return-void
.end method

.method protected setIsLoading(Z)V
    .locals 0
    .parameter "isLoading"

    .prologue
    .line 745
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdView;->mIsLoading:Z

    .line 746
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0
    .parameter "keywords"

    .prologue
    .line 689
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mKeywords:Ljava/lang/String;

    .line 690
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mLocation:Landroid/location/Location;

    .line 698
    return-void
.end method

.method protected setResponseString(Ljava/lang/String;)V
    .locals 0
    .parameter "responseString"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/mopub/mobileads/AdView;->mResponseString:Ljava/lang/String;

    .line 742
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 709
    iput p1, p0, Lcom/mopub/mobileads/AdView;->mTimeoutMilliseconds:I

    .line 710
    return-void
.end method

.method protected trackImpression()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/mopub/mobileads/AdView;->mImpressionUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 620
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mopub/mobileads/AdView$2;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AdView$2;-><init>(Lcom/mopub/mobileads/AdView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
