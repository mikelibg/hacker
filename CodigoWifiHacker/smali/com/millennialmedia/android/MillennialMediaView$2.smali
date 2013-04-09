.class Lcom/millennialmedia/android/MillennialMediaView$2;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 286
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 288
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    const/4 v2, 0x2

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$202(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 307
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekForward:Z
    invoke-static {v3, v4}, Lcom/millennialmedia/android/MillennialMediaView;->access$502(Lcom/millennialmedia/android/MillennialMediaView;Z)Z

    move-result v3

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekBack:Z
    invoke-static {v2, v3}, Lcom/millennialmedia/android/MillennialMediaView;->access$402(Lcom/millennialmedia/android/MillennialMediaView;Z)Z

    move-result v2

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCanPause:Z
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$302(Lcom/millennialmedia/android/MillennialMediaView;Z)Z

    .line 308
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$600(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$600(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$002(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 315
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$102(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 317
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$900(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v0

    .line 318
    .local v0, seekToPosition:I
    if-eqz v0, :cond_2

    .line 319
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 323
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v2

    iget-object v3, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v3}, Lcom/millennialmedia/android/MillennialMediaView;->access$100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 324
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceWidth:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mSurfaceHeight:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 328
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1200(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 329
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    .line 330
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 348
    :cond_3
    :goto_0
    return-void

    .line 333
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 344
    :cond_6
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1200(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 345
    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$2;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->start()V

    goto :goto_0
.end method
