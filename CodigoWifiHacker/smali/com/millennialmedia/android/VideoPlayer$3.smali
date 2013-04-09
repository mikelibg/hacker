.class Lcom/millennialmedia/android/VideoPlayer$3;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->paused:Z
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$300(Lcom/millennialmedia/android/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v1}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/android/MillennialMediaView;->getCurrentPosition()I

    move-result v1

    #calls: Lcom/millennialmedia/android/VideoPlayer;->playVideo(I)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$400(Lcom/millennialmedia/android/VideoPlayer;I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$500(Lcom/millennialmedia/android/VideoPlayer;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 334
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/millennialmedia/android/VideoPlayer;->paused:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$302(Lcom/millennialmedia/android/VideoPlayer;Z)Z

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->pause()V

    .line 340
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mPausePlay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$500(Lcom/millennialmedia/android/VideoPlayer;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 341
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$3;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/millennialmedia/android/VideoPlayer;->paused:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$302(Lcom/millennialmedia/android/VideoPlayer;Z)Z

    goto :goto_0
.end method
