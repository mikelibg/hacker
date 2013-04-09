.class public Lcom/applovin/impl/adview/AdViewControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AdViewController;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/applovin/sdk/AppLovinSdk;

.field private c:Lcom/applovin/sdk/AppLovinAdService;

.field private d:Lcom/applovin/sdk/Logger;

.field private e:Lcom/applovin/sdk/AppLovinAdSize;

.field private f:Ljava/lang/String;

.field private g:Lcom/applovin/impl/adview/n;

.field private h:Lcom/applovin/impl/adview/i;

.field private i:Lcom/applovin/impl/adview/l;

.field private j:Lcom/applovin/sdk/AppLovinAd;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;

.field private volatile n:Lcom/applovin/sdk/AppLovinAd;

.field private final o:Ljava/util/concurrent/atomic/AtomicReference;

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:Z

.field private volatile s:Z

.field private volatile t:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile u:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile v:Lcom/applovin/sdk/AppLovinAdClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Z

    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    iput-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    return-void
.end method

.method private a()Lcom/applovin/impl/adview/l;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/applovin/impl/adview/l;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/impl/adview/n;

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    iget-object v4, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/applovin/impl/adview/l;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/adview/n;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V

    new-instance v1, Lcom/applovin/impl/adview/AdWebViewJsInterface;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/impl/adview/n;

    invoke-direct {v1, v2, v0}, Lcom/applovin/impl/adview/AdWebViewJsInterface;-><init>(Lcom/applovin/impl/adview/n;Landroid/webkit/WebView;)V

    const-string v2, "applovin_sdk"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/adview/l;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/applovin/impl/adview/l;->setBackgroundColor(I)V

    invoke-virtual {v0, v5}, Lcom/applovin/impl/adview/l;->setWillNotCacheDrawing(Z)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method static synthetic a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parent view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p5, Landroid/app/Activity;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified context is not an activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    iput-object p3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    move-object v0, p5

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    new-instance v0, Lcom/applovin/sdk/AppLovinAd;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, p3, v2, v3}, Lcom/applovin/sdk/AppLovinAd;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->j:Lcom/applovin/sdk/AppLovinAd;

    new-instance v0, Lcom/applovin/impl/adview/n;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/adview/n;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/impl/adview/n;

    new-instance v0, Lcom/applovin/impl/adview/c;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/h;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/h;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/f;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/f;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/applovin/impl/adview/i;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/adview/i;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-static {p5}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a()Lcom/applovin/impl/adview/l;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    invoke-static {v0, p3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/l;->setVisibility(I)V

    new-instance v0, Lcom/applovin/impl/adview/g;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/g;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Web view database is currupt, AdView not loaded"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    const-class v3, Landroid/webkit/WebViewDatabase;

    const-string v4, "getCacheTotalSize"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "AppLovinAdView"

    const-string v3, "Error invoking getCacheTotalSize()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v2, "AppLovinAdView"

    const-string v3, "getCacheTotalSize() reported exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v2, "AppLovinAdView"

    const-string v3, "Unexpected error while checking DB state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/Logger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, -0x2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    move v2, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/l;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->v:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method


# virtual methods
.method a(Landroid/webkit/WebView;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/applovin/impl/adview/e;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdService;->trackAdClick(Lcom/applovin/sdk/AppLovinAd;)V

    new-instance v0, Lcom/applovin/impl/adview/d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/adview/l;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/l;->destroy()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    return-void
.end method

.method public initializeAdView(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No parent view specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_2

    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to create AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_5

    invoke-static {p5}, Lcom/applovin/impl/adview/j;->a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_3
    :goto_1
    invoke-static {p5, p2}, Lcom/applovin/impl/adview/j;->a(Landroid/util/AttributeSet;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-nez p4, :cond_4

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Landroid/view/ViewGroup;Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p5}, Lcom/applovin/impl/adview/j;->b(Landroid/util/AttributeSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->loadNextAd()V

    goto :goto_0

    :cond_4
    move-object v2, p4

    goto :goto_2

    :cond_5
    move-object v3, p3

    goto :goto_1
.end method

.method public isAutoDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Z

    return v0
.end method

.method public loadNextAd()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Lcom/applovin/sdk/AppLovinSdk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdHtmlLoaded(Landroid/webkit/WebView;)V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    const-string v2, "AppLovinAdView"

    const-string v3, "Exception while notifying ad display listener"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onAdRecieved(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_0
    new-instance v0, Lcom/applovin/impl/adview/a;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/a;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    const-string v1, "AppLovinAdView"

    const-string v2, "Ad view has paused when an ad was recieved, ad saved for later"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    const-string v1, "AppLovinAdView"

    const-string v2, "No provided when to the view controller"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->onFailedToRecieveAd(I)V

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->destroy()V

    goto :goto_0
.end method

.method protected onFailedToRecieveAd(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v0, Lcom/applovin/impl/adview/b;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/b;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;I)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVisibilityChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->pause()V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->resume()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->j:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p0, v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    goto :goto_0
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/sdk/Logger;

    const-string v1, "AppLovinAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getDestinationUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/adview/e;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/sdk/AppLovinAdService;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Lcom/applovin/impl/adview/i;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdService;->addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Z

    goto :goto_0
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->v:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAutoDestroy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Z

    return-void
.end method
