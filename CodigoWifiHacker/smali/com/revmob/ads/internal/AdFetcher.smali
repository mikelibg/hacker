.class public abstract Lcom/revmob/ads/internal/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"


# static fields
.field private static final DEFAULT_DOWNLOAD_ERROR_MESSAGE:Ljava/lang/String; = "RevMob did not asnwered as expected."

.field private static final LOG_MESSAGES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final NO_ADS_FOR_DEVICE:Ljava/lang/String; = "Ad retrieval failed: No ads for this device/country right now"

.field private static final PARSE_ERROR_MESSAGE:Ljava/lang/String; = "Error on parse response from server."

.field protected static final REVMOB:Ljava/lang/String; = "RevMob"

.field protected static final SESSION_WARNING:Ljava/lang/String; = "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."


# instance fields
.field protected activity:Landroid/app/Activity;

.field private fetchThread:Ljava/lang/Thread;

.field protected httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    .line 26
    sget-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Ad retrieval failed: No ads for this device/country right now"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No ad retrieved: did you set a valid App ID? Get one at http://revmob.com."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x199

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No ad retrieved: did you set a valid Placement ID? Get one at http://revmob.com."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x1a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Request requirements did not met. Did you set required permissions?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unexpected server error."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "url"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/revmob/ads/internal/AdFetcher;->activity:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/revmob/ads/internal/AdFetcher;->url:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/revmob/ads/internal/HTTPHelper;

    invoke-direct {v0}, Lcom/revmob/ads/internal/HTTPHelper;-><init>()V

    iput-object v0, p0, Lcom/revmob/ads/internal/AdFetcher;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

    .line 46
    return-void
.end method


# virtual methods
.method public abstract build(Ljava/lang/String;)Lcom/revmob/ads/internal/Ad;
.end method

.method public fetch(Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/revmob/ads/internal/AdFetcher;->getFetchEntity()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, entity:Ljava/lang/String;
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching Ad in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/revmob/ads/EnvironmentConfig;->getSdkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching Ad with SDK version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/revmob/ads/EnvironmentConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v1, Lcom/revmob/ads/internal/AdFetcher$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/revmob/ads/internal/AdFetcher$1;-><init>(Lcom/revmob/ads/internal/AdFetcher;Ljava/lang/String;Lcom/revmob/ads/internal/OnLoadListener;)V

    iput-object v1, p0, Lcom/revmob/ads/internal/AdFetcher;->fetchThread:Ljava/lang/Thread;

    .line 68
    iget-object v1, p0, Lcom/revmob/ads/internal/AdFetcher;->fetchThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 69
    return-void
.end method

.method public fetchWithSessionVerification(Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 50
    invoke-static {}, Lcom/revmob/RevMob;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "RevMob"

    const-string v1, "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sget-object v0, Lcom/revmob/ads/internal/LoadError;->NOT_STARTED_SESSION:Lcom/revmob/ads/internal/LoadError;

    const-string v1, "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."

    invoke-interface {p1, v0, v1}, Lcom/revmob/ads/internal/OnLoadListener;->onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/revmob/ads/internal/AdFetcher;->fetch(Lcom/revmob/ads/internal/OnLoadListener;)V

    goto :goto_0
.end method

.method public getFetchEntity()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/revmob/ads/internal/AdFetcher;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/revmob/ads/EnvironmentConfig;->defaultJsonPayload(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method handleDownloadError(ILcom/revmob/ads/internal/OnLoadListener;)V
    .locals 3
    .parameter "statusCode"
    .parameter "listener"

    .prologue
    .line 103
    sget-object v1, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/revmob/ads/internal/AdFetcher;->LOG_MESSAGES:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 105
    .local v0, message:Ljava/lang/String;
    :goto_0
    const-string v1, "RevMob"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v1, Lcom/revmob/ads/internal/LoadError;->DOWNLOAD_ERROR:Lcom/revmob/ads/internal/LoadError;

    invoke-interface {p2, v1, v0}, Lcom/revmob/ads/internal/OnLoadListener;->onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V

    .line 107
    return-void

    .line 103
    .end local v0           #message:Ljava/lang/String;
    :cond_0
    const-string v0, "RevMob did not asnwered as expected."

    goto :goto_0
.end method

.method handleResponse(Lorg/apache/http/HttpResponse;Lcom/revmob/ads/internal/OnLoadListener;)V
    .locals 5
    .parameter "response"
    .parameter "listener"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Lcom/revmob/ads/internal/AdFetcher;->handleDownloadError(ILcom/revmob/ads/internal/OnLoadListener;)V

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 87
    .local v2, statusCode:I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 88
    invoke-virtual {p0, v2, p2}, Lcom/revmob/ads/internal/AdFetcher;->handleDownloadError(ILcom/revmob/ads/internal/OnLoadListener;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/revmob/ads/internal/HTTPHelper;->encodedResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, encodedResponseBody:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/revmob/ads/internal/AdFetcher;->build(Ljava/lang/String;)Lcom/revmob/ads/internal/Ad;

    move-result-object v0

    .line 92
    .local v0, ad:Lcom/revmob/ads/internal/Ad;
    if-nez v0, :cond_2

    .line 93
    const-string v3, "RevMob"

    const-string v4, "Error on parse response from server."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v3, Lcom/revmob/ads/internal/LoadError;->PARSE_FAILED:Lcom/revmob/ads/internal/LoadError;

    const-string v4, "Error on parse response from server."

    invoke-interface {p2, v3, v4}, Lcom/revmob/ads/internal/OnLoadListener;->onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    const-string v3, "RevMob"

    const-string v4, "Ad retrieved"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-interface {p2, v0}, Lcom/revmob/ads/internal/OnLoadListener;->onAdReceived(Lcom/revmob/ads/internal/Ad;)V

    goto :goto_0
.end method

.method public setHttpHelper(Lcom/revmob/ads/internal/HTTPHelper;)V
    .locals 0
    .parameter "httpHelper"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/revmob/ads/internal/AdFetcher;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

    .line 79
    return-void
.end method
