.class Lcom/applovin/impl/adview/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0}, Lcom/applovin/impl/adview/p;->c(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0}, Lcom/applovin/impl/adview/p;->c(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v1}, Lcom/applovin/impl/adview/p;->d(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/Logger;

    move-result-object v1

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Exception while running app display callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0}, Lcom/applovin/impl/adview/p;->b(Lcom/applovin/impl/adview/p;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v1}, Lcom/applovin/impl/adview/p;->a(Lcom/applovin/impl/adview/p;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0}, Lcom/applovin/impl/adview/p;->c(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v0}, Lcom/applovin/impl/adview/p;->c(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/q;->a:Lcom/applovin/impl/adview/p;

    invoke-static {v1}, Lcom/applovin/impl/adview/p;->d(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/Logger;

    move-result-object v1

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Exception while running app display callback"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
