.class Lcom/pad/android/iappad/AdController$OfferPolling;
.super Ljava/util/TimerTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OfferPolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pad/android/iappad/AdController;


# direct methods
.method constructor <init>(Lcom/pad/android/iappad/AdController;)V
    .locals 0
    .parameter

    .prologue
    .line 2316
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$OfferPolling;->this$0:Lcom/pad/android/iappad/AdController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 2321
    new-instance v0, Lcom/pad/android/iappad/AdController$Polling;

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$OfferPolling;->this$0:Lcom/pad/android/iappad/AdController;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pad/android/iappad/AdController$Polling;-><init>(Lcom/pad/android/iappad/AdController;Lcom/pad/android/iappad/AdController$Polling;)V

    .line 2324
    .local v0, poll:Lcom/pad/android/iappad/AdController$Polling;
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pad/android/iappad/AdController$OfferPolling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/pad/android/iappad/AdController;->access$8(Lcom/pad/android/iappad/AdController;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pollurl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pad/android/iappad/AdController$OfferPolling;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->sectionid:Ljava/lang/String;
    invoke-static {v4}, Lcom/pad/android/iappad/AdController;->access$0(Lcom/pad/android/iappad/AdController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/pad/android/iappad/AdController$Polling;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2327
    :goto_0
    return-void

    .line 2326
    :catch_0
    move-exception v1

    goto :goto_0
.end method
