.class public Lcom/airpush/android/PushService;
.super Landroid/app/Service;
.source "PushService.java"

# interfaces
.implements Lcom/airpush/android/IConstants;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/airpush/android/PushService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getPushMessage()V
    .locals 4

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/airpush/android/Airpush;->isSDKEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "AirpushSDK"

    const-string v3, "Receiving......."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :try_start_1
    new-instance v0, Lcom/airpush/android/PushService$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushService$1;-><init>(Lcom/airpush/android/PushService;)V

    .line 115
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    const-string v2, "Activitymanager"

    const-string v3, "Message Fetching Failed....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "Activitymanager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/airpush/android/PushNotification;->reStartSDK(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 80
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 124
    :cond_1
    :try_start_3
    const-string v2, "AirpushSDK"

    const-string v3, "Airpush is disabled, please enable to receive ads."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized postAdValues(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    new-instance v0, Lcom/airpush/android/PushService$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushService$2;-><init>(Lcom/airpush/android/PushService;)V

    .line 160
    .local v0, asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/airpush/android/AsyncTaskCompleteListener;->lauchNewHttpTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0           #asyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;,"Lcom/airpush/android/AsyncTaskCompleteListener<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "Error while posting ad values"

    invoke-static {v2}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 186
    const-string v0, "AirpushSDK"

    const-string v1, "Service Finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 181
    const-string v0, "AirpushSDK"

    const-string v1, "Low On Memory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 24
    .local v2, startIdObj:Ljava/lang/Integer;
    :try_start_0
    const-string v0, ""

    .line 25
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v3, "SetMessageReceiver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    const-string v3, "AirpushSDK"

    const-string v4, "Receiving Message....."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v3, p0, Lcom/airpush/android/PushService;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    const-string v3, "Preference is null"

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/airpush/android/PushService;->getPushMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p0, p2}, Lcom/airpush/android/PushService;->stopSelf(I)V

    .line 76
    .end local v0           #action:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 34
    .restart local v0       #action:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v3, "PostAdValues"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getNotificationData(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 36
    const-string v3, "Unable to retrive notification preference data"

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 51
    :goto_2
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BPCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 52
    :cond_4
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->postAdValues(Landroid/content/Intent;)V

    .line 53
    new-instance v3, Lcom/airpush/android/HandleClicks;

    invoke-direct {v3, p0}, Lcom/airpush/android/HandleClicks;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/HandleClicks;->callNumber()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 68
    .end local v0           #action:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in push Service: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {p0, p2}, Lcom/airpush/android/PushService;->stopSelf(I)V

    goto :goto_1

    .line 38
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v3, "APIKEY"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setApiKey(Ljava/lang/String;)V

    .line 39
    const-string v3, "appId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setAppID(Ljava/lang/String;)V

    .line 40
    const-string v3, "adtype"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setAdType(Ljava/lang/String;)V

    .line 41
    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setNotificationUrl(Ljava/lang/String;)V

    .line 42
    const-string v3, "header"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setHeader(Ljava/lang/String;)V

    .line 43
    const-string v3, "sms"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setSms(Ljava/lang/String;)V

    .line 44
    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setPhoneNumber(Ljava/lang/String;)V

    .line 45
    const-string v3, "creativeId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setCreativeId(Ljava/lang/String;)V

    .line 46
    const-string v3, "campId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setCampId(Ljava/lang/String;)V

    .line 48
    const-string v3, "testMode"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lcom/airpush/android/Util;->setTestmode(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 72
    .end local v0           #action:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 73
    if-eqz v2, :cond_6

    .line 74
    invoke-virtual {p0, p2}, Lcom/airpush/android/PushService;->stopSelf(I)V

    .line 75
    :cond_6
    throw v3

    .line 54
    .restart local v0       #action:Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BPCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 55
    :cond_8
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->postAdValues(Landroid/content/Intent;)V

    .line 56
    new-instance v3, Lcom/airpush/android/HandleClicks;

    invoke-direct {v3, p0}, Lcom/airpush/android/HandleClicks;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/HandleClicks;->sendSms()V

    goto/16 :goto_0

    .line 57
    :cond_9
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "W"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 59
    :cond_a
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->postAdValues(Landroid/content/Intent;)V

    .line 60
    new-instance v3, Lcom/airpush/android/HandleClicks;

    invoke-direct {v3, p0}, Lcom/airpush/android/HandleClicks;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/HandleClicks;->displayUrl()V

    goto/16 :goto_0

    .line 62
    :cond_b
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BPW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BPA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    :cond_c
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService;->postAdValues(Landroid/content/Intent;)V

    .line 64
    new-instance v3, Lcom/airpush/android/HandleClicks;

    invoke-direct {v3, p0}, Lcom/airpush/android/HandleClicks;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/airpush/android/HandleClicks;->displayUrl()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
