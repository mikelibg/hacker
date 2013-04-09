.class Lcom/millennialmedia/android/HandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/HandShake$AdTypeHandShake;,
        Lcom/millennialmedia/android/HandShake$Scheme;
    }
.end annotation


# static fields
.field static apid:Ljava/lang/String; = null

.field private static final handShakeURL:Ljava/lang/String; = "http://ads.mp.mydas.mobi/appConfigServlet?apid="

.field private static sharedInstance:Lcom/millennialmedia/android/HandShake;


# instance fields
.field private adTypeHandShakes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/android/HandShake$AdTypeHandShake;",
            ">;"
        }
    .end annotation
.end field

.field private cachedVideos:[Ljava/lang/String;

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field creativeCacheTimeout:J

.field private deferredViewTimeout:J

.field private handShakeCallback:J

.field private final handler:Landroid/os/Handler;

.field hdid:Z

.field kill:Z

.field private lastHandShake:J

.field mmdid:Ljava/lang/String;

.field private schemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/HandShake$Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private schemesList:Ljava/lang/String;

.field private updateHandShakeRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    .line 59
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 63
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 69
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 334
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 249
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    .line 59
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 63
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 69
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 334
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 254
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    .line 255
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->loadHandShake(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 258
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 259
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/HandShake$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HandShake$1;-><init>(Lcom/millennialmedia/android/HandShake;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 332
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100()Lcom/millennialmedia/android/HandShake;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->saveHandShake(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    return-wide v0
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 15
    .parameter "handShakeObject"
    .parameter "context"

    .prologue
    .line 599
    if-nez p1, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    :try_start_0
    const-string v11, "errors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 606
    .local v6, jsonArray:Lorg/json/JSONArray;
    if-eqz v6, :cond_4

    .line 608
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 610
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 611
    .local v7, jsonObject:Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 613
    const-string v11, "message"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, message:Ljava/lang/String;
    const-string v11, "type"

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 615
    .local v10, type:Ljava/lang/String;
    if-eqz v8, :cond_2

    if-eqz v10, :cond_2

    .line 617
    const-string v11, "log"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 619
    const-string v11, "MillennialMediaSDK"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v8           #message:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 621
    .restart local v8       #message:Ljava/lang/String;
    .restart local v10       #type:Ljava/lang/String;
    :cond_3
    const-string v11, "prompt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 623
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/millennialmedia/android/HandShake$3;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0, v8}, Lcom/millennialmedia/android/HandShake$3;-><init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 708
    .end local v5           #i:I
    .end local v6           #jsonArray:Lorg/json/JSONArray;
    .end local v7           #jsonObject:Lorg/json/JSONObject;
    .end local v8           #message:Ljava/lang/String;
    .end local v10           #type:Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 646
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v6       #jsonArray:Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string v11, "adtypes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 647
    .restart local v7       #jsonObject:Lorg/json/JSONObject;
    if-eqz v7, :cond_6

    .line 650
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, adTypes:[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_3
    array-length v11, v3

    if-ge v5, v11, :cond_6

    .line 654
    aget-object v11, v3, v5

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 655
    .local v2, adTypeObject:Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 657
    new-instance v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 658
    .local v1, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 660
    aget-object v11, v3, v5

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v11}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V

    .line 661
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    aget-object v12, v3, v5

    invoke-virtual {v11, v12, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v1           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 667
    .end local v2           #adTypeObject:Lorg/json/JSONObject;
    .end local v3           #adTypes:[Ljava/lang/String;
    .end local v5           #i:I
    :cond_6
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 669
    :try_start_2
    const-string v11, "schemes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 670
    if-eqz v6, :cond_8

    .line 672
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_8

    .line 674
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 675
    if-eqz v7, :cond_7

    .line 677
    new-instance v9, Lcom/millennialmedia/android/HandShake$Scheme;

    invoke-direct {v9, p0}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 678
    .local v9, scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v9, v7}, Lcom/millennialmedia/android/HandShake$Scheme;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 679
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    .end local v9           #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 683
    .end local v5           #i:I
    :cond_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 686
    :try_start_3
    const-string v11, "deferredviewtimeout"

    const-wide/16 v12, 0xe10

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iput-wide v11, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 687
    const-string v11, "kill"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 688
    const-string v11, "handshakecallback"

    const-wide/32 v12, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iput-wide v11, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 689
    const-string v11, "hdid"

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 690
    const-string v11, "creativeCacheTimeout"

    const-wide/32 v12, 0x3f480

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iput-wide v11, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 692
    const-string v11, "cachedVideos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 693
    if-eqz v6, :cond_9

    .line 695
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    .line 696
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 697
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 696
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 683
    .end local v5           #i:I
    :catchall_0
    move-exception v11

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v11

    .line 701
    :cond_9
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    .line 704
    :cond_a
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 705
    iget-object v11, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/millennialmedia/android/PreCacheWorker;->preCacheVideos([Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private loadHandShake(Landroid/content/Context;)Z
    .locals 25
    .parameter "context"

    .prologue
    .line 713
    const/4 v15, 0x0

    .line 714
    .local v15, settingsFound:Z
    const-string v17, "MillennialMediaSettings"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 716
    .local v14, settings:Landroid/content/SharedPreferences;
    if-nez v14, :cond_0

    .line 717
    const/16 v17, 0x0

    .line 799
    :goto_0
    return v17

    .line 720
    :cond_0
    const-string v17, "handshake_deferredviewtimeout"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 722
    const-string v17, "handshake_deferredviewtimeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 723
    const/4 v15, 0x1

    .line 725
    :cond_1
    const-string v17, "handshake_kill"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 727
    const-string v17, "handshake_kill"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->kill:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 728
    const/4 v15, 0x1

    .line 730
    :cond_2
    const-string v17, "handshake_callback"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 732
    const-string v17, "handshake_callback"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 733
    const/4 v15, 0x1

    .line 735
    :cond_3
    const-string v17, "handshake_hdid"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 737
    const-string v17, "handshake_hdid"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 738
    const/4 v15, 0x1

    .line 740
    :cond_4
    const-string v17, "handshake_mmdid"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 742
    const-string v17, "handshake_mmdid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 743
    const/4 v15, 0x1

    .line 745
    :cond_5
    const-string v17, "handshake_creativecachetimeout"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 747
    const-string v17, "handshake_creativecachetimeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 748
    const/4 v15, 0x1

    .line 752
    :cond_6
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v5

    .line 753
    .local v5, adTypes:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_8

    .line 755
    new-instance v4, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 756
    .local v4, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    aget-object v17, v5, v7

    move-object/from16 v0, v17

    invoke-virtual {v4, v14, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 758
    const/4 v15, 0x1

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    move-object/from16 v17, v0

    aget-object v18, v5, v7

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 764
    .end local v4           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_8
    monitor-enter p0

    .line 766
    :try_start_0
    const-string v17, "handshake_schemes"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 768
    const-string v17, "handshake_schemes"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 769
    .local v13, schemesStr:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_b

    .line 771
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 772
    .local v12, schemeStrings:[Ljava/lang/String;
    move-object v6, v12

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_a

    aget-object v16, v6, v8

    .line 774
    .local v16, str:Ljava/lang/String;
    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 775
    .local v10, parts:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 777
    new-instance v11, Lcom/millennialmedia/android/HandShake$Scheme;

    const/16 v17, 0x0

    aget-object v17, v10, v17

    const/16 v18, 0x1

    aget-object v18, v10, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v11, v0, v1, v2}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;I)V

    .line 778
    .local v11, scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .end local v11           #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 781
    .end local v10           #parts:[Ljava/lang/String;
    .end local v16           #str:Ljava/lang/String;
    :cond_a
    const/4 v15, 0x1

    .line 784
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v12           #schemeStrings:[Ljava/lang/String;
    .end local v13           #schemesStr:Ljava/lang/String;
    :cond_b
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    const-string v17, "handshake_lasthandshake"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 789
    const-string v17, "handshake_lasthandshake"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 790
    const/4 v15, 0x1

    .line 793
    :cond_c
    if-eqz v15, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v19, v0

    cmp-long v17, v17, v19

    if-gez v17, :cond_d

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v19, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    sub-long v19, v19, v21

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    :cond_d
    if-eqz v15, :cond_e

    .line 797
    const-string v17, "Handshake successfully loaded from shared preferences."

    invoke-static/range {v17 .. v17}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    :cond_e
    move/from16 v17, v15

    .line 799
    goto/16 :goto_0

    .line 784
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .parameter "jsonString"

    .prologue
    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON String: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 575
    if-eqz p1, :cond_0

    .line 579
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 580
    .local v1, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 581
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 587
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 587
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveHandShake(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 804
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 805
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 808
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "handshake_deferredviewtimeout"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 809
    const-string v8, "handshake_kill"

    iget-boolean v9, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 810
    const-string v8, "handshake_callback"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 811
    const-string v8, "handshake_hdid"

    iget-boolean v9, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 812
    const-string v8, "handshake_creativecachetimeout"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 815
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 817
    .local v0, adType:Ljava/lang/String;
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 818
    .local v1, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    check-cast v0, Ljava/lang/String;

    .end local v0           #adType:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 822
    .end local v1           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    monitor-enter p0

    .line 824
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 826
    .local v7, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 828
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 829
    .local v5, scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    if-lez v3, :cond_1

    .line 830
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 833
    .end local v5           #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_2
    const-string v8, "handshake_schemes"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 834
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    const-string v8, "handshake_lasthandshake"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 839
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 840
    return-void

    .line 834
    .end local v3           #i:I
    .end local v7           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method static declared-synchronized sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    .locals 6
    .parameter "context"

    .prologue
    .line 75
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "MillennialMediaSDK"

    const-string v2, "No apid set for the handshake."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    const/4 v0, 0x0

    .line 89
    :goto_0
    monitor-exit v1

    return-object v0

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    .line 89
    :cond_1
    :goto_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    goto :goto_0

    .line 84
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 86
    const-string v0, "Handshake expired, requesting new handshake from the server."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized canDisplayCachedAd(Ljava/lang/String;J)Z
    .locals 2
    .parameter "adType"
    .parameter "cachedTime"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 154
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0, p2, p3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canDisplayCachedAd(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 156
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 118
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 122
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "adType"
    .parameter "videoAd"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 138
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 140
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 137
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 103
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getSchemesJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6
    .parameter "context"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 371
    .local v0, array:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 373
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 375
    .local v2, scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->checkAvailability(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 380
    .local v3, schemeObject:Lorg/json/JSONObject;
    const-string v4, "scheme"

    iget-object v5, v2, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v4, "schemeid"

    iget v5, v2, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 384
    .end local v3           #schemeObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 388
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 370
    .end local v0           #array:Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized getSchemesList(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 348
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 353
    .local v1, scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->checkAvailability(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    .end local v2           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 358
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    .restart local v2       #stringBuilder:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    iget v3, v1, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 361
    .end local v1           #scheme:Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;

    .line 365
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method declared-synchronized isAdTypeDownloading(Ljava/lang/String;)Z
    .locals 2
    .parameter "adType"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 192
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 193
    iget-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized lockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .parameter "adType"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 202
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method overrideAdRefresh(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .parameter "adView"

    .prologue
    .line 218
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 221
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 224
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    return-void
.end method

.method setMMdid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "newMMdid"

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 229
    return-void
.end method

.method declared-synchronized setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "newMMdid"
    .parameter "persist"

    .prologue
    .line 233
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NULL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->setMMdid(Ljava/lang/String;)V

    .line 240
    if-eqz p3, :cond_1

    .line 242
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "handshake_mmdid"

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_1
    monitor-exit p0

    return-void

    .line 236
    :cond_2
    :try_start_1
    iput-object p2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized unlockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .parameter "adType"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 211
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_0
    monitor-exit p0

    return-void

    .line 210
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 173
    .local v0, adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    monitor-exit p0

    return-void

    .line 172
    .end local v0           #adTypeHandShake:Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
