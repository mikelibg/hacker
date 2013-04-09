.class public Lcom/revmob/ads/banner/Banner;
.super Landroid/widget/RelativeLayout;
.source "Banner.java"


# static fields
.field private static final DEFAULT_HEIGHT_IN_DIP:I = 0x32

.field private static final DEFAULT_WIDTH_IN_DIP:I = 0x140

.field public static final MMA_BANNER:Ljava/lang/String; = "mma_banner"


# instance fields
.field private adView:Landroid/view/View;

.field private adsListener:Lcom/revmob/ads/RevMobAdsListener;

.field private bannerAd:Lcom/revmob/ads/banner/BannerAd;

.field private height:I

.field final onClickListener:Landroid/view/View$OnClickListener;

.field final onLoadListener:Lcom/revmob/ads/internal/OnLoadListener;

.field private width:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v0, 0x140

    iput v0, p0, Lcom/revmob/ads/banner/Banner;->width:I

    .line 34
    const/16 v0, 0x32

    iput v0, p0, Lcom/revmob/ads/banner/Banner;->height:I

    .line 36
    new-instance v0, Lcom/revmob/ads/banner/Banner$1;

    invoke-direct {v0, p0}, Lcom/revmob/ads/banner/Banner$1;-><init>(Lcom/revmob/ads/banner/Banner;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/Banner;->onClickListener:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v0, Lcom/revmob/ads/banner/Banner$2;

    invoke-direct {v0, p0}, Lcom/revmob/ads/banner/Banner$2;-><init>(Lcom/revmob/ads/banner/Banner;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/Banner;->onLoadListener:Lcom/revmob/ads/internal/OnLoadListener;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "fetchUrl"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/revmob/ads/banner/Banner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 2
    .parameter "context"
    .parameter "fetchUrl"
    .parameter "revmobAdsListener"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    const/16 v1, 0x140

    iput v1, p0, Lcom/revmob/ads/banner/Banner;->width:I

    .line 34
    const/16 v1, 0x32

    iput v1, p0, Lcom/revmob/ads/banner/Banner;->height:I

    .line 36
    new-instance v1, Lcom/revmob/ads/banner/Banner$1;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/Banner$1;-><init>(Lcom/revmob/ads/banner/Banner;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/Banner;->onClickListener:Landroid/view/View$OnClickListener;

    .line 46
    new-instance v1, Lcom/revmob/ads/banner/Banner$2;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/Banner$2;-><init>(Lcom/revmob/ads/banner/Banner;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/Banner;->onLoadListener:Lcom/revmob/ads/internal/OnLoadListener;

    .line 105
    new-instance v0, Lcom/revmob/ads/banner/BannerFetcher;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    const-string v1, "mma_banner"

    invoke-direct {v0, p1, p2, v1}, Lcom/revmob/ads/banner/BannerFetcher;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, fetcher:Lcom/revmob/ads/internal/AdFetcher;
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->onLoadListener:Lcom/revmob/ads/internal/OnLoadListener;

    invoke-virtual {v0, v1}, Lcom/revmob/ads/internal/AdFetcher;->fetchWithSessionVerification(Lcom/revmob/ads/internal/OnLoadListener;)V

    .line 107
    iput-object p3, p0, Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/RevMobAdsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/revmob/ads/banner/Banner;)Lcom/revmob/ads/banner/BannerAd;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;

    return-object v0
.end method

.method static synthetic access$102(Lcom/revmob/ads/banner/Banner;Lcom/revmob/ads/banner/BannerAd;)Lcom/revmob/ads/banner/BannerAd;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/revmob/ads/banner/Banner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/revmob/ads/banner/Banner;->addHtmlAdView()V

    return-void
.end method

.method static synthetic access$300(Lcom/revmob/ads/banner/Banner;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/revmob/ads/banner/Banner;->addImageView()V

    return-void
.end method

.method static synthetic access$400(Lcom/revmob/ads/banner/Banner;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    return-object v0
.end method

.method private addHtmlAdView()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    .line 154
    new-instance v0, Lcom/revmob/ads/internal/RevMobWebViewClient;

    new-instance v1, Lcom/revmob/ads/banner/Banner$3;

    invoke-direct {v1, p0}, Lcom/revmob/ads/banner/Banner$3;-><init>(Lcom/revmob/ads/banner/Banner;)V

    invoke-direct {v0, v1}, Lcom/revmob/ads/internal/RevMobWebViewClient;-><init>(Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;)V

    .line 166
    .local v0, client:Lcom/revmob/ads/internal/RevMobWebViewClient;
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 167
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;

    invoke-virtual {v2}, Lcom/revmob/ads/banner/BannerAd;->getHtmlAdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/revmob/ads/banner/Banner;->calculateDimensions()V

    .line 169
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 170
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    .line 171
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/revmob/ads/banner/Banner;->width:I

    iget v4, p0, Lcom/revmob/ads/banner/Banner;->height:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 174
    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/revmob/ads/banner/Banner;->addView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method private addImageView()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->bannerAd:Lcom/revmob/ads/banner/BannerAd;

    invoke-virtual {v1}, Lcom/revmob/ads/banner/BannerAd;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {p0}, Lcom/revmob/ads/banner/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/revmob/ads/banner/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/revmob/ads/banner/Banner;->calculateDimensions()V

    .line 145
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/revmob/ads/banner/Banner;->width:I

    iget v3, p0, Lcom/revmob/ads/banner/Banner;->height:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    iget-object v1, p0, Lcom/revmob/ads/banner/Banner;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/revmob/ads/banner/Banner;->addView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method private calculateDimensions()V
    .locals 4

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/revmob/ads/banner/Banner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 129
    .local v2, parentView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/revmob/ads/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 131
    .local v0, displayWidth:I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .end local v0           #displayWidth:I
    :cond_0
    iput v0, p0, Lcom/revmob/ads/banner/Banner;->width:I

    .line 133
    iget v3, p0, Lcom/revmob/ads/banner/Banner;->width:I

    mul-int/lit8 v3, v3, 0x32

    div-int/lit16 v1, v3, 0x140

    .line 134
    .local v1, idealHeight:I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .end local v1           #idealHeight:I
    :cond_1
    iput v1, p0, Lcom/revmob/ads/banner/Banner;->height:I

    .line 136
    return-void
.end method


# virtual methods
.method public getAdsListener()Lcom/revmob/ads/RevMobAdsListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;

    return-object v0
.end method

.method public setAdsListener(Lcom/revmob/ads/RevMobAdsListener;)V
    .locals 0
    .parameter "adsListener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/revmob/ads/banner/Banner;->adsListener:Lcom/revmob/ads/RevMobAdsListener;

    .line 125
    return-void
.end method
