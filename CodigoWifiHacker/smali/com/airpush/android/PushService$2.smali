.class Lcom/airpush/android/PushService$2;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/PushService;->postAdValues(Landroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/airpush/android/PushService$2;->this$0:Lcom/airpush/android/PushService;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 5

    .prologue
    .line 138
    iget-object v2, p0, Lcom/airpush/android/PushService$2;->this$0:Lcom/airpush/android/PushService;

    #getter for: Lcom/airpush/android/PushService;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/airpush/android/PushService;->access$0(Lcom/airpush/android/PushService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 139
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    new-instance v2, Lcom/airpush/android/UserDetails;

    iget-object v3, p0, Lcom/airpush/android/PushService$2;->this$0:Lcom/airpush/android/PushService;

    invoke-virtual {v3}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    .line 141
    new-instance v2, Lcom/airpush/android/SetPreferences;

    iget-object v3, p0, Lcom/airpush/android/PushService$2;->this$0:Lcom/airpush/android/PushService;

    invoke-virtual {v3}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 143
    iget-object v2, p0, Lcom/airpush/android/PushService$2;->this$0:Lcom/airpush/android/PushService;

    invoke-virtual {v2}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 145
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "model"

    const-string v4, "log"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "action"

    const-string v4, "settexttracking"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event"

    const-string v4, "TrayClicked"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "campId"

    invoke-static {}, Lcom/airpush/android/Util;->getCampId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "creativeId"

    invoke-static {}, Lcom/airpush/android/Util;->getCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Posting values: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/airpush/android/HttpPostDataTask;

    iget-object v2, p0, Lcom/airpush/android/PushService$2;->this$0:Lcom/airpush/android/PushService;

    const-string v3, "https://api.airpush.com/v2/api.php"

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 153
    .local v0, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 154
    return-void
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/PushService$2;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 157
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Click : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method
