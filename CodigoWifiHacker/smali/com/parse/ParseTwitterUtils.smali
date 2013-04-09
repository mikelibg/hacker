.class public final Lcom/parse/ParseTwitterUtils;
.super Ljava/lang/Object;
.source "ParseTwitterUtils.java"


# static fields
.field private static isInitialized:Z

.field private static provider:Lcom/parse/auth/TwitterAuthenticationProvider;

.field private static twitter:Lcom/parse/twitter/Twitter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 50
    sget-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call ParseTwitterUtils.initialize() before using ParseTwitterUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method

.method private static getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/auth/TwitterAuthenticationProvider;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/parse/auth/TwitterAuthenticationProvider;

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/auth/TwitterAuthenticationProvider;-><init>(Lcom/parse/twitter/Twitter;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/auth/TwitterAuthenticationProvider;

    .line 19
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->provider:Lcom/parse/auth/TwitterAuthenticationProvider;

    return-object v0
.end method

.method public static getTwitter()Lcom/parse/twitter/Twitter;
    .locals 3

    .prologue
    .line 26
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/parse/twitter/Twitter;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/parse/twitter/Twitter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    .line 29
    :cond_0
    sget-object v0, Lcom/parse/ParseTwitterUtils;->twitter:Lcom/parse/twitter/Twitter;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "consumerKey"
    .parameter "consumerSecret"

    .prologue
    .line 43
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/twitter/Twitter;->setConsumerKey(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getTwitter()Lcom/parse/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/twitter/Twitter;->setConsumerSecret(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseTwitterUtils;->isInitialized:Z

    .line 47
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2
    .parameter "user"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;)V
    .locals 1
    .parameter "user"
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 68
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 84
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 85
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/auth/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 87
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "user"
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"

    .prologue
    .line 94
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/parse/ParseTwitterUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 95
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 3
    .parameter "user"
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .parameter "callback"

    .prologue
    .line 119
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 121
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p5}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/json/JSONException;
    if-eqz p5, :cond_0

    .line 125
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p5, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static logIn(Landroid/content/Context;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 173
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 174
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/auth/TwitterAuthenticationProvider;->setContext(Landroid/content/Context;)V

    .line 175
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lcom/parse/LogInCallback;)V

    .line 176
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 3
    .parameter "twitterId"
    .parameter "screenName"
    .parameter "authToken"
    .parameter "authTokenSecret"
    .parameter "callback"

    .prologue
    .line 150
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 152
    :try_start_0
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2, p4}, Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Lorg/json/JSONException;
    if-eqz p4, :cond_0

    .line 156
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p4, v1, v2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static unlink(Lcom/parse/ParseUser;)V
    .locals 1
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 184
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFrom(Ljava/lang/String;)Z

    .line 185
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 191
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 192
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter "callback"

    .prologue
    .line 200
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->checkInitialization()V

    .line 201
    invoke-static {}, Lcom/parse/ParseTwitterUtils;->getAuthenticationProvider()Lcom/parse/auth/TwitterAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/TwitterAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 202
    return-void
.end method
