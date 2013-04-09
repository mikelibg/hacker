.class Lcom/revmob/ads/fullscreen/Fullscreen$1;
.super Ljava/lang/Object;
.source "Fullscreen.java"

# interfaces
.implements Lcom/revmob/ads/internal/OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/fullscreen/Fullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/fullscreen/Fullscreen;


# direct methods
.method constructor <init>(Lcom/revmob/ads/fullscreen/Fullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "response"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$100(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$100(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    const-string v1, "Ad did not received."

    invoke-interface {v0, v1}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onAdReceived(Lcom/revmob/ads/internal/Ad;)V
    .locals 2
    .parameter "advertisement"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    check-cast p1, Lcom/revmob/ads/fullscreen/FullscreenAd;

    .end local p1
    #setter for: Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;
    invoke-static {v0, p1}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$002(Lcom/revmob/ads/fullscreen/Fullscreen;Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/fullscreen/FullscreenAd;

    .line 26
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$000(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/fullscreen/FullscreenAd;

    move-result-object v0

    iget-object v1, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v1}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$100(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/revmob/ads/fullscreen/FullscreenAd;->setRevmobAdsListener(Lcom/revmob/ads/RevMobAdsListener;)V

    .line 27
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->ad:Lcom/revmob/ads/fullscreen/FullscreenAd;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$000(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/fullscreen/FullscreenAd;

    move-result-object v0

    invoke-static {v0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->addLoadedFullscreen(Lcom/revmob/ads/fullscreen/FullscreenAd;)V

    .line 28
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$100(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/Fullscreen$1;->this$0:Lcom/revmob/ads/fullscreen/Fullscreen;

    #getter for: Lcom/revmob/ads/fullscreen/Fullscreen;->revMobListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/fullscreen/Fullscreen;->access$100(Lcom/revmob/ads/fullscreen/Fullscreen;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdReceived()V

    .line 31
    :cond_0
    return-void
.end method
