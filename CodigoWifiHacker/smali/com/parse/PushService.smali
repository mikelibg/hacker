.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushService$ServiceState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field static consecutiveFailures:I

.field private static defaultPushPort:I

.field private static delaySeconds:I

.field private static pushServer:Ljava/lang/String;

.field static sleepSemaphore:Ljava/util/concurrent/Semaphore;

.field static socket:Ljava/net/Socket;


# instance fields
.field private keepAliveTimer:Ljava/util/Timer;

.field private pushPort:I

.field private state:Lcom/parse/PushService$ServiceState;

.field private task:Lcom/parse/os/ParseAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/os/ParseAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "push.parse.com"

    sput-object v0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    .line 74
    const/16 v0, 0x203d

    sput v0, Lcom/parse/PushService;->defaultPushPort:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 97
    sget-object v0, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    iput-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/parse/PushService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/parse/PushService;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    return v0
.end method

.method static synthetic access$200(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    return-object v0
.end method

.method static synthetic access$202(Lcom/parse/PushService;Lcom/parse/PushService$ServiceState;)Lcom/parse/PushService$ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/parse/PushService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/parse/PushService;->increaseDelay()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/PushService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/parse/PushService;->pushPort:I

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/parse/PushService;->sendSubscriptionInformation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/parse/PushService;Ljava/io/BufferedReader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public static declared-synchronized getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
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
    .line 289
    const-class v0, Lcom/parse/PushService;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private increaseDelay()V
    .locals 8

    .prologue
    .line 325
    sget v0, Lcom/parse/PushService;->consecutiveFailures:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/PushService;->consecutiveFailures:I

    .line 329
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 330
    const/16 v0, 0xf

    sget v1, Lcom/parse/PushService;->delaySeconds:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 331
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 332
    return-void
.end method

.method private readInBackground(Ljava/io/BufferedReader;)V
    .locals 3
    .parameter "initialReader"

    .prologue
    .line 423
    move-object v0, p0

    .line 424
    .local v0, finalService:Lcom/parse/PushService;
    iget-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    sget-object v2, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v1, v2, :cond_0

    .line 558
    :goto_0
    return-void

    .line 428
    :cond_0
    new-instance v1, Lcom/parse/PushService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/PushService$2;-><init>(Lcom/parse/PushService;Ljava/io/BufferedReader;Lcom/parse/PushService;)V

    iput-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    .line 557
    iget-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/parse/os/ParseAsyncTask;->execute([Ljava/lang/Object;)Lcom/parse/os/ParseAsyncTask;

    goto :goto_0
.end method

.method static resetDelay()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 319
    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 320
    sput v0, Lcom/parse/PushService;->consecutiveFailures:I

    .line 321
    return-void
.end method

.method private sendKeepAlive()V
    .locals 1

    .prologue
    .line 406
    const-string v0, "{}"

    invoke-static {v0}, Lcom/parse/PushService;->sendMessage(Ljava/lang/String;)Z

    .line 407
    return-void
.end method

.method static sendMessage(Ljava/lang/String;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 369
    sget-object v3, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    if-nez v3, :cond_0

    .line 386
    :goto_0
    return v2

    .line 374
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 376
    .local v1, writer:Ljava/io/BufferedWriter;
    const-string v3, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscribing with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 386
    const/4 v2, 0x1

    goto :goto_0

    .line 379
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "com.parse.PushService"

    const-string v4, "unsupported encoding"

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 382
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    const-string v3, "com.parse.PushService"

    const-string v4, "could not construct writer"

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static declared-synchronized sendSubscriptionInformation(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 398
    const-class v2, Lcom/parse/PushService;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->getPushRequestJSON(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 399
    .local v0, request:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/PushService;->sendMessage(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 398
    .end local v0           #request:Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 240
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 245
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, v4}, Lcom/parse/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 246
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 2
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
    .line 266
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePushRouter;->setDefaultRoute(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 267
    if-eqz p1, :cond_1

    .line 268
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->hasRoutes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const-string v0, "com.parse.PushService"

    const-string v1, "Shutting down push service. No remaining channels"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parse/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method static sleep(I)V
    .locals 5
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 294
    const-string v1, "com.parse.PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleeping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 296
    .local v0, semaphore:Ljava/util/concurrent/Semaphore;
    if-nez v0, :cond_0

    .line 297
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 308
    :goto_0
    return-void

    .line 302
    :cond_0
    :goto_1
    if-le p0, v4, :cond_1

    .line 303
    invoke-virtual {v0, v4}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 304
    add-int/lit8 p0, p0, -0x64

    goto :goto_1

    .line 306
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    goto :goto_0
.end method

.method private static declared-synchronized startService(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 118
    const-class v2, Lcom/parse/PushService;

    monitor-enter v2

    :try_start_0
    const-string v1, "com.parse.PushService"

    const-string v3, "ensuring push service is started"

    invoke-static {v1, v3}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/parse/PushService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 121
    .local v0, name:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 122
    const-string v1, "com.parse.PushService"

    const-string v3, "Could not start the push service. Make sure that the XML tag <service android:name=\"com.parse.PushService\" /> is in your AndroidManifest.xml as a child of the <application> element."

    invoke-static {v1, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit v2

    return-void

    .line 118
    .end local v0           #name:Landroid/content/ComponentName;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    invoke-static {p0}, Lcom/parse/ParsePushRouter;->hasRoutes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "com.parse.PushService"

    const-string v1, "No known push routes; will not start push service"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .parameter "context"
    .parameter "channel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 162
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, p2, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 168
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 2
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
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    .line 202
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParsePushRouter;->addChannelRoute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v1

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "channel"

    .prologue
    .line 216
    const-class v0, Lcom/parse/PushService;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/parse/ParsePushRouter;->removeChannelRoute(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit v0

    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static usePort(I)V
    .locals 0
    .parameter "newPort"

    .prologue
    .line 315
    sput p0, Lcom/parse/PushService;->defaultPushPort:I

    .line 316
    return-void
.end method

.method static useServer(Ljava/lang/String;)V
    .locals 0
    .parameter "newServer"

    .prologue
    .line 311
    sput-object p0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 340
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 341
    const-string v0, "com.parse.PushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v0, Lcom/parse/PushService$ServiceState;->ABORTING:Lcom/parse/PushService$ServiceState;

    iput-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 349
    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    .line 366
    :goto_0
    return-void

    .line 352
    :cond_0
    sget-object v0, Lcom/parse/PushService$ServiceState;->RUNNING:Lcom/parse/PushService$ServiceState;

    iput-object v0, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 353
    const-string v0, "com.parse.PushService"

    const-string v1, "creating push service"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget v0, Lcom/parse/PushService;->defaultPushPort:I

    iput v0, p0, Lcom/parse/PushService;->pushPort:I

    .line 355
    new-instance v0, Ljava/util/Timer;

    const-string v1, "com.parse.PushService.keepAliveTimer"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    .line 356
    const-wide/32 v2, 0x124f80

    .line 357
    .local v2, msKeepAlive:J
    iget-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    new-instance v1, Lcom/parse/PushService$1;

    invoke-direct {v1, p0}, Lcom/parse/PushService$1;-><init>(Lcom/parse/PushService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 363
    invoke-static {}, Lcom/parse/PushService;->resetDelay()V

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 579
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 580
    const-string v1, "com.parse.PushService"

    const-string v2, "destroying push service"

    invoke-static {v1, v2}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    sget-object v2, Lcom/parse/PushService$ServiceState;->ABORTING:Lcom/parse/PushService$ServiceState;

    if-ne v1, v2, :cond_1

    .line 582
    sget-object v1, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    iput-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parse/os/ParseAsyncTask;->cancel(Z)Z

    .line 586
    iget-object v1, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    sget-object v1, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    iput-object v1, p0, Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;

    .line 593
    sget-object v0, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 594
    .local v0, oldSocket:Ljava/net/Socket;
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 595
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    if-eqz v0, :cond_0

    .line 598
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    goto :goto_0

    .line 595
    .end local v0           #oldSocket:Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
