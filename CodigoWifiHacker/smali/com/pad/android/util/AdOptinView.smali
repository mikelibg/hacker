.class public Lcom/pad/android/util/AdOptinView;
.super Landroid/webkit/WebView;
.source "AdOptinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private layout:Landroid/widget/RelativeLayout;

.field private oListener:Lcom/pad/android/listener/AdOptinListener;

.field private optinUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V
    .locals 0
    .parameter "act"
    .parameter "url"
    .parameter "oL"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;

    .line 40
    invoke-direct {p0}, Lcom/pad/android/util/AdOptinView;->initialize()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/util/AdOptinView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pad/android/util/AdOptinView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/pad/android/util/AdOptinView;->closeView()V

    return-void
.end method

.method static synthetic access$2(Lcom/pad/android/util/AdOptinView;)Lcom/pad/android/listener/AdOptinListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->oListener:Lcom/pad/android/listener/AdOptinListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pad/android/util/AdOptinView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pad/android/util/AdOptinView;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$5(Lcom/pad/android/util/AdOptinView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private closeView()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pad/android/util/AdOptinView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/pad/android/util/AdOptinView$3;

    invoke-direct {v1, p0}, Lcom/pad/android/util/AdOptinView$3;-><init>(Lcom/pad/android/util/AdOptinView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/pad/android/util/AdOptinView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 51
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 53
    new-instance v1, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;

    invoke-direct {v1, p0}, Lcom/pad/android/util/AdOptinView$AdOptinJSInterface;-><init>(Lcom/pad/android/util/AdOptinView;)V

    const-string v2, "LBOPTIN"

    invoke-virtual {p0, v1, v2}, Lcom/pad/android/util/AdOptinView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 56
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 63
    :cond_0
    new-instance v1, Lcom/pad/android/util/AdOptinView$1;

    invoke-direct {v1, p0}, Lcom/pad/android/util/AdOptinView$1;-><init>(Lcom/pad/android/util/AdOptinView;)V

    invoke-virtual {p0, v1}, Lcom/pad/android/util/AdOptinView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 85
    new-instance v1, Lcom/pad/android/util/AdOptinView$2;

    invoke-direct {v1, p0}, Lcom/pad/android/util/AdOptinView$2;-><init>(Lcom/pad/android/util/AdOptinView;)V

    invoke-virtual {p0, v1}, Lcom/pad/android/util/AdOptinView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 126
    iget-object v1, p0, Lcom/pad/android/util/AdOptinView;->optinUrl:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/pad/android/util/AdOptinView;->loadUrl(Ljava/lang/String;)V

    .line 127
    return-void
.end method
