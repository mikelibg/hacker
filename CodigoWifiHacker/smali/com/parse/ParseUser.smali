.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# static fields
.field static final CLASS_NAME:Ljava/lang/String; = "_User"

.field private static final CURRENT_USER_FILENAME:Ljava/lang/String; = "currentUser"

.field private static authenticationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/auth/ParseAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field private static currentUser:Lcom/parse/ParseUser;

.field private static currentUserMatchesDisk:Z


# instance fields
.field private final authData:Lorg/json/JSONObject;

.field private isCurrentUser:Z

.field private isLazy:Z

.field private isNew:Z

.field private final linkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final readOnlyLinkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;-><init>(Z)V

    .line 60
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .parameter "isPointer"

    .prologue
    const/4 v1, 0x0

    .line 45
    const-string v0, "_User"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 46
    iput-boolean v1, p0, Lcom/parse/ParseUser;->isLazy:Z

    .line 47
    iput-boolean v1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    .line 50
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseUser;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseUser;)Lcom/parse/ParseCommand;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/ParseUser;->constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$700(Lcom/parse/ParseUser;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLaziness(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static checkApplicationContext()V
    .locals 2

    .prologue
    .line 782
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 783
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    return-void
.end method

.method static clearCurrentUserFromMemory()V
    .locals 1

    .prologue
    .line 1130
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1132
    return-void
.end method

.method private static constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 585
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_login"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 586
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v1, "user_password"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-object v0
.end method

.method private static constructPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2
    .parameter "email"

    .prologue
    .line 444
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_request_password_reset"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-object v0
.end method

.method private constructSignUpCommand()Lcom/parse/ParseCommand;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/parse/ParseUser;->constructSaveCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 406
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "user_signup"

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setOp(Ljava/lang/String;)V

    .line 407
    return-object v0
.end method

.method private constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "user_signup_or_login"

    invoke-direct {v0, v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->toJSONObjectForSaving()Lorg/json/JSONObject;

    move-result-object v3

    .line 416
    .local v3, params:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 417
    .local v2, keys:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 421
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 422
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 430
    :catch_0
    move-exception v5

    goto :goto_0

    .line 423
    .restart local v4       #value:Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 424
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 425
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 426
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 428
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 437
    const-string v5, "user_password"

    iget-object v6, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_4
    return-object v0
.end method

.method static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1103
    return-void
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 1114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1115
    return-void
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 667
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 669
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v1, :cond_0

    .line 670
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 691
    :goto_0
    return-object v1

    .line 672
    :cond_0
    sget-boolean v1, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    if-eqz v1, :cond_2

    .line 673
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 676
    :cond_1
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    goto :goto_0

    .line 681
    :cond_2
    sput-boolean v3, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 682
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentUser"

    invoke-static {v1, v2}, Lcom/parse/ParseUser;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 683
    .local v0, user:Lcom/parse/ParseObject;
    if-nez v0, :cond_4

    .line 684
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 685
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 687
    :cond_3
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    goto :goto_0

    .line 689
    :cond_4
    check-cast v0, Lcom/parse/ParseUser;

    .end local v0           #user:Lcom/parse/ParseObject;
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 690
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    iput-boolean v3, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 691
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 2

    .prologue
    .line 1125
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "_User"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 1

    .prologue
    .line 1118
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    return v0
.end method

.method private linkWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "authenticator"
    .parameter "callback"

    .prologue
    .line 1067
    new-instance v0, Lcom/parse/ParseUser$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseUser$12;-><init>(Lcom/parse/ParseUser;Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V

    invoke-interface {p1, v0}, Lcom/parse/auth/ParseAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 1080
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 6
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 610
    if-nez p0, :cond_0

    .line 611
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must specify a username for the user to log in with"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 614
    :cond_0
    if-nez p1, :cond_1

    .line 615
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must specify a password for the user to log in with"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 618
    :cond_1
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 620
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v1

    .line 622
    .local v1, result:Ljava/lang/Object;
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 623
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0x65

    const-string v5, "invalid login credentials"

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 625
    :cond_2
    new-instance v2, Lcom/parse/ParseUser;

    invoke-direct {v2}, Lcom/parse/ParseUser;-><init>()V

    .line 626
    .local v2, user:Lcom/parse/ParseUser;
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Lcom/parse/ParseUser;->handleFetchResult(Lorg/json/JSONObject;)V

    .line 627
    invoke-static {v2}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    .line 628
    return-object v2
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "callback"

    .prologue
    .line 650
    new-instance v0, Lcom/parse/ParseUser$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .local v0, logInTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 658
    return-void
.end method

.method static logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    .locals 3
    .parameter "authType"
    .parameter "authData"

    .prologue
    const/4 v2, 0x1

    .line 63
    new-instance v1, Lcom/parse/ParseUser;

    invoke-direct {v1}, Lcom/parse/ParseUser;-><init>()V

    .line 64
    .local v1, user:Lcom/parse/ParseUser;
    iput-boolean v2, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 65
    iput-boolean v2, v1, Lcom/parse/ParseUser;->isLazy:Z

    .line 67
    :try_start_0
    iget-object v2, v1, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v2, v1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    sput-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 73
    const/4 v2, 0x0

    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 74
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static logInWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "authenticator"
    .parameter "callback"

    .prologue
    .line 1012
    new-instance v0, Lcom/parse/ParseUser$10;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$10;-><init>(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V

    invoke-interface {p0, v0}, Lcom/parse/auth/ParseAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 1025
    return-void
.end method

.method static logInWith(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 2
    .parameter "authType"
    .parameter "callback"

    .prologue
    .line 883
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No authentication provider could be found for the provided authType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-static {v0, p1}, Lcom/parse/ParseUser;->logInWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V

    .line 887
    return-void
.end method

.method static logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
    .locals 4
    .parameter "authType"
    .parameter "authData"
    .parameter "callback"

    .prologue
    .line 891
    new-instance v1, Lcom/parse/ParseUser$6;

    invoke-direct {v1, p2, p0, p1}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 916
    .local v1, logInWithTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 917
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 918
    new-instance v0, Lcom/parse/ParseUser$7;

    invoke-direct {v0, p2, p0, p1}, Lcom/parse/ParseUser$7;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 944
    .local v0, claimTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 969
    .end local v0           #claimTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    :goto_0
    return-void

    .line 946
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$8;

    invoke-direct {v3, v1, p2}, Lcom/parse/ParseUser$8;-><init>(Lcom/parse/BackgroundTask;Lcom/parse/LogInCallback;)V

    invoke-virtual {v2, p0, p1, v3}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V

    goto :goto_0

    .line 968
    :cond_1
    invoke-static {v1}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    goto :goto_0
.end method

.method public static logOut()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 713
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 715
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v3, :cond_1

    .line 716
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v3}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 717
    .local v0, authType:Ljava/lang/String;
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v3, v0}, Lcom/parse/ParseUser;->logOutWith(Ljava/lang/String;)V

    goto :goto_0

    .line 719
    .end local v0           #authType:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 720
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    iput-object v5, v3, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 723
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 724
    sput-object v5, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 725
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "currentUser"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 726
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 727
    return-void
.end method

.method private logOutWith(Lcom/parse/auth/ParseAuthenticationProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1089
    invoke-interface {p1}, Lcom/parse/auth/ParseAuthenticationProvider;->deauthenticate()V

    .line 1090
    return-void
.end method

.method static registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 875
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {p0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-interface {p0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    .line 880
    :cond_0
    return-void
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {p0}, Lcom/parse/ParseUser;->constructPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 747
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 748
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .parameter "email"
    .parameter "callback"

    .prologue
    .line 767
    new-instance v0, Lcom/parse/ParseUser$4;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;)V

    .line 774
    .local v0, task:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 775
    return-void
.end method

.method private resolveLaziness(Z)V
    .locals 5
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 977
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->signUp(Z)V

    .line 978
    iput-boolean v4, p0, Lcom/parse/ParseUser;->isLazy:Z

    goto :goto_0

    .line 981
    :cond_1
    if-eqz p1, :cond_2

    .line 982
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/parse/ParseUser;->checkIfRunning(Z)V

    .line 986
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 987
    .local v0, command:Lcom/parse/ParseCommand;
    new-instance v3, Lcom/parse/ParseUser$9;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$9;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v3}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V

    .line 992
    invoke-virtual {p0}, Lcom/parse/ParseUser;->startSave()V

    .line 993
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 994
    .local v2, result:Lorg/json/JSONObject;
    const-string v3, "is_new"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 997
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/parse/ParseUser;->isLazy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    :goto_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto :goto_0

    .line 1001
    :cond_3
    :try_start_1
    new-instance v1, Lcom/parse/ParseUser;

    invoke-direct {v1}, Lcom/parse/ParseUser;-><init>()V

    .line 1002
    .local v1, newUser:Lcom/parse/ParseUser;
    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->handleFetchResult(Lorg/json/JSONObject;)V

    .line 1003
    invoke-static {v1}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1006
    .end local v0           #command:Lcom/parse/ParseCommand;
    .end local v1           #newUser:Lcom/parse/ParseUser;
    .end local v2           #result:Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    throw v3
.end method

.method private restoreAnonymity(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "anonymousData"

    .prologue
    .line 320
    if-eqz p1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v2, "anonymous"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :cond_0
    return-void

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static saveCurrentUser(Lcom/parse/ParseUser;)V
    .locals 3
    .parameter "user"

    .prologue
    const/4 v2, 0x1

    .line 696
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 697
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eq v0, p0, :cond_0

    .line 698
    invoke-static {}, Lcom/parse/ParseUser;->logOut()V

    .line 700
    :cond_0
    iput-boolean v2, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 701
    invoke-direct {p0}, Lcom/parse/ParseUser;->synchronizeAllAuthData()V

    .line 702
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "currentUser"

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseUser;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 703
    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 704
    sput-object p0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 705
    return-void
.end method

.method private stripAnonymity()V
    .locals 4

    .prologue
    .line 308
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v2, "anonymous"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 317
    :cond_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synchronizeAllAuthData()V
    .locals 2

    .prologue
    .line 817
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 819
    .local v0, authTypes:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 820
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 823
    .end local v0           #authTypes:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private synchronizeAuthData(Ljava/lang/String;)V
    .locals 4
    .parameter "authType"

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 804
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    .line 805
    .local v0, provider:Lcom/parse/auth/ParseAuthenticationProvider;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-interface {v0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    move-result v1

    .line 807
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 808
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method cleanUpAuthData()V
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-nez v2, :cond_1

    .line 248
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 238
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 242
    iget-object v2, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 243
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 244
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/auth/ParseAuthenticationProvider;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    goto :goto_0
.end method

.method protected constructSaveCommand()Lcom/parse/ParseCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-super {p0}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 389
    .local v0, command:Lcom/parse/ParseCommand;
    if-nez v0, :cond_1

    .line 390
    const/4 v0, 0x0

    .line 401
    .end local v0           #command:Lcom/parse/ParseCommand;
    :cond_0
    :goto_0
    return-object v0

    .line 393
    .restart local v0       #command:Lcom/parse/ParseCommand;
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 394
    const-string v1, "user_password"

    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 398
    const-string v1, "auth_data"

    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object p0

    .line 377
    :cond_1
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 378
    invoke-virtual {p0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    .line 380
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    goto :goto_0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLinkedServiceNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCurrentUser()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    return v0
.end method

.method isLazy()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 1098
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z

    return v0
.end method

.method linkWith(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "authType"
    .parameter "callback"

    .prologue
    .line 1060
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No authentication provider could be found for the provided authType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-direct {p0, v0, p2}, Lcom/parse/ParseUser;->linkWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V

    .line 1064
    return-void
.end method

.method linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "authType"
    .parameter "authData"
    .parameter "callback"

    .prologue
    .line 1028
    new-instance v0, Lcom/parse/ParseUser$11;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/parse/ParseUser$11;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1057
    return-void
.end method

.method logOutWith(Ljava/lang/String;)V
    .locals 1
    .parameter "authType"

    .prologue
    .line 1083
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->logOutWith(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 1086
    :cond_0
    return-void
.end method

.method protected mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 7
    .parameter "other"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 160
    instance-of v5, p1, Lcom/parse/ParseUser;

    if-eqz v5, :cond_2

    move-object v5, p1

    .line 161
    check-cast v5, Lcom/parse/ParseUser;

    iget-object v5, v5, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    iput-object v5, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    move-object v5, p1

    .line 162
    check-cast v5, Lcom/parse/ParseUser;

    invoke-virtual {v5}, Lcom/parse/ParseUser;->isNew()Z

    move-result v5

    iput-boolean v5, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 164
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, key:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    move-object v5, p1

    .line 169
    check-cast v5, Lcom/parse/ParseUser;

    iget-object v5, v5, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 170
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, k:Ljava/lang/String;
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0

    iget-object v5, v5, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 175
    .local v4, v:Ljava/lang/Object;
    iget-object v5, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v5, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 176
    .end local v4           #v:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 177
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "A JSONException occurred where one was not possible."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #k:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 183
    iget-object v5, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    check-cast p1, Lcom/parse/ParseUser;

    .end local p1
    iget-object v6, p1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    .end local v3           #key:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method protected mergeFromServer(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V

    .line 193
    const-string v4, "session_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    :try_start_0
    const-string v4, "session_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :cond_0
    const-string v4, "auth_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    :try_start_1
    const-string v4, "auth_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 206
    .local v3, newData:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 207
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 209
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    iget-object v4, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 215
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #newData:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 196
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 197
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v4, "is_new"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    :try_start_2
    const-string v4, "is_new"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 227
    :cond_3
    return-void

    .line 223
    :catch_2
    move-exception v0

    .line 224
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 300
    const-string v0, "username"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 304
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 94
    const-string v0, "username"

    if-ne p1, v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public save(Z)V
    .locals 1
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLaziness(Z)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->save(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    .line 359
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .parameter "email"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkIfRunning()V

    .line 288
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkIfRunning()V

    .line 276
    iput-object p1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 278
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkIfRunning()V

    .line 258
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 467
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->signUp(Z)V

    .line 468
    return-void
.end method

.method protected signUp(Z)V
    .locals 4
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 471
    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p0, v3}, Lcom/parse/ParseUser;->checkIfRunning(Z)V

    .line 476
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 477
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Username cannot be missing or blank"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    throw v2

    .line 480
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 481
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Password cannot be missing or blank"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :cond_3
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_5

    .line 490
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v3, "anonymous"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    .line 491
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->save(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 548
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    .line 550
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, e:Lorg/json/JSONException;
    :try_start_3
    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 499
    .end local v1           #e:Lorg/json/JSONException;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot sign up a user that has already signed up."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 504
    :cond_5
    iget-object v2, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 505
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot sign up a user that is already signing up."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_6
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 514
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 515
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Attempt to merge currentUser with itself."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_7
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 519
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 521
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 522
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/parse/ParseUser;->dirty:Z

    .line 523
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/parse/ParseUser;->clearChanges()V

    .line 527
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->save()V

    .line 528
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 529
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto/16 :goto_0

    .line 533
    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/parse/ParseUser;->constructSignUpCommand()Lcom/parse/ParseCommand;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 534
    .local v0, command:Lcom/parse/ParseCommand;
    if-nez v0, :cond_9

    .line 548
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto/16 :goto_0

    .line 537
    :cond_9
    :try_start_5
    new-instance v2, Lcom/parse/ParseUser$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V

    .line 543
    invoke-virtual {p0}, Lcom/parse/ParseUser;->startSave()V

    .line 544
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 545
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    .line 546
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 548
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto/16 :goto_0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 571
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->checkIfRunning(Z)V

    .line 573
    new-instance v0, Lcom/parse/ParseUser$2;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseCallback;)V

    .line 580
    .local v0, signUpTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 581
    return-void
.end method

.method toJSONObjectForDataFile()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Lcom/parse/ParseObject;->toJSONObjectForDataFile()Lorg/json/JSONObject;

    move-result-object v1

    .line 135
    .local v1, objectJSON:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 137
    :try_start_0
    const-string v2, "session_token"

    iget-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 145
    :try_start_1
    const-string v2, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :cond_1
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "could not encode value for key: sessionToken"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 147
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "could not attach key: auth_data"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected toJSONObjectForSaving()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/parse/ParseObject;->toJSONObjectForSaving()Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    .local v1, objectJSON:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 110
    :try_start_0
    const-string v2, "session_token"

    iget-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 118
    :try_start_1
    const-string v2, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :cond_1
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "could not encode value for key: sessionToken"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 120
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "could not attach key: auth_data"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method unlinkFrom(Ljava/lang/String;)Z
    .locals 3
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 858
    if-nez p1, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v0

    .line 861
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->save()V

    move v0, v1

    .line 869
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method unlinkFromInBackground(Ljava/lang/String;)V
    .locals 1
    .parameter "authType"

    .prologue
    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 827
    return-void
.end method

.method unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "authType"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 830
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    :goto_0
    new-instance v0, Lcom/parse/ParseUser$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 855
    :cond_0
    :goto_1
    return-void

    .line 852
    :cond_1
    if-eqz p2, :cond_0

    .line 853
    invoke-virtual {p2, v1, v1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    goto :goto_1

    .line 834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected validateDelete()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 367
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    return-void
.end method

.method protected validateSave()V
    .locals 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    return-void
.end method
