.class final Lcom/apperhand/device/android/EULAActivity$c;
.super Landroid/webkit/WebViewClient;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/android/EULAActivity;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 339
    const-string v0, "EULA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Page was loaded = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    new-instance v1, Lcom/apperhand/device/android/EULAActivity$c$1;

    invoke-direct {v1, p0}, Lcom/apperhand/device/android/EULAActivity$c$1;-><init>(Lcom/apperhand/device/android/EULAActivity$c;)V

    invoke-virtual {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 351
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->i(Lcom/apperhand/device/android/EULAActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->j(Lcom/apperhand/device/android/EULAActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->i(Lcom/apperhand/device/android/EULAActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:showBookmark()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->c(Lcom/apperhand/device/android/EULAActivity;Z)Z

    .line 362
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 368
    const-string v0, "eula_more"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "javascript:showBookmark"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    :cond_0
    const/4 v0, 0x0

    .line 371
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
