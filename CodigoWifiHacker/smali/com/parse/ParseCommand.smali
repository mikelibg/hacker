.class Lcom/parse/ParseCommand;
.super Ljava/lang/Object;
.source "ParseCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseCommand$InternalCallback;
    }
.end annotation


# static fields
.field private static CONNECTION_TIMEOUT:I

.field private static INITIAL_DELAY:I

.field private static SOCKET_TIMEOUT:I


# instance fields
.field private attemptsMade:I

.field private callCallbacksOnFailure:Z

.field private cancelled:Z

.field private client:Lorg/apache/http/client/HttpClient;

.field private delay:J

.field private internalCallback:Lcom/parse/ParseCommand$InternalCallback;

.field private localId:Ljava/lang/String;

.field op:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private retryEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 59
    sput v0, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    .line 60
    sput v0, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    .line 61
    const/16 v0, 0x3e8

    sput v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "theOp"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 53
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 54
    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 55
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseCommand;->callCallbacksOnFailure:Z

    .line 79
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 80
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 82
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 83
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    sget v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    sget v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 86
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 87
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 88
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .parameter "theOp"
    .parameter "httpClient"

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 53
    iput-boolean v0, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 54
    iput v0, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommand;->callCallbacksOnFailure:Z

    .line 72
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 74
    iput-object p2, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 75
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 76
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 53
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 54
    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 55
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseCommand;->callCallbacksOnFailure:Z

    .line 95
    const-string v1, "op"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 96
    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 97
    const-string v1, "localId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 99
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 100
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    sget v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    sget v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 103
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 104
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 105
    return-void
.end method

.method static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 8
    .parameter "stringer"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 216
    instance-of v7, p1, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    .line 217
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-object v6, p1

    .line 218
    check-cast v6, Lorg/json/JSONObject;

    .line 219
    .local v6, object:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 220
    .local v4, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v5, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 222
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 226
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 228
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 231
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 246
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #object:Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 235
    :cond_2
    instance-of v7, p1, Lorg/json/JSONArray;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 236
    check-cast v0, Lorg/json/JSONArray;

    .line 237
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 238
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 239
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 241
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 245
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private calculateNextDelay()V
    .locals 4

    .prologue
    .line 449
    iget-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 450
    return-void
.end method

