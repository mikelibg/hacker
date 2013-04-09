.class Lcom/millennialmedia/android/MMAdViewController$6;
.super Ljava/lang/Object;
.source "MMAdViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
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
    .line 1224
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$6;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$6;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->chooseCachedAdOrAdCall(Z)V

    .line 1229
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$6;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1230
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1232
    const-string v1, "MillennialMediaSDK"

    const-string v2, "The reference to the ad view was broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewController$6;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewController;->access$2200(Lcom/millennialmedia/android/MMAdViewController;)Landroid/os/Handler;

    move-result-object v1

    iget v2, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
