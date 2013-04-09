.class Lcom/applovin/impl/adview/l;
.super Landroid/webkit/WebView;


# instance fields
.field private final a:Lcom/applovin/sdk/Logger;

.field private b:Lcom/applovin/sdk/AppLovinAd;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/adview/n;Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/l;->b:Lcom/applovin/sdk/AppLovinAd;

    iput-boolean v2, p0, Lcom/applovin/impl/adview/l;->c:Z

    invoke-virtual {p3}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/l;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/l;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p0, p2}, Lcom/applovin/impl/adview/l;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/applovin/impl/adview/k;

    invoke-direct {v0, p3}, Lcom/applovin/impl/adview/k;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/l;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/l;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/applovin/impl/adview/l;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/l;->setScrollBarStyle(I)V

    new-instance v0, Lcom/applovin/impl/adview/m;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/adview/m;-><init>(Lcom/applovin/impl/adview/l;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/adview/n;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/l;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%"

    const-string v1, "&#37;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/l;->b:Lcom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 6

    iget-boolean v0, p0, Lcom/applovin/impl/adview/l;->c:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/applovin/impl/adview/l;->b:Lcom/applovin/sdk/AppLovinAd;

    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/adview/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "/"

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/l;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v1, "AdWebView"

    const-string v2, "AppLovinAd rendered"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v1, "AdWebView"

    const-string v2, "Ad can not be loaded in a destoyed we view"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v1, "AdWebView"

    const-string v2, "Destroying web view..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/l;->c:Z

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v2, "AdWebView"

    const-string v3, "destroy() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v2, "AdWebView"

    const-string v3, "onFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v2, "AdWebView"

    const-string v3, "onWindowFocusChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v2, "AdWebView"

    const-string v3, "onWindowVisibilityChanged() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 4

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/l;->a:Lcom/applovin/sdk/Logger;

    const-string v2, "AdWebView"

    const-string v3, "requestFocus() threw exception"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
