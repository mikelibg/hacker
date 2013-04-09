.class Lcom/millennialmedia/android/MMNotification;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMNotification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private index:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized alert(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/android/MMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 30
    .local v1, context:Landroid/content/Context;
    move-object v3, p1

    .line 32
    .local v3, finalArguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 34
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    new-instance v6, Lcom/millennialmedia/android/MMNotification$1;

    invoke-direct {v6, p0, v1, v3}, Lcom/millennialmedia/android/MMNotification$1;-><init>(Lcom/millennialmedia/android/MMNotification;Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 57
    new-instance v4, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v4}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 58
    .local v4, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v5, 0x1

    iput v5, v4, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 59
    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    iput-object v5, v4, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .end local v4           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 61
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 29
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #finalArguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 17
    monitor-enter p0

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 18
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    .line 19
    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    .line 21
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/millennialmedia/android/MMNotification;->index:I

    .line 23
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMNotification;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 69
    .local v0, context:Landroid/content/Context;
    const-wide/16 v1, 0x0

    .line 71
    .local v1, time:J
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    const-string v4, "duration"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    mul-double/2addr v4, v6

    double-to-long v1, v4

    .line 74
    :cond_0
    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_2

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.VIBRATE"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 78
    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 79
    .local v3, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v3, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 80
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 87
    .end local v3           #vibrator:Landroid/os/Vibrator;
    :goto_0
    return-object v4

    .line 84
    :cond_1
    const-string v4, "The required permissions to vibrate are not set."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 87
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
