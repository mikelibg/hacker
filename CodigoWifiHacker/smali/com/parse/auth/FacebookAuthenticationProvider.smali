.class public Lcom/parse/auth/FacebookAuthenticationProvider;
.super Ljava/lang/Object;
.source "FacebookAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/auth/ParseAuthenticationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/auth/FacebookAuthenticationProvider$GetUserIdBackgroundTask;
    }
.end annotation


# static fields
.field private static final AUTH_TYPE_NAME:Ljava/lang/String; = "facebook"

.field public static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99


# instance fields
.field private activityCode:I

.field private baseActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

.field private final facebook:Lcom/parse/facebook/Facebook;

.field private permissions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final preciseDateFormat:Ljava/text/DateFormat;

.field private useSingleSignOn:Z

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/parse/facebook/Facebook;)V
    .locals 4
    .parameter "facebook"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    .line 63
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 72
    const/16 v0, 0x7f99

    iput v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I

    .line 83
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/parse/auth/FacebookAuthenticationProvider;)Lcom/parse/facebook/Facebook;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parse/auth/FacebookAuthenticationProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parse/auth/FacebookAuthenticationProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/auth/FacebookAuthenticationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/parse/auth/FacebookAuthenticationProvider;)Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    return-object v0
.end method

.method private handleCancel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method

.method private handleError(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "error"

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0, p1}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method

.method private handleSuccess(Ljava/lang/String;)V
    .locals 7
    .parameter "userId"

    .prologue
    const/4 v6, 0x0

    .line 205
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-nez v2, :cond_0

    .line 223
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->userId:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, authData:Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    invoke-virtual {v2}, Lcom/parse/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    invoke-virtual {v4}, Lcom/parse/facebook/Facebook;->getAccessExpires()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/parse/auth/FacebookAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :try_start_1
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v2, v0}, Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    iput-object v6, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, e:Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 221
    .end local v1           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    iput-object v6, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v2
.end method


# virtual methods
.method public declared-synchronized authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 5
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->cancel()V

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 114
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 115
    .local v0, activity:Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_2

    .line 116
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Activity must be non-null for Facebook authentication to proceed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v0           #activity:Landroid/app/Activity;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 114
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    move-object v0, v3

    goto :goto_0

    .line 119
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_2
    iget-boolean v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->useSingleSignOn:Z

    if-eqz v3, :cond_3

    iget v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I

    .line 120
    .local v1, activityCode:I
    :goto_1
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    if-nez v3, :cond_4

    .line 122
    .local v2, permissions:[Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    new-instance v4, Lcom/parse/auth/FacebookAuthenticationProvider$2;

    invoke-direct {v4, p0}, Lcom/parse/auth/FacebookAuthenticationProvider$2;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/parse/facebook/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/parse/facebook/Facebook$DialogListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 119
    .end local v1           #activityCode:I
    .end local v2           #permissions:[Ljava/lang/String;
    :cond_3
    const/4 v1, -0x1

    goto :goto_1

    .line 120
    .restart local v1       #activityCode:I
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    iget-object v4, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_2
.end method

.method public authenticateComplete(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parse/facebook/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deauthenticate()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/facebook/Facebook;->setAccessExpires(J)V

    .line 275
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public declared-synchronized extendAccessToken(Landroid/content/Context;Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->cancel()V

    .line 90
    :cond_0
    iput-object p2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->currentOperationCallback:Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;

    .line 91
    iget-object v1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    new-instance v2, Lcom/parse/auth/FacebookAuthenticationProvider$1;

    invoke-direct {v2, p0}, Lcom/parse/auth/FacebookAuthenticationProvider$1;-><init>(Lcom/parse/auth/FacebookAuthenticationProvider;)V

    invoke-virtual {v1, p1, v2}, Lcom/parse/facebook/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/parse/facebook/Facebook$ServiceListener;)Z

    move-result v0

    .line 104
    .local v0, result:Z
    if-nez v0, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/parse/auth/FacebookAuthenticationProvider;->handleCancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    monitor-exit p0

    return-void

    .line 87
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getActivityCode()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I

    return v0
.end method

.method public getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 3
    .parameter "id"
    .parameter "accessToken"
    .parameter "expiration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 198
    .local v0, authData:Lorg/json/JSONObject;
    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string v1, "access_token"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string v1, "expiration_date"

    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    return-object v0
.end method

.method public getAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    const-string v0, "facebook"

    return-object v0
.end method

.method public getFacebook()Lcom/parse/facebook/Facebook;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    return-object v0
.end method

.method public restoreAuthentication(Lorg/json/JSONObject;)Z
    .locals 5
    .parameter "authData"

    .prologue
    const/4 v1, 0x1

    .line 257
    if-nez p1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/parse/facebook/Facebook;->setAccessExpires(J)V

    .line 259
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 268
    :goto_0
    return v1

    .line 263
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    const-string v3, "access_token"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->facebook:Lcom/parse/facebook/Facebook;

    iget-object v3, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->preciseDateFormat:Ljava/text/DateFormat;

    const-string v4, "expiration_date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/parse/facebook/Facebook;->setAccessExpires(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->baseActivity:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setActivityCode(I)V
    .locals 1
    .parameter "activityCode"

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->activityCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPermissions(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, permissions:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->permissions:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSingleSignOn(Z)V
    .locals 1
    .parameter "useSingleSignOn"

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/parse/auth/FacebookAuthenticationProvider;->useSingleSignOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
