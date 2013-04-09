.class Lcom/millennialmedia/android/VideoPlayer$2;
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
    .line 319
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$2;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$2;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$2;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->mVideoView:Lcom/millennialmedia/android/MillennialMediaView;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$200(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/MillennialMediaView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->seekTo(I)V

    .line 323
    :cond_0
    return-void
.end method
