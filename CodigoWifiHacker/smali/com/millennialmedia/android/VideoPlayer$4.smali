.class Lcom/millennialmedia/android/VideoPlayer$4;
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
    .line 347
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/millennialmedia/android/VideoPlayer;->current:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$602(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->stopPlayback()V

    .line 352
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$4;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #calls: Lcom/millennialmedia/android/VideoPlayer;->dismiss()V
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$700(Lcom/millennialmedia/android/VideoPlayer;)V

    .line 354
    :cond_0
    return-void
.end method
