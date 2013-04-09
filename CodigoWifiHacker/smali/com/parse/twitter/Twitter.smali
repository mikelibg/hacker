.class public Lcom/parse/twitter/Twitter;
.super Ljava/lang/Object;
.source "Twitter.java"


# static fields
.field static final ACCESS_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/access_token"

.field static final AUTHORIZE_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/authorize"

.field private static final CALLBACK_URL:Ljava/lang/String; = "twitter-oauth://complete"

.field private static final PROVIDER:Lcom/parse/signpost/OAuthProvider; = null

.field static final REQUEST_TOKEN_URL:Ljava/lang/String; = "https://api.twitter.com/oauth/request_token"

.field private static final SCREEN_NAME_PARAM:Ljava/lang/String; = "screen_name"

.field private static final USER_ID_PARAM:Ljava/lang/String; = "user_id"

.field private static final VERIFIER_PARAM:Ljava/lang/String; = "oauth_verifier"


# instance fields
.field private authToken:Ljava/lang/String;

.field private authTokenSecret:Ljava/lang/String;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private screenName:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string v1, "https://api.twitter.com/oauth/request_token"

    const-string v2, "https://api.twitter.com/oauth/access_token"

    const-string v3, "https://api.twitter.com/oauth/authorize"

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/twitter/Twitter;->PROVIDER:Lcom/parse/signpost/OAuthProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->consumerKey:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/parse/twitter/Twitter;->consumerSecret:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic access$000()Lcom/parse/signpost/OAuthProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/parse/twitter/Twitter;->PROVIDER:Lcom/parse/signpost/OAuthProvider;

    return-object v0
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Lcom/parse/internal/AsyncCallback;)V
    .locals 6
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Twitter must be initialized with a consumer key and secret before authorization."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v4, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v4, consumer:Lcom/parse/signpost/OAuthConsumer;
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 117
    .local v5, progress:Landroid/app/ProgressDialog;
    const-string v1, "Loading..."

    invoke-virtual {v5, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v0, Lcom/parse/twitter/Twitter$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/parse/twitter/Twitter$1;-><init>(Lcom/parse/twitter/Twitter;Lcom/parse/internal/AsyncCallback;Landroid/content/Context;Lcom/parse/signpost/OAuthConsumer;Landroid/app/ProgressDialog;)V

    .line 216
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 217
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthTokenSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->authTokenSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumerSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->screenName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/parse/twitter/Twitter;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->authToken:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAuthTokenSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "authTokenSecret"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->authTokenSecret:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setConsumerKey(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerKey"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->consumerKey:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .parameter "consumerSecret"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->consumerSecret:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 0
    .parameter "screenName"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->screenName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/parse/twitter/Twitter;->userId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 99
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getConsumerSecret()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, consumer:Lcom/parse/signpost/OAuthConsumer;
    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/twitter/Twitter;->getAuthTokenSecret()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-interface {v0, p1}, Lcom/parse/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
