.class Lcom/mopub/mobileads/MraidBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "MraidBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/MraidBrowser;->initializeWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/MraidBrowser;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/MraidBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    sget v5, Lcom/mopub/mobileads/R$id;->browserBackButton:I

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 91
    .local v0, backButton:Landroid/widget/ImageButton;
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v1, Lcom/mopub/mobileads/R$drawable;->leftarrow:I

    .line 93
    .local v1, backImageResource:I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 95
    iget-object v4, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    sget v5, Lcom/mopub/mobileads/R$id;->browserForwardButton:I

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 96
    .local v2, forwardButton:Landroid/widget/ImageButton;
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v3, Lcom/mopub/mobileads/R$drawable;->rightarrow:I

    .line 98
    .local v3, fwdImageResource:I
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 99
    return-void

    .line 91
    .end local v1           #backImageResource:I
    .end local v2           #forwardButton:Landroid/widget/ImageButton;
    .end local v3           #fwdImageResource:I
    :cond_0
    sget v1, Lcom/mopub/mobileads/R$drawable;->unleftarrow:I

    goto :goto_0

    .line 96
    .restart local v1       #backImageResource:I
    .restart local v2       #forwardButton:Landroid/widget/ImageButton;
    :cond_1
    sget v3, Lcom/mopub/mobileads/R$drawable;->unrightarrow:I

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 82
    iget-object v1, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    sget v2, Lcom/mopub/mobileads/R$id;->browserForwardButton:I

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MraidBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 83
    .local v0, forwardButton:Landroid/widget/ImageButton;
    sget v1, Lcom/mopub/mobileads/R$drawable;->unrightarrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 84
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 61
    .local v0, a:Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 62
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 66
    if-nez p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    const-string v1, "market:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "voicemail:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "geo:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "google.streetview:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MraidBrowser;->startActivity(Landroid/content/Intent;)V

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/MraidBrowser$1;->this$0:Lcom/mopub/mobileads/MraidBrowser;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MraidBrowser;->finish()V

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method
