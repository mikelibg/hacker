.class public Lcom/parse/ParseTestUtils;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseTestUtils"

.field private static serverPort:I

.field private static synchronizer:Lcom/parse/Synchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x2328

    sput v0, Lcom/parse/ParseTestUtils;->serverPort:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowSleep(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 155
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 156
    return-void
.end method

.method public static assertFinishes()V
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->assertFinishes()V

    .line 235
    return-void
.end method

.method public static assertSlept()V
    .locals 3

    .prologue
    .line 161
    :goto_0
    sget-object v1, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-nez v1, :cond_0

    .line 162
    return-void

    .line 165
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static beginFakeSleep()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 148
    return-void
.end method

.method public static clearApp()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "clear_app"

    invoke-direct {v0, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, command:Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static clearCurrentInstallationFromMemory()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 278
    return-void
.end method

.method public static clearFiles()V
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 262
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 266
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->pause()V

    .line 268
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 270
    :cond_0
    return-void
.end method

.method public static clearPushRouterStateFromMemory()V
    .locals 0

    .prologue
    .line 273
    invoke-static {}, Lcom/parse/ParsePushRouter;->clearStateFromMemory()V

    .line 274
    return-void
.end method

.method public static commandCacheUnexpectedEvents()I
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache$TestHelper;->unexpectedEvents()I

    move-result v0

    return v0
.end method

.method public static consecutiveFailures()I
    .locals 1

    .prologue
    .line 185
    sget v0, Lcom/parse/PushService;->consecutiveFailures:I

    return v0
.end method

.method public static disconnectCommandCache()V
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 399
    return-void
.end method

.method public static endFakeSleep()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 152
    return-void
.end method

.method public static finish()V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->finish()V

    .line 240
    return-void
.end method

.method public static getIgnoreAfterTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/parse/ParsePushRouter;->ignoreAfter:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 301
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/parse/ParsePushRouter;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 193
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static getParseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 214
    const-string v0, "Parse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 313
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getUserObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static initSynchronizer()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/parse/Synchronizer;

    invoke-direct {v0}, Lcom/parse/Synchronizer;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    .line 221
    return-void
.end method

.method public static keySet(Lcom/parse/ParseObject;)Ljava/util/Set;
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static mockPushServer()Ljava/net/ServerSocket;
    .locals 4

    .prologue
    .line 359
    sget v1, Lcom/parse/ParseTestUtils;->serverPort:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/parse/ParseTestUtils;->serverPort:I

    .line 360
    sget v1, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-static {v1}, Lcom/parse/PushService;->usePort(I)V

    .line 361
    const-string v1, "com.parse.ParseTestUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "running mockPushServer on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    sget v2, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static mockV8Client()V
    .locals 3

    .prologue
    .line 126
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "mock_v8_client"

    invoke-direct {v0, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, command:Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static numKeyValueCacheFiles()I
    .locals 1

    .prologue
    .line 373
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static onPush(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V
    .locals 0
    .parameter "context"
    .parameter "channel"
    .parameter "callback"

    .prologue
    .line 286
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePushRouter;->addSingletonRoute(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V

    .line 287
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method public static pushRoutes(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
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
    .line 281
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 282
    sget-object v0, Lcom/parse/ParsePushRouter;->channelRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static reconnectCommandCache()V
    .locals 2

    .prologue
    .line 402
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 403
    return-void
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 247
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 253
    .local v2, children:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 254
    .local v1, child:Ljava/io/File;
    invoke-static {v1}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 257
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #children:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static resetCommandCache()V
    .locals 2

    .prologue
    .line 391
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    .line 392
    .local v0, cache:Lcom/parse/ParseCommandCache;
    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v1

    .line 393
    .local v1, helper:Lcom/parse/ParseCommandCache$TestHelper;
    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->clear()V

    .line 394
    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$TestHelper;->clear()V

    .line 395
    return-void
.end method

.method public static saveObjectToDisk(Lcom/parse/ParseObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "object"
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static saveStringToDisk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "string"
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 201
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/parse/ParseTestUtils;->getParseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 205
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 208
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static setCommandInitialDelay(D)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/parse/ParseCommand;->setInitialDelay(D)V

    .line 244
    return-void
.end method

.method public static setMaxKeyValueCacheBytes(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 387
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 388
    return-void
.end method

.method public static setMaxKeyValueCacheFiles(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 380
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 381
    return-void
.end method

.method public static setPushHistoryLength(I)I
    .locals 1
    .parameter "length"

    .prologue
    .line 295
    sget v0, Lcom/parse/ParsePushRouter;->maxHistory:I

    .line 296
    .local v0, old:I
    sput p0, Lcom/parse/ParsePushRouter;->maxHistory:I

    .line 297
    return v0
.end method

.method public static setUpPushTest(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 330
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    .line 332
    const/4 v0, 0x0

    sput v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 333
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 334
    const-string v0, "localhost"

    invoke-static {v0}, Lcom/parse/PushService;->useServer(Ljava/lang/String;)V

    .line 336
    const-string v0, "http://10.0.2.2:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->clearStateFromDisk(Landroid/content/Context;)V

    .line 338
    invoke-static {p0}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromDisk(Landroid/content/Context;)V

    .line 339
    invoke-static {}, Lcom/parse/ParseTestUtils;->initSynchronizer()V

    .line 340
    return-void
.end method

.method public static start(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 229
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0, p0}, Lcom/parse/Synchronizer;->start(I)V

    .line 230
    return-void
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 343
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 344
    return-void
.end method

.method public static tearDownPushTest(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 319
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearFiles()V

    .line 320
    invoke-static {p0}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromDisk(Landroid/content/Context;)V

    .line 321
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->clearStateFromDisk(Landroid/content/Context;)V

    .line 322
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 323
    return-void
.end method

.method public static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "o"

    .prologue
    .line 348
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static totalNotifications()I
    .locals 1

    .prologue
    .line 291
    sget v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    return v0
.end method

.method public static unmockV8Client()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "unmock_v8_client"

    invoke-direct {v0, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, command:Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static useBadServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "http://10.0.2.2:6666"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useDevPushServer()V
    .locals 1

    .prologue
    .line 181
    const-string v0, "10.0.2.2"

    invoke-static {v0}, Lcom/parse/PushService;->useServer(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static useInvalidServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "http://invalid.server:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "theServer"

    .prologue
    .line 86
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 87
    .local v0, oldServer:Ljava/lang/String;
    sput-object p0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 88
    return-object v0
.end method

.method public static waitForCommandCacheEnqueue()Z
    .locals 2

    .prologue
    .line 406
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method

.method public static waitForCommandCacheFailure()Z
    .locals 2

    .prologue
    .line 414
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method

.method public static waitForCommandCacheSuccess()Z
    .locals 2

    .prologue
    .line 410
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->waitFor(I)Z

    move-result v0

    return v0
.end method
