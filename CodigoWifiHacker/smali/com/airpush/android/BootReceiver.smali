.class public Lcom/airpush/android/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 14
    :try_start_0
    invoke-static {p1}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    :goto_0
    return-void

    .line 16
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/airpush/android/BootReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/airpush/android/BootReceiver$1;-><init>(Lcom/airpush/android/BootReceiver;Landroid/content/Context;)V

    .line 22
    const-wide/16 v3, 0xfa0

    .line 16
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occoured while starting BootReciver. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method
