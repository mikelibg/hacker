.class public Lcom/pad/android/iappad/controller/AdNetworkController;
.super Lcom/pad/android/iappad/AdController;
.source "AdNetworkController.java"


# static fields
.field private static synthetic $SWITCH_TABLE$android$net$NetworkInfo$State:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "AdOrmmaNetworkController"


# instance fields
.field private mBroadCastReceiver:Lcom/pad/android/util/AdNetworkBroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mFilter:Landroid/content/IntentFilter;

.field private mNetworkListenerCount:I


# direct methods
.method static synthetic $SWITCH_TABLE$android$net$NetworkInfo$State()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/pad/android/iappad/controller/AdNetworkController;->$SWITCH_TABLE$android$net$NetworkInfo$State:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$State;->values()[Landroid/net/NetworkInfo$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/pad/android/iappad/controller/AdNetworkController;->$SWITCH_TABLE$android$net$NetworkInfo$State:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V
    .locals 1
    .parameter "adView"
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/pad/android/iappad/AdController;-><init>(Lcom/pad/android/richmedia/view/AdView;Landroid/content/Context;)V

    .line 34
    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 35
    return-void
.end method


# virtual methods
.method public getNetwork()Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    iget-object v3, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    .local v1, ni:Landroid/net/NetworkInfo;
    const-string v0, "unknown"

    .line 45
    .local v0, networkType:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 46
    const-string v0, "offline"

    .line 64
    :cond_0
    :goto_0
    const-string v3, "AdOrmmaNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNetwork: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-object v0

    .line 49
    :cond_1
    invoke-static {}, Lcom/pad/android/iappad/controller/AdNetworkController;->$SWITCH_TABLE$android$net$NetworkInfo$State()[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 57
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 58
    .local v2, type:I
    if-nez v2, :cond_2

    .line 59
    const-string v0, "cell"

    goto :goto_0

    .line 51
    .end local v2           #type:I
    :pswitch_1
    const-string v0, "unknown"

    .line 52
    goto :goto_0

    .line 54
    :pswitch_2
    const-string v0, "offline"

    .line 55
    goto :goto_0

    .line 60
    .restart local v2       #type:I
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 61
    const-string v0, "wifi"

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConnectionChanged()V
    .locals 3

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.ormmaview.fireChangeEvent({ network: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pad/android/iappad/controller/AdNetworkController;->getNetwork()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, script:Ljava/lang/String;
    const-string v1, "AdOrmmaNetworkController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mView:Lcom/pad/android/richmedia/view/AdView;

    invoke-virtual {v1, v0}, Lcom/pad/android/richmedia/view/AdView;->injectJavaScript(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public startNetworkListener()V
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/pad/android/util/AdNetworkBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/pad/android/util/AdNetworkBroadcastReceiver;-><init>(Lcom/pad/android/iappad/controller/AdNetworkController;)V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mBroadCastReceiver:Lcom/pad/android/util/AdNetworkBroadcastReceiver;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mFilter:Landroid/content/IntentFilter;

    .line 75
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    :cond_0
    iget v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    .line 79
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mBroadCastReceiver:Lcom/pad/android/util/AdNetworkBroadcastReceiver;

    iget-object v2, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public stopAllListeners()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mBroadCastReceiver:Lcom/pad/android/util/AdNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopNetworkListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    .line 87
    iget v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mNetworkListenerCount:I

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mBroadCastReceiver:Lcom/pad/android/util/AdNetworkBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    iput-object v2, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mBroadCastReceiver:Lcom/pad/android/util/AdNetworkBroadcastReceiver;

    .line 90
    iput-object v2, p0, Lcom/pad/android/iappad/controller/AdNetworkController;->mFilter:Landroid/content/IntentFilter;

    .line 93
    :cond_0
    return-void
.end method
