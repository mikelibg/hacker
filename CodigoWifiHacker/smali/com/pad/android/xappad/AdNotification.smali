.class public Lcom/pad/android/xappad/AdNotification;
.super Landroid/content/BroadcastReceiver;
.source "AdNotification.java"


# instance fields
.field nm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "sectionid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, sectionid:Ljava/lang/String;
    new-instance v2, Lcom/pad/android/xappad/AdController;

    invoke-direct {v2, p1, v4}, Lcom/pad/android/xappad/AdController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .local v2, myController:Lcom/pad/android/xappad/AdController;
    const-string v6, "Preference"

    const/4 v7, 0x2

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 37
    .local v3, pref:Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SD_ADSTATUS_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, str:Ljava/lang/String;
    const-string v6, "hidden"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 40
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 44
    :try_start_0
    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Alarm triggered with sectionid - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 50
    const-wide/16 v6, 0x1388

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    :goto_0
    :try_start_2
    const-string v6, "Alarm"

    invoke-virtual {v2, v6}, Lcom/pad/android/xappad/AdController;->loadNotificationOnRequest(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    :cond_0
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V

    .line 71
    :goto_1
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v6, "LBAdController"

    invoke-static {v6, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    const-string v6, "LBAdController"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception AdNotification.class - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V

    goto :goto_1

    .line 63
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 64
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V

    .line 65
    throw v6

    .line 69
    :cond_1
    invoke-virtual {v2}, Lcom/pad/android/xappad/AdController;->setPauseAlarm()V

    goto :goto_1

    .line 52
    :catch_1
    move-exception v6

    goto :goto_0
.end method
