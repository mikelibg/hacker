.class Lcom/millennialmedia/android/MillennialMediaView$4;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 364
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    const/4 v1, 0x5

    .line 366
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCurrentState:I
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$202(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 367
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mTargetState:I
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$1202(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 368
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$800(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$4;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 374
    :cond_1
    return-void
.end method
