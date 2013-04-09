.class Lcom/applovin/impl/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/b;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/b;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/b;)V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/w;->G:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;J)J

    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v1}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v3}, Lcom/applovin/impl/sdk/b;->d(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    :try_start_2
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v3}, Lcom/applovin/impl/sdk/b;->e(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/Logger;

    move-result-object v3

    const-string v4, "AppLovinAdService"

    const-string v5, "Unable to notify listener about a newly loaded ad"

    invoke-interface {v3, v4, v5, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;J)J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdUpdateListener;

    :try_start_5
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdUpdateListener;->adUpdated(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->e(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/Logger;

    move-result-object v2

    const-string v3, "AppLovinAdService"

    const-string v4, "Unable to notify listener about an updated loaded ad"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAd;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->c(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/b;Z)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    :try_start_1
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d;->a:Lcom/applovin/impl/sdk/b;

    invoke-static {v2}, Lcom/applovin/impl/sdk/b;->e(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/Logger;

    move-result-object v2

    const-string v3, "AppLovinAdService"

    const-string v4, "Unable to notify listener about ad load failure"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    return-void
.end method
