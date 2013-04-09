.class Lcom/revmob/ads/banner/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Lcom/revmob/ads/internal/OnLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/revmob/ads/banner/Banner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/Banner;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdNotReceived(Lcom/revmob/ads/internal/LoadError;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "response"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    const-string v1, "Ad not received"

    invoke-interface {v0, v1}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public onAdReceived(Lcom/revmob/ads/internal/Ad;)V
    .locals 2
    .parameter "advertisement"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    check-cast p1, Lcom/revmob/ads/banner/BannerAd;

    .end local p1
    #setter for: Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;
    invoke-static {v0, p1}, Lcom/revmob/ads/banner/Banner;->access$102(Lcom/revmob/ads/banner/Banner;Lcom/revmob/ads/banner/BannerAd;)Lcom/revmob/ads/banner/BannerAd;

    .line 50
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdReceived()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    iget-object v1, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    iget-object v1, v1, Lcom/revmob/ads/banner/Banner;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/banner/Banner;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    invoke-virtual {v0}, Lcom/revmob/ads/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/revmob/ads/banner/Banner$2$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/Banner$2$1;-><init>(Lcom/revmob/ads/banner/Banner$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method
