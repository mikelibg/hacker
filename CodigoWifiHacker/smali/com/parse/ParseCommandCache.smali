.class Lcom/parse/ParseCommandCache;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseCommandCache$TestHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field private callbacksForCommands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseCallback",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private commandsInCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/parse/ParseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private connected:Z

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field private running:Z

.field private runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private testHelper:Lcom/parse/ParseCommandCache$TestHelper;

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v4, 0x5

    iput v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 47
    const-wide v4, 0x4082c00000000000L

    iput-wide v4, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 50
    const/high16 v4, 0xa0

    iput v4, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 64
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    .line 68
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->callbacksForCommands:Ljava/util/HashMap;

    .line 99
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    .line 102
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->connected:Z

    .line 103
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 104
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 106
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    .line 107
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    .line 109
    const-string v4, "com.parse.ParseCommandCache"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    .line 112
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    .line 113
    .local v2, parseDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "CommandCache"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    .line 116
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 118
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v4}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 127
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 129
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 132
    new-instance v3, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;Landroid/net/ConnectivityManager;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    .end local v1           #network:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseCommandCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseCommandCache;)Lcom/parse/ParseCommandCache$TestHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    return-object v0
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 32
    .parameter "retriesRemaining"

    .prologue
    .line 468
    sget-object v27, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v27

    .line 469
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->connected:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 471
    monitor-exit v27

    .line 629
    :goto_0
    return-void

    .line 474
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 475
    .local v14, fileNames:[Ljava/lang/String;
    if-eqz v14, :cond_1

    array-length v0, v14

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 476
    :cond_1
    monitor-exit v27

    goto :goto_0

    .line 628
    .end local v14           #fileNames:[Ljava/lang/String;
    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v26

    .line 478
    .restart local v14       #fileNames:[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 479
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v21, v0

    .local v21, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_18

    aget-object v13, v3, v15

    .line 480
    .local v13, fileName:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v12, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    .local v12, file:Ljava/io/File;
    const/16 v19, 0x0

    .line 484
    .local v19, json:Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 487
    .local v17, input:Ljava/io/InputStream;
    :try_start_2
    new-instance v18, Ljava/io/BufferedInputStream;

    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 488
    .end local v17           #input:Ljava/io/InputStream;
    .local v18, input:Ljava/io/InputStream;
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 489
    .local v4, buffer:Ljava/io/ByteArrayOutputStream;
    const/16 v26, 0x400

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 491
    .local v23, temp:[B
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .local v22, read:I
    if-lez v22, :cond_5

    .line 492
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_c

    goto :goto_2

    .line 495
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v22           #read:I
    .end local v23           #temp:[B
    :catch_0
    move-exception v10

    move-object/from16 v17, v18

    .line 497
    .end local v18           #input:Ljava/io/InputStream;
    .local v10, e:Ljava/io/FileNotFoundException;
    .restart local v17       #input:Ljava/io/InputStream;
    :goto_3
    const/16 v26, 0x6

    :try_start_4
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "File disappeared from cache while being read."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 514
    :cond_3
    if-eqz v17, :cond_4

    .line 516
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 479
    .end local v10           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 494
    .end local v17           #input:Ljava/io/InputStream;
    .restart local v4       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v18       #input:Ljava/io/InputStream;
    .restart local v22       #read:I
    .restart local v23       #temp:[B
    :cond_5
    :try_start_6
    new-instance v20, Lorg/json/JSONObject;

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_c

    .line 514
    .end local v19           #json:Lorg/json/JSONObject;
    .local v20, json:Lorg/json/JSONObject;
    if-eqz v18, :cond_6

    .line 516
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 523
    :cond_6
    :goto_5
    const/4 v6, 0x0

    .line 524
    .local v6, command:Lcom/parse/ParseCommand;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #command:Lcom/parse/ParseCommand;
    check-cast v6, Lcom/parse/ParseCommand;

    .line 556
    .restart local v6       #command:Lcom/parse/ParseCommand;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->callbacksForCommands:Ljava/util/HashMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseCallback;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 558
    .local v5, callback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    const/16 v26, 0x0

    :try_start_9
    move/from16 v0, v26

    invoke-virtual {v6, v0}, Lcom/parse/ParseCommand;->setCallCallbacksOnFailure(Z)V

    .line 559
    invoke-virtual {v6}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 561
    if-eqz v5, :cond_e

    .line 562
    new-instance v11, Lcom/parse/ParseCommandCache$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5}, Lcom/parse/ParseCommandCache$4;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCallback;)V

    .line 570
    .local v11, executeCallback:Ljava/lang/Runnable;
    new-instance v26, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    .end local v11           #executeCallback:Ljava/lang/Runnable;
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/parse/ParseException; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    move-object/from16 v19, v20

    .line 626
    .end local v20           #json:Lorg/json/JSONObject;
    .restart local v19       #json:Lorg/json/JSONObject;
    goto :goto_4

    .line 501
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v5           #callback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    .end local v6           #command:Lcom/parse/ParseCommand;
    .end local v22           #read:I
    .end local v23           #temp:[B
    :catch_1
    move-exception v10

    .line 502
    .local v10, e:Ljava/io/IOException;
    :goto_8
    const/16 v26, 0x6

    :try_start_a
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_8

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Unable to read contents of file in cache."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 505
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 514
    if-eqz v17, :cond_4

    .line 516
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_4

    .line 517
    :catch_2
    move-exception v26

    goto/16 :goto_4

    .line 507
    .end local v10           #e:Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 508
    .local v10, e:Lorg/json/JSONException;
    :goto_9
    const/16 v26, 0x6

    :try_start_c
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_9

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Error parsing JSON found in cache."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 514
    if-eqz v17, :cond_4

    .line 516
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_4

    .line 517
    :catch_4
    move-exception v26

    goto/16 :goto_4

    .line 514
    .end local v10           #e:Lorg/json/JSONException;
    :catchall_1
    move-exception v26

    :goto_a
    if-eqz v17, :cond_a

    .line 516
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 518
    :cond_a
    :goto_b
    :try_start_f
    throw v26
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 528
    .end local v17           #input:Ljava/io/InputStream;
    .end local v19           #json:Lorg/json/JSONObject;
    .restart local v4       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #command:Lcom/parse/ParseCommand;
    .restart local v18       #input:Ljava/io/InputStream;
    .restart local v20       #json:Lorg/json/JSONObject;
    .restart local v22       #read:I
    .restart local v23       #temp:[B
    :cond_b
    :try_start_10
    new-instance v7, Lcom/parse/ParseCommand;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_5

    .line 531
    .end local v6           #command:Lcom/parse/ParseCommand;
    .local v7, command:Lcom/parse/ParseCommand;
    :try_start_11
    invoke-virtual {v7}, Lcom/parse/ParseCommand;->getLocalId()Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_c

    .line 532
    new-instance v26, Lcom/parse/ParseCommandCache$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache$3;-><init>(Lcom/parse/ParseCommandCache;)V

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_b

    :cond_c
    move-object v6, v7

    .line 553
    .end local v7           #command:Lcom/parse/ParseCommand;
    .restart local v6       #command:Lcom/parse/ParseCommand;
    goto/16 :goto_6

    .line 547
    :catch_5
    move-exception v10

    .line 548
    .restart local v10       #e:Lorg/json/JSONException;
    :goto_c
    const/16 v26, 0x6

    :try_start_12
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_d

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Unable to create ParseCommand from JSON."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    move-object/from16 v19, v20

    .line 552
    .end local v20           #json:Lorg/json/JSONObject;
    .restart local v19       #json:Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 571
    .end local v10           #e:Lorg/json/JSONException;
    .end local v17           #input:Ljava/io/InputStream;
    .end local v19           #json:Lorg/json/JSONObject;
    .restart local v5       #callback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    .restart local v18       #input:Ljava/io/InputStream;
    .restart local v20       #json:Lorg/json/JSONObject;
    :cond_e
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v26, v0

    const/16 v28, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Lcom/parse/ParseException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_7

    .line 579
    :catch_6
    move-exception v10

    .line 580
    .local v10, e:Lcom/parse/ParseException;
    :try_start_14
    invoke-virtual {v10}, Lcom/parse/ParseException;->getCode()I

    move-result v26

    const/16 v28, 0x64

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_15

    .line 581
    if-lez p1, :cond_17

    .line 586
    const/16 v26, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_f

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Network timeout in command cache. Waiting for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " seconds and then retrying "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " times."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 590
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 591
    .local v8, currentTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v24, v8, v28

    .line 592
    .local v24, waitUntil:J
    :cond_10
    :goto_d
    cmp-long v26, v8, v24

    if-gez v26, :cond_14

    .line 595
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->connected:Z

    move/from16 v26, v0

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 596
    :cond_11
    const/16 v26, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_12

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    const-string v28, "Aborting wait because runEventually thread should stop."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 599
    :cond_12
    monitor-exit v27
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_0

    .line 602
    :cond_13
    :try_start_15
    sget-object v26, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v28, v24, v8

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_7

    .line 606
    :goto_e
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 607
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v28, v24, v28

    cmp-long v26, v8, v28

    if-gez v26, :cond_10

    .line 610
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    sub-long v8, v24, v28

    goto :goto_d

    .line 603
    :catch_7
    move-exception v16

    .line 604
    .local v16, ie:Ljava/lang/InterruptedException;
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_e

    .line 613
    .end local v16           #ie:Ljava/lang/InterruptedException;
    :cond_14
    add-int/lit8 v26, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    move-object/from16 v19, v20

    .line 614
    .end local v20           #json:Lorg/json/JSONObject;
    .restart local v19       #json:Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 616
    .end local v8           #currentTime:J
    .end local v17           #input:Ljava/io/InputStream;
    .end local v19           #json:Lorg/json/JSONObject;
    .end local v24           #waitUntil:J
    .restart local v18       #input:Ljava/io/InputStream;
    .restart local v20       #json:Lorg/json/JSONObject;
    :cond_15
    const/16 v26, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v26, v0

    sget-object v28, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v29, "Failed to run command."

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v26, v0

    const/16 v28, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    :cond_17
    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    move-object/from16 v19, v20

    .end local v20           #json:Lorg/json/JSONObject;
    .restart local v19       #json:Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 628
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v5           #callback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    .end local v6           #command:Lcom/parse/ParseCommand;
    .end local v10           #e:Lcom/parse/ParseException;
    .end local v12           #file:Ljava/io/File;
    .end local v13           #fileName:Ljava/lang/String;
    .end local v17           #input:Ljava/io/InputStream;
    .end local v19           #json:Lorg/json/JSONObject;
    .end local v22           #read:I
    .end local v23           #temp:[B
    :cond_18
    monitor-exit v27
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 517
    .restart local v4       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #file:Ljava/io/File;
    .restart local v13       #fileName:Ljava/lang/String;
    .restart local v18       #input:Ljava/io/InputStream;
    .restart local v20       #json:Lorg/json/JSONObject;
    .restart local v22       #read:I
    .restart local v23       #temp:[B
    :catch_8
    move-exception v26

    goto/16 :goto_5

    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v18           #input:Ljava/io/InputStream;
    .end local v20           #json:Lorg/json/JSONObject;
    .end local v22           #read:I
    .end local v23           #temp:[B
    .local v10, e:Ljava/io/FileNotFoundException;
    .restart local v17       #input:Ljava/io/InputStream;
    .restart local v19       #json:Lorg/json/JSONObject;
    :catch_9
    move-exception v26

    goto/16 :goto_4

    .end local v10           #e:Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v28

    goto/16 :goto_b

    .line 547
    .end local v17           #input:Ljava/io/InputStream;
    .end local v19           #json:Lorg/json/JSONObject;
    .restart local v4       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #command:Lcom/parse/ParseCommand;
    .restart local v18       #input:Ljava/io/InputStream;
    .restart local v20       #json:Lorg/json/JSONObject;
    .restart local v22       #read:I
    .restart local v23       #temp:[B
    :catch_b
    move-exception v10

    move-object v6, v7

    .end local v7           #command:Lcom/parse/ParseCommand;
    .restart local v6       #command:Lcom/parse/ParseCommand;
    goto/16 :goto_c

    .line 514
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v6           #command:Lcom/parse/ParseCommand;
    .end local v20           #json:Lorg/json/JSONObject;
    .end local v22           #read:I
    .end local v23           #temp:[B
    .restart local v19       #json:Lorg/json/JSONObject;
    :catchall_2
    move-exception v26

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    goto/16 :goto_a

    .line 507
    .end local v17           #input:Ljava/io/InputStream;
    .restart local v18       #input:Ljava/io/InputStream;
    :catch_c
    move-exception v10

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    goto/16 :goto_9

    .line 501
    .end local v17           #input:Ljava/io/InputStream;
    .restart local v18       #input:Ljava/io/InputStream;
    :catch_d
    move-exception v10

    move-object/from16 v17, v18

    .end local v18           #input:Ljava/io/InputStream;
    .restart local v17       #input:Ljava/io/InputStream;
    goto/16 :goto_8

    .line 495
    :catch_e
    move-exception v10

    goto/16 :goto_3
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 11
    .parameter "file"

    .prologue
    .line 220
    sget-object v9, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 222
    :try_start_0
    iget-object v8, p0, Lcom/parse/ParseCommandCache;->callbacksForCommands:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v8, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, json:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 231
    .local v2, input:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 232
    .end local v2           #input:Ljava/io/InputStream;
    .local v3, input:Ljava/io/InputStream;
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v0, buffer:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v7, v8, [B

    .line 235
    .local v7, temp:[B
    :goto_0
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, read:I
    if-lez v6, :cond_1

    .line 236
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 242
    .end local v0           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v6           #read:I
    .end local v7           #temp:[B
    :catch_0
    move-exception v8

    move-object v2, v3

    .line 245
    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    :goto_1
    if-eqz v2, :cond_0

    .line 247
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 254
    :cond_0
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 255
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    return-void

    .line 238
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v0       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v6       #read:I
    .restart local v7       #temp:[B
    :cond_1
    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 240
    .end local v4           #json:Lorg/json/JSONObject;
    .local v5, json:Lorg/json/JSONObject;
    :try_start_6
    new-instance v1, Lcom/parse/ParseCommand;

    invoke-direct {v1, v5}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V

    .line 241
    .local v1, command:Lcom/parse/ParseCommand;
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->releaseLocalIds()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 245
    if-eqz v3, :cond_3

    .line 247
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    move-object v4, v5

    .line 249
    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_2

    .line 248
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v5       #json:Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    move-object v4, v5

    .line 249
    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_2

    .line 245
    .end local v0           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v1           #command:Lcom/parse/ParseCommand;
    .end local v6           #read:I
    .end local v7           #temp:[B
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v2, :cond_2

    .line 247
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 249
    :cond_2
    :goto_4
    :try_start_9
    throw v8

    .line 255
    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #json:Lorg/json/JSONObject;
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v8

    .line 248
    .restart local v2       #input:Ljava/io/InputStream;
    .restart local v4       #json:Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v10

    goto :goto_4

    .line 245
    .end local v2           #input:Ljava/io/InputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    goto :goto_3

    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v0       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #read:I
    .restart local v7       #temp:[B
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_3

    .line 242
    .end local v0           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v6           #read:I
    .end local v7           #temp:[B
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v0       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v5       #json:Lorg/json/JSONObject;
    .restart local v6       #read:I
    .restart local v7       #temp:[B
    :catch_5
    move-exception v8

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_1

    .end local v2           #input:Ljava/io/InputStream;
    .end local v4           #json:Lorg/json/JSONObject;
    .restart local v1       #command:Lcom/parse/ParseCommand;
    .restart local v3       #input:Ljava/io/InputStream;
    .restart local v5       #json:Lorg/json/JSONObject;
    :cond_3
    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStream;
    .restart local v2       #input:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #json:Lorg/json/JSONObject;
    .restart local v4       #json:Lorg/json/JSONObject;
    goto :goto_2
.end method

.method private runEventuallyInternal(Lcom/parse/ParseCommand;Lcom/parse/ParseCallback;ZLcom/parse/ParseObject;)V
    .locals 25
    .parameter "command"
    .parameter
    .parameter "preferOldest"
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseCallback",
            "<",
            "Ljava/lang/Void;",
            ">;Z",
            "Lcom/parse/ParseObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 311
    .local p2, callback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_0

    .line 312
    invoke-virtual/range {p4 .. p4}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setLocalId(Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v12

    .line 315
    .local v12, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 328
    .local v11, json:[B
    array-length v0, v11

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 329
    const/16 v21, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    const-string v22, "Unable to save command for later because it\'s too big."

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 332
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    .line 417
    .end local v11           #json:[B
    .end local v12           #jsonObject:Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v4

    .line 317
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const/16 v21, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_3

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v23, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    goto :goto_0

    .line 338
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #json:[B
    .restart local v12       #jsonObject:Lorg/json/JSONObject;
    :cond_4
    sget-object v22, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v22

    .line 341
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, fileNames:[Ljava/lang/String;
    if-eqz v7, :cond_9

    .line 343
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 344
    const/16 v19, 0x0

    .line 345
    .local v19, size:I
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v13, :cond_5

    aget-object v6, v3, v8

    .line 346
    .local v6, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v19, v19, v21

    .line 345
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 351
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    :cond_5
    array-length v0, v11

    move/from16 v21, v0

    add-int v19, v19, v21

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 353
    if-eqz p3, :cond_7

    .line 354
    const/16 v21, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    const-string v23, "Unable to save command for later because storage is full."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :cond_6
    :try_start_2
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    monitor-exit v22

    goto/16 :goto_0

    .line 415
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #fileNames:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v13           #len$:I
    .end local v19           #size:I
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 359
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #fileNames:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v13       #len$:I
    .restart local v19       #size:I
    :cond_7
    const/16 v21, 0x5

    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    const-string v23, "Deleting old commands to make room in command cache."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 362
    :cond_8
    const/4 v9, 0x0

    .local v9, indexToDelete:I
    move v10, v9

    .line 363
    .end local v9           #indexToDelete:I
    .local v10, indexToDelete:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_9

    .line 364
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #indexToDelete:I
    .restart local v9       #indexToDelete:I
    aget-object v23, v7, v10

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v21, v0

    sub-int v19, v19, v21

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move v10, v9

    .line 367
    .end local v9           #indexToDelete:I
    .restart local v10       #indexToDelete:I
    goto :goto_2

    .line 374
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #i$:I
    .end local v10           #indexToDelete:I
    .end local v13           #len$:I
    .end local v19           #size:I
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v17

    .line 375
    .local v17, prefix1:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x10

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 376
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    rsub-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 377
    .local v20, zeroes:[C
    const/16 v21, 0x30

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([CC)V

    .line 378
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 383
    .end local v20           #zeroes:[C
    :cond_a
    sget v21, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v23, v21, 0x1

    sput v23, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    .line 384
    .local v18, prefix2:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 385
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    rsub-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 386
    .restart local v20       #zeroes:[C
    const/16 v21, 0x30

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([CC)V

    .line 387
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 390
    .end local v20           #zeroes:[C
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CachedCommand_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 393
    .local v16, prefix:Ljava/lang/String;
    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 396
    .local v15, path:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    if-eqz p2, :cond_c

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->callbacksForCommands:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseCommand;->retainLocalIds()V

    .line 401
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 402
    .local v14, output:Ljava/io/OutputStream;
    invoke-virtual {v14, v11}, Ljava/io/OutputStream;->write([B)V

    .line 403
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 413
    :cond_d
    :try_start_4
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 415
    .end local v7           #fileNames:[Ljava/lang/String;
    .end local v14           #output:Ljava/io/OutputStream;
    .end local v15           #path:Ljava/io/File;
    .end local v16           #prefix:Ljava/lang/String;
    .end local v17           #prefix1:Ljava/lang/String;
    .end local v18           #prefix2:Ljava/lang/String;
    :goto_3
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 408
    :catch_1
    move-exception v4

    .line 409
    .local v4, e:Ljava/io/IOException;
    const/16 v21, 0x5

    :try_start_5
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    sget-object v23, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v24, "Unable to save command for later."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 413
    :cond_e
    :try_start_6
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    goto :goto_3

    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    sget-object v23, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private runLoop()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 641
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    if-lt v8, v4, :cond_0

    .line 642
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v5, "Parse command cache has started processing queued commands."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 645
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 646
    :try_start_0
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v5, :cond_2

    .line 648
    monitor-exit v4

    .line 687
    :cond_1
    :goto_0
    return-void

    .line 650
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 651
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 653
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, shouldRun:Z
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 657
    :try_start_1
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v2

    .line 658
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 659
    :goto_2
    if-eqz v1, :cond_9

    .line 660
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 662
    :try_start_2
    iget v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    .line 663
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v4, :cond_3

    .line 665
    :try_start_3
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 675
    :cond_3
    :goto_3
    :try_start_4
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_6

    move v1, v2

    .line 677
    :goto_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 653
    .end local v1           #shouldRun:Z
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .restart local v1       #shouldRun:Z
    :cond_4
    move v1, v3

    .line 657
    goto :goto_1

    .line 658
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_7
    iput-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 670
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 671
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_8
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 672
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "saveEventually thread had an error."

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 675
    :cond_5
    :try_start_9
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_7

    move v1, v2

    .line 676
    :goto_5
    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    move v1, v3

    .line 675
    goto :goto_4

    .restart local v0       #e:Ljava/lang/Exception;
    :cond_7
    move v1, v3

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    iget-boolean v6, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v6, :cond_8

    move v1, v2

    :goto_6
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    move v1, v3

    goto :goto_6

    .line 680
    :cond_9
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 681
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 682
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 683
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 684
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v8, v2, :cond_1

    .line 685
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "saveEventually thread has stopped processing commands."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 433
    sget-object v6, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 434
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 435
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_0

    .line 436
    monitor-exit v6

    .line 443
    :goto_0
    return-void

    .line 438
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 439
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 438
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 441
    .end local v1           #file:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 442
    monitor-exit v6

    goto :goto_0

    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/parse/ParseCommandCache$TestHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseCommandCache$TestHelper;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCommandCache$1;)V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    return-object v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    .line 199
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 201
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 202
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 206
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 213
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 214
    return-void
.end method

.method public pendingCount()I
    .locals 3

    .prologue
    .line 423
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, files:[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0

    .line 426
    .end local v0           #files:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 173
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v1, :cond_0

    .line 175
    new-instance v1, Lcom/parse/ParseCommandCache$2;

    const-string v3, "ParseCommandCache.runLoop()"

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 192
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 187
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 188
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 191
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public runEventually(Lcom/parse/ParseCommand;Lcom/parse/ParseCallback;Lcom/parse/ParseObject;)V
    .locals 1
    .parameter "command"
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseCommand;",
            "Lcom/parse/ParseCallback",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, callback:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/parse/ParseCommandCache;->runEventuallyInternal(Lcom/parse/ParseCommand;Lcom/parse/ParseCallback;ZLcom/parse/ParseObject;)V

    .line 286
    return-void
.end method

.method public setConnected(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 449
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 450
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->connected:Z

    if-eq v0, p1, :cond_0

    .line 451
    iput-boolean p1, p0, Lcom/parse/ParseCommandCache;->connected:Z

    .line 452
    if-eqz p1, :cond_0

    .line 453
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 456
    :cond_0
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2
    .parameter "bytes"

    .prologue
    .line 166
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 168
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2
    .parameter "tries"

    .prologue
    .line 152
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 154
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 2
    .parameter "seconds"

    .prologue
    .line 159
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 161
    monitor-exit v1

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 263
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->callbacksForCommands:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
