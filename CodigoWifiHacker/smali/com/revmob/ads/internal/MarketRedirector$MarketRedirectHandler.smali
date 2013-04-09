.class Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "MarketRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revmob/ads/internal/MarketRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarketRedirectHandler"
.end annotation


# instance fields
.field private lastRedirectedUri:Ljava/net/URI;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastRedirectedUrl()Ljava/net/URI;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;

    return-object v0
.end method

.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 1
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;

    .line 106
    iget-object v0, p0, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;

    return-object v0
.end method

.method public isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 4
    .parameter "response"
    .parameter "context"

    .prologue
    .line 87
    const-string v3, "Location"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 88
    .local v1, locationHeader:Lorg/apache/http/Header;
    if-eqz v1, :cond_1

    .line 89
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, locationUri:Ljava/lang/String;
    invoke-static {v2}, Lcom/revmob/ads/internal/MarketRedirector;->isGooglePlayUri(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/revmob/ads/internal/MarketRedirector;->isAmazonAppStoreUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;->lastRedirectedUri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v3, 0x0

    .line 99
    .end local v2           #locationUri:Ljava/lang/String;
    :goto_0
    return v3

    .line 94
    .restart local v2       #locationUri:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/net/URISyntaxException;
    .end local v2           #locationUri:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->isRedirectRequested(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_0
.end method
