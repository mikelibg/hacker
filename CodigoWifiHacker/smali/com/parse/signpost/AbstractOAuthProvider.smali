.class public abstract Lcom/parse/signpost/AbstractOAuthProvider;
.super Ljava/lang/Object;
.source "AbstractOAuthProvider.java"

# interfaces
.implements Lcom/parse/signpost/OAuthProvider;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accessTokenEndpointUrl:Ljava/lang/String;

.field private authorizationWebsiteUrl:Ljava/lang/String;

.field private defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isOAuth10a:Z

.field private transient listener:Lcom/parse/signpost/OAuthProviderListener;

.field private requestTokenEndpointUrl:Ljava/lang/String;

.field private responseParameters:Lcom/parse/signpost/http/HttpParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "requestTokenEndpointUrl"
    .parameter "accessTokenEndpointUrl"
    .parameter "authorizationWebsiteUrl"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v0}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    .line 59
    return-void
.end method


# virtual methods
.method protected closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    .locals 0
    .parameter "request"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 286
    return-void
.end method

.method protected abstract createRequest(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getAccessTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorizationWebsiteUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
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
    .line 334
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getRequestTokenEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    invoke-virtual {v0, p1}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseParameters()Lcom/parse/signpost/http/HttpParameters;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    return-object v0
.end method

.method protected handleUnexpectedResponse(ILcom/parse/signpost/http/HttpResponse;)V
    .locals 6
    .parameter "statusCode"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 226
    if-nez p2, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p2}, Lcom/parse/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 232
    .local v1, reader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v2, responseBody:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, line:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 244
    new-instance v3, Lcom/parse/signpost/exception/OAuthCommunicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service provider responded in error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lcom/parse/signpost/http/HttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 242
    :pswitch_0
    new-instance v3, Lcom/parse/signpost/exception/OAuthNotAuthorizedException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/parse/signpost/exception/OAuthNotAuthorizedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 240
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method

.method public isOAuth10a()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    return v0
.end method

