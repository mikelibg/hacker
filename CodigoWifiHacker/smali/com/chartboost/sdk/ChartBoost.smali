.class public Lcom/chartboost/sdk/ChartBoost;
.super Ljava/lang/Object;
.source "ChartBoost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/ChartBoost$GenericConnection;,
        Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOCATION:Ljava/lang/String; = "Default"

.field public static final TAG:Ljava/lang/String; = "ChartBoost"

.field private static sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

.field private static timeoutConnect:I

.field private static timeoutRead:I


# instance fields
.field protected activityHeight:I

.field protected activityWidth:I

.field private appId:Ljava/lang/String;

.field private appSignature:Ljava/lang/String;

.field private cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private connectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

.field public preloadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x7530

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 36
    sput v1, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    .line 37
    sput v1, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/ChartBoost;->preloadTime:J

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    .line 39
    iput v2, p0, Lcom/chartboost/sdk/ChartBoost;->activityWidth:I

    .line 40
    iput v2, p0, Lcom/chartboost/sdk/ChartBoost;->activityHeight:I

    .line 101
    return-void
.end method

.method static synthetic access$0(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2(Lcom/chartboost/sdk/ChartBoost;Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    return-void
.end method

.method private cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z
    .locals 1
    .parameter "viewType"
    .parameter "location"

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "viewType"
    .parameter "location"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method private getConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .locals 3
    .parameter "viewType"
    .parameter "location"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    return-object v0
.end method

.method public static declared-synchronized getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;
    .locals 3
    .parameter "context"

    .prologue
    .line 89
    const-class v1, Lcom/chartboost/sdk/ChartBoost;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/chartboost/sdk/ChartBoost;

    invoke-direct {v0}, Lcom/chartboost/sdk/ChartBoost;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    .line 91
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 93
    const-string v0, "ChartBoost"

    const-string v2, "Chartboost context should be instance of activity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;

    iput-object p0, v0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    .line 96
    sget-object v0, Lcom/chartboost/sdk/ChartBoost;->sharedChartBoost:Lcom/chartboost/sdk/ChartBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeCallbackFailed(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 1
    .parameter "viewType"
    .parameter "location"

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 272
    invoke-direct {p0, p1, p2, v0}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    .line 274
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v0, :cond_1

    .line 276
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadInterstitial()V

    .line 280
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoostDelegate;->didFailToLoadMoreApps()V

    .line 285
    :cond_1
    return-void
.end method

.method private loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)V
    .locals 3
    .parameter "response"
    .parameter "type"

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-class v2, Lcom/chartboost/sdk/CBDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, i:Landroid/content/Intent;
    const-string v1, "bk_type"

    invoke-virtual {p2}, Lcom/chartboost/sdk/CBWebView$CBViewType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v1, "bk_cfgo"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method private putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "viewType"
    .parameter "location"
    .parameter "object"

    .prologue
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, key:Ljava/lang/String;
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V
    .locals 3
    .parameter "viewType"
    .parameter "location"
    .parameter "object"

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, key:Ljava/lang/String;
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V
    .locals 7
    .parameter "viewType"
    .parameter "location"

    .prologue
    const/4 v4, 0x0

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 340
    .local v0, cache:Lorg/json/JSONObject;
    invoke-direct {p0, p1, p2, v4}, Lcom/chartboost/sdk/ChartBoost;->putCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 341
    invoke-direct {p0, p1, p2, v4}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    .line 347
    :try_start_0
    sget-object v4, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v4, :cond_0

    .line 350
    new-instance v3, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v5, "api"

    const-string v6, "show"

    invoke-direct {v3, v4, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .local v3, request:Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 352
    const-string v4, "ad_id"

    const-string v5, "ad_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v2, Lcom/chartboost/sdk/ChartBoost$GenericConnection;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v4}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    .line 356
    .local v2, gc:Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v2           #gc:Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    .end local v3           #request:Lcom/chartboost/sdk/CBAPIRequest;
    :cond_0
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/ChartBoost;->loadChartBoostView(Lorg/json/JSONObject;Lcom/chartboost/sdk/CBWebView$CBViewType;)V

    .line 372
    return-void

    .line 364
    :catch_0
    move-exception v1

    .line 365
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ChartBoost"

    const-string v5, "error generating request!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .parameter "viewType"
    .parameter "location"
    .parameter "shouldCache"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 290
    sget-object v7, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v7, :cond_1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 291
    .local v0, isInterstitial:Ljava/lang/Boolean;
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->showCache(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_1
    return-void

    .end local v0           #isInterstitial:Ljava/lang/Boolean;
    :cond_1
    move v5, v6

    .line 290
    goto :goto_0

    .line 296
    .restart local v0       #isInterstitial:Ljava/lang/Boolean;
    :cond_2
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v5, :cond_3

    .line 297
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestInterstitial()Z

    move-result v5

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 298
    .local v4, shouldShowView:Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    .end local v4           #shouldShowView:Ljava/lang/Boolean;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/ChartBoost;->getConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    move-result-object v1

    .line 302
    .local v1, ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    if-nez v1, :cond_9

    .line 304
    new-instance v3, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v7, "api"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "get"

    :goto_3
    invoke-direct {v3, v6, v7, v5}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .local v3, request:Lcom/chartboost/sdk/CBAPIRequest;
    :try_start_0
    invoke-virtual {v3}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "location"

    invoke-virtual {v3, v5, p2}, Lcom/chartboost/sdk/CBAPIRequest;->appendBodyArgument(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_4
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v6, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;

    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    .end local v1           #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .local v2, ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    .line 312
    sget-object v5, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    if-ne p1, v5, :cond_5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    .line 313
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    if-eqz v5, :cond_8

    .line 315
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldDisplayLoadingViewForMoreApps()Z

    move-result v5

    iput-boolean v5, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldShowProgress:Z

    .line 319
    :cond_5
    :goto_4
    iput-object p1, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->viewType:Lcom/chartboost/sdk/CBWebView$CBViewType;

    .line 320
    iput-object p2, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->location:Ljava/lang/String;

    .line 321
    invoke-direct {p0, p1, p2, v2}, Lcom/chartboost/sdk/ChartBoost;->putConnection(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;)V

    .line 322
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v5}, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2           #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .restart local v1       #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    goto :goto_1

    .line 297
    .end local v1           #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .end local v3           #request:Lcom/chartboost/sdk/CBAPIRequest;
    :cond_6
    iget-object v5, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    invoke-virtual {v5}, Lcom/chartboost/sdk/ChartBoostDelegate;->shouldRequestMoreApps()Z

    move-result v5

    goto :goto_2

    .line 304
    .restart local v1       #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    :cond_7
    const-string v5, "more"

    goto :goto_3

    .line 317
    .end local v1           #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .restart local v2       #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .restart local v3       #request:Lcom/chartboost/sdk/CBAPIRequest;
    :cond_8
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, v2, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldShowProgress:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 330
    .end local v2           #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    .end local v3           #request:Lcom/chartboost/sdk/CBAPIRequest;
    .restart local v1       #ldc:Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;
    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v1, Lcom/chartboost/sdk/ChartBoost$LoadDataConnection;->shouldCache:Z

    goto/16 :goto_1

    .line 323
    .restart local v3       #request:Lcom/chartboost/sdk/CBAPIRequest;
    :catch_1
    move-exception v5

    goto/16 :goto_1
.end method


# virtual methods
.method public cacheInterstitial()V
    .locals 3

    .prologue
    .line 156
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 157
    return-void
.end method

.method public cacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 163
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    return-void
.end method

.method public cacheMoreApps()V
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->cacheMap:Ljava/util/Map;

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->connectionMap:Ljava/util/Map;

    .line 413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/ChartBoost;->preloadTime:J

    .line 414
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDelegate()Lcom/chartboost/sdk/ChartBoostDelegate;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    return-object v0
.end method

.method public getTimeoutConnect()I
    .locals 1

    .prologue
    .line 429
    sget v0, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    return v0
.end method

.method public getTimeoutRead()I
    .locals 1

    .prologue
    .line 433
    sget v0, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    return v0
.end method

.method public hasCachedInterstitial()Z
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 202
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedMoreApps()Z
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/ChartBoost;->cacheExists(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public install()V
    .locals 6

    .prologue
    .line 108
    :try_start_0
    new-instance v2, Lcom/chartboost/sdk/CBAPIRequest;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    const-string v4, "api"

    const-string v5, "install"

    invoke-direct {v2, v3, v4, v5}, Lcom/chartboost/sdk/CBAPIRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v2, request:Lcom/chartboost/sdk/CBAPIRequest;
    invoke-virtual {v2}, Lcom/chartboost/sdk/CBAPIRequest;->appendDeviceInfoParams()V

    .line 110
    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/CBAPIRequest;->sign(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/chartboost/sdk/ChartBoost$GenericConnection;

    iget-object v3, p0, Lcom/chartboost/sdk/ChartBoost;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;-><init>(Lcom/chartboost/sdk/ChartBoost;Landroid/content/Context;)V

    .line 112
    .local v1, gc:Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/chartboost/sdk/CBAPIRequest;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/ChartBoost$GenericConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1           #gc:Lcom/chartboost/sdk/ChartBoost$GenericConnection;
    .end local v2           #request:Lcom/chartboost/sdk/CBAPIRequest;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setAppSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "appSignature"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->appSignature:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 3
    .parameter "time_millis"

    .prologue
    const/16 v2, 0x2710

    .line 418
    if-ge p1, v2, :cond_0

    const-string v0, "ChartBoost"

    const-string v1, "Timeout less than minimum of 10000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/ChartBoost;->timeoutConnect:I

    .line 420
    return-void
.end method

.method public setDelegate(Lcom/chartboost/sdk/ChartBoostDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/chartboost/sdk/ChartBoost;->delegate:Lcom/chartboost/sdk/ChartBoostDelegate;

    .line 81
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 3
    .parameter "time_millis"

    .prologue
    const/16 v2, 0x2710

    .line 424
    if-ge p1, v2, :cond_0

    const-string v0, "ChartBoost"

    const-string v1, "Timeout less than minimum of 10000 milliseconds"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/chartboost/sdk/ChartBoost;->timeoutRead:I

    .line 426
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .prologue
    .line 141
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 148
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeInterstitial:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    return-void
.end method

.method public showMoreApps()V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/chartboost/sdk/CBWebView$CBViewType;->CBViewTypeMoreApps:Lcom/chartboost/sdk/CBWebView$CBViewType;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/chartboost/sdk/ChartBoost;->showView(Lcom/chartboost/sdk/CBWebView$CBViewType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 171
    return-void
.end method
