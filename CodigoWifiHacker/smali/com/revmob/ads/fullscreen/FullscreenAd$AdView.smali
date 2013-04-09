.class Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;
.super Landroid/widget/RelativeLayout;
.source "FullscreenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/fullscreen/FullscreenAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$AsyncClickRedirector;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x23000000

.field private static final CLOSE_BUTTON_PADDING:I = 0x14

.field private static final CLOSE_BUTTON_SIZE_IN_DIP:I = 0x28

.field private static final FADE_IN_DURATION:I = 0x1f4

.field private static final PROGRESSBAR_PADDING:I = 0xf


# instance fields
.field private clicked:Z

.field private revmobAdsView:Landroid/view/View;

.field final synthetic this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/fullscreen/FullscreenAd;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    .line 81
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z

    .line 84
    invoke-virtual {p1}, Lcom/revmob/ads/fullscreen/FullscreenAd;->isHtmlFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addHtmlAdView()V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addImageAdView()V

    .line 88
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addCloseButton()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->clicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addProgressBar()V

    return-void
.end method

.method private addCloseButton()V
    .locals 5

    .prologue
    .line 172
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 173
    .local v1, close:Landroid/widget/ImageView;
    invoke-static {}, Lcom/revmob/ads/fullscreen/StaticAssets;->getCloseButton()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    new-instance v4, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;

    invoke-direct {v4, p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$3;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const/16 v4, 0x28

    invoke-direct {p0, v4}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->dipToPixels(I)I

    move-result v0

    .line 186
    .local v0, buttonSize:I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v2, closeLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->dipToPixels(I)I

    move-result v3

    .line 190
    .local v3, padding:I
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 191
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addView(Landroid/view/View;)V

    .line 196
    return-void
.end method

.method private addImageAdView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 127
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    .line 128
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    invoke-virtual {v3}, Lcom/revmob/ads/fullscreen/FullscreenAd;->getAdImage()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    new-instance v3, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;

    invoke-direct {v3, p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$2;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 142
    .local v1, fadeIn:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 144
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 146
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v0, adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, -0x2300

    invoke-virtual {p0, v2}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->setBackgroundColor(I)V

    .line 151
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method private addProgressBar()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 155
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 156
    .local v2, progressBar:Landroid/widget/ProgressBar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 158
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->dipToPixels(I)I

    move-result v0

    .line 162
    .local v0, margin:I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    invoke-virtual {p0, v2, v1}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method private dipToPixels(I)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 168
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public addHtmlAdView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 93
    new-instance v1, Lcom/revmob/ads/internal/RevMobWebViewClient;

    new-instance v2, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;

    invoke-direct {v2, p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView$1;-><init>(Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;)V

    invoke-direct {v1, v2}, Lcom/revmob/ads/internal/RevMobWebViewClient;-><init>(Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;)V

    .line 115
    .local v1, client:Lcom/revmob/ads/internal/RevMobWebViewClient;
    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    .line 116
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 118
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    check-cast v2, Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->this$0:Lcom/revmob/ads/fullscreen/FullscreenAd;

    #getter for: Lcom/revmob/ads/fullscreen/FullscreenAd;->htmlAdUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/revmob/ads/fullscreen/FullscreenAd;->access$300(Lcom/revmob/ads/fullscreen/FullscreenAd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v0, adViewLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->revmobAdsView:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/revmob/ads/fullscreen/FullscreenAd$AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method
