.class Lcom/revmob/ads/banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 36
    iput-object p1, p0, Lcom/revmob/ads/banner/Banner$1;->this$0:Lcom/revmob/ads/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$1;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$1;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/revmob/ads/RevMobAdsListener;->onRevMobAdClicked()V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$1;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$100(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/banner/BannerAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/banner/BannerAd;->click()V

    .line 43
    return-void
.end method
