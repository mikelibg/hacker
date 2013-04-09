.class Lcom/airpush/android/PushNotification;
.super Ljava/lang/Object;
.source "PushNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AirpushSDK"

.field private static context:Landroid/content/Context;


# instance fields
.field private send_Task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "loccontext"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/airpush/android/PushNotification$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushNotification$1;-><init>(Lcom/airpush/android/PushNotification;)V

    iput-object v0, p0, Lcom/airpush/android/PushNotification;->send_Task:Ljava/lang/Runnable;

    .line 23
    sput-object p1, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    return-object v0
.end method

.method static reStartSDK(Landroid/content/Context;Z)V
    .locals 19
    .parameter "loccontext"
    .parameter "connectivity"

    .prologue
    .line 64
    sput-object p0, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    .line 65
    const-wide/16 v17, 0x0

    .line 67
    .local v17, timeDifference:J
    if-eqz p1, :cond_1

    .line 68
    const-wide/16 v15, 0x0

    .line 69
    .local v15, startTime:J
    const-wide/16 v9, 0x0

    .line 70
    .local v9, currentTime:J
    sget-object v3, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getSDKStartTime(Landroid/content/Context;)J

    move-result-wide v15

    .line 72
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-eqz v3, :cond_0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 75
    cmp-long v3, v9, v15

    if-gez v3, :cond_0

    .line 76
    sub-long v11, v15, v9

    .line 77
    .local v11, diff:J
    const-string v3, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SDK will restart after "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    move-wide/from16 v17, v11

    .line 80
    const-wide/32 v3, 0xea60

    div-long/2addr v11, v3

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "time difference : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minutes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 98
    .end local v9           #currentTime:J
    .end local v11           #diff:J
    .end local v15           #startTime:J
    :cond_0
    :goto_0
    :try_start_0
    new-instance v14, Landroid/content/Intent;

    sget-object v3, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    const-class v4, Lcom/airpush/android/PushService;

    invoke-direct {v14, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v14, messageIntent:Landroid/content/Intent;
    const-string v3, "SetMessageReceiver"

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    sget-object v3, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v14, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 103
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    sget-object v3, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 105
    .local v2, msgAlarmMgr:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v4, v4, v17

    sget-object v6, Lcom/airpush/android/IConstants;->INTERVAL_FIRST_TIME:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-static {}, Lcom/airpush/android/Util;->getMessageIntervalTime()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2           #msgAlarmMgr:Landroid/app/AlarmManager;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v14           #messageIntent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 90
    :cond_1
    const-wide/32 v17, 0x1b7740

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SDK will start after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :catch_0
    move-exception v13

    .line 110
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method startAirpush()V
    .locals 5

    .prologue
    .line 28
    sget-object v1, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/Airpush;->checkRequiredPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    const-string v1, "AirpushSDK"

    const-string v2, "Unable to start airpush."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v1, Lcom/airpush/android/UserDetails;

    sget-object v2, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/airpush/android/UserDetails;->setImeiInMd5()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    new-instance v1, Lcom/airpush/android/SetPreferences;

    sget-object v2, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/airpush/android/SetPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/airpush/android/SetPreferences;->setPreferencesData()V

    .line 40
    sget-object v1, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 42
    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    const-string v1, "AirpushSDK"

    const-string v2, "Airpush push notification is running in test mode."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_2
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push Notification Service...."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/airpush/android/Util;->isDoPush()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v1, "AirpushSDK"

    const-string v2, "Initialising push....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v1, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/Util;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/airpush/android/PushNotification;->send_Task:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v1, Lcom/airpush/android/PushNotification;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
