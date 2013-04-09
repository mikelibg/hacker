.class Lcom/applovin/impl/adview/p;
.super Landroid/app/Dialog;

# interfaces
.implements Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/sdk/AppLovinSdk;

.field private final c:Lcom/applovin/sdk/Logger;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/applovin/adview/AppLovinAdView;

.field private f:Lcom/applovin/impl/adview/u;

.field private g:Lcom/applovin/impl/adview/t;

.field private h:Ljava/lang/Runnable;

.field private i:Lcom/applovin/sdk/AppLovinAd;

.field private j:Ljava/lang/String;

.field private k:Lcom/applovin/sdk/AppLovinAd;

.field private l:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private m:Lcom/applovin/sdk/AppLovinAdDisplayListener;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)V
    .locals 4

    const v0, 0x1030010

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/adview/p;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    iput-object p2, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/p;->requestWindowFeature(I)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/adview/p;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Set window flags failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/p;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/p;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/16 v4, 0xd

    const/16 v1, 0xdc

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, -0x4500

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->e:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/p;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->m:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method private c()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/j;->a(ZLandroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    const-string v3, "InterstitialAdDialog"

    const-string v4, "Unable to check network state"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/Logger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->l:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/p;)Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->k:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/p;)Lcom/applovin/adview/AppLovinAdView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->e:Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/p;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    const-string v1, "InterstitialAdDialog"

    const-string v2, "Failed to receive an ad,activity finished"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/p;->i:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/p;->j:Ljava/lang/String;

    return-void
.end method

.method protected b(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/applovin/impl/adview/p;->k:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->i:Lcom/applovin/sdk/AppLovinAd;

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->g:Lcom/applovin/impl/adview/t;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->i:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->i:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/p;->b(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/applovin/impl/adview/p;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/adview/p;->f:Lcom/applovin/impl/adview/u;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lcom/applovin/impl/adview/p;->f:Lcom/applovin/impl/adview/u;

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/p;->f:Lcom/applovin/impl/adview/u;

    const/16 v1, -0x67

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/u;->failedToReceiveAd(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/applovin/impl/adview/u;

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/u;-><init>(Lcom/applovin/impl/adview/p;Lcom/applovin/sdk/Logger;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->f:Lcom/applovin/impl/adview/u;

    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->b:Lcom/applovin/sdk/AppLovinSdk;

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->e:Lcom/applovin/adview/AppLovinAdView;

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->e:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/q;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/q;-><init>(Lcom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/p;->e:Lcom/applovin/adview/AppLovinAdView;

    new-instance v1, Lcom/applovin/impl/adview/r;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/r;-><init>(Lcom/applovin/impl/adview/p;)V

    invoke-virtual {v0, v1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/applovin/impl/adview/t;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/t;-><init>(Lcom/applovin/impl/adview/p;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->g:Lcom/applovin/impl/adview/t;

    new-instance v0, Lcom/applovin/impl/adview/s;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/s;-><init>(Lcom/applovin/impl/adview/p;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/p;->h:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/applovin/impl/adview/p;->b()V

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/p;->m:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/p;->l:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public show()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/p;->c:Lcom/applovin/sdk/Logger;

    const-string v2, "InterstitialAdDialog"

    const-string v3, "Unable to show interstitial dialog."

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
