.class Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$MoPubInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wifi/hacker/cracker/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoPubInterstitialListen"
.end annotation


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field public mIsLetangInterstitial:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/mopub/mobileads/MoPubInterstitial;Z)V
    .locals 0
    .parameter "activity"
    .parameter "interstitial"
    .parameter "isLetangInterstitial"

    .prologue
    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1529
    iput-boolean p3, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mIsLetangInterstitial:Z

    .line 1530
    iput-object p1, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mActivity:Landroid/app/Activity;

    .line 1531
    iput-object p2, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 1532
    return-void
.end method


# virtual methods
.method public OnInterstitialFailed()V
    .locals 2

    .prologue
    .line 1547
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1550
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mIsLetangInterstitial:Z

    #calls: Lcom/wifi/hacker/cracker/BootReceiver;->showDefaultInterstitial(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lcom/wifi/hacker/cracker/BootReceiver;->access$1000(Landroid/app/Activity;Z)V

    .line 1551
    return-void
.end method

.method public OnInterstitialLoaded()V
    .locals 1

    .prologue
    .line 1536
    invoke-static {}, Lcom/wifi/hacker/cracker/BootReceiver;->hideLoader()V

    .line 1539
    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wifi/hacker/cracker/BootReceiver$MoPubInterstitialListen;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 1543
    :cond_0
    return-void
.end method
