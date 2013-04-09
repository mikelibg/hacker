.class public Lcom/revmob/ads/link/LinkFetcher;
.super Lcom/revmob/ads/internal/AdFetcher;
.source "LinkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "url"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/revmob/ads/internal/AdFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/link/LinkFetcher;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/revmob/ads/link/LinkFetcher;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/revmob/ads/link/LinkFetcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/revmob/ads/link/LinkFetcher;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/revmob/ads/link/LinkFetcher;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/revmob/ads/link/LinkFetcher;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lcom/revmob/ads/internal/Ad;
    .locals 1
    .parameter "json"

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method gotoMarket(Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 35
    new-instance v0, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;-><init>(Lcom/revmob/ads/link/LinkFetcher;Lcom/revmob/ads/RevMobAdsListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/link/LinkFetcher$AsyncRedirector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method public gotoMarketWithSessionVerification(Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 27
    invoke-static {}, Lcom/revmob/RevMob;->hasSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    const-string v0, "RevMob"

    const-string v1, "Call RevMobAds.startSession(activity, APPLICATION_ID) on application start/resume. It will help us to improve tracking and increase the eCPM."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/revmob/ads/link/LinkFetcher;->gotoMarket(Lcom/revmob/ads/RevMobAdsListener;)V

    goto :goto_0
.end method
