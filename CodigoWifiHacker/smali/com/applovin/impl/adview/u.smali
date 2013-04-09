.class Lcom/applovin/impl/adview/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lcom/applovin/sdk/Logger;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/p;Lcom/applovin/sdk/Logger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No logger specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/u;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/applovin/impl/adview/u;->b:Lcom/applovin/sdk/Logger;

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/p;->b(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/u;->b:Lcom/applovin/sdk/Logger;

    const-string v1, "InterstitialAdDialog"

    const-string v2, "Interstitial ad view has been garbadge collected by the time an ad was recieved"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/p;->a()V

    :cond_0
    return-void
.end method
