.class final Lcom/applovin/adview/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/applovin/sdk/AppLovinSdk;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/adview/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/applovin/adview/a;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/applovin/adview/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/bootstrap/SdkBootstrap;

    move-result-object v0

    const-class v1, Lcom/applovin/adview/InterstitialAdDialogCreator;

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->loadImplementation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/InterstitialAdDialogCreator;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/adview/a;->b:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v2, p0, Lcom/applovin/adview/a;->a:Landroid/app/Activity;

    invoke-interface {v0, v1, v2}, Lcom/applovin/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show()V

    :cond_0
    return-void
.end method
