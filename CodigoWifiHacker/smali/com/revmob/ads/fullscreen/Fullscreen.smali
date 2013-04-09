.class public Lcom/revmob/ads/fullscreen/Fullscreen;
.super Ljava/lang/Object;
.source "Fullscreen.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

.field private fetcher:Lcom/revmob/ads/internal/AdFetcher;

.field private listener:Lcom/revmob/ads/internal/OnLoadListener;

.field private revMobListener:Lcom/revmob/ads/RevMobAdsListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "fetchUrl"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/revmob/ads/fullscreen/Fullscreen$1;

    invoke-direct {v0, p0}, Lcom/revmob/ads/fullscreen/Fullscreen$1;-><init>(Lcom/revmob/ads/fullscreen/Fullscreen;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->listener:Lcom/revmob/ads/internal/OnLoadListener;

    .line 53
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->activity:Landroid/app/Activity;

    .line 54
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenFetcher;

    invoke-direct {v0, p1, p2}, Lcom/revmob/ads/fullscreen/FullscreenFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->fetcher:Lcom/revmob/ads/internal/AdFetcher;

    .line 55
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->fetcher:Lcom/revmob/ads/internal/AdFetcher;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->listener:Lcom/revmob/ads/internal/OnLoadListener;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/internal/AdFetcher;->fetchWithSessionVerification(Lcom/revmob/ads/internal/OnLoadListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/fullscreen/FullscreenAd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    return-object v0
.end method

.method static synthetic access$002(Lcom/revmob/ads/fullscreen/Fullscreen;Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/fullscreen/FullscreenAd;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/RevMobAdsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;

    return-object v0
.end method


# virtual methods
.method public isAdLoaded()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRevMobListener(Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 0
    .parameter "revMobListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;

    .line 60
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/Fullscreen;->isAdLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->activity:Landroid/app/Activity;

    const-class v2, Lcom/revmob/ads/fullscreen/FullscreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.revmob.ads.fullscreen.adUrl"

    iget-object v2, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-virtual {v2}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getTargetURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/Fullscreen;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 78
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
