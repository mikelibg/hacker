.class Lcom/parse/ParseRequestRetryer;
.super Ljava/lang/Object;
.source "ParseRequestRetryer.java"


# static fields
.field public static testClient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private attemptsMade:I

.field private client:Lorg/apache/http/client/HttpClient;

.field private delay:J

.field private maxAttempts:I

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRequestRetryer;->testClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;JI)V
    .locals 4
    .parameter "newRequest"
    .parameter "initialDelay"
    .parameter "newMaxAttempts"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    .line 33
    sget-object v0, Lcom/parse/ParseRequestRetryer;->testClient:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/parse/ParseRequestRetryer;->testClient:Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    .line 35
    const-wide/16 p2, 0x1

    .line 41
    :goto_0
    iput-object p1, p0, Lcom/parse/ParseRequestRetryer;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 42
    iput p4, p0, Lcom/parse/ParseRequestRetryer;->maxAttempts:I

    .line 43
    long-to-double v0, p2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    .line 44
    return-void

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    .line 38
    iget-object v0, p0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method private sendOneRequest(Lcom/parse/ProgressCallback;)[B
    .locals 19
    .parameter "progressCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseRequestRetryer;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v13, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 55
    .local v10, response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseRequestRetryer;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v13}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 56
    const/4 v12, -0x1

    .line 57
    .local v12, totalSize:I
    const-string v13, "Content-Length"

    invoke-interface {v10, v13}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 59
    .local v3, contentLengthHeader:[Lorg/apache/http/Header;
    array-length v13, v3

    if-lez v13, :cond_0

    .line 60
    const/4 v13, 0x0

    aget-object v13, v3, v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 62
    :cond_0
    const/4 v5, 0x0

    .line 64
    .local v5, downloadedSize:I
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 65
    .local v11, responseStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v2, buffer:Ljava/io/ByteArrayOutputStream;
    const v13, 0x8000

    new-array v4, v13, [B

    .line 70
    .local v4, data:[B
    :cond_1
    :goto_0
    const/4 v13, 0x0

    array-length v14, v4

    invoke-virtual {v11, v4, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .local v7, nRead:I
    const/4 v13, -0x1

    if-eq v7, v13, :cond_2

    .line 71
    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 72
    add-int/2addr v5, v7

    .line 73
    if-eqz p1, :cond_1

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 74
    int-to-float v13, v5

    int-to-float v14, v12

    div-float/2addr v13, v14

    const/high16 v14, 0x42c8

    mul-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 77
    .local v9, progressToReport:I
    new-instance v8, Lcom/parse/ParseRequestRetryer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v8, v0, v1, v9}, Lcom/parse/ParseRequestRetryer$1;-><init>(Lcom/parse/ParseRequestRetryer;Lcom/parse/ParseCallback;I)V

    .line 84
    .local v8, progressTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Integer;>;"
    invoke-static {v8}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    .end local v2           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v3           #contentLengthHeader:[Lorg/apache/http/Header;
    .end local v4           #data:[B
    .end local v5           #downloadedSize:I
    .end local v7           #nRead:I
    .end local v8           #progressTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Integer;>;"
    .end local v9           #progressToReport:I
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #responseStream:Ljava/io/InputStream;
    .end local v12           #totalSize:I
    :catch_0
    move-exception v6

    .line 93
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 94
    const-string v13, "bad protocol"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/parse/ParseRequestRetryer;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v13

    throw v13

    .line 88
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v2       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #contentLengthHeader:[Lorg/apache/http/Header;
    .restart local v4       #data:[B
    .restart local v5       #downloadedSize:I
    .restart local v7       #nRead:I
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #responseStream:Ljava/io/InputStream;
    .restart local v12       #totalSize:I
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 90
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 105
    .end local v2           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v3           #contentLengthHeader:[Lorg/apache/http/Header;
    .end local v4           #data:[B
    .end local v5           #downloadedSize:I
    .end local v7           #nRead:I
    .end local v11           #responseStream:Ljava/io/InputStream;
    .end local v12           #totalSize:I
    :goto_1
    return-object v13

    .line 95
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v6

    .line 96
    .local v6, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseRequestRetryer;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v13}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 97
    const-string v13, "i/o failure"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/parse/ParseRequestRetryer;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v13

    throw v13

    .line 100
    .end local v6           #e:Ljava/io/IOException;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    div-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    if-eq v13, v14, :cond_4

    .line 101
    new-instance v13, Lcom/parse/ParseException;

    const/16 v14, 0x64

    const-string v15, "Upload to S3 failed. %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 105
    :cond_4
    const/4 v13, 0x0

    goto :goto_1
.end method


# virtual methods
.method connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;
    .locals 4
    .parameter "message"
    .parameter "e"

    .prologue
    .line 138
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public go(Lcom/parse/ProgressCallback;)[B
    .locals 6
    .parameter "progressCallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 115
    .local v1, response:[B
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseRequestRetryer;->sendOneRequest(Lcom/parse/ProgressCallback;)[B
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :cond_0
    :goto_0
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Lcom/parse/ParseException;
    iget v2, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    .line 118
    iget v2, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    iget v3, p0, Lcom/parse/ParseRequestRetryer;->maxAttempts:I

    if-ge v2, v3, :cond_1

    .line 119
    const-string v2, "com.parse.ParseRequestRetryer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request failed. Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds before attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/parse/ParseRequestRetryer;->attemptsMade:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_1
    iget-wide v2, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_1
    iget-wide v2, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/parse/ParseRequestRetryer;->delay:J

    .line 127
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequestRetryer;->go(Lcom/parse/ProgressCallback;)[B

    goto :goto_0

    .line 128
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseRequestRetryer;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const-string v2, "com.parse.ParseRequestRetryer"

    const-string v3, "Request failed. Giving up."

    invoke-static {v2, v3}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    throw v0

    .line 123
    :catch_1
    move-exception v2

    goto :goto_1
.end method
