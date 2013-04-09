.class Lcom/pad/android/richmedia/view/AdBrowser$2;
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
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdBrowser$2;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 126
    iget-object v1, p0, Lcom/pad/android/richmedia/view/AdBrowser$2;->this$0:Lcom/pad/android/richmedia/view/AdBrowser;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/pad/android/richmedia/view/AdBrowser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 127
    .local v0, wv:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 128
    return-void
.end method
