.class Lcom/applovin/impl/adview/n;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinSdk;

.field private final b:Lcom/applovin/sdk/Logger;

.field private c:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/Logger;

    iput-object p1, p0, Lcom/applovin/impl/adview/n;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/n;)Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->a:Lcom/applovin/sdk/AppLovinSdk;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/adview/l;)V
    .locals 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2}, Lcom/applovin/impl/adview/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/Logger;

    const-string v2, "AdWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to show \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e(Lcom/applovin/impl/adview/l;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/adview/l;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/adview/n;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/Logger;

    const-string v1, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing click on ad URL \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    instance-of v0, p1, Lcom/applovin/impl/adview/l;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/applovin/impl/adview/l;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "applovin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "com.applovin.sdk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "/adservice/track_click"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->d(Lcom/applovin/impl/adview/l;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "/adservice/next_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->b(Lcom/applovin/impl/adview/l;)V

    goto :goto_0

    :cond_2
    const-string v0, "/adservice/close_ad"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->c(Lcom/applovin/impl/adview/l;)V

    goto :goto_0

    :cond_3
    const-string v0, "/adservice/landing_page/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "/adservice/landing_page"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/n;->e(Lcom/applovin/impl/adview/l;)V

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/adview/n;->a(Ljava/lang/String;Lcom/applovin/impl/adview/l;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/n;->b(Lcom/applovin/impl/adview/l;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/Logger;

    const-string v1, "AdWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/n;->e(Lcom/applovin/impl/adview/l;)V

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/adview/n;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/l;)V

    goto :goto_0
.end method

.method a(Lcom/applovin/impl/adview/l;)V
    .locals 1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/l;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAd;->getDestinationUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/n;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/applovin/impl/adview/l;)V
    .locals 3

    invoke-virtual {p2}, Lcom/applovin/impl/adview/l;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/adview/o;

    invoke-direct {v1, p0, v0, p1}, Lcom/applovin/impl/adview/o;-><init>(Lcom/applovin/impl/adview/n;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/n;->b:Lcom/applovin/sdk/Logger;

    const-string v1, "AdWebViewClient"

    const-string v2, "Unable to show landing page, context is not activity"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/applovin/impl/adview/l;)V
    .locals 2

    invoke-virtual {p1}, Lcom/applovin/impl/adview/l;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/applovin/adview/AppLovinAdView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    :cond_0
    return-void
.end method

.method protected c(Lcom/applovin/impl/adview/l;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method protected d(Lcom/applovin/impl/adview/l;)V
    .locals 1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/l;->a()Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinAd;->getDestinationUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/n;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/n;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->onAdHtmlLoaded(Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/adview/n;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
