.class Lcom/millennialmedia/android/MMWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MMWebViewClient.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "webView"
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x6

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mmsdk:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running JS bridge command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/millennialmedia/android/MMCommand;

    invoke-direct {v0, p1, p2}, Lcom/millennialmedia/android/MMCommand;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 14
    .local v0, command:Lcom/millennialmedia/android/MMCommand;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 16
    const/4 v2, 0x1

    .line 18
    .end local v0           #command:Lcom/millennialmedia/android/MMCommand;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return v2
.end method
