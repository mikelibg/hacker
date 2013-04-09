.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$ParseObjectFactory;
    }
.end annotation


# static fields
.field static final API_VERSION:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseObject"

.field static final VERSION_NAME:Ljava/lang/String; = "1.1.9"

.field private static final impreciseDateFormat:Ljava/text/DateFormat;

.field private static final objectFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject$ParseObjectFactory",
            "<*>;>;"
        }
    .end annotation
.end field

.field static server:Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private final dataAvailability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field dirty:Z

.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenFetched:Z

.field private final hashedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/parse/ParseJSONCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Ljava/lang/Boolean;

.field private localId:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field protected final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    const-string v1, "https://api.parse.com"

    sput-object v1, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    .line 57
    const-string v1, "_User"

    new-instance v2, Lcom/parse/ParseObject$1;

    invoke-direct {v2}, Lcom/parse/ParseObject$1;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 66
    const-string v1, "_Role"

    new-instance v2, Lcom/parse/ParseObject$2;

    invoke-direct {v2}, Lcom/parse/ParseObject$2;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 75
    const-string v1, "_Installation"

    new-instance v2, Lcom/parse/ParseObject$3;

    invoke-direct {v2}, Lcom/parse/ParseObject$3;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 90
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, format:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    sput-object v0, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "theClassName"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .line 159
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .parameter "theClassName"
    .parameter "isPointer"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v0}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v0}, Lcom/parse/ParseObject$ParseObjectFactory;->getExpectedType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must create this type of ParseObject using ParseObject.create()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 127
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    .line 132
    iput-object p1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    .line 133
    if-nez p2, :cond_2

    .line 134
    instance-of v0, p0, Lcom/parse/ParseUser;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/parse/ParseInstallation;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 138
    :cond_1
    iput-boolean v3, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 139
    iput-boolean v3, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_2
    iput-boolean v2, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 142
    iput-boolean v2, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseObject;Z)Lcom/parse/ParseCommand;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->constructDeleteCommand(Z)Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseObject;Z)Lcom/parse/ParseObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->fetchIfNeeded(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method private applyOperations(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p1, operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1827
    .local v1, key:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseFieldOperation;

    .line 1828
    .local v4, operation:Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1829
    .local v3, oldValue:Ljava/lang/Object;
    invoke-interface {v4, v3, p0, v1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1830
    .local v2, newValue:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 1831
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1833
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1836
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    .end local v4           #operation:Lcom/parse/ParseFieldOperation;
    :cond_1
    return-void
.end method

.method private canBeSerialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1503
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v1}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    const-string v1, "ACL"

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1513
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static canBeSerializedAsValue(Ljava/lang/Object;)Z
    .locals 14
    .parameter "value"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1444
    instance-of v11, p0, Lcom/parse/ParseObject;

    if-eqz v11, :cond_2

    move-object v9, p0

    .line 1445
    check-cast v9, Lcom/parse/ParseObject;

    .line 1446
    .local v9, object:Lcom/parse/ParseObject;
    invoke-virtual {v9}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    move v11, v12

    :goto_0
    move v13, v11

    .line 1492
    .end local v9           #object:Lcom/parse/ParseObject;
    :cond_0
    :goto_1
    return v13

    .restart local v9       #object:Lcom/parse/ParseObject;
    :cond_1
    move v11, v13

    .line 1446
    goto :goto_0

    .line 1448
    .end local v9           #object:Lcom/parse/ParseObject;
    :cond_2
    instance-of v11, p0, Ljava/util/Map;

    if-eqz v11, :cond_4

    move-object v8, p0

    .line 1450
    check-cast v8, Ljava/util/Map;

    .line 1451
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1452
    .local v6, item:Ljava/lang/Object;
    invoke-static {v6}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 1457
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #item:Ljava/lang/Object;
    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v11, p0, Lorg/json/JSONArray;

    if-eqz v11, :cond_5

    move-object v1, p0

    .line 1458
    check-cast v1, Lorg/json/JSONArray;

    .line 1459
    .local v1, array:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_8

    .line 1461
    :try_start_0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 1459
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1464
    :catch_0
    move-exception v3

    .line 1465
    .local v3, e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unable to find related objects for saving."

    invoke-direct {v11, v12, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1469
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v4           #i:I
    :cond_5
    instance-of v11, p0, Lorg/json/JSONObject;

    if-eqz v11, :cond_7

    move-object v2, p0

    .line 1470
    check-cast v2, Lorg/json/JSONObject;

    .line 1471
    .local v2, dictionary:Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1472
    .local v7, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1474
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 1475
    .local v10, v:Ljava/lang/Object;
    invoke-static {v10}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    if-nez v11, :cond_6

    goto :goto_1

    .line 1478
    .end local v10           #v:Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 1479
    .restart local v3       #e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unable to find related objects for saving."

    invoke-direct {v11, v12, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1483
    .end local v2           #dictionary:Lorg/json/JSONObject;
    .end local v3           #e:Lorg/json/JSONException;
    .end local v7           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    instance-of v11, p0, Lcom/parse/ParseACL;

    if-eqz v11, :cond_8

    move-object v0, p0

    .line 1484
    check-cast v0, Lcom/parse/ParseACL;

    .line 1485
    .local v0, acl:Lcom/parse/ParseACL;
    invoke-virtual {v0}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1486
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/ParseObject;->canBeSerializedAsValue(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .end local v0           #acl:Lcom/parse/ParseACL;
    :cond_8
    move v13, v12

    .line 1492
    goto/16 :goto_1
.end method

.method private checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "key"
    .parameter "object"

    .prologue
    .line 638
    invoke-static {p2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 639
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseJSONCacheItem;

    .line 640
    .local v2, oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    if-nez v2, :cond_0

    .line 641
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "ParseObject contains container item that isn\'t cached."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 643
    :cond_0
    const/4 v1, 0x0

    .line 645
    .local v1, newCacheItem:Lcom/parse/ParseJSONCacheItem;
    :try_start_0
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    invoke-direct {v1, p2}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .restart local v1       #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    invoke-virtual {v2, v1}, Lcom/parse/ParseJSONCacheItem;->equals(Lcom/parse/ParseJSONCacheItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 651
    new-instance v3, Lcom/parse/ParseSetOperation;

    invoke-direct {v3, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 657
    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    .end local v2           #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :cond_1
    :goto_0
    return-void

    .line 646
    .restart local v2       #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 655
    .end local v0           #e:Lorg/json/JSONException;
    .end local v2           #oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 2425
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject has no data for this key.  Call fetchIfNeeded() to get the data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2429
    :cond_0
    return-void
.end method

.method private checkpointMutableContainer(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 622
    invoke-static {p1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    const/4 v1, 0x0

    .line 625
    .local v1, newCacheItem:Lcom/parse/ParseJSONCacheItem;
    :try_start_0
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    invoke-direct {v1, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    .restart local v1       #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    :cond_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter "node"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1429
    .local p1, dirtyChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p2, dirtyFiles:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseFile;>;"
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 1435
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 22
    .parameter "node"
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1340
    .local p1, dirtyChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p2, dirtyFiles:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseFile;>;"
    .local p3, seen:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local p4, seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/List;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v14, p0

    .line 1341
    check-cast v14, Ljava/util/List;

    .line 1342
    .local v14, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 1343
    .local v12, item:Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v12, v0, v1, v2, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    goto :goto_0

    .line 1346
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #item:Ljava/lang/Object;
    .end local v14           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_0
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v15, p0

    .line 1347
    check-cast v15, Ljava/util/Map;

    .line 1348
    .local v15, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 1349
    .local v19, value:Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    goto :goto_1

    .line 1352
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v15           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    .end local v19           #value:Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v6, p0

    .line 1353
    check-cast v6, Lorg/json/JSONArray;

    .line 1354
    .local v6, array:Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 1356
    :try_start_0
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1357
    :catch_0
    move-exception v8

    .line 1358
    .local v8, e:Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Invalid JSONArray on object."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1362
    .end local v6           #array:Lorg/json/JSONArray;
    .end local v8           #e:Lorg/json/JSONException;
    .end local v10           #i:I
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v7, p0

    .line 1363
    check-cast v7, Lorg/json/JSONObject;

    .line 1364
    .local v7, dictionary:Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 1365
    .local v13, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1367
    :try_start_1
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 1368
    .restart local v19       #value:Ljava/lang/Object;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1369
    .end local v19           #value:Ljava/lang/Object;
    :catch_1
    move-exception v8

    .line 1370
    .restart local v8       #e:Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Invalid JSONDictionary on object."

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v20

    .line 1374
    .end local v7           #dictionary:Lorg/json/JSONObject;
    .end local v8           #e:Lorg/json/JSONException;
    .end local v13           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseACL;

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v5, p0

    .line 1375
    check-cast v5, Lcom/parse/ParseACL;

    .line 1376
    .local v5, acl:Lcom/parse/ParseACL;
    invoke-virtual {v5}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1377
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 1419
    .end local v5           #acl:Lcom/parse/ParseACL;
    :cond_4
    :goto_4
    return-void

    .line 1380
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseObject;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v16, p0

    .line 1381
    check-cast v16, Lcom/parse/ParseObject;

    .line 1385
    .local v16, object:Lcom/parse/ParseObject;
    invoke-virtual/range {v16 .. v16}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 1386
    new-instance p4, Ljava/util/IdentityHashMap;

    .end local p4           #seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    invoke-direct/range {p4 .. p4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1398
    .restart local p4       #seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    :goto_5
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1401
    new-instance v17, Ljava/util/IdentityHashMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 1402
    .end local p3           #seen:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local v17, seen:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 1409
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1410
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 p3, v17

    .line 1413
    .end local v17           #seen:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .restart local p3       #seen:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    goto :goto_4

    .line 1388
    :cond_7
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1389
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "Found a circular dependency while saving."

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1391
    :cond_8
    new-instance v18, Ljava/util/IdentityHashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    .line 1392
    .end local p4           #seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local v18, seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p4, v18

    .end local v18           #seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .restart local p4       #seenNew:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    goto :goto_5

    .line 1413
    .end local v16           #object:Lcom/parse/ParseObject;
    :cond_9
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/parse/ParseFile;

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v9, p0

    .line 1414
    check-cast v9, Lcom/parse/ParseFile;

    .line 1415
    .local v9, file:Lcom/parse/ParseFile;
    invoke-virtual {v9}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_4

    .line 1416
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4
.end method

.method private constructDeleteCommand(Z)Lcom/parse/ParseCommand;
    .locals 5
    .parameter "requireObjectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1238
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v3, "delete"

    invoke-direct {v0, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 1239
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1240
    const-string v3, "classname"

    iget-object v4, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1243
    .local v1, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "objectId"

    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1248
    return-object v0

    .line 1244
    :catch_0
    move-exception v2

    .line 1245
    .local v2, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .parameter "className"

    .prologue
    const/4 v1, 0x0

    .line 171
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v0, v1}, Lcom/parse/ParseObject$ParseObjectFactory;->getNew(Z)Lcom/parse/ParseObject;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3
    .parameter "className"
    .parameter "objectId"

    .prologue
    const/4 v2, 0x1

    .line 191
    sget-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v1, v2}, Lcom/parse/ParseObject$ParseObjectFactory;->getNew(Z)Lcom/parse/ParseObject;

    move-result-object v0

    .line 196
    .local v0, result:Lcom/parse/ParseObject;
    :goto_0
    invoke-virtual {v0, p1}, Lcom/parse/ParseObject;->setObjectId(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseObject;->dirty:Z

    .line 198
    return-object v0

    .line 194
    .end local v0           #result:Lcom/parse/ParseObject;
    :cond_0
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;Z)V

    .restart local v0       #result:Lcom/parse/ParseObject;
    goto :goto_0
.end method

.method private currentOperations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static deepSave(Ljava/lang/Object;)V
    .locals 23
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1522
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v14, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1524
    .local v7, files:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseFile;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v14, v7}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 1526
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseFile;

    .line 1527
    .local v6, file:Lcom/parse/ParseFile;
    invoke-virtual {v6}, Lcom/parse/ParseFile;->save()V

    goto :goto_0

    .line 1530
    .end local v6           #file:Lcom/parse/ParseFile;
    :cond_0
    new-instance v20, Ljava/util/IdentityHashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1531
    .local v20, uniqueObjects:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Ljava/lang/Boolean;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parse/ParseObject;

    .line 1532
    .local v13, obj:Lcom/parse/ParseObject;
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1535
    .end local v13           #obj:Lcom/parse/ParseObject;
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1536
    .local v17, remaining:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_9

    .line 1539
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .local v4, current:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1541
    .local v12, nextBatch:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parse/ParseObject;

    .line 1542
    .restart local v13       #obj:Lcom/parse/ParseObject;
    invoke-direct {v13}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1543
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1545
    :cond_3
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1548
    .end local v13           #obj:Lcom/parse/ParseObject;
    :cond_4
    move-object/from16 v17, v12

    .line 1550
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-nez v21, :cond_5

    .line 1554
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "Unable to save a PFObject with a relation to a cycle."

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1563
    :cond_5
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v21

    if-eqz v21, :cond_6

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v21

    if-eqz v21, :cond_6

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1566
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/parse/ParseUser;->save()V

    .line 1567
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1568
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-eqz v21, :cond_2

    .line 1574
    :cond_6
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1575
    .local v3, commands:Lorg/json/JSONArray;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1576
    .local v16, ops:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/parse/ParseObject;

    .line 1577
    .restart local v13       #obj:Lcom/parse/ParseObject;
    invoke-virtual {v13}, Lcom/parse/ParseObject;->validateSave()V

    .line 1578
    invoke-virtual {v13}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;

    move-result-object v2

    .line 1579
    .local v2, command:Lcom/parse/ParseCommand;
    invoke-virtual {v13}, Lcom/parse/ParseObject;->startSave()V

    .line 1580
    if-eqz v2, :cond_7

    .line 1581
    invoke-virtual {v2}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    .line 1582
    .local v10, jsonCommand:Lorg/json/JSONObject;
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1583
    iget-object v0, v2, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1588
    .end local v2           #command:Lcom/parse/ParseCommand;
    .end local v10           #jsonCommand:Lorg/json/JSONObject;
    .end local v13           #obj:Lcom/parse/ParseObject;
    :cond_8
    new-instance v11, Lcom/parse/ParseCommand;

    const-string v21, "multi"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v11, multiCommand:Lcom/parse/ParseCommand;
    const-string v21, "commands"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1590
    invoke-virtual {v11}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONArray;

    .line 1593
    .local v19, results:Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v8, v0, :cond_2

    .line 1594
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1596
    .local v15, op:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 1597
    .local v18, result:Lorg/json/JSONObject;
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/parse/ParseObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/parse/ParseObject;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1593
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1598
    .end local v18           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 1599
    .local v5, e:Lorg/json/JSONException;
    new-instance v21, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1603
    .end local v3           #commands:Lorg/json/JSONArray;
    .end local v4           #current:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v5           #e:Lorg/json/JSONException;
    .end local v8           #i:I
    .end local v11           #multiCommand:Lcom/parse/ParseCommand;
    .end local v12           #nextBatch:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v15           #op:Ljava/lang/String;
    .end local v16           #ops:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #results:Lorg/json/JSONArray;
    :cond_9
    return-void
.end method

.method static declared-synchronized deleteDiskObject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 288
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 290
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v2

    return-void

    .line 288
    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1702
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 1733
    :cond_0
    return-object p0

    .line 1705
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1706
    .local v4, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, className:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 1708
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1709
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "All objects should have the same class"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1711
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 1712
    .local v3, id:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1713
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "All objects must exist on the server"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1716
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1718
    .end local v3           #id:Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/parse/ParseQuery;

    invoke-direct {v7, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1719
    .local v7, query:Lcom/parse/ParseQuery;
    const-string v10, "objectId"

    invoke-virtual {v7, v10, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 1720
    invoke-virtual {v7}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v9

    .line 1721
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1722
    .local v8, resultMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1723
    .local v6, o:Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1725
    .end local v6           #o:Lcom/parse/ParseObject;
    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 1726
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 1727
    .local v5, newObject:Lcom/parse/ParseObject;
    if-nez v5, :cond_6

    .line 1728
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Object id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " does not exist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1730
    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10, v5}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 1731
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 1725
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1630
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1631
    .local v4, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1632
    .local v0, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseObject;

    .line 1633
    .local v7, object:Lcom/parse/ParseObject;
    invoke-virtual {v7}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1634
    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1635
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "All objects should have the same class"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1637
    :cond_1
    invoke-virtual {v7}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1638
    invoke-virtual {v7}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 1639
    .local v3, id:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1640
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1645
    .end local v3           #id:Ljava/lang/String;
    .end local v7           #object:Lcom/parse/ParseObject;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 1668
    :cond_3
    return-object p0

    .line 1649
    :cond_4
    new-instance v8, Lcom/parse/ParseQuery;

    invoke-direct {v8, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v8, query:Lcom/parse/ParseQuery;
    const-string v11, "objectId"

    invoke-virtual {v8, v11, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 1651
    invoke-virtual {v8}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v10

    .line 1652
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1653
    .local v9, resultMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1654
    .local v6, o:Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1656
    .end local v6           #o:Lcom/parse/ParseObject;
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 1657
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1656
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1660
    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 1661
    .local v5, newObject:Lcom/parse/ParseObject;
    if-nez v5, :cond_7

    .line 1662
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Object id "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " does not exist"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1665
    :cond_7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11, v5}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 1666
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_3
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/FindCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1682
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$12;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseCallback;Ljava/util/List;)V

    .line 1688
    .local v0, fetchTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1689
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/FindCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1745
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$13;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseCallback;Ljava/util/List;)V

    .line 1751
    .local v0, fetchTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1752
    return-void
.end method

.method private fetchIfNeeded(Z)Lcom/parse/ParseObject;
    .locals 1
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    :goto_0
    return-object p0

    .line 1197
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->fetch(Z)Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method private static findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, unsaved:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 719
    check-cast v2, Ljava/util/List;

    .line 720
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 721
    .local v0, elem:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    .line 723
    .end local v0           #elem:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_1

    move-object v3, p0

    .line 725
    check-cast v3, Ljava/util/Map;

    .line 726
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 727
    .restart local v0       #elem:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 729
    .end local v0           #elem:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v5, p0, Lcom/parse/ParseObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 730
    check-cast v4, Lcom/parse/ParseObject;

    .line 731
    .local v4, object:Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 732
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 733
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v4           #object:Lcom/parse/ParseObject;
    :cond_2
    return-void
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 4
    .parameter "mayCopy"

    .prologue
    .line 2329
    const-string v2, "ACL"

    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2330
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v3, "ACL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2331
    .local v0, acl:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2332
    const/4 v1, 0x0

    .line 2343
    .end local v0           #acl:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2334
    .restart local v0       #acl:Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Lcom/parse/ParseACL;

    if-nez v2, :cond_1

    .line 2335
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "only ACLs can be stored in the ACL key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2337
    :cond_1
    if-eqz p1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/parse/ParseACL;

    invoke-virtual {v2}, Lcom/parse/ParseACL;->isShared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2338
    check-cast v0, Lcom/parse/ParseACL;

    .end local v0           #acl:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    .line 2339
    .local v1, copy:Lcom/parse/ParseACL;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v3, "ACL"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2340
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_0

    .line 2343
    .end local v1           #copy:Lcom/parse/ParseACL;
    .restart local v0       #acl:Ljava/lang/Object;
    :cond_2
    check-cast v0, Lcom/parse/ParseACL;

    .end local v0           #acl:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method static getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 207
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 226
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 227
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 228
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParseObject;->getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 226
    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 10
    .parameter "file"

    .prologue
    const/4 v5, 0x0

    .line 236
    const-class v7, Lcom/parse/ParseObject;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 257
    :goto_0
    monitor-exit v7

    return-object v5

    .line 243
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v2, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 244
    .local v2, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v0, v6, [B

    .line 245
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 246
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 247
    new-instance v3, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v3, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    .local v3, fileContent:Ljava/lang/String;
    :try_start_2
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 255
    .local v4, tokener:Lorg/json/JSONTokener;
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v5, v6

    goto :goto_0

    .line 248
    .end local v0           #bytes:[B
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .end local v3           #fileContent:Ljava/lang/String;
    .end local v4           #tokener:Lorg/json/JSONTokener;
    :catch_0
    move-exception v1

    .line 249
    .local v1, e:Ljava/io/IOException;
    goto :goto_0

    .line 256
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bytes:[B
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    .restart local v3       #fileContent:Ljava/lang/String;
    .restart local v4       #tokener:Lorg/json/JSONTokener;
    :catch_1
    move-exception v1

    .line 257
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0

    .line 236
    .end local v0           #bytes:[B
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .end local v3           #fileContent:Ljava/lang/String;
    .end local v4           #tokener:Lorg/json/JSONTokener;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 6
    .parameter "context"
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 366
    .local v1, object:Lorg/json/JSONObject;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 375
    :goto_0
    return-object v2

    .line 371
    :cond_0
    :try_start_0
    const-string v4, "classname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    .line 372
    .local v2, parseObject:Lcom/parse/ParseObject;
    invoke-virtual {v2, v1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    .end local v2           #parseObject:Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .local v0, e:Lorg/json/JSONException;
    move-object v2, v3

    .line 375
    goto :goto_0
.end method

.method private hasDirtyChildren()Z
    .locals 2

    .prologue
    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 605
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "encoded"

    .prologue
    .line 213
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    :goto_0
    monitor-exit v2

    return-object v1

    .line 214
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/text/ParseException;
    :try_start_1
    const-string v1, "com.parse.ParseObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    const/4 v1, 0x0

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isDataAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 2364
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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

.method private isDirty(Z)Z
    .locals 1
    .parameter "considerChildren"

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 614
    iget-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

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

.method private mergeAfterSave(Lorg/json/JSONObject;Z)V
    .locals 6
    .parameter "result"
    .parameter "justCreated"

    .prologue
    .line 465
    iget-object v5, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 467
    .local v4, operationsBeforeSave:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    if-nez p1, :cond_1

    .line 469
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 470
    .local v1, key:Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 471
    .local v2, operation1:Lcom/parse/ParseFieldOperation;
    iget-object v5, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 472
    .local v3, operation2:Lcom/parse/ParseFieldOperation;
    if-eqz v3, :cond_0

    .line 473
    invoke-interface {v3, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v3

    .line 477
    :goto_1
    iget-object v5, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    :cond_0
    move-object v3, v2

    goto :goto_1

    .line 482
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #operation1:Lcom/parse/ParseFieldOperation;
    .end local v3           #operation2:Lcom/parse/ParseFieldOperation;
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-direct {p0, v4, v5}, Lcom/parse/ParseObject;->applyOperations(Ljava/util/Map;Ljava/util/Map;)V

    .line 483
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V

    .line 484
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 487
    :cond_2
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 4

    .prologue
    .line 1842
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1843
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v3, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1844
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1845
    .local v1, operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->applyOperations(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 1847
    .end local v1           #operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :cond_0
    return-void
.end method

.method private static registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject$ParseObjectFactory",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, factory:Lcom/parse/ParseObject$ParseObjectFactory;,"Lcom/parse/ParseObject$ParseObjectFactory<*>;"
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1616
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deepSave(Ljava/lang/Object;)V

    .line 1617
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1785
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V

    .line 1786
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1765
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    move-object v0, p0

    .line 1766
    .local v0, finalObjects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$14;

    invoke-direct {v1, p1, v0}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseCallback;Ljava/util/List;)V

    .line 1773
    .local v1, saveTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v1}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1774
    return-void
.end method

.method static declared-synchronized saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "context"
    .parameter "filename"
    .parameter "object"

    .prologue
    .line 266
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 267
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    .local v0, file:Ljava/io/File;
    invoke-static {v0, p2}, Lcom/parse/ParseObject;->saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit v2

    return-void

    .line 266
    .end local v0           #file:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "file"
    .parameter "object"

    .prologue
    .line 277
    const-class v3, Lcom/parse/ParseObject;

    monitor-enter v3

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 278
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 279
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v3

    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 277
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setObjectIdInternal(Ljava/lang/String;)V
    .locals 3
    .parameter "newObjectId"

    .prologue
    .line 709
    iput-object p1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 711
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 714
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1939
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1940
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1952
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1953
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 1954
    .local v0, operation:Lcom/parse/ParseAddOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1955
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1982
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1983
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    .line 1984
    .local v0, operation:Lcom/parse/ParseAddUniqueOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1985
    return-void
.end method

.method addToHashedObjects(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v2, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v2, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t serialize container value to JSON."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1968
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1969
    return-void
.end method

.method protected checkForChangesToMutableContainers()V
    .locals 4

    .prologue
    .line 664
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 665
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 667
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 668
    return-void
.end method

.method protected checkIfRunning()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 301
    return-void
.end method

.method protected checkIfRunning(Z)V
    .locals 3
    .parameter "grabLock"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This object has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 312
    :cond_0
    if-eqz p1, :cond_1

    .line 313
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    .line 315
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    return-void
.end method

.method protected clearChanges()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 425
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 426
    return-void
.end method

.method protected constructSaveCommand()Lcom/parse/ParseCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 761
    :goto_0
    return-object v0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->toJSONObjectForSaving()Lorg/json/JSONObject;

    move-result-object v2

    .line 749
    .local v2, objectJSON:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v3, "create"

    .line 750
    .local v3, op:Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/parse/ParseCommand;

    invoke-direct {v0, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 753
    const-string v4, "classname"

    iget-object v5, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :try_start_0
    const-string v4, "data"

    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "could not decode data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 749
    .end local v0           #command:Lcom/parse/ParseCommand;
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #op:Ljava/lang/String;
    :cond_1
    const-string v3, "update"

    goto :goto_1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 433
    iget-object v3, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 434
    .local v2, operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, key:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 437
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->delete(Z)V

    .line 1266
    return-void
.end method

.method protected delete(Z)V
    .locals 2
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1273
    if-eqz p1, :cond_0

    .line 1274
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1278
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1280
    iget-object v1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1288
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    .line 1290
    :goto_0
    return-void

    .line 1284
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->constructDeleteCommand(Z)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1285
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 1286
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1288
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    goto :goto_0

    .end local v0           #command:Lcom/parse/ParseCommand;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    throw v1
.end method

.method public deleteEventually()V
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->deleteEventually(Lcom/parse/DeleteCallback;)V

    .line 1055
    return-void
.end method

.method public deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1078
    new-instance v0, Lcom/parse/ParseObject$7;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;Lcom/parse/DeleteCallback;)V

    .line 1086
    .local v0, runEventuallyTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1087
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 1088
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    .line 1321
    return-void
.end method

.method public deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1301
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1302
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1304
    new-instance v0, Lcom/parse/ParseObject$11;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 1311
    .local v0, deleteTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1312
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->fetch(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method protected fetch(Z)Lcom/parse/ParseObject;
    .locals 6
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1148
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1149
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot refresh an object that hasn\'t been saved to the server."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    throw v4

    .line 1153
    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v4, "get"

    invoke-direct {v0, v4}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 1155
    const-string v4, "classname"

    iget-object v5, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    .local v1, data:Lorg/json/JSONObject;
    :try_start_2
    const-string v4, "objectId"

    iget-object v5, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1162
    :try_start_3
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1163
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1165
    .local v3, result:Lorg/json/JSONObject;
    invoke-virtual {p0, v3}, Lcom/parse/ParseObject;->handleFetchResult(Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1168
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    return-object p0

    .line 1159
    .end local v3           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1160
    .local v2, e:Lorg/json/JSONException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1210
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->fetchIfNeeded(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1223
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/parse/GetCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 1226
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1228
    new-instance v0, Lcom/parse/ParseObject$10;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 1234
    .local v0, fetchTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseObject;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1235
    return-void
.end method

.method public fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1181
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1183
    new-instance v0, Lcom/parse/ParseObject$9;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 1190
    .local v0, refreshTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseObject;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1191
    return-void
.end method

.method protected finishedRunning()V
    .locals 2

    .prologue
    .line 323
    iget-object v1, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 324
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    .line 325
    monitor-exit v1

    .line 326
    return-void

    .line 325
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "key"

    .prologue
    .line 2398
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2399
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2400
    const/4 v2, 0x0

    .line 2421
    :cond_0
    :goto_0
    return-object v2

    .line 2403
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2405
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Lcom/parse/ParseACL;

    if-eqz v3, :cond_2

    const-string v3, "ACL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 2406
    check-cast v0, Lcom/parse/ParseACL;

    .line 2407
    .local v0, acl:Lcom/parse/ParseACL;
    invoke-virtual {v0}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2408
    invoke-virtual {v0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    .line 2409
    .local v1, copy:Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v4, "ACL"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 2411
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v2

    goto :goto_0

    .line 2417
    .end local v0           #acl:Lcom/parse/ParseACL;
    .end local v1           #copy:Lcom/parse/ParseACL;
    :cond_2
    instance-of v3, v2, Lcom/parse/ParseRelation;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2418
    check-cast v3, Lcom/parse/ParseRelation;

    invoke-virtual {v3, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 2325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2235
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2236
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2243
    :cond_0
    :goto_0
    return v1

    .line 2239
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2240
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 2243
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2044
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2045
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2053
    :goto_0
    return-object v0

    .line 2048
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2049
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, [B

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2050
    goto :goto_0

    .line 2053
    :cond_1
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2254
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2255
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2262
    :goto_0
    return-object v0

    .line 2258
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2259
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/Date;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2260
    goto :goto_0

    .line 2262
    :cond_1
    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .parameter "key"

    .prologue
    .line 2205
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 2206
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 2207
    const-wide/16 v1, 0x0

    .line 2209
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 2190
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 2191
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 2192
    const/4 v1, 0x0

    .line 2194
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 2083
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2084
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 2099
    :goto_0
    return-object v1

    .line 2087
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2089
    .local v1, value:Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 2091
    check-cast v0, Ljava/util/List;

    .line 2092
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/parse/Parse;->encodeAsJSONArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object v1

    .line 2093
    .local v1, value:Lorg/json/JSONArray;
    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2096
    .end local v0           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1           #value:Lorg/json/JSONArray;
    :cond_1
    instance-of v3, v1, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    move-object v1, v2

    .line 2097
    goto :goto_0

    .line 2099
    :cond_2
    check-cast v1, Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2164
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2165
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2179
    :goto_0
    return-object v0

    .line 2168
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2170
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 2171
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2172
    .local v0, value:Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2175
    .end local v0           #value:Lorg/json/JSONObject;
    :cond_1
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 2176
    goto :goto_0

    .line 2179
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2111
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2126
    :cond_0
    :goto_0
    return-object v0

    .line 2114
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2116
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 2117
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #value:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 2118
    .local v1, value:Ljava/util/List;
    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2121
    .end local v1           #value:Ljava/util/List;
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2125
    check-cast v0, Ljava/util/List;

    .line 2126
    .local v0, returnValue:Ljava/util/List;,"Ljava/util/List<TT;>;"
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 2220
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 2221
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 2222
    const-wide/16 v1, 0x0

    .line 2224
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2138
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-object v0

    .line 2141
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2143
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 2144
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #value:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 2145
    .local v1, value:Ljava/util/Map;
    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2148
    .end local v1           #value:Ljava/util/Map;
    :cond_2
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2152
    check-cast v0, Ljava/util/Map;

    .line 2153
    .local v0, returnValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    goto :goto_0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2064
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2065
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2072
    :goto_0
    return-object v0

    .line 2068
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2069
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2070
    goto :goto_0

    .line 2072
    :cond_1
    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getOrCreateLocalId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 690
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2310
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2311
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2318
    :goto_0
    return-object v0

    .line 2314
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2315
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Lcom/parse/ParseGeoPoint;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2316
    goto :goto_0

    .line 2318
    :cond_1
    check-cast v0, Lcom/parse/ParseGeoPoint;

    goto :goto_0
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .parameter "key"

    .prologue
    .line 2276
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2277
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 2278
    const/4 v0, 0x0

    .line 2280
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .parameter "key"

    .prologue
    .line 2294
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2295
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 2296
    const/4 v0, 0x0

    .line 2298
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 3
    .parameter "key"

    .prologue
    .line 2378
    new-instance v0, Lcom/parse/ParseRelation;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 2379
    .local v0, relation:Lcom/parse/ParseRelation;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2380
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_0

    .line 2381
    check-cast v1, Lcom/parse/ParseRelation;

    .end local v1           #value:Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseRelation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/ParseRelation;->setTargetClass(Ljava/lang/String;)V

    .line 2383
    :cond_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 2025
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2026
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 2033
    :goto_0
    return-object v0

    .line 2029
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2030
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 2031
    goto :goto_0

    .line 2033
    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method handleFetchResult(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1091
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;)V

    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 1093
    return-void
.end method

.method protected handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "op"
    .parameter "result"

    .prologue
    .line 876
    const-string v1, "create"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "user_signup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 877
    .local v0, justCreated:Z
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/parse/ParseObject;->mergeAfterSave(Lorg/json/JSONObject;Z)V

    .line 878
    iget-object v1, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/parse/ParseMulticastDelegate;->invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 879
    return-void

    .line 876
    .end local v0           #justCreated:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1812
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 2432
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1912
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1913
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter "key"
    .parameter "amount"

    .prologue
    .line 1924
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1925
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 1926
    .local v0, operation:Lcom/parse/ParseIncrementOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1927
    return-void
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 2360
    iget-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    return v0
.end method

.method protected isDirty()Z
    .locals 1

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
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
    .line 392
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected mergeAfterFetch(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;)V

    .line 459
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 460
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 462
    return-void
.end method

.method protected mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 440
    iget-object v0, p1, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 441
    iget-object v0, p1, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 442
    iget-object v0, p1, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 443
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 444
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    iget-object v1, p1, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 447
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt ot mergeFromObject during a save."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 451
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 454
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 455
    return-void
.end method

.method protected mergeFromServer(Lorg/json/JSONObject;)V
    .locals 17
    .parameter "object"

    .prologue
    .line 491
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->dirty:Z

    .line 495
    :try_start_0
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v14, :cond_0

    .line 497
    const-string v14, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 499
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 502
    :cond_0
    const-string v14, "created_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 503
    const-string v14, "created_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, createdAtString:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 505
    invoke-static {v3}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 508
    .end local v3           #createdAtString:Ljava/lang/String;
    :cond_1
    const-string v14, "updated_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 509
    const-string v14, "updated_at"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 510
    .local v12, updatedAtString:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 511
    invoke-static {v12}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 514
    .end local v12           #updatedAtString:Ljava/lang/String;
    :cond_2
    const-string v14, "pointers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 515
    const-string v14, "pointers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 516
    .local v10, newPointers:Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 517
    .local v8, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 518
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 519
    .local v7, key:Ljava/lang/String;
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 520
    .local v11, pointerArray:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v15

    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10           #newPointers:Lorg/json/JSONObject;
    .end local v11           #pointerArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 594
    .local v5, e:Lorg/json/JSONException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-direct {v14, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 525
    .end local v5           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v14, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 526
    const-string v14, "data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 527
    .local v9, newData:Lorg/json/JSONObject;
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 528
    .restart local v8       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 529
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 530
    .restart local v7       #key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v14, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v14, "objectId"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 533
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 535
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_1

    .line 538
    :cond_5
    const-string v14, "createdAt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 539
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    goto :goto_1

    .line 542
    :cond_6
    const-string v14, "updatedAt"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 543
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_1

    .line 546
    :cond_7
    const-string v14, "ACL"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 547
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-static {v14}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL;

    move-result-object v1

    .line 548
    .local v1, acl:Lcom/parse/ParseACL;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const-string v15, "ACL"

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_1

    .line 552
    .end local v1           #acl:Lcom/parse/ParseACL;
    :cond_8
    const-string v14, "__type"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "className"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 556
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 557
    .local v13, value:Ljava/lang/Object;
    invoke-static {v13}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 559
    .local v4, decodedObject:Ljava/lang/Object;
    if-eqz v4, :cond_b

    .line 561
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 562
    instance-of v14, v4, Lorg/json/JSONArray;

    if-eqz v14, :cond_9

    .line 563
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #decodedObject:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 565
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 567
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v14, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 569
    .restart local v4       #decodedObject:Ljava/lang/Object;
    :cond_b
    invoke-static {v13}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 570
    instance-of v14, v13, Lorg/json/JSONArray;

    if-eqz v14, :cond_c

    .line 571
    check-cast v13, Lorg/json/JSONArray;

    .end local v13           #value:Ljava/lang/Object;
    invoke-static {v13}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 573
    :cond_c
    instance-of v14, v13, Lorg/json/JSONObject;

    if-eqz v14, :cond_d

    .line 574
    move-object v0, v13

    check-cast v0, Lorg/json/JSONObject;

    move-object v6, v0

    .line 575
    .local v6, json:Lorg/json/JSONObject;
    const-string v14, "__type"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    const-string v14, "__type"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Relation"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 576
    const-string v14, "className"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, className:Ljava/lang/String;
    new-instance v13, Lcom/parse/ParseRelation;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v7}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 578
    .local v13, value:Lcom/parse/ParseRelation;
    move-object v0, v13

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v14, v0

    invoke-virtual {v14, v2}, Lcom/parse/ParseRelation;->setTargetClass(Ljava/lang/String;)V

    .line 581
    .end local v2           #className:Ljava/lang/String;
    .end local v6           #json:Lorg/json/JSONObject;
    .end local v13           #value:Lcom/parse/ParseRelation;
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 583
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v14, v7, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 588
    .end local v4           #decodedObject:Ljava/lang/Object;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9           #newData:Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v14, :cond_10

    .line 589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 592
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 596
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 597
    return-void
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 6
    .parameter "key"
    .parameter "operation"

    .prologue
    .line 1854
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1855
    .local v3, oldValue:Ljava/lang/Object;
    invoke-interface {p2, v3, p0, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1856
    .local v1, newValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1857
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 1863
    .local v2, oldOperation:Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 1864
    .local v0, newOperation:Lcom/parse/ParseFieldOperation;
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    .line 1867
    iget-object v4, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1868
    return-void

    .line 1859
    .end local v0           #newOperation:Lcom/parse/ParseFieldOperation;
    .end local v2           #oldOperation:Lcom/parse/ParseFieldOperation;
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1884
    if-nez p1, :cond_0

    .line 1885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1888
    :cond_0
    if-nez p2, :cond_1

    .line 1889
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1892
    :cond_1
    instance-of v0, p2, Lcom/parse/ParseFile;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1893
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be saved before being set on a ParseObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1897
    :cond_2
    invoke-static {p2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1898
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1901
    :cond_3
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1902
    invoke-direct {p0, p2}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    .line 1903
    return-void
.end method

.method public refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 1104
    return-void
.end method

.method public refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1115
    new-instance v0, Lcom/parse/ParseObject$8;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;Lcom/parse/RefreshCallback;)V

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->fetchInBackground(Lcom/parse/GetCallback;)V

    .line 1124
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback;)V

    .line 2439
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1797
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1799
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1800
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1802
    :cond_0
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2001
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 2002
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 2003
    .local v0, operation:Lcom/parse/ParseRemoveOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2004
    return-void
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->save(Z)V

    .line 899
    return-void
.end method

.method protected save(Z)V
    .locals 3
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 906
    if-eqz p1, :cond_0

    .line 907
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 911
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 912
    const-string v1, "ACL"

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->save()V

    .line 914
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ACL has an unresolved ParseUser. Save or sign up before attempting to serialize the ACL."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    throw v1

    .line 924
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v1}, Lcom/parse/ParseObject;->deepSave(Ljava/lang/Object;)V

    .line 926
    invoke-virtual {p0}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 927
    .local v0, command:Lcom/parse/ParseCommand;
    if-nez v0, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    .line 941
    :goto_0
    return-void

    .line 931
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()V

    .line 932
    new-instance v1, Lcom/parse/ParseObject$4;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$4;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V

    .line 937
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 939
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    goto :goto_0
.end method

.method public saveEventually()V
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->saveEventually(Lcom/parse/SaveCallback;)V

    .line 989
    return-void
.end method

.method public saveEventually(Lcom/parse/SaveCallback;)V
    .locals 8
    .parameter "callback"

    .prologue
    .line 1015
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v5, unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v6, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v6, v5}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 1018
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 1019
    .local v4, object:Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->saveEventually()V

    goto :goto_0

    .line 1022
    .end local v4           #object:Lcom/parse/ParseObject;
    :cond_0
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    .line 1023
    .local v0, cache:Lcom/parse/ParseCommandCache;
    const/4 v1, 0x0

    .line 1025
    .local v1, command:Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1029
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()V

    .line 1030
    new-instance v6, Lcom/parse/ParseObject$6;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v6}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V

    .line 1035
    invoke-virtual {v0, v1, p1, p0}, Lcom/parse/ParseCommandCache;->runEventually(Lcom/parse/ParseCommand;Lcom/parse/ParseCallback;Lcom/parse/ParseObject;)V

    .line 1036
    return-void

    .line 1026
    :catch_0
    move-exception v2

    .line 1027
    .local v2, exception:Lcom/parse/ParseException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to saveEventually."

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 970
    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 952
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 954
    new-instance v0, Lcom/parse/ParseObject$5;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 961
    .local v0, saveTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 962
    return-void
.end method

.method saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t serialize a dirty object to disk."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->toJSONObjectForDataFile()Lorg/json/JSONObject;

    move-result-object v0

    .line 342
    .local v0, object:Lorg/json/JSONObject;
    invoke-static {p1, p2, v0}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 343
    return-void
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .parameter "acl"

    .prologue
    .line 2350
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2351
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 1
    .parameter "newObjectId"

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 704
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method protected startSave()V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 883
    return-void
.end method

.method toJSONObjectForDataFile()Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 778
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 779
    .local v5, objectJSON:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 783
    .local v0, dataJSON:Lorg/json/JSONObject;
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 784
    .local v3, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 787
    .local v4, object:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 788
    iget-object v6, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseJSONCacheItem;

    invoke-virtual {v6}, Lcom/parse/ParseJSONCacheItem;->getJSONObject()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 818
    .local v1, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "could not serialize object to JSON"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 790
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #object:Ljava/lang/Object;
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    invoke-static {v4, v6}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 794
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #object:Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v6, :cond_2

    .line 795
    const-string v6, "createdAt"

    iget-object v7, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v7}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    :cond_2
    iget-object v6, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v6, :cond_3

    .line 798
    const-string v6, "updatedAt"

    iget-object v7, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v7}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    :cond_3
    iget-object v6, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 801
    const-string v6, "objectId"

    iget-object v7, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 804
    :cond_4
    const-string v6, "data"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 805
    const-string v6, "classname"

    iget-object v7, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-eq v6, v8, :cond_5

    .line 813
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Attempt to serialize an object with saves in progress."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 815
    :cond_5
    const-string v6, "operations"

    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 821
    return-object v5
.end method

.method protected toJSONObjectForSaving()Lorg/json/JSONObject;
    .locals 11

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 838
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 839
    .local v6, objectJSON:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 843
    .local v1, dataJSON:Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Ljava/util/Map;

    move-result-object v8

    .line 844
    .local v8, operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 845
    .local v4, key:Ljava/lang/String;
    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseFieldOperation;

    .line 847
    .local v7, operation:Lcom/parse/ParseFieldOperation;
    instance-of v9, v7, Lcom/parse/ParseSetOperation;

    if-eqz v9, :cond_0

    .line 848
    move-object v0, v7

    check-cast v0, Lcom/parse/ParseSetOperation;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 849
    .local v5, object:Ljava/lang/Object;
    invoke-static {v5}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 850
    iget-object v9, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parse/ParseJSONCacheItem;

    invoke-virtual {v9}, Lcom/parse/ParseJSONCacheItem;->getJSONObject()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #object:Ljava/lang/Object;
    .end local v7           #operation:Lcom/parse/ParseFieldOperation;
    .end local v8           #operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :catch_0
    move-exception v2

    .line 865
    .local v2, e:Lorg/json/JSONException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "could not serialize object to JSON"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 855
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v7       #operation:Lcom/parse/ParseFieldOperation;
    .restart local v8       #operations:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseFieldOperation;>;"
    :cond_0
    const/4 v9, 0x1

    :try_start_1
    invoke-static {v7, v9}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 858
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #operation:Lcom/parse/ParseFieldOperation;
    :cond_1
    iget-object v9, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 859
    const-string v9, "objectId"

    iget-object v10, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 862
    :cond_2
    const-string v9, "data"

    invoke-virtual {v6, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 863
    const-string v9, "classname"

    iget-object v10, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 868
    return-object v6
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback;)V

    .line 2443
    return-void
.end method

.method protected validateDelete()V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method

.method protected validateSave()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method
