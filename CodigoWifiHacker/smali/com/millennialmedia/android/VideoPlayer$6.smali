.class Lcom/millennialmedia/android/VideoPlayer$6;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayer;->playVideo(I)V
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
    .line 713
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$6;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 715
    const-string v0, "Video Playing Complete"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$6;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->showCountdownHud:Z
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$800(Lcom/millennialmedia/android/VideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$6;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #calls: Lcom/millennialmedia/android/VideoPlayer;->hideHud()V
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$900(Lcom/millennialmedia/android/VideoPlayer;)V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$6;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$1000(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$6;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    iget-object v1, p0, Lcom/millennialmedia/android/VideoPlayer$6;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;
    invoke-static {v1}, Lcom/millennialmedia/android/VideoPlayer;->access$1000(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v1

    iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->onCompletionUrl:Ljava/lang/String;

    #calls: Lcom/millennialmedia/android/VideoPlayer;->videoPlayerOnCompletion(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$1100(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)V

    .line 722
    :cond_1
    return-void
.end method
