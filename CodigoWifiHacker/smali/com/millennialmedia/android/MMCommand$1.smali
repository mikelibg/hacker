.class Lcom/millennialmedia/android/MMCommand$1;
.super Ljava/lang/Object;
.source "MMCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MMCommand;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMCommand;

.field final synthetic val$call:Ljava/lang/String;

.field final synthetic val$webView2:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMCommand;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/millennialmedia/android/MMCommand$1;->this$0:Lcom/millennialmedia/android/MMCommand;

    iput-object p2, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webView2:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/millennialmedia/android/MMCommand$1;->val$call:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/millennialmedia/android/MMCommand$1;->val$webView2:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMCommand$1;->val$call:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 105
    return-void
.end method
