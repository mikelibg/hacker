.class Lcom/pad/android/richmedia/view/AdBrowser$1;
.super Ljava/lang/Object;
.source "AdBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdBrowser$1;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$1;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 104
    .local v0, wv:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$1;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    invoke-virtual {v1}, Lcom/pad/android/richmedia/view/AdBrowser;->finish()V

    goto :goto_0
.end method
