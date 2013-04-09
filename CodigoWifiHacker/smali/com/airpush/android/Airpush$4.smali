.class Lcom/airpush/android/Airpush$4;
.super Ljava/lang/Object;
.source "Airpush.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/Airpush;->sendUserInfo()V
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
.field final synthetic this$0:Lcom/airpush/android/Airpush;


# direct methods
.method constructor <init>(Lcom/airpush/android/Airpush;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/Airpush$4;->this$0:Lcom/airpush/android/Airpush;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 5

    .prologue
    .line 205
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 206
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    const-string v4, "user"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "action"

    const-string v4, "setuserinfo"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "app"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UserInfo Values >>>>>>: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/airpush/android/HttpPostDataTask;

    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://api.airpush.com/v2/api.php"

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 212
    .local v0, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/Airpush$4;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 216
    const-string v2, "AirpushSDK"

    const-string v3, "User Info Sent."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendUserInfo >>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->getAppListStartTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 220
    .local v0, startTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 222
    :cond_0
    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    new-instance v2, Lcom/airpush/android/SetPreferences;

    invoke-static {}, Lcom/airpush/android/Airpush;->access$0()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    iget-object v2, v2, Lcom/airpush/android/SetPreferences;->sendAppInfoAsyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    invoke-interface {v2}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V

    .line 225
    :cond_1
    return-void
.end method
