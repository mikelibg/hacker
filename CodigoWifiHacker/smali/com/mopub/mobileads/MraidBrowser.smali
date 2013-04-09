.class public Lcom/mopub/mobileads/MraidBrowser;
.super Landroid/app/Activity;
.source "MraidBrowser.java"


# static fields
.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private enableCookies()V
    .locals 1

    .prologue
    .line 150
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 151
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 152
    return-void
.end method

.method private initializeButtons(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 113
    sget v4, Lcom/mopub/mobileads/R$id;->browserBackButton:I

    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 114
    .local v0, backButton:Landroid/widget/ImageButton;
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 115
    new-instance v4, Lcom/mopub/mobileads/MraidBrowser$3;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/MraidBrowser$3;-><init>(Lcom/mopub/mobileads/MraidBrowser;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    sget v4, Lcom/mopub/mobileads/R$id;->browserForwardButton:I

    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 123
    .local v2, forwardButton:Landroid/widget/ImageButton;
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 124
    new-instance v4, Lcom/mopub/mobileads/MraidBrowser$4;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/MraidBrowser$4;-><init>(Lcom/mopub/mobileads/MraidBrowser;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget v4, Lcom/mopub/mobileads/R$id;->browserRefreshButton:I

    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 132
    .local v3, refreshButton:Landroid/widget/ImageButton;
    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 133
    new-instance v4, Lcom/mopub/mobileads/MraidBrowser$5;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/MraidBrowser$5;-><init>(Lcom/mopub/mobileads/MraidBrowser;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v4, Lcom/mopub/mobileads/R$id;->browserCloseButton:I

    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 141
    .local v1, closeButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 142
    new-instance v4, Lcom/mopub/mobileads/MraidBrowser$6;

    invoke-direct {v4, p0}, Lcom/mopub/mobileads/MraidBrowser$6;-><init>(Lcom/mopub/mobileads/MraidBrowser;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 42
    sget v2, Lcom/mopub/mobileads/R$id;->webView:I

    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 43
    .local v1, webView:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 45
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 55
    const-string v2, "extra_url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 56
    new-instance v2, Lcom/mopub/mobileads/MraidBrowser$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidBrowser$1;-><init>(Lcom/mopub/mobileads/MraidBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    new-instance v2, Lcom/mopub/mobileads/MraidBrowser$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/MraidBrowser$2;-><init>(Lcom/mopub/mobileads/MraidBrowser;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidBrowser;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidBrowser;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 33
    sget v1, Lcom/mopub/mobileads/R$layout;->mraid_browser:I

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/MraidBrowser;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/mopub/mobileads/MraidBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 36
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MraidBrowser;->initializeWebView(Landroid/content/Intent;)V

    .line 37
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/MraidBrowser;->initializeButtons(Landroid/content/Intent;)V

    .line 38
    invoke-direct {p0}, Lcom/mopub/mobileads/MraidBrowser;->enableCookies()V

    .line 39
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 157
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 158
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 164
    return-void
.end method
