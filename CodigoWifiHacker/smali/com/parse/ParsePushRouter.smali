.class Lcom/parse/ParsePushRouter;
.super Ljava/lang/Object;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePushRouter$SingletonFactory;,
        Lcom/parse/ParsePushRouter$CallbackFactory;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHANNEL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LEGACY_ROUTE_LOCATION:Ljava/lang/String; = "persistentCallbacks"

.field private static final STATE_LOCATION:Ljava/lang/String; = "pushState"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushRouter"

.field static channelRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParsePushRouter$CallbackFactory;",
            ">;"
        }
    .end annotation
.end field

.field static channels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

.field private static hasLoadedStateFromDisk:Z

.field static history:Lorg/json/JSONObject;

.field static ignoreAfter:Ljava/lang/String;

.field static lastTime:Ljava/lang/String;

.field static maxHistory:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 25
    const-class v0, Lcom/parse/ParsePushRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/ParsePushRouter;->$assertionsDisabled:Z

    .line 27
    const-string v0, "^$|^[a-zA-Z][A-Za-z0-9_-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/ParsePushRouter;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    sput-object v2, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    .line 75
    sput-object v2, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    .line 82
    sput-object v2, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 85
    sput-object v2, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    .line 88
    sput-object v2, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    .line 89
    const/16 v0, 0xa

    sput v0, Lcom/parse/ParsePushRouter;->maxHistory:I

    .line 182
    sput-boolean v1, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z

    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/parse/ParsePushRouter;->isSubscribedToChannel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static addChannelRoute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)Z
    .locals 4
    .parameter "context"
    .parameter "channel"
    .parameter
    .parameter "icon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez p1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "invalid channel: you cannot subscribe to null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_0
    sget-object v1, Lcom/parse/ParsePushRouter;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid channel name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/parse/ParsePushRouter;->dataForActivity(Landroid/content/Context;Ljava/lang/Class;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 389
    .local v0, localData:Lorg/json/JSONObject;
    if-nez v0, :cond_2

    .line 390
    const/4 v1, 0x0

    .line 393
    :goto_0
    return v1

    :cond_2
    const-class v1, Lcom/parse/StandardPushCallback;

    invoke-static {p0, p1, v0, v1}, Lcom/parse/ParsePushRouter;->addChannelRoute(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Z

    move-result v1

    goto :goto_0
.end method

.method static declared-synchronized addChannelRoute(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)Z
    .locals 9
    .parameter "context"
    .parameter "channel"
    .parameter "localData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/PushCallback;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/parse/PushCallback;>;"
    const/4 v4, 0x0

    .line 362
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, localDataCopy:Lorg/json/JSONObject;
    sget-object v6, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    new-instance v7, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-direct {v7, p3, v3}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Ljava/lang/Class;Lorg/json/JSONObject;)V

    invoke-interface {v6, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    const/4 v2, 0x1

    .line 367
    .local v2, isNew:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 368
    new-instance v1, Lcom/parse/ParseInstallation;

    invoke-direct {v1}, Lcom/parse/ParseInstallation;-><init>()V

    .line 369
    .local v1, installation:Lcom/parse/ParseInstallation;
    const-string v6, "channels"

    invoke-virtual {v1, v6, p1}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    invoke-static {p0, v1}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    .end local v1           #installation:Lcom/parse/ParseInstallation;
    .end local v2           #isNew:Z
    .end local v3           #localDataCopy:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    monitor-exit v5

    return v2

    .restart local v3       #localDataCopy:Lorg/json/JSONObject;
    :cond_1
    move v2, v4

    .line 366
    goto :goto_0

    .line 373
    .end local v3           #localDataCopy:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 374
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    const-string v6, "com.parse.ParsePushRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Impossible exception when deserializing a serialized JSON string: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v4

    .line 375
    goto :goto_1

    .line 362
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static addSingletonRoute(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V
    .locals 2
    .parameter "context"
    .parameter "channel"
    .parameter "callback"

    .prologue
    .line 644
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 645
    if-eqz p1, :cond_0

    .line 646
    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    new-instance v1, Lcom/parse/ParsePushRouter$SingletonFactory;

    invoke-direct {v1, p2}, Lcom/parse/ParsePushRouter$SingletonFactory;-><init>(Lcom/parse/PushCallback;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    new-instance v0, Lcom/parse/ParsePushRouter$SingletonFactory;

    invoke-direct {v0, p2}, Lcom/parse/ParsePushRouter$SingletonFactory;-><init>(Lcom/parse/PushCallback;)V

    sput-object v0, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    goto :goto_0
.end method

.method static clearStateFromDisk(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 698
    invoke-static {}, Lcom/parse/ParsePushRouter;->clearStateFromMemory()V

    .line 699
    const-string v0, "persistentCallbacks"

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 700
    const-string v0, "pushState"

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method static clearStateFromMemory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 685
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z

    .line 686
    sput-object v1, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    .line 687
    sput-object v1, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 688
    sput-object v1, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 689
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    .line 690
    sput-object v1, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    .line 691
    return-void
.end method

.method static dataForActivity(Landroid/content/Context;Ljava/lang/Class;I)Lorg/json/JSONObject;
    .locals 13
    .parameter "context"
    .parameter
    .parameter "icon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    .line 401
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 402
    .local v8, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 405
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v9, v8, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 412
    .local v6, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 414
    .local v2, appChars:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, appName:Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v4, componentName:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, activityClass:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, activityPackage:Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 429
    .local v7, localData:Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "icon"

    invoke-virtual {v7, v10, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 430
    const-string v10, "appName"

    invoke-virtual {v7, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    const-string v10, "activityClass"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 432
    const-string v10, "activityPackage"

    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .end local v0           #activityClass:Ljava/lang/String;
    .end local v1           #activityPackage:Ljava/lang/String;
    .end local v2           #appChars:Ljava/lang/CharSequence;
    .end local v3           #appName:Ljava/lang/String;
    .end local v4           #componentName:Landroid/content/ComponentName;
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    .end local v7           #localData:Lorg/json/JSONObject;
    :goto_1
    return-object v7

    .line 406
    :catch_0
    move-exception v5

    .line 407
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "missing package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    const/4 v7, 0x0

    goto :goto_1

    .line 417
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #appChars:Ljava/lang/CharSequence;
    .restart local v6       #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #appName:Ljava/lang/String;
    goto :goto_0

    .line 433
    .restart local v0       #activityClass:Ljava/lang/String;
    .restart local v1       #activityPackage:Ljava/lang/String;
    .restart local v4       #componentName:Landroid/content/ComponentName;
    .restart local v7       #localData:Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 435
    .local v5, e:Lorg/json/JSONException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method static declared-synchronized ensureStateIsLoaded(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 186
    const-class v11, Lcom/parse/ParsePushRouter;

    monitor-enter v11

    :try_start_0
    sget-boolean v12, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_1

    .line 272
    :cond_0
    :goto_0
    monitor-exit v11

    return-void

    .line 190
    :cond_1
    const/4 v12, 0x1

    :try_start_1
    sput-boolean v12, Lcom/parse/ParsePushRouter;->hasLoadedStateFromDisk:Z

    .line 191
    const/4 v12, 0x0

    sput-object v12, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 192
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    sput-object v12, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    .line 193
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    sput-object v12, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    .line 196
    const-string v12, "persistentCallbacks"

    invoke-static {p0, v12}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 197
    .local v8, jsonData:Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 198
    const-string v12, "com.parse.ParsePushRouter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Loading legacy route map: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v8}, Lcom/parse/ParsePushRouter;->parseChannelRoutes(Lorg/json/JSONObject;)V

    .line 202
    sget-object v12, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    :try_start_2
    sget-object v13, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 204
    sget-object v13, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    sget-object v14, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 205
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :try_start_3
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 207
    .local v7, installation:Lcom/parse/ParseInstallation;
    const-string v12, "channels"

    sget-object v13, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/parse/ParseInstallation;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 208
    invoke-static {p0, v7}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    .line 209
    const-string v12, "persistentCallbacks"

    invoke-static {p0, v12}, Lcom/parse/ParseObject;->deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    .end local v7           #installation:Lcom/parse/ParseInstallation;
    :cond_2
    const-string v12, "pushState"

    invoke-static {p0, v12}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 214
    if-eqz v8, :cond_0

    .line 215
    const-string v12, "routes"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    invoke-static {v12}, Lcom/parse/ParsePushRouter;->parseChannelRoutes(Lorg/json/JSONObject;)V

    .line 217
    const-string v12, "defaultRoute"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 219
    .local v3, defaultDefinition:Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    :try_start_4
    new-instance v10, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-direct {v10, v3}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Lorg/json/JSONObject;)V

    :cond_3
    sput-object v10, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    .line 226
    :goto_1
    :try_start_5
    const-string v10, "lastTime"

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 227
    const-string v10, "ignoreAfter"

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    .line 228
    const-string v10, "addChannels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 229
    .local v0, added:Lorg/json/JSONArray;
    if-eqz v0, :cond_5

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_4

    .line 232
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 231
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 205
    .end local v0           #added:Lorg/json/JSONArray;
    .end local v1           #channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #defaultDefinition:Lorg/json/JSONObject;
    .end local v6           #i:I
    :catchall_0
    move-exception v10

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 186
    .end local v8           #jsonData:Lorg/json/JSONObject;
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 220
    .restart local v3       #defaultDefinition:Lorg/json/JSONObject;
    .restart local v8       #jsonData:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 221
    .local v4, e:Ljava/lang/ClassNotFoundException;
    :try_start_8
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Default route references undefined class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 222
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 223
    .local v4, e:Ljava/lang/ClassCastException;
    const-string v10, "com.parse.ParsePushRouter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Default route references class which is not a PushCallback: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 234
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v0       #added:Lorg/json/JSONArray;
    .restart local v1       #channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #i:I
    :cond_4
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 235
    .restart local v7       #installation:Lcom/parse/ParseInstallation;
    const-string v10, "channels"

    invoke-virtual {v7, v10, v1}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    invoke-static {p0, v7}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    .line 238
    .end local v1           #channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v7           #installation:Lcom/parse/ParseInstallation;
    :cond_5
    const-string v10, "removeChannels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 239
    .local v9, removed:Lorg/json/JSONArray;
    if-eqz v9, :cond_7

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .restart local v1       #channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 242
    invoke-virtual {v9, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 244
    :cond_6
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 245
    .restart local v7       #installation:Lcom/parse/ParseInstallation;
    const-string v10, "channels"

    invoke-virtual {v7, v10, v1}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 246
    invoke-static {p0, v7}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    .line 249
    .end local v1           #channels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #i:I
    .end local v7           #installation:Lcom/parse/ParseInstallation;
    :cond_7
    const-string v10, "installation"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 250
    new-instance v7, Lcom/parse/ParseInstallation;

    invoke-direct {v7}, Lcom/parse/ParseInstallation;-><init>()V

    .line 251
    .restart local v7       #installation:Lcom/parse/ParseInstallation;
    const-string v10, "installation"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/parse/ParseInstallation;->mergeAfterFetch(Lorg/json/JSONObject;)V

    .line 253
    const-string v10, "channels"

    invoke-virtual {v7, v10}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 254
    .local v5, fromJSON:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_8

    .line 255
    sget-object v12, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 256
    :try_start_9
    sget-object v10, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 257
    sget-object v10, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v10, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 258
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 268
    .end local v5           #fromJSON:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #installation:Lcom/parse/ParseInstallation;
    :cond_8
    :goto_4
    :try_start_a
    const-string v10, "history"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 269
    const-string v10, "history"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    sput-object v10, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_0

    .line 258
    .restart local v5       #fromJSON:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #installation:Lcom/parse/ParseInstallation;
    :catchall_2
    move-exception v10

    :try_start_b
    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v10

    .line 260
    .end local v5           #fromJSON:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #installation:Lcom/parse/ParseInstallation;
    :cond_9
    const-string v10, "channels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 261
    const-string v10, "channels"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 262
    .local v2, channelsArray:Lorg/json/JSONArray;
    sget-object v12, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 263
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_5
    :try_start_d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v6, v10, :cond_a

    .line 264
    sget-object v10, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 266
    :cond_a
    monitor-exit v12

    goto :goto_4

    :catchall_3
    move-exception v10

    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method static declared-synchronized getApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 473
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    const-string v4, "oauth"

    invoke-static {p0, v4}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 474
    .local v3, oauth:Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 475
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #oauth:Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 477
    .restart local v3       #oauth:Lorg/json/JSONObject;
    :cond_0
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, cached:Ljava/lang/String;
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v4, :cond_1

    .line 488
    .end local v1           #cached:Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return-object v1

    .line 481
    .restart local v1       #cached:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/parse/ParseObject;->getApplicationId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 483
    .local v0, applicationId:Ljava/lang/String;
    :try_start_2
    const-string v4, "key"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 487
    :goto_1
    :try_start_3
    const-string v4, "oauth"

    invoke-static {p0, v4, v3}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v1, v0

    .line 488
    goto :goto_0

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, e:Lorg/json/JSONException;
    const-string v4, "com.parse.ParsePushRouter"

    const-string v6, "JSONException in getApplicationId()"

    invoke-static {v4, v6, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 473
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #cached:Ljava/lang/String;
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #oauth:Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static declared-synchronized getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 7
    .parameter "context"

    .prologue
    .line 653
    const-class v5, Lcom/parse/ParsePushRouter;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 654
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .local v3, request:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "installation_id"

    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v4, "oauth_key"

    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v4, "v"

    const-string v6, "a1.1.9"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    sget-object v4, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 660
    const-string v4, "last"

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 664
    :goto_0
    sget-object v4, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 665
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 666
    .local v2, knownIds:Lorg/json/JSONArray;
    sget-object v4, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 667
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 673
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #knownIds:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 674
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    const-string v4, "com.parse.ParsePushRouter"

    const-string v6, "unexpected JSONException"

    invoke-static {v4, v6, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 675
    const/4 v3, 0x0

    .line 677
    .end local v0           #e:Lorg/json/JSONException;
    .end local v3           #request:Lorg/json/JSONObject;
    :goto_2
    monitor-exit v5

    return-object v3

    .line 662
    .restart local v3       #request:Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    const-string v4, "last"

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 653
    .end local v3           #request:Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 670
    .restart local v1       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #knownIds:Lorg/json/JSONArray;
    .restart local v3       #request:Lorg/json/JSONObject;
    :cond_1
    :try_start_4
    const-string v4, "last_seen"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 672
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #knownIds:Lorg/json/JSONArray;
    :cond_2
    const-string v4, "ignore_after"

    sget-object v6, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method static declared-synchronized getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    const-class v1, Lcom/parse/ParsePushRouter;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 468
    sget-object v0, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static handlePushData(Lcom/parse/PushService;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7
    .parameter "service"
    .parameter "channel"
    .parameter "pushData"

    .prologue
    .line 500
    const/4 v0, 0x0

    .line 501
    .local v0, callback:Lcom/parse/PushCallback;
    const-class v4, Lcom/parse/PushService;

    monitor-enter v4

    .line 502
    :try_start_0
    sget-object v3, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 503
    .local v2, factory:Lcom/parse/ParsePushRouter$CallbackFactory;
    if-nez v2, :cond_1

    .line 504
    sget-object v3, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    if-nez v3, :cond_0

    .line 505
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received push "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " that has no handler"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    monitor-exit v4

    .line 528
    :goto_0
    return-void

    .line 508
    :cond_0
    sget-object v2, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/parse/ParsePushRouter$CallbackFactory;->newCallback()Lcom/parse/PushCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 520
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received push on channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, p0}, Lcom/parse/PushCallback;->setService(Landroid/app/Service;)V

    .line 525
    invoke-virtual {v0, p2}, Lcom/parse/PushCallback;->setPushData(Lorg/json/JSONObject;)V

    .line 526
    invoke-virtual {v0, p1}, Lcom/parse/PushCallback;->setChannel(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Lcom/parse/PushCallback;->run()V

    goto :goto_0

    .line 513
    :catch_0
    move-exception v1

    .line 514
    .local v1, e:Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal access to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 515
    monitor-exit v4

    goto :goto_0

    .line 520
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    .end local v2           #factory:Lcom/parse/ParsePushRouter$CallbackFactory;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 516
    .restart local v2       #factory:Lcom/parse/ParsePushRouter$CallbackFactory;
    :catch_1
    move-exception v1

    .line 517
    .local v1, e:Ljava/lang/InstantiationException;
    :try_start_4
    const-string v3, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/parse/ParsePushRouter$CallbackFactory;->klass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized hasRoutes(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    const-class v1, Lcom/parse/ParsePushRouter;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 125
    sget-object v0, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    if-nez v0, :cond_1

    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getSubscriptions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized insertIntoHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "newId"
    .parameter "newTimestamp"

    .prologue
    .line 325
    const-class v7, Lcom/parse/ParsePushRouter;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    const/4 v5, 0x0

    .line 331
    .local v5, youngestCut:Ljava/lang/String;
    :try_start_1
    sget-boolean v6, Lcom/parse/ParsePushRouter;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    sget v6, Lcom/parse/ParsePushRouter;->maxHistory:I

    if-gtz v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .end local v5           #youngestCut:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 344
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v2, oldestId:Ljava/lang/String;
    .local v3, oldestTime:Ljava/lang/String;
    .restart local v5       #youngestCut:Ljava/lang/String;
    :cond_0
    :try_start_2
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    move-object v5, v3

    .line 332
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #oldestId:Ljava/lang/String;
    .end local v3           #oldestTime:Ljava/lang/String;
    :cond_1
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    sget v8, Lcom/parse/ParsePushRouter;->maxHistory:I

    if-le v6, v8, :cond_3

    .line 333
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 334
    .restart local v1       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 335
    .restart local v2       #oldestId:Ljava/lang/String;
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3       #oldestTime:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, id:Ljava/lang/String;
    sget-object v6, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, time:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    .line 340
    move-object v2, v0

    .line 341
    move-object v3, v4

    goto :goto_1

    .line 350
    .end local v0           #id:Ljava/lang/String;
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #oldestId:Ljava/lang/String;
    .end local v3           #oldestTime:Ljava/lang/String;
    .end local v4           #time:Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 351
    sput-object v5, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :cond_4
    monitor-exit v7

    return-void

    .line 326
    .end local v5           #youngestCut:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static declared-synchronized isSubscribedToChannel(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "channel"

    .prologue
    const/4 v1, 0x1

    .line 614
    const-class v2, Lcom/parse/ParsePushRouter;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 623
    :cond_0
    :goto_0
    monitor-exit v2

    return v1

    .line 619
    :cond_1
    :try_start_1
    sget-object v3, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 620
    .local v0, factory:Lcom/parse/ParsePushRouter$CallbackFactory;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/parse/ParsePushRouter$CallbackFactory;->requiresSubscription()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 614
    .end local v0           #factory:Lcom/parse/ParsePushRouter$CallbackFactory;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static parseChannelRoutes(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "channelMap"

    .prologue
    .line 275
    if-nez p0, :cond_1

    .line 295
    :cond_0
    return-void

    .line 279
    :cond_1
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 280
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 281
    .local v1, channels:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, channel:Ljava/lang/String;
    const/4 v2, 0x0

    .line 285
    .local v2, definition:Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 286
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    new-instance v5, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-direct {v5, v2}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    .line 288
    .local v3, e:Lorg/json/JSONException;
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse push route "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    .end local v3           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 290
    .local v3, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route references missing class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 292
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v4, "com.parse.ParsePushRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Route references class which is not a PushCallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized removeChannelRoute(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "channel"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    const-class v3, Lcom/parse/ParsePushRouter;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 457
    sget-object v4, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 458
    new-instance v0, Lcom/parse/ParseInstallation;

    invoke-direct {v0}, Lcom/parse/ParseInstallation;-><init>()V

    .line 459
    .local v0, installation:Lcom/parse/ParseInstallation;
    const-string v2, "channels"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 460
    invoke-static {p0, v0}, Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .end local v0           #installation:Lcom/parse/ParseInstallation;
    :goto_0
    monitor-exit v3

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method static routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "service"
    .parameter "message"

    .prologue
    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, dirty:Z
    const-string v5, "channel"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, channel:Ljava/lang/String;
    :try_start_0
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 535
    sget-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 536
    :cond_0
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    .line 537
    const/4 v1, 0x1

    .line 539
    :cond_1
    sget-object v5, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    if-eqz v5, :cond_3

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 540
    const-string v5, "com.parse.ParsePushRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring very old push "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    if-eqz v1, :cond_2

    .line 604
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 610
    :cond_2
    :goto_0
    return-void

    .line 545
    :cond_3
    if-eqz v0, :cond_4

    :try_start_1
    invoke-static {p0, v0}, Lcom/parse/ParsePushRouter;->isSubscribedToChannel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 551
    new-instance v3, Lcom/parse/ParsePushRouter$2;

    invoke-direct {v3, p0, p1}, Lcom/parse/ParsePushRouter$2;-><init>(Lcom/parse/PushService;Lorg/json/JSONObject;)V

    .line 561
    .local v3, maybeResubmit:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Boolean;>;"
    new-instance v5, Lcom/parse/ParsePushRouter$3;

    invoke-direct {v5, v3, v0, p0}, Lcom/parse/ParsePushRouter$3;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lcom/parse/PushService;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/parse/ParsePushRouter$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    if-eqz v1, :cond_2

    .line 604
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    goto :goto_0

    .line 588
    .end local v3           #maybeResubmit:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Boolean;>;"
    :cond_4
    :try_start_2
    const-string v5, "push_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 589
    const-string v5, "push_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, id:Ljava/lang/String;
    sget-object v5, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 591
    const-string v5, "com.parse.ParsePushRouter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring redundant push "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 603
    if-eqz v1, :cond_2

    .line 604
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    goto :goto_0

    .line 594
    :cond_5
    :try_start_3
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/parse/ParsePushRouter;->insertIntoHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    const/4 v1, 0x1

    .line 603
    .end local v2           #id:Ljava/lang/String;
    :cond_6
    :goto_1
    if-eqz v1, :cond_7

    .line 604
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 608
    :cond_7
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 609
    .local v4, pushData:Lorg/json/JSONObject;
    invoke-static {p0, v0, v4}, Lcom/parse/ParsePushRouter;->handlePushData(Lcom/parse/PushService;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 596
    .end local v4           #pushData:Lorg/json/JSONObject;
    :cond_8
    :try_start_4
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 597
    sget-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    if-eqz v5, :cond_9

    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_6

    .line 598
    :cond_9
    const-string v5, "time"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 599
    const/4 v1, 0x1

    goto :goto_1

    .line 603
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_a

    .line 604
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    :cond_a
    throw v5
.end method

.method private static saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    .locals 1
    .parameter "context"
    .parameter "installation"

    .prologue
    .line 92
    new-instance v0, Lcom/parse/ParsePushRouter$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParsePushRouter$1;-><init>(Landroid/content/Context;Lcom/parse/ParseInstallation;)V

    invoke-virtual {p1, v0}, Lcom/parse/ParseInstallation;->saveEventually(Lcom/parse/SaveCallback;)V

    .line 119
    return-void
.end method

.method private static declared-synchronized saveStateToDisk(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 299
    const-class v6, Lcom/parse/ParsePushRouter;

    monitor-enter v6

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 300
    .local v4, serializedData:Lorg/json/JSONObject;
    const-string v5, "version"

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 301
    sget-object v5, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    if-eqz v5, :cond_0

    .line 302
    const-string v5, "defaultRoute"

    sget-object v7, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-virtual {v7}, Lcom/parse/ParsePushRouter$CallbackFactory;->toJSON()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v1, channelMap:Lorg/json/JSONObject;
    sget-object v5, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    .local v0, channel:Ljava/lang/String;
    sget-object v5, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParsePushRouter$CallbackFactory;

    invoke-virtual {v5}, Lcom/parse/ParsePushRouter$CallbackFactory;->toJSON()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local v0           #channel:Ljava/lang/String;
    .end local v1           #channelMap:Lorg/json/JSONObject;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #serializedData:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 315
    .local v2, e:Lorg/json/JSONException;
    :try_start_1
    const-string v5, "com.parse.ParsePushRouter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save push routes to disk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v2           #e:Lorg/json/JSONException;
    :goto_1
    monitor-exit v6

    return-void

    .line 308
    .restart local v1       #channelMap:Lorg/json/JSONObject;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #serializedData:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    const-string v5, "routes"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    const-string v5, "channels"

    new-instance v7, Lorg/json/JSONArray;

    sget-object v8, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 310
    const-string v5, "lastTime"

    sget-object v7, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v5, "history"

    sget-object v7, Lcom/parse/ParsePushRouter;->history:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const-string v5, "ignoreAfter"

    sget-object v7, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v5, "pushState"

    invoke-static {p0, v5, v4}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 299
    .end local v1           #channelMap:Lorg/json/JSONObject;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #serializedData:Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static setDefaultRoute(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "icon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 443
    if-nez p1, :cond_0

    .line 444
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    .line 452
    :goto_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->saveStateToDisk(Landroid/content/Context;)V

    .line 453
    return-void

    .line 446
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePushRouter;->dataForActivity(Landroid/content/Context;Ljava/lang/Class;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 447
    .local v0, localData:Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 448
    new-instance v0, Lorg/json/JSONObject;

    .end local v0           #localData:Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 450
    .restart local v0       #localData:Lorg/json/JSONObject;
    :cond_1
    new-instance v1, Lcom/parse/ParsePushRouter$CallbackFactory;

    const-class v2, Lcom/parse/StandardPushCallback;

    invoke-direct {v1, v2, v0}, Lcom/parse/ParsePushRouter$CallbackFactory;-><init>(Ljava/lang/Class;Lorg/json/JSONObject;)V

    sput-object v1, Lcom/parse/ParsePushRouter;->defaultRoute:Lcom/parse/ParsePushRouter$CallbackFactory;

    goto :goto_0
.end method
