.class public Lcom/revmob/ads/internal/HTTPHelper;
.super Ljava/lang/Object;
.source "HTTPHelper.java"


# static fields
.field private static final REVMOB:Ljava/lang/String; = "RevMob"


# instance fields
.field private httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/revmob/ads/internal/HTTPHelper;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 5
    .parameter "client"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/revmob/ads/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 41
    iget-object v1, p0, Lcom/revmob/ads/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 42
    .local v0, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 43
    return-void
.end method

.method public static encodedResponseBody(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 9
    .parameter "entity"

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v5, 0x0

    .line 99
    :goto_0
    return-object v5

    .line 84
    :cond_0
    const-string v5, ""

    .line 86
    .local v5, response:Ljava/lang/String;
    const/16 v4, 0x400

    .line 87
    .local v4, length:I
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 88
    .local v6, sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 89
    .local v3, isr:Ljava/io/InputStreamReader;
    new-array v0, v4, [C

    .line 91
    .local v0, buff:[C
    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x3ff

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, cnt:I
    if-lez v1, :cond_1

    .line 92
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 96
    .end local v0           #buff:[C
    .end local v1           #cnt:I
    .end local v3           #isr:Ljava/io/InputStreamReader;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 97
    .local v2, ioe:Ljava/io/IOException;
    const-string v7, "RevMob"

    const-string v8, "Read error."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #buff:[C
    .restart local v1       #cnt:I
    .restart local v3       #isr:Ljava/io/InputStreamReader;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "requestInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/revmob/ads/internal/HTTPHelper;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v2, "RevMob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on requesting path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Is the device connected to the internet?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0           #e:Ljava/net/UnknownHostException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    .local v0, e:Lorg/apache/http/conn/HttpHostConnectException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 111
    .end local v0           #e:Lorg/apache/http/conn/HttpHostConnectException;
    :catch_2
    move-exception v0

    .line 112
    .local v0, e:Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-instance v2, Ljavax/net/ssl/SSLException;

    invoke-direct {v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 113
    .end local v0           #e:Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_3
    move-exception v0

    .line 115
    .local v0, e:Ljava/net/SocketException;
    const-string v2, "RevMob"

    const-string v3, "Server took too long to respond."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    .end local v0           #e:Ljava/net/SocketException;
    :catch_4
    move-exception v0

    .line 117
    .local v0, e:Ljava/io/IOException;
    const-string v2, "RevMob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on requesting path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Did the device lost its connection?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private sendRequestDealingWithSSLErrors(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter "requestInfo"

    .prologue
    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/revmob/ads/internal/HTTPHelper;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 145
    :goto_0
    return-object v4

    .line 126
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljavax/net/ssl/SSLException;
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, url:Ljava/lang/String;
    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    new-instance v2, Ljava/net/URI;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https://"

    const-string v6, "http://"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, httpURL:Ljava/net/URI;
    invoke-virtual {p1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/revmob/ads/internal/HTTPHelper;->sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 138
    .end local v2           #httpURL:Ljava/net/URI;
    .end local v3           #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 140
    .local v1, e1:Ljavax/net/ssl/SSLException;
    const-string v4, "RevMob"

    const-string v5, "Problem with SSL. What is the version of your Android?"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v1           #e1:Ljavax/net/ssl/SSLException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 141
    :catch_2
    move-exception v1

    .line 142
    .local v1, e1:Ljava/net/URISyntaxException;
    const-string v4, "RevMob"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid url: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "url"

    .prologue
    .line 48
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lcom/revmob/ads/internal/HTTPHelper;->sendRequestDealingWithSSLErrors(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public getAndReturnTheStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "url"

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/revmob/ads/internal/HTTPHelper;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 70
    .local v1, response:Lorg/apache/http/HttpResponse;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 78
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "RevMob"

    const-string v3, "Read error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    const-string v2, "RevMob"

    const-string v3, "Read error."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "url"
    .parameter "entity"

    .prologue
    .line 54
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 56
    const-string v2, "content-type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, v1}, Lcom/revmob/ads/internal/HTTPHelper;->sendRequestDealingWithSSLErrors(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 64
    .end local v1           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "RevMob"

    const-string v3, "Encoding error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "RevMob"

    const-string v3, "Unknown error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
