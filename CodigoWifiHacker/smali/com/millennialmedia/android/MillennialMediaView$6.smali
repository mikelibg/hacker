.class Lcom/millennialmedia/android/MillennialMediaView$6;
.super Ljava/lang/Object;
.source "MillennialMediaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 435
    iput-object p1, p0, Lcom/millennialmedia/android/MillennialMediaView$6;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/millennialmedia/android/MillennialMediaView$6;->this$0:Lcom/millennialmedia/android/MillennialMediaView;

    #setter for: Lcom/millennialmedia/android/MillennialMediaView;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/millennialmedia/android/MillennialMediaView;->access$1602(Lcom/millennialmedia/android/MillennialMediaView;I)I

    .line 438
    return-void
.end method