.method public removeListener(Lcom/parse/signpost/OAuthProviderListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    .line 343
    return-void
.end method

.method public retrieveAccessToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)V
    .locals 4
    .parameter "consumer"
    .parameter "oauthVerifier"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;,
            Lcom/parse/signpost/exception/OAuthNotAuthorizedException;,
            Lcom/parse/signpost/exception/OAuthExpectationFailedException;,
            Lcom/parse/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v1, "Authorized request token or token secret not set. Did you retrieve an authorized request token before?"

    invoke-direct {v0, v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 98
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "oauth_verifier"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->accessTokenEndpointUrl:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/signpost/AbstractOAuthProvider;->retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public retrieveRequestToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "consumer"
    .parameter "callbackUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;,
            Lcom/parse/signpost/exception/OAuthNotAuthorizedException;,
            Lcom/parse/signpost/exception/OAuthExpectationFailedException;,
            Lcom/parse/signpost/exception/OAuthCommunicationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 66
    invoke-interface {p1, v1, v1}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->requestTokenEndpointUrl:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oauth_callback"

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {p0, p1, v1, v2}, Lcom/parse/signpost/AbstractOAuthProvider;->retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    const-string v2, "oauth_callback_confirmed"

    invoke-virtual {v1, v2}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, callbackConfirmed:Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    const-string v2, "oauth_callback_confirmed"

    invoke-virtual {v1, v2}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 74
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    .line 78
    iget-boolean v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "oauth_token"

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/parse/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->authorizationWebsiteUrl:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "oauth_token"

    aput-object v3, v2, v4

    invoke-interface {p1}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "oauth_callback"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lcom/parse/signpost/OAuth;->addQueryParameters(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected varargs retrieveToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 15
    .parameter "consumer"
    .parameter "endpointUrl"
    .parameter "additionalParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/signpost/exception/OAuthMessageSignerException;,
            Lcom/parse/signpost/exception/OAuthCommunicationException;,
            Lcom/parse/signpost/exception/OAuthNotAuthorizedException;,
            Lcom/parse/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/parse/signpost/AbstractOAuthProvider;->getRequestHeaders()Ljava/util/Map;

    move-result-object v1

    .line 151
    .local v1, defaultHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/parse/signpost/OAuthConsumer;->getConsumerKey()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/parse/signpost/OAuthConsumer;->getConsumerSecret()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_1

    .line 152
    :cond_0
    new-instance v13, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v14, "Consumer key or secret not set"

    invoke-direct {v13, v14}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 155
    :cond_1
    const/4 v6, 0x0

    .line 156
    .local v6, request:Lcom/parse/signpost/http/HttpRequest;
    const/4 v8, 0x0

    .line 158
    .local v8, response:Lcom/parse/signpost/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/parse/signpost/AbstractOAuthProvider;->createRequest(Ljava/lang/String;)Lcom/parse/signpost/http/HttpRequest;

    move-result-object v6

    .line 159
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 160
    .local v3, header:Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v6, v3, v13}, Lcom/parse/signpost/http/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 210
    .end local v3           #header:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 211
    .local v2, e:Lcom/parse/signpost/exception/OAuthNotAuthorizedException;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v2           #e:Lcom/parse/signpost/exception/OAuthNotAuthorizedException;
    :catchall_0
    move-exception v13

    .line 218
    :try_start_2
    invoke-virtual {p0, v6, v8}, Lcom/parse/signpost/AbstractOAuthProvider;->closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 220
    throw v13

    .line 162
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz p3, :cond_3

    .line 163
    :try_start_3
    new-instance v4, Lcom/parse/signpost/http/HttpParameters;

    invoke-direct {v4}, Lcom/parse/signpost/http/HttpParameters;-><init>()V

    .line 164
    .local v4, httpParams:Lcom/parse/signpost/http/HttpParameters;
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v13}, Lcom/parse/signpost/http/HttpParameters;->putAll([Ljava/lang/String;Z)V

    .line 165
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/parse/signpost/OAuthConsumer;->setAdditionalParameters(Lcom/parse/signpost/http/HttpParameters;)V

    .line 168
    .end local v4           #httpParams:Lcom/parse/signpost/http/HttpParameters;
    :cond_3
    iget-object v13, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    if-eqz v13, :cond_4

    .line 169
    iget-object v13, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    invoke-interface {v13, v6}, Lcom/parse/signpost/OAuthProviderListener;->prepareRequest(Lcom/parse/signpost/http/HttpRequest;)V

    .line 172
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/parse/signpost/OAuthConsumer;->sign(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpRequest;

    .line 174
    iget-object v13, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    if-eqz v13, :cond_5

    .line 175
    iget-object v13, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    invoke-interface {v13, v6}, Lcom/parse/signpost/OAuthProviderListener;->prepareSubmission(Lcom/parse/signpost/http/HttpRequest;)V

    .line 178
    :cond_5
    invoke-virtual {p0, v6}, Lcom/parse/signpost/AbstractOAuthProvider;->sendRequest(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;

    move-result-object v8

    .line 179
    invoke-interface {v8}, Lcom/parse/signpost/http/HttpResponse;->getStatusCode()I

    move-result v11

    .line 181
    .local v11, statusCode:I
    const/4 v7, 0x0

    .line 182
    .local v7, requestHandled:Z
    iget-object v13, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    if-eqz v13, :cond_6

    .line 183
    iget-object v13, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    invoke-interface {v13, v6, v8}, Lcom/parse/signpost/OAuthProviderListener;->onResponseReceived(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    .line 185
    :cond_6
    if-eqz v7, :cond_7

    .line 218
    :try_start_4
    invoke-virtual {p0, v6, v8}, Lcom/parse/signpost/AbstractOAuthProvider;->closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 223
    :goto_1
    return-void

    .line 219
    :catch_1
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    new-instance v13, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v13, v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 189
    .end local v2           #e:Ljava/lang/Exception;
    :cond_7
    const/16 v13, 0x12c

    if-lt v11, v13, :cond_8

    .line 190
    :try_start_5
    invoke-virtual {p0, v11, v8}, Lcom/parse/signpost/AbstractOAuthProvider;->handleUnexpectedResponse(ILcom/parse/signpost/http/HttpResponse;)V

    .line 193
    :cond_8
    invoke-interface {v8}, Lcom/parse/signpost/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v13

    invoke-static {v13}, Lcom/parse/signpost/OAuth;->decodeForm(Ljava/io/InputStream;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v9

    .line 195
    .local v9, responseParams:Lcom/parse/signpost/http/HttpParameters;
    const-string v13, "oauth_token"

    invoke-virtual {v9, v13}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, token:Ljava/lang/String;
    const-string v13, "oauth_token_secret"

    invoke-virtual {v9, v13}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, secret:Ljava/lang/String;
    const-string v13, "oauth_token"

    invoke-virtual {v9, v13}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 198
    const-string v13, "oauth_token_secret"

    invoke-virtual {v9, v13}, Lcom/parse/signpost/http/HttpParameters;->remove(Ljava/lang/Object;)Ljava/util/SortedSet;

    .line 200
    invoke-virtual {p0, v9}, Lcom/parse/signpost/AbstractOAuthProvider;->setResponseParameters(Lcom/parse/signpost/http/HttpParameters;)V

    .line 202
    if-eqz v12, :cond_9

    if-nez v10, :cond_a

    .line 203
    :cond_9
    new-instance v13, Lcom/parse/signpost/exception/OAuthExpectationFailedException;

    const-string v14, "Request token or token secret not set in server reply. The service provider you use is probably buggy."

    invoke-direct {v13, v14}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 212
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #requestHandled:Z
    .end local v9           #responseParams:Lcom/parse/signpost/http/HttpParameters;
    .end local v10           #secret:Ljava/lang/String;
    .end local v11           #statusCode:I
    .end local v12           #token:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 213
    .local v2, e:Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 208
    .end local v2           #e:Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v7       #requestHandled:Z
    .restart local v9       #responseParams:Lcom/parse/signpost/http/HttpParameters;
    .restart local v10       #secret:Ljava/lang/String;
    .restart local v11       #statusCode:I
    .restart local v12       #token:Ljava/lang/String;
    :cond_a
    :try_start_7
    move-object/from16 v0, p1

    invoke-interface {v0, v12, v10}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/parse/signpost/exception/OAuthNotAuthorizedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 218
    :try_start_8
    invoke-virtual {p0, v6, v8}, Lcom/parse/signpost/AbstractOAuthProvider;->closeConnection(Lcom/parse/signpost/http/HttpRequest;Lcom/parse/signpost/http/HttpResponse;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 219
    :catch_3
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/Exception;
    new-instance v13, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v13, v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 214
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #requestHandled:Z
    .end local v9           #responseParams:Lcom/parse/signpost/http/HttpParameters;
    .end local v10           #secret:Ljava/lang/String;
    .end local v11           #statusCode:I
    .end local v12           #token:Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 215
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_9
    new-instance v13, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v13, v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 219
    .end local v2           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 220
    .restart local v2       #e:Ljava/lang/Exception;
    new-instance v13, Lcom/parse/signpost/exception/OAuthCommunicationException;

    invoke-direct {v13, v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;-><init>(Ljava/lang/Exception;)V

    throw v13
.end method

.method protected abstract sendRequest(Lcom/parse/signpost/http/HttpRequest;)Lcom/parse/signpost/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public setListener(Lcom/parse/signpost/OAuthProviderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->listener:Lcom/parse/signpost/OAuthProviderListener;

    .line 339
    return-void
.end method

.method public setOAuth10a(Z)V
    .locals 0
    .parameter "isOAuth10aProvider"

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->isOAuth10a:Z

    .line 311
    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/parse/signpost/AbstractOAuthProvider;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    return-void
.end method

.method public setResponseParameters(Lcom/parse/signpost/http/HttpParameters;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/parse/signpost/AbstractOAuthProvider;->responseParameters:Lcom/parse/signpost/http/HttpParameters;

    .line 307
    return-void
.end method
