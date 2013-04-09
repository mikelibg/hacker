.class Lcom/airpush/android/DeliverNotification$2;
.super Ljava/lang/Object;
.source "DeliverNotification.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/DeliverNotification;
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
.field final synthetic this$0:Lcom/airpush/android/DeliverNotification;


# direct methods
.method constructor <init>(Lcom/airpush/android/DeliverNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 6

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    iget-object v3, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/airpush/android/DeliverNotification;->access$2(Lcom/airpush/android/DeliverNotification;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/airpush/android/DeliverNotification;->access$4(Lcom/airpush/android/DeliverNotification;Ljava/util/List;)V

    .line 64
    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v2}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v2}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "settexttracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v2}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "trayDelivered"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v2}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    invoke-static {}, Lcom/airpush/android/Util;->getCampId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v2}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    invoke-static {}, Lcom/airpush/android/Util;->getCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Values in PushService : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v3}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 72
    const-string v2, "AirpushSDK"

    const-string v3, "Posting Notification value received"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/airpush/android/HttpPostDataTask;

    iget-object v2, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/airpush/android/DeliverNotification;->access$2(Lcom/airpush/android/DeliverNotification;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/airpush/android/DeliverNotification$2;->this$0:Lcom/airpush/android/DeliverNotification;

    #getter for: Lcom/airpush/android/DeliverNotification;->values:Ljava/util/List;
    invoke-static {v3}, Lcom/airpush/android/DeliverNotification;->access$5(Lcom/airpush/android/DeliverNotification;)Ljava/util/List;

    move-result-object v3

    const-string v4, "https://api.airpush.com/v2/api.php"

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 75
    .local v1, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v1           #httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/DeliverNotification$2;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 55
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notification Received : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method
