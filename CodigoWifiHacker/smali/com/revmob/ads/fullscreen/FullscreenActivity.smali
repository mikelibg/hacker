.class public Lcom/revmob/ads/fullscreen/FullscreenActivity;
.super Landroid/app/Activity;
.source "FullscreenActivity.java"


# instance fields
.field private ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

.field private layout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 24
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 27
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 28
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.revmob.ads.fullscreen.adUrl"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, adUrl:Ljava/lang/String;
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    .line 31
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getLoadedFullscreen(Ljava/lang/String;)Lcom/revmob/ads/fullscreen/FullscreenAd;

    move-result-object v3

    iput-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    .line 32
    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    if-nez v3, :cond_0

    .line 33
    const-string v3, "RevMob"

    const-string v4, "Unexpected error on create Fullscreen Ad."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->finish()V

    .line 43
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .local v1, adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-virtual {v4, p0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getAdView(Landroid/app/Activity;)Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcom/revmob/ads/fullscreen/FullscreenActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 49
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 53
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenActivity;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-virtual {v1}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getRevmobAdsListener()Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    .line 55
    .local v0, listener:Lcom/revmob/ads/RevMobAdsListener;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdDismiss()V

    .line 59
    .end local v0           #listener:Lcom/revmob/ads/RevMobAdsListener;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
