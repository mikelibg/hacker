.class Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/android/VideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/android/VideoPlayer;Lcom/millennialmedia/android/VideoPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1402
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;-><init>(Lcom/millennialmedia/android/VideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    const-string v0, "MillennialMediaSDK"

    const-string v1, "VideoPlayer - Screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    const/4 v1, 0x1

    #setter for: Lcom/millennialmedia/android/VideoPlayer;->waitForUserPresent:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$1202(Lcom/millennialmedia/android/VideoPlayer;Z)Z

    .line 1422
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1414
    const-string v0, "MillennialMediaSDK"

    const-string v1, "VideoPlayer - Screen on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1416
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    const-string v0, "MillennialMediaSDK"

    const-string v1, "VideoPlayer - Screen unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    #calls: Lcom/millennialmedia/android/VideoPlayer;->resumeVideo()V
    invoke-static {v0}, Lcom/millennialmedia/android/VideoPlayer;->access$1300(Lcom/millennialmedia/android/VideoPlayer;)V

    .line 1420
    iget-object v0, p0, Lcom/millennialmedia/android/VideoPlayer$ScreenReceiver;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/millennialmedia/android/VideoPlayer;->waitForUserPresent:Z
    invoke-static {v0, v1}, Lcom/millennialmedia/android/VideoPlayer;->access$1202(Lcom/millennialmedia/android/VideoPlayer;Z)Z

    goto :goto_0
.end method
