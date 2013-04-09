.class Lcom/millennialmedia/android/MillennialMediaView$3;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 354
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$3;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 356
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$3;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    iget-object v1, p0, Lcom/millennialmedia/android/MillennialMediaView$3;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekForward:Z
    invoke-static {v1, v2}, Lcom/millennialmedia/android/MillennialMediaView;->access$502(Lcom/millennialmedia/android/MillennialMediaView;Z)Z

    move-result v1

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCanSeekBack:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/MillennialMediaView;->access$402(Lcom/millennialmedia/android/MillennialMediaView;Z)Z

    .line 359
    :cond_0
    return v2
.end method
