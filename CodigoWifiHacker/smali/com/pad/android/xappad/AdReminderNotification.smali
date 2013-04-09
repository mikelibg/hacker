.class public Lcom/pad/android/xappad/AdReminderNotification;
.super Landroid/content/BroadcastReceiver;
.source "AdReminderNotification.java"


# instance fields
.field nm:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 21
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "sectionid"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 22
    .local v6, sectionid:Ljava/lang/String;
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onReceived called AdReminderNotification - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "alarmType - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "alarmtype"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v9, "alarmtype"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, reminderType:Ljava/lang/String;
    const-string v9, "cancel"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 28
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    iput-object v9, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    .line 29
    iget-object v9, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v10, 0x3ea

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v9, "reminder"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 33
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Reminder Alarm triggered with sectionid - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    iput-object v9, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    .line 37
    const/4 v9, 0x5

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 38
    .local v3, iconArray:[I
    const/4 v2, 0x0

    .line 39
    .local v2, icon:I
    const-string v8, ""

    .line 40
    .local v8, title:Ljava/lang/String;
    const-string v7, ""

    .line 43
    .local v7, text:Ljava/lang/String;
    :try_start_0
    const-string v9, "LBAdController"

    const-string v10, "get values from bundle"

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v9, "remindericon"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 45
    const-string v9, "remindertitle"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    const-string v9, "remindertext"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 55
    const-string v9, "LBAdController"

    const-string v10, "into finally statement"

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    aget v2, v3, v2

    .line 58
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v4, v2, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    .local v4, notification:Landroid/app/Notification;
    iget v9, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 61
    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const/4 v11, 0x0

    invoke-static {p1, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v4, p1, v8, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    :try_start_1
    const-string v9, "LBAdController"

    const-string v10, "trigger the reminder notification"

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 67
    iget-object v9, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v10, 0x3ea

    invoke-virtual {v9, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "LBAdController"

    invoke-static {v9, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error in reminder notification - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #notification:Landroid/app/Notification;
    :catch_1
    move-exception v1

    .line 50
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error with getting values from bundle - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    const/4 v2, 0x0

    .line 55
    const-string v9, "LBAdController"

    const-string v10, "into finally statement"

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    aget v2, v3, v2

    .line 58
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v4, v2, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    .restart local v4       #notification:Landroid/app/Notification;
    iget v9, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 61
    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const/4 v11, 0x0

    invoke-static {p1, v9, v10, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v4, p1, v8, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    :try_start_3
    const-string v9, "LBAdController"

    const-string v10, "trigger the reminder notification"

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 67
    iget-object v9, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v10, 0x3ea

    invoke-virtual {v9, v10, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 70
    :catch_2
    move-exception v1

    .line 72
    const-string v9, "LBAdController"

    invoke-static {v9, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    const-string v9, "LBAdController"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error in reminder notification - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #notification:Landroid/app/Notification;
    :catchall_0
    move-exception v9

    .line 55
    const-string v10, "LBAdController"

    const-string v11, "into finally statement"

    invoke-static {v10, v11}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    aget v2, v3, v2

    .line 58
    new-instance v4, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v4, v2, v8, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 59
    .restart local v4       #notification:Landroid/app/Notification;
    iget v10, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Landroid/app/Notification;->flags:I

    .line 61
    const/4 v10, 0x0

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v12, 0x0

    invoke-static {p1, v10, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v4, p1, v8, v7, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 65
    :try_start_4
    const-string v10, "LBAdController"

    const-string v11, "trigger the reminder notification"

    invoke-static {v10, v11}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/pad/android/xappad/AdWakeLock;->acquire(Landroid/content/Context;)V

    .line 67
    iget-object v10, p0, Lcom/pad/android/xappad/AdReminderNotification;->nm:Landroid/app/NotificationManager;

    const/16 v11, 0x3ea

    invoke-virtual {v10, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 68
    invoke-static {}, Lcom/pad/android/xappad/AdWakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 75
    :goto_1
    throw v9

    .line 70
    :catch_3
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "LBAdController"

    invoke-static {v10, v1}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 73
    const-string v10, "LBAdController"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error in reminder notification - "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 37
    nop

    :array_0
    .array-data 0x4
        0x74t 0x0t 0x8t 0x1t
        0x2bt 0x0t 0x8t 0x1t
        0xct 0x0t 0x8t 0x1t
        0xat 0x0t 0x8t 0x1t
        0x72t 0x0t 0x8t 0x1t
    .end array-data
.end method
