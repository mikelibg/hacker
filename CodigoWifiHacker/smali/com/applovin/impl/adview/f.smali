.class Lcom/applovin/impl/adview/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/applovin/impl/adview/p;

    iget-object v1, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/p;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/f;->a:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-static {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/p;->a(Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0}, Lcom/applovin/impl/adview/p;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
