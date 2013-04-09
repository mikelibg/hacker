.class Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;
.super Ljava/lang/Object;
.source "FullscreenAd.java"

# interfaces
.implements Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addHtmlAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z
    invoke-static {v1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->access$100(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :goto_0
    return v3

    .line 108
    :cond_0
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;Lcom/revmob/ads/fullscreen/FullscreenAd$1;)V

    .line 109
    .local v0, clickRedirector:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    iget-object v1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    #setter for: Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z
    invoke-static {v1, v3}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->access$102(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;Z)Z

    goto :goto_0
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdDismiss()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->cleanLoadedFullscreen(Lcom/revmob/ads/fullscreen/FullscreenAd;)V

    .line 100
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
