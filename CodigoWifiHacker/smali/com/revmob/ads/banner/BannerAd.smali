.class Lcom/revmob/ads/banner/BannerAd;
.super Lcom/revmob/ads/internal/Ad;
.source "BannerAd.java"


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private htmlAdUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "image"
    .parameter "htmlAd"
    .parameter "url"

    .prologue
    .line 21
    invoke-direct {p0, p1, p4}, Lcom/revmob/ads/internal/Ad;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 22
    iput-object p2, p0, Lcom/revmob/ads/banner/BannerAd;->drawable:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-object p3, p0, Lcom/revmob/ads/banner/BannerAd;->htmlAdUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/revmob/ads/banner/BannerAd;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHtmlAdUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/revmob/ads/banner/BannerAd;->htmlAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHtmlBanner()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/revmob/ads/banner/BannerAd;->htmlAdUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
