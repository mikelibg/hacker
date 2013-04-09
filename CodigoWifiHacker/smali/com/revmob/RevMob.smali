.class public Lcom/revmob/RevMob;
.super Ljava/lang/Object;
.source "RevMob.java"


# static fields
.field private static final ADS_PATH:Ljava/lang/String; = "api/v4/mobile_apps/%s/%s/fetch.json"

.field private static final PLACEMENT_ADS_PATH:Ljava/lang/String; = "api/v4/mobile_apps/%s/placements/%s/%s/fetch.json"

.field private static final SESSIONS_PATH:Ljava/lang/String; = "api/v4/mobile_apps/%s/sessions.json"

.field static final TIME_DIFF_IN_MILLISECONDS:I = 0x3e8

.field protected static session:Lcom/revmob/RevMob;


# instance fields
.field private appId:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private httpHelper:Lcom/revmob/ads/internal/HTTPHelper;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "appId"

    .prologue
    .line 84
    new-instance v0, Lcom/revmob/ads/internal/HTTPHelper;

    invoke-direct {v0}, Lcom/revmob/ads/internal/HTTPHelper;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/revmob/RevMob;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/internal/HTTPHelper;)V

    .line 85
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/internal/HTTPHelper;)V
    .locals 1
    .parameter "activity"
    .parameter "appId"
    .parameter "helper"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/revmob/RevMob;->createdAt:Ljava/util/Date;

    .line 89
    iput-object p2, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lcom/revmob/RevMob;->registerInstall(Landroid/app/Activity;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/RevMob;)Lcom/revmob/ads/internal/HTTPHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/revmob/RevMob;->httpHelper:Lcom/revmob/ads/internal/HTTPHelper;

    return-object v0
.end method

.method public static canReplaceExistentSession(Ljava/lang/String;)Z
    .locals 3
    .parameter "appId"

    .prologue
    const/4 v0, 0x0

    .line 73
    sget-object v1, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-nez v1, :cond_1

    .line 74
    const/4 v0, 0x1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    sget-object v1, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    iget-object v1, v1, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    if-eq v1, p0, :cond_0

    .line 77
    const-string v1, "RevMob"

    const-string v2, "You can use just one App Id per application."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasSession()Z
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static start(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/RevMob;
    .locals 1
    .parameter "activity"
    .parameter "appId"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0}, Lcom/revmob/RevMob;->start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    return-object v0
.end method

.method protected static start(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/revmob/RevMob;
    .locals 1
    .parameter "activity"
    .parameter "appId"
    .parameter "sdkName"
    .parameter "sdkVersion"

    .prologue
    .line 56
    invoke-static {p2}, Lcom/revmob/ads/EnvironmentConfig;->setSdkName(Ljava/lang/String;)V

    .line 57
    invoke-static {p3}, Lcom/revmob/ads/EnvironmentConfig;->setSdkName(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/revmob/RevMob;->canReplaceExistentSession(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/revmob/RevMob;

    invoke-direct {v0, p0, p1}, Lcom/revmob/RevMob;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    .line 60
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    invoke-virtual {v0, p0}, Lcom/revmob/RevMob;->postStartSession(Landroid/app/Activity;)V

    .line 62
    :cond_0
    sget-object v0, Lcom/revmob/RevMob;->session:Lcom/revmob/RevMob;

    return-object v0
.end method


# virtual methods
.method createAdFetchUrlInMobileApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "adUnit"
    .parameter "appId"

    .prologue
    .line 350
    const-string v1, "api/v4/mobile_apps/%s/%s/fetch.json"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, path:Ljava/lang/String;
    const-string v1, "https"

    invoke-static {v1, v0}, Lcom/revmob/ads/EnvironmentConfig;->getFullServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method createAdFetchUrlInPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "adUnit"
    .parameter "placementId"

    .prologue
    .line 355
    const-string v1, "api/v4/mobile_apps/%s/placements/%s/%s/fetch.json"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, path:Ljava/lang/String;
    const-string v1, "https"

    invoke-static {v1, v0}, Lcom/revmob/ads/EnvironmentConfig;->getFullServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public createBanner(Landroid/app/Activity;)Lcom/revmob/ads/banner/Banner;
    .locals 1
    .parameter "activity"

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)Lcom/revmob/ads/banner/Banner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Lcom/revmob/ads/RevMobAdsListener;)Lcom/revmob/ads/banner/Banner;
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)Lcom/revmob/ads/banner/Banner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/banner/Banner;
    .locals 1
    .parameter "activity"
    .parameter "placementId"

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/revmob/RevMob;->createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)Lcom/revmob/ads/banner/Banner;

    move-result-object v0

    return-object v0
.end method

.method public createBanner(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)Lcom/revmob/ads/banner/Banner;
    .locals 2
    .parameter "activity"
    .parameter "placementId"
    .parameter "listener"

    .prologue
    .line 233
    new-instance v0, Lcom/revmob/ads/banner/Banner;

    const-string v1, "banners"

    invoke-virtual {p0, v1, p2}, Lcom/revmob/RevMob;->fetchUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3}, Lcom/revmob/ads/banner/Banner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V

    return-object v0
.end method

