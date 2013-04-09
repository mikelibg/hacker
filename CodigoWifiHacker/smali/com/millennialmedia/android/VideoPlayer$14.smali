.class Lcom/millennialmedia/android/VideoPlayer$14;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayer;->startServer(Ljava/lang/String;IZ)V
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
    .line 1368
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$14;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$14;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$1000(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$14;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #getter for: Lcom/millennialmedia/android/VideoPlayer;->videoAd:Lcom/millennialmedia/android/VideoAd;
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$1000(Lcom/millennialmedia/android/VideoPlayer;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->videoError:[Ljava/lang/String;

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 1372
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
