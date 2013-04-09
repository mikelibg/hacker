.class Lcom/revmob/ads/fullscreen/FullscreenAd;
.super Lcom/revmob/ads/internal/Ad;
.source "FullscreenAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/ads/fullscreen/FullscreenAd$1;,
        Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;
    }
.end annotation


# static fields
.field private static loadedFullscreens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/revmob/ads/fullscreen/FullscreenAd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adImage:Landroid/graphics/drawable/Drawable;

.field private htmlAdUrl:Ljava/lang/String;

.field private revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/revmob/ads/fullscreen/FullscreenAd;->loadedFullscreens:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "image"
    .parameter "htmlAdUrl"
    .parameter "clickUrl"

    .prologue
    .line 45
    invoke-direct {p0, p1, p4}, Lcom/revmob/ads/internal/Ad;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 46
    iput-object p3, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->htmlAdUrl:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->adImage:Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/fullscreen/FullscreenAd;)Lcom/revmob/ads/RevMobAdsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/revmob/ads/fullscreen/FullscreenAd;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->htmlAdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static addLoadedFullscreen(Lcom/revmob/ads/fullscreen/FullscreenAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 29
    sget-object v0, Lcom/revmob/ads/fullscreen/FullscreenAd;->loadedFullscreens:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getTargetURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public static cleanLoadedFullscreen(Lcom/revmob/ads/fullscreen/FullscreenAd;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 37
    sget-object v0, Lcom/revmob/ads/fullscreen/FullscreenAd;->loadedFullscreens:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getTargetURL()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public static getLoadedFullscreen(Ljava/lang/String;)Lcom/revmob/ads/fullscreen/FullscreenAd;
    .locals 1
    .parameter "key"

    .prologue
    .line 33
    sget-object v0, Lcom/revmob/ads/fullscreen/FullscreenAd;->loadedFullscreens:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/fullscreen/FullscreenAd;

    return-object v0
.end method


# virtual methods
.method public getAdImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->adImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->adImage:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/revmob/ads/fullscreen/StaticAssets;->getLocalizedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getAdView(Landroid/app/Activity;)Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 67
    new-instance v0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;

    invoke-direct {v0, p0, p1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd;Landroid/content/Context;)V

    return-object v0
.end method

.method public getRevmobAdsListener()Lcom/revmob/ads/RevMobAdsListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;

    return-object v0
.end method

.method public isHtmlFullscreen()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->htmlAdUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRevmobAdsListener(Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 0
    .parameter "revmobAdsListener"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd;->revmobAdsListener:Lcom/revmob/ads/RevMobAdsListener;

    .line 60
    return-void
.end method
