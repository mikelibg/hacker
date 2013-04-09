.class Lcom/airpush/android/IconAds$2;
.super Ljava/lang/Object;
.source "IconAds.java"

# interfaces
.implements Lcom/airpush/android/AsyncTaskCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/IconAds;
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
.field final synthetic this$0:Lcom/airpush/android/IconAds;


# direct methods
.method constructor <init>(Lcom/airpush/android/IconAds;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/IconAds$2;->this$0:Lcom/airpush/android/IconAds;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lauchNewHttpTask()V
    .locals 6

    .prologue
    .line 63
    const-string v3, "AirpushSDK"

    const-string v4, "Sending Install Data...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/airpush/android/IconAds$2;->this$0:Lcom/airpush/android/IconAds;

    #getter for: Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/airpush/android/IconAds;->access$2(Lcom/airpush/android/IconAds;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 66
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "seticoninstalltracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "iInstall"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campaigncreativedata"

    iget-object v5, p0, Lcom/airpush/android/IconAds$2;->this$0:Lcom/airpush/android/IconAds;

    #getter for: Lcom/airpush/android/IconAds;->post:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/airpush/android/IconAds;->access$3(Lcom/airpush/android/IconAds;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/airpush/android/HttpPostDataTask;

    iget-object v3, p0, Lcom/airpush/android/IconAds$2;->this$0:Lcom/airpush/android/IconAds;

    #getter for: Lcom/airpush/android/IconAds;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/airpush/android/IconAds;->access$2(Lcom/airpush/android/IconAds;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "https://api.airpush.com/v2/api.php"

    invoke-direct {v1, v3, v2, v4, p0}, Lcom/airpush/android/HttpPostDataTask;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V

    .line 74
    .local v1, httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v3}, Lcom/airpush/android/HttpPostDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1           #httpPostTask:Lcom/airpush/android/HttpPostDataTask;
    .end local v2           #values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Error in send listener."

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onTaskComplete(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/airpush/android/IconAds$2;->onTaskComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskComplete(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 58
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Icon Install returns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
