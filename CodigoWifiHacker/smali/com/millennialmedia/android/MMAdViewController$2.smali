.class Lcom/millennialmedia/android/MMAdViewController$2;
.super Lcom/millennialmedia/android/MMWebViewClient;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMAdViewController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$2;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Lcom/millennialmedia/android/MMWebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "webView"
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 755
    const-string v1, "javascript:window.interface.setLoaded(true);"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 756
    const-string v1, "javascript:window.interface.getUrl(document.links[0].href);"

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$2;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 758
    .local v0, webClientAdView:Lcom/millennialmedia/android/MMAdView;
    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->setClickable(Z)V

    .line 760
    :cond_0
    if-eqz p1, :cond_1

    .line 761
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 762
    :cond_1
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2
    .parameter "view"
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 774
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Scale Changed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 767
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 768
    const/4 v0, 0x1

    return v0
.end method
