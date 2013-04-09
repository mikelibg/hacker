.class Lcom/millennialmedia/android/MMAdViewController;
.super Ljava/lang/Object;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;,
        Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;
    }
.end annotation


# static fields
.field private static cachedVideoList:Ljava/lang/String;

.field private static cachedVideoListLoaded:Z

.field private static cachedVideoSet:Ljava/util/HashSet;

.field private static final controllers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/millennialmedia/android/MMAdViewController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdView;",
            ">;"
        }
    .end annotation
.end field

.field private appPaused:Z

.field private cacheHandler:Landroid/os/Handler;

.field canAccelerate:Z

.field private fetchedBaseUrlLaunch:Ljava/lang/String;

.field private fetchedBaseUrlTransition:Ljava/lang/String;

.field private fetchedContentLaunch:Ljava/lang/String;

.field private fetchedContentTransition:Ljava/lang/String;

.field private fetchedTimeLaunch:J

.field private fetchedTimeTransition:J

.field private handler:Landroid/os/Handler;

.field nextUrl:Ljava/lang/String;

.field overlayTitle:Ljava/lang/String;

.field overlayTransition:Ljava/lang/String;

.field private paused:Z

.field private refreshTimerOn:Z

.field requestInProgress:Z

.field private runnable:Ljava/lang/Runnable;

.field shouldEnableBottomBar:Z

.field shouldLaunchToOverlay:Z

.field shouldMakeOverlayTransparent:Z

.field shouldResizeOverlay:I

.field shouldShowBottomBar:Z

.field shouldShowTitlebar:Z

.field private timeRemaining:J

.field private timeResumed:J

.field transitionTime:J

.field private urlString:Ljava/lang/String;

