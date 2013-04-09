.class public Lcom/parse/ParseCommandCache$TestHelper;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseCommandCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestHelper"
.end annotation


# static fields
.field public static final COMMAND_ENQUEUED:I = 0x3

.field public static final COMMAND_FAILED:I = 0x2

.field public static final COMMAND_NOT_ENQUEUED:I = 0x4

.field public static final COMMAND_SUCCESSFUL:I = 0x1

.field private static final MAX_EVENTS:I = 0x3e8


# instance fields
.field private events:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Semaphore;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/ParseCommandCache;


# direct methods
.method private constructor <init>(Lcom/parse/ParseCommandCache;)V
    .locals 1
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/parse/ParseCommandCache$TestHelper;->this$0:Lcom/parse/ParseCommandCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    .line 714
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache$TestHelper;->clear()V

    .line 715
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCommandCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/parse/ParseCommandCache$TestHelper;-><init>(Lcom/parse/ParseCommandCache;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    .line 718
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 719
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/Semaphore;

    invoke-direct {v4, v5}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 724
    .local v0, event:I
    iget-object v2, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly(I)V

    goto :goto_0

    .line 726
    .end local v0           #event:I
    :cond_0
    return-void
.end method

.method public notify(I)V
    .locals 2
    .parameter "event"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 738
    return-void
.end method

.method public unexpectedEvents()I
    .locals 5

    .prologue
    .line 729
    const/4 v2, 0x0

    .line 730
    .local v2, sum:I
    iget-object v3, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 731
    .local v0, event:I
    iget-object v3, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 733
    .end local v0           #event:I
    :cond_0
    return v2
.end method

.method public waitFor(I)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache$TestHelper;->events:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 745
    :goto_0
    return v1

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 745
    const/4 v1, 0x0

    goto :goto_0
.end method
