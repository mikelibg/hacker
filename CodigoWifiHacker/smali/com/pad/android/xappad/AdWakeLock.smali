.class public abstract Lcom/pad/android/xappad/AdWakeLock;
.super Ljava/lang/Object;
.source "AdWakeLock.java"


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdController"

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    .line 16
    sget-object v2, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 18
    sget-object v2, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    :cond_0
    :try_start_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 24
    .local v1, pm:Landroid/os/PowerManager;
    const v2, 0x3000001a

    const-string v3, "AdControllerWakeLock"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    sget-object v2, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 29
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LBAdController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error acquiring Wake Lock - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v2, "LBAdController"

    invoke-static {v2, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 37
    :try_start_0
    sget-object v1, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 39
    sget-object v1, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 41
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 43
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "LBAdController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error releasing Wake Lock - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "LBAdController"

    invoke-static {v1, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    sput-object v4, Lcom/pad/android/xappad/AdWakeLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method