.method public createFullscreen(Landroid/app/Activity;)Lcom/revmob/ads/fullscreen/Fullscreen;
    .locals 1
    .parameter "activity"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/fullscreen/Fullscreen;

    move-result-object v0

    return-object v0
.end method

.method public createFullscreen(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/fullscreen/Fullscreen;
    .locals 2
    .parameter "activity"
    .parameter "placementId"

    .prologue
    .line 177
    new-instance v0, Lcom/revmob/ads/fullscreen/Fullscreen;

    const-string v1, "fullscreens"

    invoke-virtual {p0, v1, p2}, Lcom/revmob/RevMob;->fetchUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/revmob/ads/fullscreen/Fullscreen;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method fetchUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "adUnit"
    .parameter "placementId"

    .prologue
    .line 344
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/revmob/RevMob;->createAdFetchUrlInPlacement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, fetchUrl:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 344
    .end local v0           #fetchUrl:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/revmob/RevMob;->createAdFetchUrlInMobileApp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/revmob/RevMob;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public openAdLink(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0, v0}, Lcom/revmob/RevMob;->openAdLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V

    .line 246
    return-void
.end method

.method public openAdLink(Landroid/app/Activity;Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 1
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/revmob/RevMob;->openAdLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V

    .line 264
    return-void
.end method

.method public openAdLink(Landroid/app/Activity;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 2
    .parameter "activity"
    .parameter "placementId"
    .parameter "listener"

    .prologue
    .line 285
    new-instance v0, Lcom/revmob/ads/link/LinkFetcher;

    const-string v1, "links"

    invoke-virtual {p0, v1, p2}, Lcom/revmob/RevMob;->fetchUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/revmob/ads/link/LinkFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 286
    .local v0, linkFetcher:Lcom/revmob/ads/link/LinkFetcher;
    new-instance v1, Lcom/revmob/RevMob$2;

    invoke-direct {v1, p0, v0, p3}, Lcom/revmob/RevMob$2;-><init>(Lcom/revmob/RevMob;Lcom/revmob/ads/link/LinkFetcher;Lcom/revmob/ads/RevMobAdsListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    return-void
.end method

.method public postStartSession(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 370
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/revmob/RevMob$3;

    invoke-direct {v1, p0, p1}, Lcom/revmob/RevMob$3;-><init>(Lcom/revmob/RevMob;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 380
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 381
    return-void
.end method

.method public printEnvironmentInformation(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 329
    new-instance v0, Lcom/revmob/android/DeviceInformation;

    invoke-direct {v0, p1}, Lcom/revmob/android/DeviceInformation;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, info:Lcom/revmob/android/DeviceInformation;
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Simulator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/revmob/android/DeviceInformation;->isSimulator()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OS Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manufacturer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getAndroidID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getMobileID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAC Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getMACAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/revmob/android/DeviceInformation;->getNetworkConnectionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/revmob/android/DeviceInformation;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v1, "RevMob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/revmob/android/DeviceInformation;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method registerInstall(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 365
    new-instance v0, Lcom/revmob/advertiser/AppInstallTracker;

    iget-object v1, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/revmob/advertiser/AppInstallTracker;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 366
    .local v0, tracker:Lcom/revmob/advertiser/AppInstallTracker;
    invoke-virtual {v0}, Lcom/revmob/advertiser/AppInstallTracker;->asyncRegisterInstall()V

    .line 367
    return-void
.end method

.method public showFullscreenAd(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/revmob/RevMob;->showFullscreenAd(Landroid/app/Activity;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public showFullscreenAd(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "placementId"

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/revmob/RevMob;->createFullscreen(Landroid/app/Activity;Ljava/lang/String;)Lcom/revmob/ads/fullscreen/Fullscreen;

    move-result-object v0

    .line 132
    .local v0, fullscreen:Lcom/revmob/ads/fullscreen/Fullscreen;
    new-instance v1, Lcom/revmob/RevMob$1;

    invoke-direct {v1, p0, v0}, Lcom/revmob/RevMob$1;-><init>(Lcom/revmob/RevMob;Lcom/revmob/ads/fullscreen/Fullscreen;)V

    .line 152
    .local v1, listener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/Fullscreen;->setRevMobListener(Lcom/revmob/ads/RevMobAdsListener;)V

    .line 153
    return-void
.end method

.method public showPopup(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/revmob/RevMob;->showPopup(Landroid/app/Activity;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public showPopup(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "placementId"

    .prologue
    const/4 v2, 0x0

    .line 324
    const-string v0, "pop_ups"

    invoke-virtual {p0, v0, p2}, Lcom/revmob/RevMob;->fetchUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/revmob/ads/popup/Popup;->SHOW_IN_UI_THREAD_ON_SUCCESS_LISTENER:Lcom/revmob/ads/internal/OnLoadListener;

    invoke-static {p1, v0, v2, v2, v1}, Lcom/revmob/ads/popup/Popup;->fetchAdvertisement(Landroid/app/Activity;Ljava/lang/String;IILcom/revmob/ads/internal/OnLoadListener;)V

    .line 326
    return-void
.end method

.method startSessionUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 360
    const-string v1, "api/v4/mobile_apps/%s/sessions.json"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/revmob/RevMob;->appId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, path:Ljava/lang/String;
    const-string v1, "https"

    invoke-static {v1, v0}, Lcom/revmob/ads/EnvironmentConfig;->getFullServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
