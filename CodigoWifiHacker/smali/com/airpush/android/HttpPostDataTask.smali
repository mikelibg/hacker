.class final Lcom/airpush/android/HttpPostDataTask;
.super Landroid/os/AsyncTask;
.source "HttpPostDataTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/HttpPostDataTask$InflatingEntity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"


# instance fields
.field private final URL_TO_CALL:Ljava/lang/String;

.field private final callback:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private responseString:Ljava/lang/String;

.field private valuePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/airpush/android/AsyncTaskCompleteListener;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "api_url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p4, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Calling URL:> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/airpush/android/HttpPostDataTask;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/airpush/android/HttpPostDataTask;->valuePairs:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/airpush/android/HttpPostDataTask;->URL_TO_CALL:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/airpush/android/HttpPostDataTask;->callback:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 48
    return-void
.end method


# virtual methods
.method protected declared-synchronized doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .parameter "params"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/airpush/android/HttpPostDataTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 55
    :try_start_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/airpush/android/HttpPostDataTask;->URL_TO_CALL:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v8, p0, Lcom/airpush/android/HttpPostDataTask;->valuePairs:Ljava/util/List;

    invoke-direct {v7, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 57
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 59
    .local v2, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v5, 0x1b58

    .line 60
    .local v5, timeoutConnection:I
    invoke-static {v2, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    const/16 v6, 0x1b58

    .line 63
    .local v6, timeoutSocket:I
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 67
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v7, Lcom/airpush/android/HttpPostDataTask$1;

    invoke-direct {v7, p0}, Lcom/airpush/android/HttpPostDataTask$1;-><init>(Lcom/airpush/android/HttpPostDataTask;)V

    invoke-virtual {v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 76
    new-instance v7, Lcom/airpush/android/HttpPostDataTask$2;

    invoke-direct {v7, p0}, Lcom/airpush/android/HttpPostDataTask$2;-><init>(Lcom/airpush/android/HttpPostDataTask;)V

    invoke-virtual {v1, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 96
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    check-cast v4, Lorg/apache/http/message/BasicHttpResponse;

    .line 98
    .local v4, httpResponse:Lorg/apache/http/message/BasicHttpResponse;
    const-string v7, "AirpushSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Status Code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v4}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/airpush/android/HttpPostDataTask;->responseString:Ljava/lang/String;

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Response String:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/airpush/android/HttpPostDataTask;->responseString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 102
    iget-object v7, p0, Lcom/airpush/android/HttpPostDataTask;->responseString:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/airpush/android/HttpPostDataTask;->responseString:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 103
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 128
    .end local v1           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #httpResponse:Lorg/apache/http/message/BasicHttpResponse;
    .end local v5           #timeoutConnection:I
    .end local v6           #timeoutSocket:I
    :goto_0
    monitor-exit p0

    return-object v7

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/net/SocketTimeoutException;
    :try_start_2
    const-string v7, "SocketTimeoutException Thrown"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_0
    :goto_1
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    .line 112
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v7, "ClientProtocolException Thrown"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 52
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 114
    :catch_2
    move-exception v0

    .line 116
    .local v0, e:Ljava/net/MalformedURLException;
    :try_start_3
    const-string v7, "MalformedURLException Thrown"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 119
    .local v0, e:Ljava/io/IOException;
    const-string v7, "IOException Thrown"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    goto :goto_1

    .line 122
    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airpush/android/HttpPostDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/airpush/android/HttpPostDataTask;->callback:Lcom/airpush/android/AsyncTaskCompleteListener;

    iget-object v2, p0, Lcom/airpush/android/HttpPostDataTask;->responseString:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/airpush/android/AsyncTaskCompleteListener;->onTaskComplete(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 137
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/airpush/android/HttpPostDataTask;->callback:Lcom/airpush/android/AsyncTaskCompleteListener;

    iget-object v2, p0, Lcom/airpush/android/HttpPostDataTask;->responseString:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/airpush/android/AsyncTaskCompleteListener;->onTaskComplete(Ljava/lang/Object;)V

    .line 138
    const-string v1, "Call Failed due to Network error. "

    invoke-static {v1}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 134
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/airpush/android/HttpPostDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
