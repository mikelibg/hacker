.class Lcom/revmob/ads/banner/Banner$2$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/revmob/ads/banner/Banner$2;->onAdReceived(Lcom/revmob/ads/internal/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/revmob/ads/banner/Banner$2;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/Banner$2;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/revmob/ads/banner/Banner$2$1;->this$1:Lcom/revmob/ads/banner/Banner$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2$1;->this$1:Lcom/revmob/ads/banner/Banner$2;

    iget-object v0, v0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #getter for: Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$100(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/banner/BannerAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/ads/banner/BannerAd;->isHtmlBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2$1;->this$1:Lcom/revmob/ads/banner/Banner$2;

    iget-object v0, v0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #calls: Lcom/revmob/ads/banner/Banner;->addHtmlAdView()V
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$200(Lcom/revmob/ads/banner/Banner;)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner$2$1;->this$1:Lcom/revmob/ads/banner/Banner$2;

    iget-object v0, v0, Lcom/revmob/ads/banner/Banner$2;->this$0:Lcom/revmob/ads/banner/Banner;

    #calls: Lcom/revmob/ads/banner/Banner;->addImageView()V
    invoke-static {v0}, Lcom/revmob/ads/banner/Banner;->access$300(Lcom/revmob/ads/banner/Banner;)V

    goto :goto_0
.end method
