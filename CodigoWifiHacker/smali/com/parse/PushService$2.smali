.class Lcom/parse/PushService$2;
.super Lcom/parse/os/ParseAsyncTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field private reader:Ljava/io/BufferedReader;

.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$finalService:Lcom/parse/PushService;

.field final synthetic val$initialReader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Lcom/parse/PushService;Ljava/io/BufferedReader;Lcom/parse/PushService;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$2;->val$initialReader:Ljava/io/BufferedReader;

    iput-object p3, p0, Lcom/parse/PushService$2;->val$finalService:Lcom/parse/PushService;

    invoke-direct {p0}, Lcom/parse/os/ParseAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 428
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/PushService$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 433
    iget-object v4, p0, Lcom/parse/PushService$2;->val$initialReader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_2

    .line 434
    iget-object v4, p0, Lcom/parse/PushService$2;->val$initialReader:Ljava/io/BufferedReader;

    iput-object v4, p0, Lcom/parse/PushService$2;->reader:Ljava/io/BufferedReader;

    .line 511
    :cond_0
    iget-object v4, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;
    invoke-static {v4}, Lcom/parse/PushService;->access$200(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v4

    sget-object v5, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v4, v5, :cond_7

    .line 525
    :cond_1
    :goto_0
    return-object v2

    .line 436
    :cond_2
    invoke-static {}, Lcom/parse/PushService;->access$100()I

    move-result v4

    if-lez v4, :cond_3

    .line 438
    :try_start_0
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sleeping for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/parse/PushService;->access$100()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/parse/PushService;->access$100()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Lcom/parse/PushService;->sleep(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_3
    iget-object v4, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;
    invoke-static {v4}, Lcom/parse/PushService;->access$200(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v4

    sget-object v5, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-eq v4, v5, :cond_1

    .line 448
    iget-object v4, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #calls: Lcom/parse/PushService;->increaseDelay()V
    invoke-static {v4}, Lcom/parse/PushService;->access$300(Lcom/parse/PushService;)V

    .line 451
    sget-object v4, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_4

    .line 453
    :try_start_1
    sget-object v4, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 463
    :cond_4
    :goto_1
    :try_start_2
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connecting to push server at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/parse/PushService;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->pushPort:I
    invoke-static {v6}, Lcom/parse/PushService;->access$500(Lcom/parse/PushService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/parse/PushService;->access$400()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->pushPort:I
    invoke-static {v5}, Lcom/parse/PushService;->access$500(Lcom/parse/PushService;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 465
    .local v0, address:Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 466
    .local v3, newSocket:Ljava/net/Socket;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 467
    sget-object v4, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v4, :cond_5

    .line 468
    const/16 v4, 0x1388

    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 483
    :goto_2
    iget-object v5, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    monitor-enter v5

    .line 484
    :try_start_3
    iget-object v4, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;
    invoke-static {v4}, Lcom/parse/PushService;->access$200(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v4

    sget-object v6, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v4, v6, :cond_6

    .line 485
    monitor-exit v5

    goto/16 :goto_0

    .line 488
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 440
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v3           #newSocket:Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "com.parse.PushService"

    const-string v5, "sleep interrupted"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 454
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 456
    .local v1, e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "error closing socket"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 471
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #address:Ljava/net/InetSocketAddress;
    .restart local v3       #newSocket:Ljava/net/Socket;
    :cond_5
    const/16 v4, 0x32

    :try_start_4
    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 473
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v3           #newSocket:Ljava/net/Socket;
    :catch_2
    move-exception v1

    .line 474
    .local v1, e:Ljava/net/UnknownHostException;
    const-string v4, "com.parse.PushService"

    const-string v5, "unknown host"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 476
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_3
    move-exception v1

    .line 477
    .local v1, e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "could not connect to push server"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 487
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #address:Ljava/net/InetSocketAddress;
    .restart local v3       #newSocket:Ljava/net/Socket;
    :cond_6
    :try_start_5
    sput-object v3, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 488
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 492
    :try_start_6
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v4, p0, Lcom/parse/PushService$2;->reader:Ljava/io/BufferedReader;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 502
    iget-object v4, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;
    invoke-static {v4}, Lcom/parse/PushService;->access$200(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v4

    sget-object v5, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-eq v4, v5, :cond_1

    .line 506
    iget-object v4, p0, Lcom/parse/PushService$2;->val$finalService:Lcom/parse/PushService;

    #calls: Lcom/parse/PushService;->sendSubscriptionInformation(Landroid/content/Context;)Z
    invoke-static {v4}, Lcom/parse/PushService;->access$600(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    .line 494
    :catch_4
    move-exception v1

    .line 495
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "com.parse.PushService"

    const-string v5, "unsupported encoding"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 497
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v1

    .line 498
    .local v1, e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "could not construct reader"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 515
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #newSocket:Ljava/net/Socket;
    :cond_7
    invoke-static {}, Lcom/parse/PushService;->resetDelay()V

    .line 519
    :try_start_7
    const-string v4, "com.parse.PushService"

    const-string v5, "waiting for a push"

    invoke-static {v4, v5}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v4, p0, Lcom/parse/PushService$2;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v2

    .line 521
    .local v2, line:Ljava/lang/String;
    goto/16 :goto_0

    .line 522
    .end local v2           #line:Ljava/lang/String;
    :catch_6
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "Network disconnect; will reconnect to the push service shortly."

    invoke-static {v4, v5}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 428
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/PushService$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .parameter "line"

    .prologue
    .line 531
    iget-object v3, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;
    invoke-static {v3}, Lcom/parse/PushService;->access$200(Lcom/parse/PushService;)Lcom/parse/PushService$ServiceState;

    move-result-object v3

    sget-object v4, Lcom/parse/PushService$ServiceState;->DESTRUCTING:Lcom/parse/PushService$ServiceState;

    if-ne v3, v4, :cond_0

    .line 532
    iget-object v3, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    sget-object v4, Lcom/parse/PushService$ServiceState;->STOPPED:Lcom/parse/PushService$ServiceState;

    #setter for: Lcom/parse/PushService;->state:Lcom/parse/PushService$ServiceState;
    invoke-static {v3, v4}, Lcom/parse/PushService;->access$202(Lcom/parse/PushService;Lcom/parse/PushService$ServiceState;)Lcom/parse/PushService$ServiceState;

    .line 555
    :goto_0
    return-void

    .line 535
    :cond_0
    if-nez p1, :cond_1

    .line 536
    iget-object v3, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    const/4 v4, 0x0

    #calls: Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
    invoke-static {v3, v4}, Lcom/parse/PushService;->access$700(Lcom/parse/PushService;Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 541
    :cond_1
    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 544
    .local v2, tokener:Lorg/json/JSONTokener;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .local v1, message:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/PushService$2;->val$finalService:Lcom/parse/PushService;

    invoke-static {v3, v1}, Lcom/parse/ParsePushRouter;->routePush(Lcom/parse/PushService;Lorg/json/JSONObject;)V

    .line 554
    iget-object v3, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    iget-object v4, p0, Lcom/parse/PushService$2;->reader:Ljava/io/BufferedReader;

    #calls: Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
    invoke-static {v3, v4}, Lcom/parse/PushService;->access$700(Lcom/parse/PushService;Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 545
    .end local v1           #message:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 547
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad json: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    iget-object v3, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    iget-object v4, p0, Lcom/parse/PushService$2;->reader:Ljava/io/BufferedReader;

    #calls: Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
    invoke-static {v3, v4}, Lcom/parse/PushService;->access$700(Lcom/parse/PushService;Ljava/io/BufferedReader;)V

    goto :goto_0
.end method
