.class Lcom/pad/android/richmedia/view/AdBrowser$5;
.super Landroid/webkit/WebViewClient;
.source "AdBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pad/android/richmedia/view/AdBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdBrowser;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdBrowser$5;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    .line 179
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 203
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$5;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 207
    .local v0, forwardButton:Landroid/widget/ImageButton;
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$5;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const-string v2, "bitmaps/rightarrow.png"

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$5;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const-string v2, "bitmaps/unrightarrow.png"

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 196
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$5;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 198
    .local v0, forwardButton:Landroid/widget/ImageButton;
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$5;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const-string v2, "bitmaps/unrightarrow.png"

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->bitmapFromJar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 183
    .local v0, a:Landroid/app/Activity;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdOrmma Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    const/4 v2, 0x0

    .line 183
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 185
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 189
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    return v0
.end method
