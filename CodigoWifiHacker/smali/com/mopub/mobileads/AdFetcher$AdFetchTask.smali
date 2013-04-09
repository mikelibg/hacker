.class Lcom/mopub/mobileads/AdFetcher$AdFetchTask;
.super Landroid/os/AsyncTask;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFetchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/AdFetcher$AdFetchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

.field private mAdView:Lcom/mopub/mobileads/AdView;

.field private mException:Ljava/lang/Exception;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mTaskId:J

.field private mTimeoutMilliseconds:I


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/AdFetcher;)V
    .locals 2
    .parameter "adFetcher"

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 147
    const/16 v0, 0x2710

    iput v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTimeoutMilliseconds:I

    .line 150
    iput-object p1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    .line 152
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mAdView:Lcom/mopub/mobileads/AdView;
    invoke-static {v0}, Lcom/mopub/mobileads/AdFetcher;->access$100(Lcom/mopub/mobileads/AdFetcher;)Lcom/mopub/mobileads/AdView;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    .line 153
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mCurrentTaskId:J
    invoke-static {v0}, Lcom/mopub/mobileads/AdFetcher;->access$200(Lcom/mopub/mobileads/AdFetcher;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    .line 155
    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/AdFetcher;Lcom/mopub/mobileads/AdFetcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;-><init>(Lcom/mopub/mobileads/AdFetcher;)V

    return-void
.end method

.method private fetch(Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    .locals 12
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 169
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, httpget:Lorg/apache/http/client/methods/HttpGet;
    const-string v10, "User-Agent"

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mUserAgent:Ljava/lang/String;
    invoke-static {v11}, Lcom/mopub/mobileads/AdFetcher;->access$300(Lcom/mopub/mobileads/AdFetcher;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 240
    :goto_0
    return-object v9

    .line 178
    :cond_0
    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v10}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 179
    :cond_1
    const-string v10, "MoPub"

    const-string v11, "Error loading ad: AdView has already been GCed or destroyed."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 183
    :cond_2
    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v10, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 184
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 186
    .local v3, entity:Lorg/apache/http/HttpEntity;
    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_4

    .line 188
    :cond_3
    const-string v10, "MoPub"

    const-string v11, "MoPub server returned invalid response."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_4
    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v10, v8}, Lcom/mopub/mobileads/AdView;->configureAdViewUsingHeadersFromHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 195
    const-string v10, "X-Adtype"

    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 196
    .local v0, atHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "clear"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 197
    :cond_5
    const-string v10, "MoPub"

    const-string v11, "MoPub server returned no ad."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "custom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 203
    const-string v9, "MoPub"

    const-string v10, "Performing custom event."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v9, "X-Customselector"

    invoke-interface {v8, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 205
    .local v1, cmHeader:Lorg/apache/http/Header;
    new-instance v9, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;

    iget-object v10, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v9, v10, v1}, Lcom/mopub/mobileads/AdFetcher$PerformCustomEventTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Lorg/apache/http/Header;)V

    goto :goto_0

    .line 207
    .end local v1           #cmHeader:Lorg/apache/http/Header;
    :cond_7
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mraid"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 209
    const-string v10, "MoPub"

    const-string v11, "Loading mraid ad"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v7, paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "X-Adtype"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, data:Ljava/lang/String;
    const-string v10, "X-Nativeparams"

    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v10, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v10, v11, v7, v9}, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdFetcher$1;)V

    move-object v9, v10

    goto/16 :goto_0

    .line 217
    .end local v2           #data:Ljava/lang/String;
    .end local v7           #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "html"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 219
    const-string v10, "MoPub"

    const-string v11, "Loading native ad"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 222
    .restart local v7       #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "X-Adtype"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v10, "X-Nativeparams"

    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 225
    .local v6, npHeader:Lorg/apache/http/Header;
    const-string v10, "X-Nativeparams"

    const-string v11, "{}"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    if-eqz v6, :cond_9

    .line 227
    const-string v10, "X-Nativeparams"

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_9
    const-string v10, "X-Fulladtype"

    invoke-interface {v8, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 231
    .local v4, ftHeader:Lorg/apache/http/Header;
    if-eqz v4, :cond_a

    .line 232
    const-string v10, "X-Fulladtype"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_a
    new-instance v10, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v10, v11, v7, v9}, Lcom/mopub/mobileads/AdFetcher$LoadNativeAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/util/HashMap;Lcom/mopub/mobileads/AdFetcher$1;)V

    move-object v9, v10

    goto/16 :goto_0

    .line 239
    .end local v4           #ftHeader:Lorg/apache/http/Header;
    .end local v6           #npHeader:Lorg/apache/http/Header;
    .end local v7           #paramsHash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-direct {p0, v3}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .restart local v2       #data:Ljava/lang/String;
    new-instance v10, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;

    iget-object v11, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-direct {v10, v11, v2, v9}, Lcom/mopub/mobileads/AdFetcher$LoadHtmlAdTaskResult;-><init>(Lcom/mopub/mobileads/AdView;Ljava/lang/String;Lcom/mopub/mobileads/AdFetcher$1;)V

    move-object v9, v10

    goto/16 :goto_0
