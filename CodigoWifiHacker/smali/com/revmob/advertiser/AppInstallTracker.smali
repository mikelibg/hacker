.class public Lcom/revmob/advertiser/AppInstallTracker;
.super Ljava/lang/Object;
.source "AppInstallTracker.java"


# static fields
.field private static final ERROR_MESSAGE:Ljava/lang/String; = "Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com. Status: %s"

.field private static final INSTALL_URL:Ljava/lang/String; = "api/v4/mobile_apps/%s/install.json"

.field private static final REVMOB:Ljava/lang/String; = "RevMob"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private data:Lcom/revmob/android/StoredData;

.field private httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

.field private registerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "appId"

    .prologue
    .line 22
    new-instance v0, Lcom/revmob/ads/internal/HTTPHelper;

    invoke-direct {v0}, Lcom/revmob/ads/internal/HTTPHelper;-><init>()V

    new-instance v1, Lcom/revmob/android/StoredData;

    invoke-direct {v1, p1}, Lcom/revmob/android/StoredData;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/advertiser/AppInstallTracker;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/internal/HTTPHelper;Lcom/revmob/android/StoredData;)V

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/internal/HTTPHelper;Lcom/revmob/android/StoredData;)V
    .locals 3
    .parameter "activity"
    .parameter "appId"
    .parameter "helper"
    .parameter "data"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "RevMob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracking install with SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/revmob/ads/EnvironmentConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p1, p0, Lcom/revmob/advertiser/AppInstallTracker;->activity:Landroid/app/Activity;

    .line 28
    iput-object p4, p0, Lcom/revmob/advertiser/AppInstallTracker;->data:Lcom/revmob/android/StoredData;

    .line 29
    iput-object p2, p0, Lcom/revmob/advertiser/AppInstallTracker;->appId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/revmob/advertiser/AppInstallTracker;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public asyncRegisterInstall()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/revmob/advertiser/AppInstallTracker$1;

    invoke-direct {v1, p0}, Lcom/revmob/advertiser/AppInstallTracker$1;-><init>(Lcom/revmob/advertiser/AppInstallTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/revmob/advertiser/AppInstallTracker;->registerThread:Ljava/lang/Thread;

    .line 39
    iget-object v0, p0, Lcom/revmob/advertiser/AppInstallTracker;->registerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method public registerInstall()V
    .locals 8

    .prologue
    .line 48
    :try_start_0
    const-string v3, "RevMob"

    const-string v4, "Registering Install"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v3, p0, Lcom/revmob/advertiser/AppInstallTracker;->data:Lcom/revmob/android/StoredData;

    invoke-virtual {v3}, Lcom/revmob/android/StoredData;->isAlreadyTracked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const-string v3, "RevMob"

    const-string v4, "Install already marked as registered, not registered."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/revmob/advertiser/AppInstallTracker;->activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/revmob/ads/EnvironmentConfig;->defaultJsonPayload(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, payload:Ljava/lang/String;
    iget-object v3, p0, Lcom/revmob/advertiser/AppInstallTracker;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

    invoke-virtual {p0}, Lcom/revmob/advertiser/AppInstallTracker;->url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/revmob/ads/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 56
    .local v2, statusCode:I
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    const/16 v3, 0xca

    if-ne v2, v3, :cond_2

    .line 57
    :cond_1
    const-string v3, "RevMob"

    const-string v4, "Install registered on server"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v3, p0, Lcom/revmob/advertiser/AppInstallTracker;->data:Lcom/revmob/android/StoredData;

    invoke-virtual {v3}, Lcom/revmob/android/StoredData;->markAsTracked()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1           #payload:Ljava/lang/String;
    .end local v2           #statusCode:I
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Throwable;
    const-string v3, "RevMob"

    const-string v4, "Could not register install."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/lang/Throwable;
    .restart local v1       #payload:Ljava/lang/String;
    .restart local v2       #statusCode:I
    :cond_2
    :try_start_1
    const-string v3, "RevMob"

    const-string v4, "Install not registered on server. Did you set a valid App ID? If not, collect one at http://revmob.com. Status: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method url()Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    const-string v0, "https"

    const-string v1, "api/v4/mobile_apps/%s/install.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/revmob/advertiser/AppInstallTracker;->appId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/revmob/ads/EnvironmentConfig;->getFullServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
