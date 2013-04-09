.class public Lcom/parse/signpost/commonshttp/HttpRequestAdapter;
.super Ljava/lang/Object;
.source "HttpRequestAdapter.java"

# interfaces
.implements Lcom/parse/signpost/http/HttpRequest;


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;

.field private request:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 22
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p1
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v6, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 53
    .local v5, origHeaders:[Lorg/apache/http/Header;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v2, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 55
    .local v1, h:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v1           #h:Lorg/apache/http/Header;
    :cond_0
    return-object v2
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v2, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 65
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 41
    .local v0, header:Lorg/apache/http/Header;
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    .line 44
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMessagePayload()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->entity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method
