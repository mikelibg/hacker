.class Lcom/applovin/impl/sdk/e;
.super Lcom/applovin/impl/sdk/O;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/b;

.field private final b:Lcom/applovin/sdk/AppLovinAdSize;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    const-string v0, "UpdateAdTask"

    invoke-static {p1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/O;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/sdk/AppLovinAdSize;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v3

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->f(Lcom/applovin/impl/sdk/b;)Z

    move-result v4

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v5}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v8}, Lcom/applovin/impl/sdk/b;->g(Lcom/applovin/impl/sdk/b;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b;->h(Lcom/applovin/impl/sdk/b;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/F;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/applovin/impl/sdk/d;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/c;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/F;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Z)Z

    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
