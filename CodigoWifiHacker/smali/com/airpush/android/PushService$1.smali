.class Lcom/airpush/android/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/PushService;->getPushMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airpush/android/AsyncTaskCompleteListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/PushService;


# direct methods
.method constructor <init>(Lcom/airpush/android/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 6

    .prologue
    .line 102
    iget-object v3, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    #getter for: Lcom/airpush/android/PushService;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/airpush/android/PushService;->access$0(Lcom/airpush/android/PushService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "message"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "getmessage"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get Push Values: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 106
    const-string v1, "https://api.airpush.com/v2/api.php"

    .line 108
    .local v1, url:Ljava/lang/String;
    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const-string v1, "https://api.airpush.com/testmsg2.php"

    .line 111
    :cond_0
    new-instance v0, Lcom/airpush/android/HttpPostDataTask;

    iget-object v3, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    invoke-direct {v0, v3, v2, v1, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 112
    .local v0, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v3}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 113
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/PushService$1;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Push Message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/airpush/android/FormatAds;

    iget-object v1, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    invoke-virtual {v1}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/airpush/android/FormatAds;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/airpush/android/FormatAds;->parseJson(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "Push message response is null."

    invoke-static {v0}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    #getter for: Lcom/airpush/android/PushService;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/airpush/android/PushService;->access$0(Lcom/airpush/android/PushService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V

    goto :goto_0
.end method
