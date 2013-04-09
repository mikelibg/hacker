.class public Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;
.super Lcom/parse/signpost/AbstractOAuthProvider;
.source "CommonsHttpOAuthProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"
    .parameter "httpClient"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/signpost/AbstractOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p4, p0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 51
    return-void
.end method


# virtual methods
.method protected closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    .locals 3
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    invoke-interface {p2}, Lcom/parse/signpost/http/HttpResponse;->unwrap()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 74
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected createRequest(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;
    .locals 2
    .parameter "endpointUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;

    invoke-direct {v1, v0}, Lcom/parse/signpost/commonshttp/HttpRequestAdapter;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v1
.end method

.method protected sendRequest(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v2, p0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {p1}, Lcom/parse/signpost/http/HttpRequest;->unwrap()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 66
    .local v0, response:Lorg/apache/http/HttpResponse;
    new-instance v1, Lcom/parse/signpost/commonshttp/HttpResponseAdapter;

    invoke-direct {v1, v0}, Lcom/parse/signpost/commonshttp/HttpResponseAdapter;-><init>(Lorg/apache/http/HttpResponse;)V

    return-object v1
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "httpClient"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 55
    return-void
.end method
