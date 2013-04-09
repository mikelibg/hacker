.class final Lcom/parse/ParsePushRouter$1;
.super Lcom/parse/SaveCallback;
.source "ParsePushRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushRouter;->saveEventually(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$installation:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/parse/ParseInstallation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/parse/ParsePushRouter$1;->val$installation:Lcom/parse/ParseInstallation;

    invoke-direct {p0}, Lcom/parse/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string v1, "com.parse.ParsePushRouter"

    const-string v2, "Failed to save installation eventually"

    invoke-static {v1, v2, p1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/parse/ParsePushRouter;->ensureStateIsLoaded(Landroid/content/Context;)V

    .line 100
    sget-object v2, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    monitor-enter v2

    .line 101
    :try_start_0
    sget-object v1, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 102
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$installation:Lcom/parse/ParseInstallation;

    const-string v3, "channels"

    invoke-virtual {v1, v3}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 103
    .local v0, fromInstallation:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/parse/ParsePushRouter;->channels:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 104
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/parse/ParsePushRouter;->hasRoutes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    const-string v1, "com.parse.ParsePushRouter"

    const-string v2, "Shutting down push service. No remaining channels"

    invoke-static {v1, v2}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/parse/ParsePushRouter$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/parse/PushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 110
    :cond_1
    new-instance v1, Lcom/parse/ParsePushRouter$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/parse/ParsePushRouter$1$1;-><init>(Lcom/parse/ParsePushRouter$1;Lcom/parse/ParseCallback;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/parse/ParsePushRouter$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 104
    .end local v0           #fromInstallation:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