.field private useragent:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdView;)V
    .locals 4
    .parameter "adView"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    .line 84
    iput-boolean v3, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 1224
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController$6;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    .line 108
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->resetAdViewSettings()V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    .line 114
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    .line 115
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 117
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 119
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/MMAdViewController$MMJSInterface;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdViewController$1;)V

    const-string v2, "interface"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    const/16 v1, 0x3ad7

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->useragent:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private DownloadLastAd(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 10
    .parameter "adView"
    .parameter "fetch"

    .prologue
    .line 2052
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2053
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v7, "lastDownloadedAdName"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2054
    .local v5, lastAdName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2055
    .local v0, ad:Lcom/millennialmedia/android/VideoAd;
    const/4 v1, 0x0

    .line 2056
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downloading last ad: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 2059
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v2, v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2063
    if-eqz v2, :cond_3

    .line 2064
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .line 2067
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2069
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V

    .line 2071
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Millennial restarting or finishing caching ad."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    move-object v4, v0

    .line 2073
    .local v4, finalAd:Lcom/millennialmedia/android/VideoAd;
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    new-instance v8, Lcom/millennialmedia/android/MMAdViewController$7;

    invoke-direct {v8, p0, v4}, Lcom/millennialmedia/android/MMAdViewController$7;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2096
    .end local v4           #finalAd:Lcom/millennialmedia/android/VideoAd;
    :goto_1
    return-void

    .line 2061
    :catch_0
    move-exception v3

    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2063
    if-eqz v1, :cond_0

    .line 2064
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 2063
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_1

    .line 2064
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_1
    throw v7

    .line 2083
    :cond_2
    const-string v7, "Can\'t find last ad in database, calling for new ad"

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 2084
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V

    goto :goto_1

    .line 2063
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3

    .line 2061
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_3
    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMAdViewController;->adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlTransition:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/millennialmedia/android/MMAdViewController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeTransition:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/millennialmedia/android/MMAdViewController;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMAdViewController;->checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/millennialmedia/android/MMAdViewController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->getURLMetaValues(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->getAdType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->useragent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/MMAdViewController;->handleCachedAdResponse(Lcom/millennialmedia/android/VideoAd;Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/millennialmedia/android/MMAdViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlLaunch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/millennialmedia/android/MMAdViewController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeLaunch:J

    return-wide p1
.end method

.method private adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 3
    .parameter "adView"
    .parameter "success"

    .prologue
    .line 1845
    if-eqz p1, :cond_0

    .line 1847
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 1851
    :try_start_0
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, p1, p2}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdCachingCompleted(Lcom/millennialmedia/android/MMAdView;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1856
    :cond_0
    :goto_0
    return-void

    .line 1853
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MillennialMediaSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private adFailed(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .parameter "adView"

    .prologue
    .line 1791
    if-eqz p1, :cond_0

    .line 1793
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 1797
    :try_start_0
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, p1}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1802
    :cond_0
    :goto_0
    return-void

    .line 1799
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MillennialMediaSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private adIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .parameter "adView"

    .prologue
    .line 1827
    if-eqz p1, :cond_0

    .line 1829
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 1833
    :try_start_0
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, p1}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1835
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MillennialMediaSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private adSuccess(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .parameter "adView"

    .prologue
    .line 1809
    if-eqz p1, :cond_0

    .line 1811
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v1, :cond_0

    .line 1815
    :try_start_0
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v1, p1}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdReturned(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1820
    :cond_0
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MillennialMediaSDK"

    const-string v2, "Exception raised in your MMAdListener: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static declared-synchronized assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V
    .locals 7
    .parameter "adView"

    .prologue
    const/4 v4, -0x1

    .line 135
    const-class v3, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v3

    const/4 v1, 0x1

    .line 137
    .local v1, reassign:Z
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 140
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 142
    const-string v2, "MillennialMediaSDK"

    const-string v4, "MMAdView found without a view id. Ad requests on this MMAdView are disabled."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 146
    :cond_2
    :try_start_2
    sget-object v2, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 147
    .local v0, controller:Lcom/millennialmedia/android/MMAdViewController;
    if-nez v0, :cond_3

    .line 149
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController;

    .end local v0           #controller:Lcom/millennialmedia/android/MMAdViewController;
    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    .line 150
    .restart local v0       #controller:Lcom/millennialmedia/android/MMAdViewController;
    sget-object v2, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v1, 0x0

    .line 155
    :cond_3
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    .line 156
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    .line 159
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 160
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_4
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    const/16 v4, 0xf

    if-ge v2, v4, :cond_5

    .line 167
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Refresh interval is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". Change to at least 15 to refresh ads."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 184
    :goto_1
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-ltz v2, :cond_0

    if-nez v1, :cond_0

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewController;->chooseCachedAdOrAdCall(Z)V

    goto/16 :goto_0

    .line 170
    :cond_5
    iget v2, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-gez v2, :cond_6

    .line 173
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Automatic ad fetching is off with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". You must manually call for ads."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    .line 180
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static declared-synchronized cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "acid"

    .prologue
    .line 226
    const-class v1, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v1

    if-eqz p1, :cond_2

    .line 228
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 229
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 230
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 231
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    .line 232
    :cond_1
    sget-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_2
    monitor-exit v1

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "acid"

    .prologue
    .line 239
    const-class v1, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 240
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 241
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    monitor-exit v1

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static checkForAdNotDownloaded(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1926
    const-string v6, "MillennialMediaSettings"

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1927
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v6, "pendingDownload"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1928
    .local v1, downloaded:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pending download?: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1929
    const-string v6, "downloadAttempts"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1930
    .local v0, attempts:I
    const/4 v6, 0x3

    if-lt v0, v6, :cond_0

    .line 1932
    const-string v6, "Cached ad download failed too many times. Purging it from the database."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1933
    const-string v6, "lastDownloadedAdName"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1934
    .local v3, lastAdName:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 1935
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1936
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "downloadAttempts"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1937
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v5

    .line 1940
    .end local v1           #downloaded:Z
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #lastAdName:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private static checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 6
    .parameter "name"
    .parameter "adView"

    .prologue
    .line 2032
    const/4 v0, 0x0

    .line 2033
    .local v0, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v3, 0x0

    .line 2036
    .local v3, existsInDb:Z
    :try_start_0
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/AdDatabaseHelper;->checkIfAdExists(Ljava/lang/String;)Z

    move-result v3

    .line 2038
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Last ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in database?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2043
    if-eqz v1, :cond_2

    .line 2044
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v0, v1

    .line 2047
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_0
    return v3

    .line 2040
    :catch_0
    move-exception v2

    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2043
    if-eqz v0, :cond_0

    .line 2044
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 2043
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 2044
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_1
    throw v4

    .line 2043
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .line 2040
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1

    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_2
    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0
.end method

.method private static checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z
    .locals 17
    .parameter "context"
    .parameter "name"
    .parameter "videoAd"

    .prologue
    .line 1953
    const/4 v6, 0x0

    .line 1954
    .local v6, existsInFilesystem:Z
    const/16 v7, 0x3e8

    .line 1955
    .local v7, fileCount:I
    const/4 v11, 0x0

    .line 1956
    .local v11, onSDCard:Z
    const/4 v3, 0x0

    .line 1960
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_0
    new-instance v4, Lcom/millennialmedia/android/AdDatabaseHelper;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v4, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->getButtonCountForAd(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v7, v13, 0x1

    .line 1963
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->isAdOnSDCard(Ljava/lang/String;)Z

    move-result v11

    .line 1964
    invoke-virtual {v4}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1975
    if-eqz v11, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mounted"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1976
    new-instance v1, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".mmsyscache"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v1, adDir:Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1983
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 1984
    .local v10, list:[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v13, v10

    if-lt v13, v7, :cond_0

    .line 1986
    const/4 v6, 0x1

    .line 1990
    .end local v10           #list:[Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    .line 1993
    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_5

    .line 1995
    new-instance v12, Ljava/io/File;

    const-string v13, "video.dat"

    invoke-direct {v12, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1996
    .local v12, videoFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/millennialmedia/android/VideoAd;->contentLength:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    .line 1998
    :cond_1
    const/4 v6, 0x0

    .line 2019
    .end local v12           #videoFile:Ljava/io/File;
    :cond_2
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Last ad "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in filesystem?: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    move-object v3, v4

    .end local v4           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    move v13, v6

    .line 2020
    .end local v1           #adDir:Ljava/io/File;
    :goto_2
    return v13

    .line 1966
    :catch_0
    move-exception v5

    .line 1968
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    :goto_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1969
    if-eqz v3, :cond_3

    .line 1970
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1971
    :cond_3
    const-string v13, "4.5.1-12.2.2.a"

    const-string v14, "SQL check error. Ad filesys check cannot be completed."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const/4 v13, 0x0

    goto :goto_2

    .line 1978
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v4       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_4
    new-instance v1, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1       #adDir:Ljava/io/File;
    goto/16 :goto_0

    .line 2003
    :cond_5
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/VideoImage;

    .line 2005
    .local v2, button:Lcom/millennialmedia/android/VideoImage;
    iget-wide v13, v2, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_6

    .line 2007
    new-instance v9, Ljava/io/File;

    invoke-virtual {v2}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v1, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2008
    .local v9, imageFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v13

    iget-wide v15, v2, Lcom/millennialmedia/android/VideoImage;->contentLength:J

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6

    .line 2010
    :cond_7
    const/4 v6, 0x0

    .line 2011
    goto/16 :goto_1

    .line 1966
    .end local v1           #adDir:Ljava/io/File;
    .end local v2           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #imageFile:Ljava/io/File;
    :catch_1
    move-exception v5

    move-object v3, v4

    .end local v4           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3
.end method

.method private checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z
    .locals 5
    .parameter "adName"
    .parameter "adView"

    .prologue
    .line 2100
    const/4 v0, 0x0

    .line 2101
    .local v0, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v3, 0x0

    .line 2105
    .local v3, exp:Z
    :try_start_0
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2106
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->isAdExpired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 2111
    if-eqz v1, :cond_2

    .line 2112
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v0, v1

    .line 2114
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_0
    return v3

    .line 2108
    :catch_0
    move-exception v2

    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2111
    if-eqz v0, :cond_0

    .line 2112
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 2111
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 2112
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_1
    throw v4

    .line 2111
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .line 2108
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1

    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_2
    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0
.end method

.method private static cleanUpExpiredAds(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1863
    const/4 v0, 0x0

    .line 1866
    .local v0, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_0
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1867
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->getAllExpiredAds()Ljava/util/List;

    move-result-object v3

    .line 1868
    .local v3, expiredAds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1870
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1872
    const-string v5, "Some ads are expired"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1873
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1874
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1873
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1881
    .end local v4           #i:I
    :cond_0
    if-eqz v1, :cond_3

    .line 1882
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v0, v1

    .line 1884
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v3           #expiredAds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_1
    :goto_1
    return-void

    .line 1878
    :catch_0
    move-exception v2

    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1881
    if-eqz v0, :cond_1

    .line 1882
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_1

    .line 1881
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v0, :cond_2

    .line 1882
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_2
    throw v5

    .line 1881
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3

    .line 1878
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #expiredAds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1
.end method

.method static deleteAd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "adName"

    .prologue
    .line 2302
    const/4 v2, 0x0

    .line 2303
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v7, 0x0

    .line 2304
    .local v7, purged:Z
    const/4 v0, 0x0

    .line 2306
    .local v0, acid:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 2354
    :goto_0
    return-void

    .line 2310
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2312
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".mmsyscache"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2313
    .local v8, sdCardAd:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2315
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 2316
    .local v5, files:[Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ad directory file count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 2317
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v5

    if-ge v6, v9, :cond_1

    .line 2318
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 2317
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2319
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 2320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " directory and files deleted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 2325
    .end local v5           #files:[Ljava/io/File;
    .end local v6           #i:I
    .end local v8           #sdCardAd:Ljava/io/File;
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v1, cacheDirAd:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2328
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 2329
    .restart local v5       #files:[Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ad directory file count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 2330
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    array-length v9, v5

    if-ge v6, v9, :cond_3

    .line 2331
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 2330
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2332
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2333
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " directory and files deleted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 2339
    .end local v5           #files:[Ljava/io/File;
    .end local v6           #i:I
    :cond_4
    :try_start_0
    new-instance v3, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->getCachedAdAcid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2341
    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->purgeAdFromDb(Ljava/lang/String;)Z

    move-result v7

    .line 2342
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 2351
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :goto_3
    if-eqz v0, :cond_5

    .line 2352
    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V

    .line 2353
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ad deleted from database: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " with succuess? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2344
    :catch_0
    move-exception v4

    .line 2346
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :goto_4
    if-eqz v2, :cond_6

    .line 2347
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 2348
    :cond_6
    const-string v9, "MillennialMediaSDK"

    const-string v10, "SQL error. Ad could not be purged from the database."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2344
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_4
.end method

.method static downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 18
    .parameter "urlString"
    .parameter "name"
    .parameter "path"

    .prologue
    .line 1706
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1708
    .local v9, file:Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Downloading Component: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1710
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_0

    .line 1712
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " already exists, skipping..."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1713
    const/4 v14, 0x1

    .line 1780
    :goto_0
    return v14

    .line 1718
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v4, connectURL:Ljava/net/URL;
    const-wide/16 v5, -0x1

    .line 1720
    .local v5, contentLength:J
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 1721
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 1722
    .local v3, conn:Ljava/net/HttpURLConnection;
    const-string v14, "GET"

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1723
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 1724
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 1725
    .local v12, stream:Ljava/io/InputStream;
    const-string v14, "Content-Length"

    invoke-virtual {v3, v14}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1726
    .local v13, temp:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 1727
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1728
    :cond_1
    if-nez v12, :cond_2

    .line 1730
    const-string v14, "MillennialMediaSDK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Connection stream is null downloading: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v14, 0x0

    goto :goto_0

    .line 1735
    :cond_2
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1737
    .local v11, out:Ljava/io/FileOutputStream;
    const/16 v14, 0x400

    new-array v2, v14, [B

    .line 1740
    .local v2, buf:[B
    :goto_1
    invoke-virtual {v12, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1741
    .local v10, numread:I
    if-gtz v10, :cond_4

    .line 1751
    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 1752
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1761
    if-eqz v9, :cond_5

    .line 1766
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v14

    cmp-long v14, v14, v5

    if-eqz v14, :cond_3

    const-wide/16 v14, -0x1

    cmp-long v14, v5, v14

    if-nez v14, :cond_6

    .line 1767
    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    .line 1746
    :cond_4
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v11, v2, v14, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1775
    .end local v2           #buf:[B
    .end local v3           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #connectURL:Ljava/net/URL;
    .end local v5           #contentLength:J
    .end local v10           #numread:I
    .end local v11           #out:Ljava/io/FileOutputStream;
    .end local v12           #stream:Ljava/io/InputStream;
    .end local v13           #temp:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1776
    .local v7, e:Ljava/lang/Exception;
    const-string v14, "MillennialMediaSDK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception downloading component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1780
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1754
    .restart local v2       #buf:[B
    .restart local v3       #conn:Ljava/net/HttpURLConnection;
    .restart local v4       #connectURL:Ljava/net/URL;
    .restart local v5       #contentLength:J
    .restart local v10       #numread:I
    .restart local v11       #out:Ljava/io/FileOutputStream;
    .restart local v12       #stream:Ljava/io/InputStream;
    .restart local v13       #temp:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1756
    .local v8, ex:Ljava/io/IOException;
    :try_start_4
    const-string v14, "MillennialMediaSDK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Content caching error: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1757
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1758
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1769
    .end local v8           #ex:Ljava/io/IOException;
    :cond_6
    :try_start_5
    const-string v14, "MillennialMediaSDK"

    const-string v15, "Content-Length does not match actual length."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1771
    :catch_2
    move-exception v7

    .line 1772
    .local v7, e:Ljava/lang/SecurityException;
    :try_start_6
    const-string v14, "MillennialMediaSDK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception downloading component "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2
.end method

.method private static freeMemoryOnDisk(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 13
    .parameter "adView"

    .prologue
    const-wide/32 v11, 0xc00000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1896
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1898
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mmsyscache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1899
    .local v1, sdCardFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1901
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1902
    .local v2, sdCardMem:J
    cmp-long v8, v2, v11

    if-gez v8, :cond_1

    .line 1918
    .end local v1           #sdCardFile:Ljava/io/File;
    .end local v2           #sdCardMem:J
    :cond_0
    :goto_0
    return v6

    .restart local v1       #sdCardFile:Ljava/io/File;
    .restart local v2       #sdCardMem:J
    :cond_1
    move v6, v7

    .line 1902
    goto :goto_0

    .line 1906
    .end local v1           #sdCardFile:Ljava/io/File;
    .end local v2           #sdCardMem:J
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1907
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_3

    .line 1912
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 1913
    .local v4, usedMem:J
    const-string v8, "MillennialMediaSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cache: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1914
    cmp-long v8, v4, v11

    if-ltz v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 1917
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v4           #usedMem:J
    :catch_0
    move-exception v6

    :cond_3
    move v6, v7

    .line 1918
    goto :goto_0
.end method

.method private getAdType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "adtype"

    .prologue
    .line 1421
    const-string v0, "&adtype="

    .line 1422
    .local v0, type:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 1424
    const-string v1, "MMBannerAdTop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    :goto_0
    return-object v1

    .line 1427
    :cond_0
    const-string v1, "MMBannerAdBottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdBottom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1430
    :cond_1
    const-string v1, "MMBannerAdRectangle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdRectangle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1433
    :cond_2
    const-string v1, "MMFullScreenAdLaunch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMFullScreenAdLaunch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1436
    :cond_3
    const-string v1, "MMFullScreenAdTransition"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMFullScreenAdTransition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1441
    :cond_4
    const-string v1, "MillennialMediaSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") **********"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const-string v1, "MillennialMediaSDK"

    const-string v2, "******* SDK DEFAULTED TO MMBannerAdTop. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MMBannerAdTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static declared-synchronized getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    .line 250
    const-class v12, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v12

    :try_start_0
    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoList:Ljava/lang/String;

    if-nez v11, :cond_8

    .line 252
    sget-boolean v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoListLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v11, :cond_4

    .line 254
    const/4 v2, 0x0

    .line 259
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    sput-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    .line 260
    new-instance v3, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v13, "mounted"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 263
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ".mmsyscache"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v8, sdCardAd:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 266
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 267
    .local v5, files:[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v11, v5

    if-ge v6, v11, :cond_3

    .line 269
    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v10

    .line 270
    .local v10, videoAd:Lcom/millennialmedia/android/VideoAd;
    if-eqz v10, :cond_0

    iget-object v11, v10, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    if-eqz v11, :cond_0

    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v10}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 271
    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    iget-object v13, v10, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 277
    .end local v5           #files:[Ljava/io/File;
    .end local v6           #i:I
    .end local v8           #sdCardAd:Ljava/io/File;
    .end local v10           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 278
    .local v1, cacheDirAd:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 280
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 281
    .restart local v5       #files:[Ljava/io/File;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_1
    array-length v11, v5

    if-ge v6, v11, :cond_3

    .line 283
    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v10

    .line 284
    .restart local v10       #videoAd:Lcom/millennialmedia/android/VideoAd;
    if-eqz v10, :cond_2

    iget-object v11, v10, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    if-eqz v11, :cond_2

    aget-object v11, v5, v6

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11, v10}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 285
    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    iget-object v13, v10, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 289
    .end local v1           #cacheDirAd:Ljava/io/File;
    .end local v5           #files:[Ljava/io/File;
    .end local v6           #i:I
    .end local v10           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_3
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 290
    const/4 v11, 0x1

    sput-boolean v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoListLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_4
    :try_start_3
    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    if-eqz v11, :cond_8

    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .local v9, stringBuilder:Ljava/lang/StringBuilder;
    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, acid:Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 307
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    check-cast v0, Ljava/lang/String;

    .end local v0           #acid:Ljava/lang/Object;
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 250
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 292
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_0
    move-exception v4

    .line 294
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_4
    const-string v11, "MillennialMediaSDK"

    const-string v13, "SQL error. Could not load cached videos from the database."

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_5

    .line 296
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 297
    :cond_5
    const/4 v11, 0x0

    .line 314
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :goto_4
    monitor-exit v12

    return-object v11

    .line 309
    .restart local v0       #acid:Ljava/lang/Object;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_5
    check-cast v0, Ljava/lang/String;

    .end local v0           #acid:Ljava/lang/Object;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 311
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoList:Ljava/lang/String;

    .line 314
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_8
    sget-object v11, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoList:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 292
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3
.end method

.method private getNextAd(Z)V
    .locals 2
    .parameter "fetch"

    .prologue
    .line 499
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    .line 500
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/MMAdViewController$1;-><init>(Lcom/millennialmedia/android/MMAdViewController;Z)V

    .line 736
    .local v0, thread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 737
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 738
    return-void
.end method

.method static getURLDeviceValues(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    .line 1243
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1246
    .local v3, deviceString:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, connectionType:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1251
    new-instance v10, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v10, stat:Landroid/os/StatFs;
    :goto_0
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v13, v13

    mul-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1257
    .local v5, freeSpace:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1258
    .local v2, devicePluggedIn:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1259
    .local v1, deviceBatteryLevel:Ljava/lang/String;
    const/4 v11, 0x0

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    .line 1260
    .local v6, intent:Landroid/content/Intent;
    if-eqz v6, :cond_0

    .line 1264
    const-string v11, "plugged"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_6

    const-string v2, "false"

    .line 1265
    :goto_1
    const-string v11, "scale"

    const/16 v12, 0x64

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1266
    .local v9, scale:I
    const/high16 v11, 0x42c8

    int-to-float v12, v9

    div-float v8, v11, v12

    .line 1267
    .local v8, ratio:F
    const-string v11, "level"

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v7, v11

    .line 1268
    .local v7, level:I
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1272
    .end local v7           #level:I
    .end local v8           #ratio:F
    .end local v9           #scale:I
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 1273
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&bl="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 1275
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&plugged="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 1277
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&space="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_3
    if-eqz v0, :cond_4

    .line 1279
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&conn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1286
    .end local v0           #connectionType:Ljava/lang/String;
    .end local v1           #deviceBatteryLevel:Ljava/lang/String;
    .end local v2           #devicePluggedIn:Ljava/lang/String;
    .end local v3           #deviceString:Ljava/lang/StringBuilder;
    .end local v5           #freeSpace:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #stat:Landroid/os/StatFs;
    :goto_2
    return-object v11

    .line 1253
    .restart local v0       #connectionType:Ljava/lang/String;
    .restart local v3       #deviceString:Ljava/lang/StringBuilder;
    :cond_5
    new-instance v10, Landroid/os/StatFs;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .restart local v10       #stat:Landroid/os/StatFs;
    goto/16 :goto_0

    .line 1264
    .restart local v1       #deviceBatteryLevel:Ljava/lang/String;
    .restart local v2       #devicePluggedIn:Ljava/lang/String;
    .restart local v5       #freeSpace:Ljava/lang/String;
    .restart local v6       #intent:Landroid/content/Intent;
    :cond_6
    const-string v2, "true"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1282
    .end local v0           #connectionType:Ljava/lang/String;
    .end local v1           #deviceBatteryLevel:Ljava/lang/String;
    .end local v2           #devicePluggedIn:Ljava/lang/String;
    .end local v3           #deviceString:Ljava/lang/StringBuilder;
    .end local v5           #freeSpace:Ljava/lang/String;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v10           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 1284
    .local v4, e:Ljava/lang/Exception;
    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1286
    const-string v11, ""

    goto :goto_2
.end method

.method private getURLMetaValues(Lcom/millennialmedia/android/MMAdView;)Ljava/lang/String;
    .locals 8
    .parameter "adView"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    .local v2, metaString:Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1302
    .local v1, locale:Ljava/util/Locale;
    if-eqz v1, :cond_0

    .line 1304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&language="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&country="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_0
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 1309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&age="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->age:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    :cond_1
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 1312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&gender="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->gender:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    :cond_2
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&zip="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->zip:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_3
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1320
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v6, "single"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v6, "married"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v6, "divorced"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v6, "swinger"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v6, "relationship"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    const-string v6, "engaged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1322
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&marital="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->marital:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    :cond_5
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&income="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->income:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    :cond_6
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 1330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&kw="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->keywords:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    :cond_7
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    if-eqz v5, :cond_8

    .line 1333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&lat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->latitude:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    :cond_8
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 1336
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&long="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->longitude:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    :cond_9
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    if-eqz v5, :cond_e

    .line 1340
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&ha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&va="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    :cond_a
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasSpeed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&spd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    :cond_b
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&brg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :cond_c
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->hasAltitude()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&alt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&tslr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->location:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    :cond_e
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 1359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&acid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    :cond_f
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 1362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&mxsdk="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    :cond_10
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 1365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&hsht="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_11
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 1368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&hswd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_12
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 1372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&ethnicity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->ethnicity:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_13
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 1377
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v6, "straight"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v6, "gay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v6, "bisexual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    const-string v6, "notsure"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1379
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&orientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->orientation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_15
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 1384
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&edu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->education:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    :cond_16
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    if-eqz v5, :cond_17

    .line 1387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&children="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->children:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_17
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 1390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&politics="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->politics:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    :cond_18
    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 1393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&vendor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/millennialmedia/android/MMAdView;->vendor:Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    :cond_19
    iget-boolean v5, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-eqz v5, :cond_1c

    .line 1396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&ar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    :goto_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    .line 1401
    .local v0, handshake:Lcom/millennialmedia/android/HandShake;
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/millennialmedia/android/HandShake;->getSchemesList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1402
    .local v3, schemes:Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 1403
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&appsids="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_1a
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewController;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1406
    .local v4, vid:Ljava/lang/String;
    if-eqz v4, :cond_1b

    .line 1407
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&vid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    :cond_1b
    if-eqz v2, :cond_1d

    .line 1410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1412
    :goto_1
    return-object v5

    .line 1398
    .end local v0           #handshake:Lcom/millennialmedia/android/HandShake;
    .end local v3           #schemes:Ljava/lang/String;
    .end local v4           #vid:Ljava/lang/String;
    :cond_1c
    const-string v5, "&ar=manual"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1412
    .restart local v0       #handshake:Lcom/millennialmedia/android/HandShake;
    .restart local v3       #schemes:Ljava/lang/String;
    .restart local v4       #vid:Ljava/lang/String;
    :cond_1d
    const-string v5, ""

    goto :goto_1
.end method

.method private handleCachedAdResponse(Lcom/millennialmedia/android/VideoAd;Z)V
    .locals 9
    .parameter "videoAd"
    .parameter "fetch"

    .prologue
    const/4 v8, 0x0

    .line 805
    const/4 v1, 0x0

    .line 808
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 809
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 811
    const-string v6, "MillennialMediaSDK"

    const-string v7, "The reference to the ad view was broken."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {v6}, Lcom/millennialmedia/android/PreCacheWorker;->isCurrentlyDownloading(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 817
    const-string v6, "Ad is currently being cached by the pre cache worker."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 822
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 825
    const-string v6, "MillennialMediaSDK"

    const-string v7, "New ad has expiration date in the past. Not downloading ad content."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 827
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 831
    :cond_2
    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 834
    const-string v6, "Storing ad in db."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 837
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->storeAd(Lcom/millennialmedia/android/VideoAd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 842
    if-eqz v2, :cond_9

    .line 843
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .line 863
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-static {v6, v7, p1}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 866
    const-string v6, "Downloading ad..."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 867
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V

    .line 868
    iget-object v6, p0, Lcom/millennialmedia/android/MMAdViewController;->cacheHandler:Landroid/os/Handler;

    new-instance v7, Lcom/millennialmedia/android/MMAdViewController$4;

    invoke-direct {v7, p0, p1}, Lcom/millennialmedia/android/MMAdViewController$4;-><init>(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/VideoAd;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 839
    :catch_0
    move-exception v3

    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 842
    if-eqz v1, :cond_3

    .line 843
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_1

    .line 842
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_4

    .line 843
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_4
    throw v6

    .line 849
    :cond_5
    const-string v6, "Updating ad in db."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 852
    :try_start_3
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 853
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_4
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdData(Lcom/millennialmedia/android/VideoAd;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 858
    if-eqz v2, :cond_9

    .line 859
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1

    .line 855
    :catch_1
    move-exception v3

    .restart local v3       #e:Landroid/database/sqlite/SQLiteException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 858
    if-eqz v1, :cond_3

    .line 859
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_1

    .line 858
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v6

    :goto_5
    if-eqz v1, :cond_6

    .line 859
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_6
    throw v6

    .line 876
    :cond_7
    if-nez p2, :cond_8

    .line 879
    const-string v6, "MillennialMediaSDK"

    const-string v7, "Cached ad is valid. Show."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v6

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 881
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adSuccess(Lcom/millennialmedia/android/MMAdView;)V

    .line 882
    const-string v6, "MillennialMediaSDK"

    const-string v7, "Millennial ad return success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v6, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 885
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    :cond_8
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "MillennialMediaSettings"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 891
    .local v5, settings:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 892
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "lastDownloadedAdName"

    iget-object v7, p1, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 893
    const-string v6, "lastAdViewed"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 894
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 895
    const-string v6, "Cached ad is valid. Moving it to the front of the queue."

    invoke-static {v6}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 858
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #settings:Landroid/content/SharedPreferences;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_5

    .line 855
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_4

    .line 842
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_3
    move-exception v6

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_3

    .line 839
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_2

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_9
    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_1
.end method

.method static initCachedAdDirectory(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)Ljava/io/File;
    .locals 9
    .parameter "ad"
    .parameter "context"

    .prologue
    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, cacheDir:Ljava/io/File;
    const/4 v1, 0x0

    .line 1617
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    iget-boolean v7, p0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v7, :cond_6

    .line 1619
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1621
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 1622
    .local v6, sdCard:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v7, ".mmsyscache"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1623
    .local v5, millennialMediaDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1625
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1627
    move-object v0, v5

    .line 1687
    .end local v5           #millennialMediaDir:Ljava/io/File;
    .end local v6           #sdCard:Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1689
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1690
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 1694
    .end local v4           #file:Ljava/io/File;
    :goto_1
    return-object v4

    .line 1639
    .restart local v5       #millennialMediaDir:Ljava/io/File;
    .restart local v6       #sdCard:Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1642
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdOnSDCard(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1647
    if-eqz v2, :cond_8

    .line 1648
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0

    .line 1644
    :catch_0
    move-exception v3

    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1647
    if-eqz v1, :cond_0

    .line 1648
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 1647
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v1, :cond_2

    .line 1648
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_2
    throw v7

    .line 1663
    :cond_3
    move-object v0, v5

    goto :goto_0

    .line 1669
    .end local v5           #millennialMediaDir:Ljava/io/File;
    .end local v6           #sdCard:Ljava/io/File;
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1672
    :try_start_3
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v2, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1673
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_4
    iget-object v7, p0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/millennialmedia/android/AdDatabaseHelper;->updateAdOnSDCard(Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1677
    if-eqz v2, :cond_8

    .line 1678
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0

    .line 1674
    :catch_1
    move-exception v3

    .restart local v3       #e:Landroid/database/sqlite/SQLiteException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1677
    if-eqz v1, :cond_0

    .line 1678
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 1677
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1
    move-exception v7

    :goto_5
    if-eqz v1, :cond_5

    .line 1678
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_5
    throw v7

    .line 1684
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 1693
    :cond_7
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Failed to initialized the cached ad directory."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const/4 v4, 0x0

    goto :goto_1

    .line 1677
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_5

    .line 1674
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_4

    .line 1647
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #millennialMediaDir:Ljava/io/File;
    .restart local v6       #sdCard:Ljava/io/File;
    :catchall_3
    move-exception v7

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3

    .line 1644
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v5           #millennialMediaDir:Ljava/io/File;
    .end local v6           #sdCard:Ljava/io/File;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_8
    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0
.end method

.method private playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    .locals 12
    .parameter "name"
    .parameter "adView"

    .prologue
    const/4 v11, 0x1

    .line 2242
    if-eqz p1, :cond_2

    .line 2244
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "MillennialMediaSettings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2245
    .local v7, settings:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 2246
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "lastAdViewed"

    invoke-interface {v3, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2247
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2248
    iget-object v8, p2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v8, :cond_0

    .line 2252
    :try_start_0
    iget-object v8, p2, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v8, p2}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Launch Video Player. Playing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 2258
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/millennialmedia/android/VideoPlayer;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 2259
    .local v4, intent:Landroid/content/Intent;
    const/high16 v8, 0x2400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2260
    const-string v8, "cached"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2261
    const-string v8, "adName"

    invoke-virtual {v4, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2264
    const/4 v5, 0x0

    .line 2265
    .local v5, onSDCard:Z
    const/4 v0, 0x0

    .line 2268
    .local v0, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2269
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_2
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->isAdOnSDCard(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 2280
    if-eqz v1, :cond_1

    .line 2281
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 2285
    :cond_1
    if-eqz v5, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mmsyscache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/video.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2288
    .local v6, sdCardAdVideo:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2296
    .end local v6           #sdCardAdVideo:Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2298
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #onSDCard:Z
    .end local v7           #settings:Landroid/content/SharedPreferences;
    :cond_2
    :goto_2
    return-void

    .line 2254
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v7       #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    const-string v8, "MillennialMediaSDK"

    const-string v9, "Exception raised in your MMAdListener: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2271
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v4       #intent:Landroid/content/Intent;
    .restart local v5       #onSDCard:Z
    :catch_1
    move-exception v2

    .line 2273
    .local v2, e:Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 2275
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "A database error prevented us from playing the video: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2280
    if-eqz v0, :cond_2

    .line 2281
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_2

    .line 2280
    .end local v2           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_3

    .line 2281
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_3
    throw v8

    .line 2292
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 2280
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_4

    .line 2271
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3
.end method

.method static declared-synchronized removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V
    .locals 5
    .parameter "adView"
    .parameter "isFinishing"

    .prologue
    .line 198
    const-class v2, Lcom/millennialmedia/android/MMAdViewController;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 201
    :cond_1
    if-eqz p1, :cond_3

    .line 202
    :try_start_1
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;

    .line 206
    .local v0, controller:Lcom/millennialmedia/android/MMAdViewController;
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    .line 208
    if-eqz v0, :cond_0

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 212
    if-eqz p1, :cond_2

    .line 213
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    .line 216
    :cond_2
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdViewController;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    .end local v0           #controller:Lcom/millennialmedia/android/MMAdViewController;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 204
    :cond_3
    :try_start_2
    sget-object v1, Lcom/millennialmedia/android/MMAdViewController;->controllers:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdViewController;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #controller:Lcom/millennialmedia/android/MMAdViewController;
    goto :goto_1
.end method

.method private resetAdViewSettings()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 482
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldLaunchToOverlay:Z

    .line 483
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowTitlebar:Z

    .line 484
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldShowBottomBar:Z

    .line 485
    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldEnableBottomBar:Z

    .line 486
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldMakeOverlayTransparent:Z

    .line 487
    iput v2, p0, Lcom/millennialmedia/android/MMAdViewController;->shouldResizeOverlay:I

    .line 488
    const-string v0, "Advertisement"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->overlayTitle:Ljava/lang/String;

    .line 489
    const-string v0, "bottomtotop"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->overlayTransition:Ljava/lang/String;

    .line 490
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewController;->transitionTime:J

    .line 491
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdViewController;->canAccelerate:Z

    .line 492
    return-void
.end method

.method private setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
    .locals 5
    .parameter "webContent"
    .parameter "baseUrl"
    .parameter "adView"

    .prologue
    .line 745
    invoke-virtual {p3}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 747
    .local v0, activity:Landroid/app/Activity;
    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    new-instance v2, Lcom/millennialmedia/android/MMAdViewController$2;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdViewController$2;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    .line 781
    .local v2, webViewClient:Landroid/webkit/WebViewClient;
    iget-boolean v3, p3, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    if-eqz v3, :cond_2

    .line 783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<head><meta name=\"viewport\" content=\"target-densitydpi=device-dpi\" /></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, content:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewController;->resetAdViewSettings()V

    .line 791
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/millennialmedia/android/MMAdView;->setClickable(Z)V

    .line 794
    new-instance v3, Lcom/millennialmedia/android/MMAdViewController$3;

    invoke-direct {v3, p0, v2, p2, v1}, Lcom/millennialmedia/android/MMAdViewController$3;-><init>(Lcom/millennialmedia/android/MMAdViewController;Landroid/webkit/WebViewClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 787
    .end local v1           #content:Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .restart local v1       #content:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method check(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 12
    .parameter "adView"

    .prologue
    .line 2119
    iget-object v8, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v9, "MMFullScreenAdLaunch"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 2121
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-object v9, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    iget-wide v10, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeLaunch:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2124
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;

    .line 2125
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlLaunch:Ljava/lang/String;

    .line 2126
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeLaunch:J

    .line 2127
    const/4 v8, 0x0

    .line 2204
    :goto_0
    return v8

    .line 2129
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 2132
    :cond_1
    iget-object v8, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v9, "MMFullScreenAdTransition"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 2134
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-object v9, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    iget-wide v10, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeTransition:J

    invoke-virtual {v8, v9, v10, v11}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2137
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;

    .line 2138
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlTransition:Ljava/lang/String;

    .line 2139
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeTransition:J

    .line 2140
    const/4 v8, 0x0

    goto :goto_0

    .line 2142
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 2146
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "MillennialMediaSettings"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2147
    .local v7, settings:Landroid/content/SharedPreferences;
    const-string v8, "lastDownloadedAdName"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2148
    .local v6, lastAdName:Ljava/lang/String;
    const-string v8, "lastAdViewed"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2150
    .local v0, adViewed:Z
    if-eqz v6, :cond_7

    .line 2153
    invoke-static {v6, p1}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 2155
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2158
    invoke-direct {p0, v6, p1}, Lcom/millennialmedia/android/MMAdViewController;->checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2161
    if-nez v0, :cond_8

    .line 2163
    const/4 v1, 0x0

    .line 2164
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const-wide/16 v3, 0x0

    .line 2167
    .local v3, deferredViewStart:J
    :try_start_0
    new-instance v2, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v2, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->getDeferredViewStart(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    .line 2176
    if-eqz v2, :cond_c

    .line 2177
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v1, v2

    .line 2179
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v8

    iget-object v9, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v8, v9, v3, v4}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2180
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2170
    :catch_0
    move-exception v5

    .line 2172
    .local v5, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2176
    if-eqz v1, :cond_4

    .line 2177
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_1

    .line 2176
    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_5

    .line 2177
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_5
    throw v8

    .line 2182
    :cond_6
    const-string v8, "MillennialMediaSDK"

    const-string v9, "Cached ad cannot be viewed at this time."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v3           #deferredViewStart:J
    :cond_7
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2186
    :cond_8
    const-string v8, "MillennialMediaSDK"

    const-string v9, "Cached ad already viewed."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2191
    :cond_9
    const-string v8, "MillennialMediaSDK"

    const-string v9, "Cached ad has expired."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2196
    :cond_a
    const-string v8, "MillennialMediaSDK"

    const-string v9, "Cached ad not found on the filesystem."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2201
    :cond_b
    const-string v8, "MillennialMediaSDK"

    const-string v9, "Cached ad not found in the database."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2176
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #deferredViewStart:J
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_3

    .line 2170
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_c
    move-object v1, v2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1
.end method

.method declared-synchronized chooseCachedAdOrAdCall(Z)V
    .locals 10
    .parameter "fetch"

    .prologue
    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 327
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 329
    const-string v7, "MillennialMediaSDK"

    const-string v8, "The reference to the ad view was broken."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :goto_0
    monitor-exit p0

    return-void

    .line 332
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 334
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v7

    iget-boolean v7, v7, Lcom/millennialmedia/android/HandShake;->kill:Z

    if-eqz v7, :cond_1

    .line 336
    const-string v7, "MillennialMediaSDK"

    const-string v8, "The server is no longer allowing ads."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v0           #adView:Lcom/millennialmedia/android/MMAdView;
    .end local v2           #context:Landroid/content/Context;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 341
    .restart local v0       #adView:Lcom/millennialmedia/android/MMAdView;
    .restart local v2       #context:Landroid/content/Context;
    :cond_1
    :try_start_2
    iget-boolean v7, p0, Lcom/millennialmedia/android/MMAdViewController;->requestInProgress:Z

    if-eqz v7, :cond_2

    .line 343
    const-string v7, "MillennialMediaSDK"

    const-string v8, "There is already an ad request in progress. Defering call for new ad"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v7

    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/millennialmedia/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 350
    const-string v7, "MillennialMediaSDK"

    const-string v8, "There is a download in progress. Defering call for new ad"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adFailed(Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .line 356
    :cond_3
    const-string v7, "No download in progress."

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewController;->checkForAdNotDownloaded(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 363
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adIsCaching(Lcom/millennialmedia/android/MMAdView;)V

    .line 365
    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/android/MMAdViewController;->DownloadLastAd(Lcom/millennialmedia/android/MMAdView;Z)V

    goto :goto_0

    .line 370
    :cond_4
    const-string v7, "MillennialMediaSDK"

    const-string v8, "No incomplete downloads."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewController;->cleanUpExpiredAds(Landroid/content/Context;)V

    .line 377
    if-eqz p1, :cond_5

    .line 379
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V

    goto :goto_0

    .line 384
    :cond_5
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 385
    .local v5, settings:Landroid/content/SharedPreferences;
    const-string v7, "lastDownloadedAdName"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, lastAdName:Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 390
    invoke-static {v4, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInDb(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 393
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Ad found in the database"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v4, v8}, Lcom/millennialmedia/android/MMAdViewController;->checkIfAdExistsInFilesystem(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/VideoAd;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 397
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/android/MMAdViewController;->checkIfExpired(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 400
    const-string v7, "lastAdViewed"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 401
    .local v1, adViewed:Z
    const-string v7, "MillennialMediaSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Last ad viewed?: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-nez v1, :cond_7

    .line 405
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v7

    iget-object v8, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v7, v2, v8, v4}, Lcom/millennialmedia/android/HandShake;->canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 408
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->adSuccess(Lcom/millennialmedia/android/MMAdView;)V

    .line 409
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Millennial ad return success"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, v4, v0}, Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto/16 :goto_0

    .line 416
    :cond_6
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Outside of the timeout window. Call for a new ad"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V

    goto/16 :goto_0

    .line 422
    :cond_7
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Existing ad has been viewed. Call for a new ad"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V

    goto/16 :goto_0

    .line 429
    .end local v1           #adViewed:Z
    :cond_8
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Existing ad is expired. Delete and call for a new ad"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 436
    .local v6, settings1:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 437
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "lastDownloadedAdName"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 439
    const-string v7, "Setting last ad name to NULL"

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 442
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V

    goto/16 :goto_0

    .line 447
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #settings1:Landroid/content/SharedPreferences;
    :cond_9
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Last ad can\'t be found in the file system. Download again."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lcom/millennialmedia/android/MMAdViewController;->DownloadLastAd(Lcom/millennialmedia/android/MMAdView;Z)V

    goto/16 :goto_0

    .line 455
    :cond_a
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Last ad can\'t be found in the database. Remove any files from the filesystem and call for new ad."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 460
    .restart local v6       #settings1:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 461
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "lastDownloadedAdName"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    const-string v7, "Setting last ad name to NULL"

    invoke-static {v7}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 466
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V

    goto/16 :goto_0

    .line 472
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #settings1:Landroid/content/SharedPreferences;
    :cond_b
    const-string v7, "MillennialMediaSDK"

    const-string v8, "Last ad name is null. Call for new ad."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/millennialmedia/android/MMAdViewController;->getNextAd(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method display(Lcom/millennialmedia/android/MMAdView;)Z
    .locals 9
    .parameter "adView"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 2209
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdViewController;->check(Lcom/millennialmedia/android/MMAdView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2211
    iget-object v4, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v5, "MMFullScreenAdLaunch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2213
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlLaunch:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 2214
    iput-object v6, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentLaunch:Ljava/lang/String;

    .line 2215
    iput-object v6, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlLaunch:Ljava/lang/String;

    .line 2216
    iput-wide v7, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeLaunch:J

    .line 2237
    :goto_0
    return v2

    .line 2219
    :cond_0
    iget-object v4, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v5, "MMFullScreenAdTransition"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2221
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlTransition:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    .line 2222
    iput-object v6, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedContentTransition:Ljava/lang/String;

    .line 2223
    iput-object v6, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedBaseUrlTransition:Ljava/lang/String;

    .line 2224
    iput-wide v7, p0, Lcom/millennialmedia/android/MMAdViewController;->fetchedTimeTransition:J

    goto :goto_0

    .line 2230
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "MillennialMediaSettings"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2231
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v3, "lastDownloadedAdName"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2232
    .local v0, lastAdName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 2233
    invoke-direct {p0, v0, p1}, Lcom/millennialmedia/android/MMAdViewController;->playVideo(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V

    goto :goto_0

    .end local v0           #lastAdName:Ljava/lang/String;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_2
    move v2, v3

    .line 2237
    goto :goto_0
.end method

.method handleClick(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController;->urlString:Ljava/lang/String;

    .line 907
    new-instance v0, Lcom/millennialmedia/android/MMAdViewController$5;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewController$5;-><init>(Lcom/millennialmedia/android/MMAdViewController;)V

    .line 1140
    .local v0, thread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1142
    return-void
.end method

.method pauseTimer(Z)V
    .locals 4
    .parameter "appRequested"

    .prologue
    .line 1158
    monitor-enter p0

    .line 1160
    :try_start_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-nez v0, :cond_0

    .line 1161
    monitor-exit p0

    .line 1179
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    if-eqz v0, :cond_2

    .line 1165
    if-eqz p1, :cond_1

    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    .line 1167
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 1178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1171
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/MMAdViewController;->timeResumed:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    .line 1176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 1177
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    .line 1178
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method resumeTimer(Z)V
    .locals 5
    .parameter "appRequested"

    .prologue
    .line 1193
    monitor-enter p0

    .line 1195
    :try_start_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->refreshTimerOn:Z

    if-nez v1, :cond_0

    .line 1196
    monitor-exit p0

    .line 1221
    :goto_0
    return-void

    .line 1198
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    if-nez v1, :cond_1

    .line 1199
    monitor-exit p0

    goto :goto_0

    .line 1220
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1201
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 1202
    monitor-exit p0

    goto :goto_0

    .line 1204
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1205
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_3

    .line 1207
    const-string v1, "MillennialMediaSDK"

    const-string v2, "The reference to the ad view was broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    monitor-exit p0

    goto :goto_0

    .line 1211
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    if-nez v1, :cond_4

    .line 1212
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    .line 1214
    :cond_4
    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    iget-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    iget v3, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    .line 1215
    :cond_5
    iget v1, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    .line 1216
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewController;->runnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdViewController;->timeRemaining:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdViewController;->timeResumed:J

    .line 1219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->appPaused:Z

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMAdViewController;->paused:Z

    .line 1220
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
