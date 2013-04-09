.class public Lcom/revmob/ads/internal/MarketRedirector;
.super Ljava/lang/Object;
.source "MarketRedirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;
    }
.end annotation


# static fields
.field private static AMAZON_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static GOOGLE_PLAY_URL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private entity:Ljava/lang/String;

.field private httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private redirectHandler:Lorg/apache/http/client/RedirectHandler;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "details\\?id=[a-zA-Z0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/revmob/ads/internal/MarketRedirector;->GOOGLE_PLAY_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    const-string v0, "android\\?p=[a-zA-Z0-9\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/revmob/ads/internal/MarketRedirector;->AMAZON_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 50
    const-string v0, ""

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;

    invoke-direct {v2}, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/revmob/ads/internal/MarketRedirector;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "entity"

    .prologue
    .line 54
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v1, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;

    invoke-direct {v1}, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/revmob/ads/internal/MarketRedirector;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/client/RedirectHandler;)V
    .locals 2
    .parameter "url"
    .parameter "entity"
    .parameter "client"
    .parameter "handler"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/revmob/ads/internal/MarketRedirector;->url:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/revmob/ads/internal/MarketRedirector;->entity:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/revmob/ads/internal/MarketRedirector;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 61
    iput-object p4, p0, Lcom/revmob/ads/internal/MarketRedirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    .line 63
    iget-object v0, p0, Lcom/revmob/ads/internal/MarketRedirector;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 64
    return-void
.end method

.method public static isAmazonAppStoreUri(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 32
    const-string v0, "amzn://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGooglePlayUri(Ljava/lang/String;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 28
    const-string v0, "market://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static rewriteMarketUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    .line 36
    sget-object v3, Lcom/revmob/ads/internal/MarketRedirector;->GOOGLE_PLAY_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 37
    .local v2, googleplayMatcher:Ljava/util/regex/Matcher;
    sget-object v3, Lcom/revmob/ads/internal/MarketRedirector;->AMAZON_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 38
    .local v0, amazonMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, detailId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 46
    .end local v1           #detailId:Ljava/lang/String;
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 42
    .restart local p0
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 44
    .restart local v1       #detailId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "amzn://apps/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public getMarketUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/revmob/ads/internal/LocationUrlNotFoundException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/revmob/ads/internal/MarketRedirector;->isGooglePlayUri(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/revmob/ads/internal/MarketRedirector;->isAmazonAppStoreUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->url:Ljava/lang/String;

    .line 75
    :goto_0
    return-object v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/revmob/ads/internal/MarketRedirector;->post()Lorg/apache/http/HttpResponse;

    .line 71
    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->redirectHandler:Lorg/apache/http/client/RedirectHandler;

    check-cast v1, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;

    invoke-virtual {v1}, Lcom/revmob/ads/internal/MarketRedirector$MarketRedirectHandler;->getLastRedirectedUrl()Ljava/net/URI;

    move-result-object v0

    .line 72
    .local v0, locationUrl:Ljava/net/URI;
    if-nez v0, :cond_2

    .line 73
    new-instance v1, Lcom/revmob/ads/internal/LocationUrlNotFoundException;

    invoke-direct {v1}, Lcom/revmob/ads/internal/LocationUrlNotFoundException;-><init>()V

    throw v1

    .line 75
    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/revmob/ads/internal/MarketRedirector;->rewriteMarketUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method post()Lorg/apache/http/HttpResponse;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/revmob/ads/internal/HTTPHelper;

    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->httpclient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-direct {v0, v1}, Lcom/revmob/ads/internal/HTTPHelper;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    iget-object v1, p0, Lcom/revmob/ads/internal/MarketRedirector;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/revmob/ads/internal/MarketRedirector;->entity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/revmob/ads/internal/HTTPHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
