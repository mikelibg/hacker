.class Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;
.super Ljava/lang/Object;
.source "FullscreenAd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addCloseButton()V
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
    .line 174
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdDismiss()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    iget-object v0, v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->cleanLoadedFullscreen(Lcom/revmob/ads/fullscreen/FullscreenAd;)V

    .line 182
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;->this$1:Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-virtual {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 183
    return-void
.end method
