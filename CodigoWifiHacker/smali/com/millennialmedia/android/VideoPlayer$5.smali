.class Lcom/millennialmedia/android/VideoPlayer$5;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/VideoPlayer;->logEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/VideoPlayer;

.field final synthetic val$logString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/VideoPlayer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/millennialmedia/android/VideoPlayer$5;->this$0:Lcom/millennialmedia/android/VideoPlayer;

    iput-object p2, p0, Lcom/millennialmedia/android/VideoPlayer$5;->val$logString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 607
    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v1}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 610
    .local v1, getRequest:Lcom/millennialmedia/android/HttpGetRequest;
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/VideoPlayer$5;->val$logString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
