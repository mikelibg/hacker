.class public final Lcom/parse/ParseFacebookUtils;
.super Ljava/lang/Object;
.source "ParseFacebookUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFacebookUtils$Permissions;
    }
.end annotation


# static fields
.field private static facebook:Lcom/parse/facebook/Facebook;

.field private static isInitialized:Z

.field private static provider:Lcom/parse/auth/FacebookAuthenticationProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000()Lcom/parse/auth/FacebookAuthenticationProvider;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    return-object v0
.end method

.method private static checkInitialization()V
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/parse/ParseFacebookUtils;->isInitialized:Z

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call ParseFacebookUtils.initialize() before using ParseFacebookUtils"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public static extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "user"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 435
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 436
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFacebookUtils$1;

    invoke-direct {v1, p0, p2}, Lcom/parse/ParseFacebookUtils$1;-><init>(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->extendAccessToken(Landroid/content/Context;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 455
    return-void
.end method

.method public static extendAccessTokenIfNeeded(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)Z
    .locals 1
    .parameter "user"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 471
    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->shouldExtendAccessToken(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-static {p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->extendAccessToken(Lcom/parse/ParseUser;Landroid/content/Context;Lcom/parse/SaveCallback;)V

    .line 473
    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static finishAuthentication(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 406
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->authenticateComplete(IILandroid/content/Intent;)V

    .line 407
    return-void
.end method

.method private static getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/parse/auth/FacebookAuthenticationProvider;

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getFacebook()Lcom/parse/facebook/Facebook;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;-><init>(Lcom/parse/facebook/Facebook;)V

    sput-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    .line 43
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->provider:Lcom/parse/auth/FacebookAuthenticationProvider;

    return-object v0
.end method

.method public static getFacebook()Lcom/parse/facebook/Facebook;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/parse/ParseFacebookUtils;->facebook:Lcom/parse/facebook/Facebook;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/parse/facebook/Facebook;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/parse/facebook/Facebook;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/parse/ParseFacebookUtils;->facebook:Lcom/parse/facebook/Facebook;

    .line 36
    :cond_0
    sget-object v0, Lcom/parse/ParseFacebookUtils;->facebook:Lcom/parse/facebook/Facebook;

    return-object v0
.end method

.method public static initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseFacebookUtils;->initialize(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public static initialize(Ljava/lang/String;Z)V
    .locals 1
    .parameter "appId"
    .parameter "useSingleSignOn"

    .prologue
    .line 86
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getFacebook()Lcom/parse/facebook/Facebook;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/facebook/Facebook;->setAppId(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseUser;->registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 88
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->setSingleSignOn(Z)V

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseFacebookUtils;->isInitialized:Z

    .line 90
    return-void
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 2
    .parameter "user"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;)V
    .locals 3
    .parameter "user"
    .parameter "activity"

    .prologue
    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7f99

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 276
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;I)V
    .locals 2
    .parameter "user"
    .parameter "activity"
    .parameter "activityCode"

    .prologue
    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 268
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;ILcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter "activity"
    .parameter "activityCode"
    .parameter "callback"

    .prologue
    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 253
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Landroid/app/Activity;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "user"
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 259
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7f99

    invoke-static {p0, v0, p1, v1, p2}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 261
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .parameter "user"
    .parameter "facebookId"
    .parameter "accessToken"
    .parameter "expirationDate"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/SaveCallback;)V

    .line 130
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/SaveCallback;)V
    .locals 3
    .parameter "user"
    .parameter "facebookId"
    .parameter "accessToken"
    .parameter "expirationDate"
    .parameter "callback"

    .prologue
    .line 152
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 154
    :try_start_0
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Lorg/json/JSONException;
    if-eqz p4, :cond_0

    .line 158
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p4, v1, v2}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;)V
    .locals 2
    .parameter "user"
    .parameter
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x7f99

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 246
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;I)V
    .locals 1
    .parameter "user"
    .parameter
    .parameter "activity"
    .parameter "activityCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 238
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter
    .parameter "activity"
    .parameter "activityCode"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 212
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivity(Landroid/app/Activity;)V

    .line 213
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivityCode(I)V

    .line 214
    if-nez p1, :cond_0

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 217
    :cond_0
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->setPermissions(Ljava/util/Collection;)V

    .line 218
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 219
    return-void
.end method

.method public static link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter
    .parameter "activity"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x7f99

    invoke-static {p0, p1, p2, v0, p3}, Lcom/parse/ParseFacebookUtils;->link(Lcom/parse/ParseUser;Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/SaveCallback;)V

    .line 230
    return-void
.end method

.method public static logIn(Landroid/app/Activity;ILcom/parse/LogInCallback;)V
    .locals 1
    .parameter "activity"
    .parameter "activityCode"
    .parameter "callback"

    .prologue
    .line 368
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/parse/ParseFacebookUtils;->logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V

    .line 369
    return-void
.end method

.method public static logIn(Landroid/app/Activity;Lcom/parse/LogInCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 386
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7f99

    invoke-static {v0, p0, v1, p1}, Lcom/parse/ParseFacebookUtils;->logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V

    .line 388
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/parse/LogInCallback;)V
    .locals 3
    .parameter "facebookId"
    .parameter "accessToken"
    .parameter "expirationDate"
    .parameter "callback"

    .prologue
    .line 296
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 298
    :try_start_0
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2, p3}, Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Lorg/json/JSONException;
    if-eqz p3, :cond_0

    .line 302
    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p3, v1, v2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0
.end method

.method public static logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "activityCode"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "I",
            "Lcom/parse/LogInCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    .local p0, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 355
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivity(Landroid/app/Activity;)V

    .line 356
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/auth/FacebookAuthenticationProvider;->setActivityCode(I)V

    .line 357
    if-nez p0, :cond_0

    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 360
    :cond_0
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->setPermissions(Ljava/util/Collection;)V

    .line 361
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lcom/parse/LogInCallback;)V

    .line 362
    return-void
.end method

.method public static logIn(Ljava/util/Collection;Landroid/app/Activity;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter
    .parameter "activity"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/parse/LogInCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p0, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v0, 0x7f99

    invoke-static {p0, p1, v0, p2}, Lcom/parse/ParseFacebookUtils;->logIn(Ljava/util/Collection;Landroid/app/Activity;ILcom/parse/LogInCallback;)V

    .line 380
    return-void
.end method

.method public static shouldExtendAccessToken(Lcom/parse/ParseUser;)Z
    .locals 1
    .parameter "user"

    .prologue
    .line 418
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/parse/ParseFacebookUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getFacebook()Lcom/parse/facebook/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/facebook/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 104
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 105
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFrom(Ljava/lang/String;)Z

    .line 106
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 112
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 113
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static unlinkInBackground(Lcom/parse/ParseUser;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "user"
    .parameter "callback"

    .prologue
    .line 121
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->checkInitialization()V

    .line 122
    invoke-static {}, Lcom/parse/ParseFacebookUtils;->getAuthenticationProvider()Lcom/parse/auth/FacebookAuthenticationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 123
    return-void
.end method
