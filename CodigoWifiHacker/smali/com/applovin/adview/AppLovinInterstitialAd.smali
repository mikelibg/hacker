.class public Lcom/applovin/adview/AppLovinInterstitialAd;
.super Landroid/view/View;


# instance fields
.field private a:Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/adview/AppLovinInterstitialAd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialAd;->a:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/bootstrap/SdkBootstrap;

    move-result-object v0

    const-class v2, Lcom/applovin/adview/InterstitialAdDialogCreator;

    invoke-virtual {v0, v2}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->loadImplementation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/InterstitialAdDialogCreator;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/applovin/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialAd;->a:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    :cond_0
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->setVisibility(I)V

    return-void

    :cond_1
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to create AppLovin interstitial dialog. The view was not created from an activity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/bootstrap/SdkBootstrap;

    move-result-object v0

    const-class v1, Lcom/applovin/adview/InterstitialAdDialogCreator;

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/bootstrap/SdkBootstrap;->loadImplementation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/adview/InterstitialAdDialogCreator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/applovin/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAd;->show(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public static show(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No activity specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/adview/a;

    invoke-direct {v0, p1, p0}, Lcom/applovin/adview/a;-><init>(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialAd;->a:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/adview/AppLovinInterstitialAd;->a:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show()V

    :cond_0
    return-void
.end method
