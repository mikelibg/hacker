.class Lcom/applovin/impl/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/Logger;

.field private final c:Ljava/util/Collection;

.field private d:Z

.field private e:Lcom/applovin/sdk/AppLovinAd;

.field private f:J

.field private final g:Ljava/util/Collection;

.field private final h:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/sdk/b;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Lcom/applovin/sdk/AppLovinAd;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/b;->f:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->g:Ljava/util/Collection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->h:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/Logger;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/applovin/impl/sdk/b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/b;->e:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdSize;)V
    .locals 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/w;->G:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Lcom/applovin/impl/sdk/e;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x2

    add-long/2addr v0, v7

    mul-long/2addr v0, v5

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;J)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/b;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/b;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/w;->F:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a(Lcom/applovin/impl/sdk/y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->g:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/b;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/b;)Lcom/applovin/sdk/Logger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/Logger;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/b;)Z
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/b;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/b;->f:J

    return-wide v0
.end method

.method static synthetic h(Lcom/applovin/impl/sdk/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/b;->d:Z

    return v0
.end method


# virtual methods
.method public addAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad listener specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/Logger;

    const-string v3, "AppLovinAdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added update listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/applovin/impl/sdk/e;

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/e;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/b;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad size specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->b(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->e:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Lcom/applovin/sdk/AppLovinAd;

    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {p3, v0}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/sdk/AppLovinAdSize;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/b;->g:Ljava/util/Collection;

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/applovin/impl/sdk/b;->d:Z

    if-nez v2, :cond_2

    new-instance v2, Lcom/applovin/impl/sdk/F;

    new-instance v3, Lcom/applovin/impl/sdk/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/b;Lcom/applovin/impl/sdk/c;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v2, p1, v3, v4}, Lcom/applovin/impl/sdk/F;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v2, p2}, Lcom/applovin/impl/sdk/F;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {v3, v2, v4}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/applovin/impl/sdk/b;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    new-instance v0, Lcom/applovin/impl/sdk/F;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p3, v1}, Lcom/applovin/impl/sdk/F;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/F;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    goto :goto_1
.end method

.method public loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad ID specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/E;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/E;-><init>(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;)V

    return-void
.end method

.method public removeAdUpdateListener(Lcom/applovin/sdk/AppLovinAdUpdateListener;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/sdk/Logger;

    const-string v2, "AppLovinAdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed update listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/applovin/sdk/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trackAdClick(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/V;

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/V;-><init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/M;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/N;->a:Lcom/applovin/impl/sdk/N;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/applovin/impl/sdk/M;->a(Lcom/applovin/impl/sdk/O;Lcom/applovin/impl/sdk/N;J)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/b;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/applovin/impl/sdk/b;->e:Lcom/applovin/sdk/AppLovinAd;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/impl/sdk/b;->f:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
