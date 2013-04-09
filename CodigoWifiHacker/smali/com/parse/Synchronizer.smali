.class Lcom/parse/Synchronizer;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"


# instance fields
.field done:Z

.field latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/Synchronizer;->done:Z

    .line 31
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 32
    return-void
.end method


# virtual methods
.method assertFinishes()V
    .locals 5

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 52
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "assertFinishes() should *not* be called from the UI thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_0
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    iget-object v1, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/parse/Synchronizer;->done:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iget-boolean v1, p0, Lcom/parse/Synchronizer;->done:Z

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "finish() was never called"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method finish()V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "finish() should be called from the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-boolean v0, p0, Lcom/parse/Synchronizer;->done:Z

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "finish() was called too much"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 48
    return-void
.end method

.method start(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 35
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 36
    return-void
.end method
