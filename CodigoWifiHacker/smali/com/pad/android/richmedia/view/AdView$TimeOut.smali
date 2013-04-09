.class Lcom/pad/android/richmedia/view/AdView$TimeOut;
.super Ljava/util/TimerTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/richmedia/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOut"
.end annotation


# instance fields
.field mCount:I

.field mProgress:I

.field final synthetic this$0:Lcom/pad/android/richmedia/view/AdView;


# direct methods
.method constructor <init>(Lcom/pad/android/richmedia/view/AdView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 431
    iput-object p1, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 433
    iput v0, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mProgress:I

    .line 434
    iput v0, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 438
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->getProgress()I

    move-result v1

    .line 439
    .local v1, progress:I
    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView$TimeOut;->cancel()Z

    .line 455
    :cond_0
    :goto_0
    iput v1, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mProgress:I

    .line 456
    return-void

    .line 442
    :cond_1
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mProgress:I

    if-ne v2, v1, :cond_0

    .line 443
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mCount:I

    .line 444
    iget v2, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->mCount:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/pad/android/richmedia/view/AdView$TimeOut;->this$0:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v2}, Lcom/pad/android/richmedia/view/AdView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_1
    invoke-virtual {p0}, Lcom/pad/android/richmedia/view/AdView$TimeOut;->cancel()Z

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AdView"

    const-string v3, "error in stopLoading"

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
