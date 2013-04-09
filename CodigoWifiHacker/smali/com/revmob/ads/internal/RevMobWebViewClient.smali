.class public Lcom/revmob/ads/internal/RevMobWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "RevMobWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;
    }
.end annotation


# instance fields
.field private actions:Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;


# direct methods
.method public constructor <init>(Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;)V
    .locals 0
    .parameter "actions"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/revmob/ads/internal/RevMobWebViewClient;->actions:Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;

    .line 19
    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 23
    const-string v0, "#close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/revmob/ads/internal/RevMobWebViewClient;->actions:Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;

    invoke-interface {v0}, Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;->onClose()Z

    move-result v0

    .line 28
    :goto_0
    return v0

    .line 25
    :cond_0
    const-string v0, "#click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/revmob/ads/internal/RevMobWebViewClient;->actions:Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;

    invoke-interface {v0}, Lcom/revmob/ads/internal/RevMobWebViewClient$RevMobClientActions;->onClick()Z

    move-result v0

    goto :goto_0

    .line 28
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
