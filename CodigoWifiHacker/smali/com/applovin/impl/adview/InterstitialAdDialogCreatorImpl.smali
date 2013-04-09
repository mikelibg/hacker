.class public Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/InterstitialAdDialogCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Lcom/applovin/impl/adview/p;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/adview/p;-><init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