.end method

.method private getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 326
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTimeoutMilliseconds:I

    if-lez v1, :cond_0

    .line 328
    iget v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTimeoutMilliseconds:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 329
    iget v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTimeoutMilliseconds:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 334
    :cond_0
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 336
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v1
.end method

.method private httpEntityToString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 6
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 295
    .local v1, inputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 296
    .local v2, numberBytesRead:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v3, out:Ljava/lang/StringBuffer;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 299
    .local v0, bytes:[B
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 300
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 306
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isMostCurrentTask()Z
    .locals 4

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    #getter for: Lcom/mopub/mobileads/AdFetcher;->mLastCompletedTaskId:J
    invoke-static {v2}, Lcom/mopub/mobileads/AdFetcher;->access$700(Lcom/mopub/mobileads/AdFetcher;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iput-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    .line 312
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 314
    .local v0, manager:Lorg/apache/http/conn/ClientConnectionManager;
    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 317
    :cond_0
    iput-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 320
    .end local v0           #manager:Lorg/apache/http/conn/ClientConnectionManager;
    :cond_1
    iput-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    .line 321
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    .locals 3
    .parameter "urls"

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, result:Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->fetch(Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, exception:Ljava/lang/Exception;
    iput-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/AdFetcher$AdFetchResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->isMostCurrentTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "MoPub"

    const-string v1, "Ad response is stale."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    .line 289
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "Ad loading was cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while loading ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    #calls: Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher;->access$600(Lcom/mopub/mobileads/AdFetcher;J)V

    .line 288
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    goto :goto_0
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/AdFetcher$AdFetchResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->isMostCurrentTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const-string v0, "MoPub"

    const-string v1, "Ad response is stale."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    .line 273
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    :cond_1
    if-eqz p1, :cond_2

    .line 254
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->cleanup()V

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    #calls: Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher;->access$600(Lcom/mopub/mobileads/AdFetcher;J)V

    .line 257
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    goto :goto_0

    .line 261
    :cond_3
    if-nez p1, :cond_5

    .line 262
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 263
    const-string v0, "MoPub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while loading ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdView:Lcom/mopub/mobileads/AdView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdView;->loadFailUrl()V

    .line 271
    :goto_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mAdFetcher:Lcom/mopub/mobileads/AdFetcher;

    iget-wide v1, p0, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->mTaskId:J

    #calls: Lcom/mopub/mobileads/AdFetcher;->markTaskCompleted(J)V
    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/AdFetcher;->access$600(Lcom/mopub/mobileads/AdFetcher;J)V

    .line 272
    invoke-direct {p0}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->releaseResources()V

    goto :goto_0

    .line 267
    :cond_5
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->execute()V

    .line 268
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;->cleanup()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    check-cast p1, Lcom/mopub/mobileads/AdFetcher$AdFetchResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdFetcher$AdFetchTask;->onPostExecute(Lcom/mopub/mobileads/AdFetcher$AdFetchResult;)V

    return-void
.end method
