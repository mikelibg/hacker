.class Lcom/millennialmedia/android/HttpGetRequest;
.super Ljava/lang/Object;
.source "HttpGetRequest.java"


# instance fields
.field private client:Lorg/apache/http/client/HttpClient;

.field private getRequest:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HttpGetRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 31
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HttpGetRequest;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 32
    return-void
.end method

.method static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    .local v2, reader:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 102
    .local v1, line:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 103
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Stream is null."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 107
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 108
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v4, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 112
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 114
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v0, e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_1
    const/4 v4, 0x0

    .line 115
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 116
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 117
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Out of memory."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v5

    .line 122
    :goto_2
    if-eqz v2, :cond_1

    .line 123
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    :cond_1
    :goto_3
    throw v5

    .line 122
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v3, :cond_3

    .line 123
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 128
    :cond_3
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 124
    :catch_1
    move-exception v0

    .line 125
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 124
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 121
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 112
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method static log(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 133
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HttpGetRequest$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 147
    :cond_0
    return-void
.end method

.method static log([Ljava/lang/String;)V
    .locals 2
    .parameter "urls"

    .prologue
    .line 151
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/HttpGetRequest$2;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HttpGetRequest$2;-><init>([Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/HttpGetRequest;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 44
    iget-object v2, p0, Lcom/millennialmedia/android/HttpGetRequest;->client:Lorg/apache/http/client/HttpClient;

    iget-object v3, p0, Lcom/millennialmedia/android/HttpGetRequest;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "MillennialMediaSDK"

    const-string v3, "Out of memory!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method trackConversion(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "goalId"
    .parameter "auid"
    .parameter "isFirstLaunch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    .line 61
    .local v1, i:I
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://cvt.mydas.mobi/handleConversion?goalId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&firstlaunch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, urlBuilder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 64
    const-string v5, "mmh_"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&hdid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, url:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending conversion tracker report: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 72
    iget-object v5, p0, Lcom/millennialmedia/android/HttpGetRequest;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 73
    iget-object v5, p0, Lcom/millennialmedia/android/HttpGetRequest;->client:Lorg/apache/http/client/HttpClient;

    iget-object v6, p0, Lcom/millennialmedia/android/HttpGetRequest;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v5, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 74
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conversion tracker reponse code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 85
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlBuilder:Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 59
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 67
    .restart local v1       #i:I
    .restart local v4       #urlBuilder:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&auid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v4           #urlBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #response:Lorg/apache/http/HttpResponse;
    .restart local v3       #url:Ljava/lang/String;
    .restart local v4       #urlBuilder:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_1
    const-string v5, "MillennialMediaSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conversion tracker unable to complete report: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
