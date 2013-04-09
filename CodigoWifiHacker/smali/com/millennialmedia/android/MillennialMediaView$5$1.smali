.class Lcom/millennialmedia/android/MillennialMediaView$5$1;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/MillennialMediaView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/millennialmedia/android/MillennialMediaView$5;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MillennialMediaView$5;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    iget-object v0, v0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    iget-object v0, v0, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/millennialmedia/android/MillennialMediaView;->access$1300(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$5$1;->this$1:Lcom/millennialmedia/android/MillennialMediaView$5;

    iget-object v1, v1, Lcom/millennialmedia/android/MillennialMediaView$5;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #getter for: Lcom/millennialmedia/android/MillennialMediaView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$700(Lcom/millennialmedia/android/MillennialMediaView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 425
    :cond_0
    return-void
.end method