.method private static getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "container"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 475
    .local p1, localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    instance-of v5, p0, Lorg/json/JSONObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 476
    check-cast v4, Lorg/json/JSONObject;

    .line 477
    .local v4, object:Lorg/json/JSONObject;
    const-string v5, "Pointer"

    const-string v6, "__type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 478
    check-cast p0, Lorg/json/JSONObject;

    .end local p0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v4           #object:Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 482
    .restart local v4       #object:Lorg/json/JSONObject;
    .restart local p0
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 483
    .local v3, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 485
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 489
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #object:Lorg/json/JSONObject;
    :cond_2
    instance-of v5, p0, Lorg/json/JSONArray;

    if-eqz v5, :cond_0

    move-object v0, p0

    .line 490
    check-cast v0, Lorg/json/JSONArray;

    .line 491
    .local v0, array:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 492
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private maybeSetupHttpProxy()V
    .locals 6

    .prologue
    .line 411
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, host:Ljava/lang/String;
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, portString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 417
    .local v1, port:I
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "http"

    invoke-direct {v3, v0, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 418
    .local v3, proxy:Lorg/apache/http/HttpHost;
    iget-object v4, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method private sendRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lorg/json/JSONObject;
    .locals 9
    .parameter "client"
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 428
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 429
    .local v2, rawResponse:Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 431
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 439
    .local v1, json:Ljava/lang/String;
    :try_start_1
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 440
    .local v5, tokener:Lorg/json/JSONTokener;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 445
    .local v4, result:Lorg/json/JSONObject;
    return-object v4

    .line 432
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #rawResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Lorg/json/JSONObject;
    .end local v5           #tokener:Lorg/json/JSONTokener;
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v6, "bad protocol"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6

    .line 434
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 435
    .local v0, e:Ljava/io/IOException;
    const-string v6, "i/o failure"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6

    .line 441
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #json:Ljava/lang/String;
    .restart local v2       #rawResponse:Lorg/apache/http/HttpResponse;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 442
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "bad json response"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6
.end method

.method private sendRequestWithRetries()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseCommand;->sendRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    :goto_0
    return-object v1

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Lcom/parse/ParseException;
    iget-boolean v1, p0, Lcom/parse/ParseCommand;->cancelled:Z

    if-eqz v1, :cond_0

    .line 388
    new-instance v1, Lcom/parse/ParseException;

    const/4 v2, 0x1

    const-string v3, "Request cancelled"

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 391
    :cond_0
    iget v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 394
    iget-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 395
    const-string v1, "com.parse.ParseCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetch failed. Waiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/parse/ParseCommand;->delay:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " milliseconds before attempt #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :try_start_1
    iget-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :goto_1
    invoke-direct {p0}, Lcom/parse/ParseCommand;->calculateNextDelay()V

    .line 403
    invoke-direct {p0}, Lcom/parse/ParseCommand;->sendRequestWithRetries()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    .line 405
    :cond_1
    throw v0

    .line 399
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static setInitialDelay(D)V
    .locals 2
    .parameter "seconds"

    .prologue
    .line 464
    const-wide v0, 0x408f400000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    sput v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    .line 465
    return-void
.end method

.method static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 207
    .local v0, stringer:Lorg/json/JSONStringer;
    invoke-static {v0, p0}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 472
    return-void
.end method

.method connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;
    .locals 4
    .parameter "message"
    .parameter "e"

    .prologue
    .line 255
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

.method public enableRetrying()V
    .locals 6

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 460
    sget v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    int-to-long v0, v0

    sget v2, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 461
    return-void
.end method

.method getCacheKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 183
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/parse/ParseCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 190
    .local v2, json:Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 191
    .local v0, currentUser:Lcom/parse/ParseUser;
    const/4 v3, 0x0

    .line 192
    .local v3, sessionToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 194
    if-eqz v3, :cond_0

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseCommand."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 184
    .end local v0           #currentUser:Lcom/parse/ParseUser;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #sessionToken:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 185
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public maybeChangeServerOperation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 506
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, objectId:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 508
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 510
    iget-object v2, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 511
    .local v0, data:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 512
    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    const-string v3, "create"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    const-string v2, "update"

    iput-object v2, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 520
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v1           #objectId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method perform()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommand;->perform(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method perform(Z)Ljava/lang/Object;
    .locals 6
    .parameter "saveToCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 343
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->resolveLocalIds()V

    .line 346
    iget-object v3, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->preparePost()V

    .line 350
    :cond_1
    const/4 v2, 0x0

    .line 351
    .local v2, result:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 354
    .local v0, answer:Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseCommand;->sendRequestWithRetries()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 358
    :try_start_1
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    new-instance v3, Lcom/parse/ParseException;

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "error"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Lorg/json/JSONException;
    :try_start_2
    const-string v3, "corrupted json"

    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 370
    .end local v0           #answer:Ljava/lang/Object;
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/parse/ParseCommand;->callCallbacksOnFailure:Z

    if-eqz v4, :cond_3

    .line 371
    :cond_2
    iget-object v4, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    invoke-interface {v4, p0, v0}, Lcom/parse/ParseCommand$InternalCallback;->perform(Lcom/parse/ParseCommand;Ljava/lang/Object;)V

    :cond_3
    throw v3

    .line 361
    .restart local v0       #answer:Ljava/lang/Object;
    :cond_4
    :try_start_3
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 366
    if-eqz p1, :cond_5

    .line 367
    :try_start_4
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    :cond_5
    iget-object v3, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    if-eqz v3, :cond_7

    if-nez v0, :cond_6

    iget-boolean v3, p0, Lcom/parse/ParseCommand;->callCallbacksOnFailure:Z

    if-eqz v3, :cond_7

    .line 371
    :cond_6
    iget-object v3, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    invoke-interface {v3, p0, v0}, Lcom/parse/ParseCommand$InternalCallback;->perform(Lcom/parse/ParseCommand;Ljava/lang/Object;)V

    .line 375
    :cond_7
    return-object v0
.end method

.method preparePost()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x6d

    .line 261
    iget-object v8, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 262
    .local v6, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 264
    .local v4, fullParams:Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 265
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 266
    .local v5, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v5           #key:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 295
    .local v2, e:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 271
    .end local v2           #e:Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v8, "v"

    const-string v9, "a1.1.9"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v8, "includeRelationStub"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 283
    const-string v8, "iid"

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v8, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    .line 290
    .local v1, currentUser:Lcom/parse/ParseUser;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 291
    const-string v8, "session_token"

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :cond_1
    const-string v8, "%s/%s/%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    aput-object v11, v9, v10

    const-string v10, "2"

    aput-object v10, v9, v13

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 300
    .local v7, url:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 302
    :try_start_2
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF8"

    invoke-direct {v3, v8, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .local v3, entity:Lorg/apache/http/entity/StringEntity;
    const-string v8, "application/json"

    invoke-virtual {v3, v8}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 304
    iget-object v8, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v8, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 309
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    sget-object v8, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    sget-object v9, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .local v0, consumer:Lcom/parse/signpost/OAuthConsumer;
    const/4 v8, 0x0

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :try_start_3
    iget-object v8, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v8}, Lcom/parse/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_3
    .catch Lcom/parse/signpost/exception/OAuthMessageSignerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/parse/signpost/exception/OAuthCommunicationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 320
    return-void

    .line 305
    .end local v0           #consumer:Lcom/parse/signpost/OAuthConsumer;
    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v2

    .line 306
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 313
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #consumer:Lcom/parse/signpost/OAuthConsumer;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v2

    .line 314
    .local v2, e:Lcom/parse/signpost/exception/OAuthMessageSignerException;
    new-instance v8, Lcom/parse/ParseException;

    invoke-virtual {v2}, Lcom/parse/signpost/exception/OAuthMessageSignerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 315
    .end local v2           #e:Lcom/parse/signpost/exception/OAuthMessageSignerException;
    :catch_3
    move-exception v2

    .line 316
    .local v2, e:Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    new-instance v8, Lcom/parse/ParseException;

    invoke-virtual {v2}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 317
    .end local v2           #e:Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    :catch_4
    move-exception v2

    .line 318
    .local v2, e:Lcom/parse/signpost/exception/OAuthCommunicationException;
    new-instance v8, Lcom/parse/ParseException;

    invoke-virtual {v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method put(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseLocalIds()V
    .locals 7

    .prologue
    .line 581
    iget-object v5, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 582
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V

    .line 586
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 587
    .local v0, data:Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v3, localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v3}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 589
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 590
    .local v4, pointer:Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 591
    .local v2, localId:Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #localId:Ljava/lang/String;
    .end local v3           #localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v4           #pointer:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 596
    :cond_1
    return-void
.end method

.method public resolveLocalIds()V
    .locals 8

    .prologue
    .line 531
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 532
    .local v0, data:Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v3, localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v3}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 534
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 535
    .local v5, pointer:Lorg/json/JSONObject;
    const-string v6, "localId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 536
    .local v2, localId:Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, objectId:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 538
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Tried to serialize a command referencing a new, unsaved object."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 545
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #localId:Ljava/lang/String;
    .end local v3           #localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v4           #objectId:Ljava/lang/String;
    .end local v5           #pointer:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 548
    :goto_1
    return-void

    .line 540
    .restart local v0       #data:Ljava/lang/Object;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #localId:Ljava/lang/String;
    .restart local v3       #localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4       #objectId:Ljava/lang/String;
    .restart local v5       #pointer:Lorg/json/JSONObject;
    :cond_0
    const-string v6, "objectId"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v6, "localId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 544
    .end local v2           #localId:Ljava/lang/String;
    .end local v4           #objectId:Ljava/lang/String;
    .end local v5           #pointer:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->maybeChangeServerOperation()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public retainLocalIds()V
    .locals 7

    .prologue
    .line 557
    iget-object v5, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 558
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V

    .line 562
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, data:Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v3, localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v3}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 565
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 566
    .local v4, pointer:Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 567
    .local v2, localId:Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v0           #data:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #localId:Ljava/lang/String;
    .end local v3           #localPointers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v4           #pointer:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 572
    :cond_1
    return-void
.end method

.method setCallCallbacksOnFailure(Z)V
    .locals 0
    .parameter "shouldCall"

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/parse/ParseCommand;->callCallbacksOnFailure:Z

    .line 380
    return-void
.end method

.method setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    .line 327
    return-void
.end method

.method setLocalId(Ljava/lang/String;)V
    .locals 0
    .parameter "theLocalId"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 158
    return-void
.end method

.method setOp(Ljava/lang/String;)V
    .locals 0
    .parameter "theOp"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 150
    return-void
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v0, answer:Lorg/json/JSONObject;
    const-string v2, "op"

    iget-object v3, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "params"

    iget-object v3, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    iget-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 171
    const-string v2, "localId"

    iget-object v3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    return-object v0

    .line 174
    .end local v0           #answer:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
