.class Lcom/millennialmedia/android/MillennialMediaView$7;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MillennialMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MillennialMediaView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MillennialMediaView;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 481
    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lcom/millennialmedia/android/MillennialMediaView;->access$1002(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 482
    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lcom/millennialmedia/android/MillennialMediaView;->access$1102(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 483
    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I
    invoke-static {v4}, Lcom/millennialmedia/android/MillennialMediaView;->access$1200(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 484
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v4}, Lcom/millennialmedia/android/MillennialMediaView;->access$000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v4

    if-ne v4, p3, :cond_4

    iget-object v4, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v4}, Lcom/millennialmedia/android/MillennialMediaView;->access$100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v4

    if-ne v4, p4, :cond_4

    move v0, v2

    .line 485
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 486
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$900(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/millennialmedia/android/MillennialMediaView;->access$900(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 490
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 491
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 498
    :cond_2
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_3
    move v1, v3

    .line 483
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_4
    move v0, v3

    .line 484
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1702(Lcom/millennialmedia/android/MillennialMediaView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 504
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$200(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1200(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->openVideo()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    const/4 v1, 0x0

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1702(Lcom/millennialmedia/android/MillennialMediaView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 519
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$200(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 521
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$7;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    const/4 v1, 0x1

    #calls: Lcom/millennialmedia/android/MillennialMediaView;->release(Z)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1800(Lcom/millennialmedia/android/MillennialMediaView;Z)V

    .line 523
    :cond_1
    return-void
.end method
