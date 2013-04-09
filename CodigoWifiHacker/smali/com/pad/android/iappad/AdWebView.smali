.class public Lcom/pad/android/iappad/AdWebView;
.super Landroid/webkit/WebView;
.source "AdWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;,
        Lcom/pad/android/iappad/AdWebView$AdWebClient;
    }
.end annotation


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdController"


# instance fields
.field private activity:Landroid/content/Context;

.field private controller:Lcom/pad/android/iappad/AdController;

.field private listener:Lcom/pad/android/listener/AdListener;

.field private loadUrl:Ljava/lang/String;

.field private loading:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private nativeOpen:Z

.field private results:Lorg/json/JSONObject;

.field private settings:Landroid/webkit/WebSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pad/android/iappad/AdController;ZLcom/pad/android/listener/AdListener;)V
    .locals 1
    .parameter "act"
    .parameter "cont"
    .parameter "nO"
    .parameter "list"

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->loading:Z

    .line 42
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->nativeOpen:Z

    .line 48
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/pad/android/iappad/AdWebView;->controller:Lcom/pad/android/iappad/AdController;

    .line 50
    iput-boolean p3, p0, Lcom/pad/android/iappad/AdWebView;->nativeOpen:Z

    .line 51
    iput-object p4, p0, Lcom/pad/android/iappad/AdWebView;->listener:Lcom/pad/android/listener/AdListener;

    .line 52
    invoke-direct {p0}, Lcom/pad/android/iappad/AdWebView;->initialize()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->loading:Z

    .line 42
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->nativeOpen:Z

    .line 58
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    .line 59
    invoke-direct {p0, p2}, Lcom/pad/android/iappad/AdWebView;->buildFromXML(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->loading:Z

    .line 42
    iput-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->nativeOpen:Z

    .line 65
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    .line 66
    invoke-direct {p0, p2}, Lcom/pad/android/iappad/AdWebView;->buildFromXML(Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/iappad/AdWebView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->loadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/iappad/AdWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->loading:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pad/android/iappad/AdWebView;)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->results:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pad/android/iappad/AdWebView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/pad/android/iappad/AdWebView;->loading:Z

    return-void
.end method

.method static synthetic access$4(Lcom/pad/android/iappad/AdWebView;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdWebView;->nativeOpen:Z

    return v0
.end method

.method static synthetic access$5(Lcom/pad/android/iappad/AdWebView;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pad/android/iappad/AdWebView;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView;->loadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private buildFromXML(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 83
    new-instance v1, Lcom/pad/android/iappad/AdController;

    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    const-string v3, "sectionid"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/pad/android/iappad/AdController;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pad/android/iappad/AdWebView;->controller:Lcom/pad/android/iappad/AdController;

    .line 84
    invoke-direct {p0}, Lcom/pad/android/iappad/AdWebView;->initialize()V

    .line 86
    :cond_0
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/pad/android/iappad/AdWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/pad/android/iappad/AdWebView;->settings:Landroid/webkit/WebSettings;

    .line 91
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->settings:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 93
    new-instance v0, Lcom/pad/android/iappad/AdJSInterface;

    iget-object v1, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView;->controller:Lcom/pad/android/iappad/AdController;

    iget-object v3, p0, Lcom/pad/android/iappad/AdWebView;->listener:Lcom/pad/android/listener/AdListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/pad/android/iappad/AdJSInterface;-><init>(Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/listener/AdListener;)V

    const-string v1, "LBOUT"

    invoke-virtual {p0, v0, v1}, Lcom/pad/android/iappad/AdWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->settings:Landroid/webkit/WebSettings;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 103
    :cond_0
    new-instance v0, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;

    iget-object v1, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pad/android/iappad/AdWebView$AdWebChromeClient;-><init>(Lcom/pad/android/iappad/AdWebView;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/pad/android/iappad/AdWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    new-instance v0, Lcom/pad/android/iappad/AdWebView$AdWebClient;

    iget-object v1, p0, Lcom/pad/android/iappad/AdWebView;->activity:Landroid/content/Context;

    iget-object v2, p0, Lcom/pad/android/iappad/AdWebView;->controller:Lcom/pad/android/iappad/AdController;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/pad/android/iappad/AdWebView$AdWebClient;-><init>(Lcom/pad/android/iappad/AdWebView;Landroid/content/Context;Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdWebView;)V

    invoke-virtual {p0, v0}, Lcom/pad/android/iappad/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    return-void
.end method


# virtual methods
.method public setLoadingURL(Ljava/lang/String;)V
    .locals 0
    .parameter "lU"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView;->loadUrl:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setResults(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "res"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pad/android/iappad/AdWebView;->results:Lorg/json/JSONObject;

    .line 72
    return-void
.end method

.method public showAd()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pad/android/iappad/AdWebView;->controller:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v0}, Lcom/pad/android/iappad/AdController;->loadAd()V

    .line 110
    return-void
.end method
