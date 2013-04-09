.class Lcom/millennialmedia/android/MillennialMediaView$1;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 276
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$002(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 279
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$102(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 280
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MillennialMediaView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoWidth:I
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$000(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v1

    iget-object v2, p0, Lcom/millennialmedia/android/MillennialMediaView$1;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mVideoHeight:I
    invoke-static {v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$100(Lcom/millennialmedia/android/MillennialMediaView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 283
    :cond_0
    return-void
.end method
