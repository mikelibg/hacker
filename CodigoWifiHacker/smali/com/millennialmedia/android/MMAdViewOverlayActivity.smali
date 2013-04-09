.class public Lcom/millennialmedia/android/MMAdViewOverlayActivity;
.super Landroid/app/Activity;
.source "MMAdViewOverlayActivity.java"


# instance fields
.field private accelerometerEventListener:Landroid/hardware/SensorEventListener;

.field private final interval:I

.field private mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

.field private sensorManager:Landroid/hardware/SensorManager;

.field protected shouldAccelerate:Ljava/lang/Boolean;

.field private final threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 168
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->threshold:F

    .line 169
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->interval:I

    .line 206
    new-instance v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity$1;-><init>(Lcom/millennialmedia/android/MMAdViewOverlayActivity;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdViewOverlayActivity;FFF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->didAccelerate(FFF)V

    return-void
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/MMAdViewOverlayActivity;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->didShake(F)V

    return-void
.end method

.method private didAccelerate(FFF)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accelerometer x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " z:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:didAccelerate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->injectJS(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private didShake(F)V
    .locals 3
    .parameter "force"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone shaken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:didShake("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->injectJS(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private startAccelerating()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 179
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 180
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    .local v0, isAccelerometerSupported:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const-string v1, "MillennialMediaSDK"

    const-string v2, "Accelerometer not supported by this device. Unregistering listener."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 185
    iput-object v5, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    .line 186
    iput-object v5, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 188
    :cond_0
    return-void
.end method

.method private stopAccelerating()V
    .locals 4

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->accelerometerEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 35
    const v2, 0x1030010

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setTheme(I)V

    .line 36
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-wide/16 v5, 0x258

    .line 39
    .local v5, time:J
    const/4 v7, 0x0

    .line 40
    .local v7, transition:Ljava/lang/String;
    const/4 v4, 0x0

    .line 41
    .local v4, padding:I
    const/4 v8, 0x0

    .line 42
    .local v8, titlebar:Z
    const/4 v9, 0x0

    .line 43
    .local v9, title:Ljava/lang/String;
    const/4 v10, 0x1

    .line 44
    .local v10, bottombar:Z
    const/4 v11, 0x1

    .line 45
    .local v11, bottombarEnabled:Z
    const/4 v12, 0x0

    .line 46
    .local v12, isTransparent:Z
    const/4 v13, 0x0

    .line 47
    .local v13, cachedAdView:Z
    const/16 v16, 0x0

    .line 49
    .local v16, orientation:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 50
    .local v14, extras:Landroid/os/Bundle;
    if-eqz v14, :cond_0

    .line 52
    const-string v2, "transitionTime"

    const-wide/16 v17, 0x258

    move-wide/from16 v0, v17

    invoke-virtual {v14, v2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 53
    const-string v2, "overlayTransition"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    const-string v2, "shouldResizeOverlay"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 55
    const-string v2, "shouldShowTitlebar"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 56
    const-string v2, "overlayTitle"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    const-string v2, "shouldShowBottomBar"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 58
    const-string v2, "shouldEnableBottomBar"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 59
    const-string v2, "shouldMakeOverlayTransparent"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 60
    const-string v2, "cachedAdView"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 61
    const-string v2, "overlayOrientation"

    invoke-virtual {v14, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Title: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Bottom bar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Should accelerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Tranparent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Cached Ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 68
    .local v15, fileName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/millennialmedia/android/MMAdViewWebOverlay;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Lcom/millennialmedia/android/MMAdViewWebOverlay;-><init>(Landroid/content/Context;IJLjava/lang/String;ZLjava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->loadWebContent(Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "canAccelerate"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    .line 76
    if-eqz v13, :cond_2

    if-eqz v16, :cond_2

    .line 78
    const-string v2, "landscape"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 85
    :cond_2
    :goto_0
    return-void

    .line 80
    :cond_3
    const-string v2, "portrait"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 83
    :cond_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    const-string v0, "Overlay onDestroy"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 135
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->goBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 115
    const-string v0, "Overlay onPause"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->stopAccelerating()V

    .line 118
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->setResult(I)V

    .line 119
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    const-string v0, "Overlay onResume"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->shouldAccelerate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->startAccelerating()V

    .line 95
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdViewOverlayActivity;->mmOverlay:Lcom/millennialmedia/android/MMAdViewWebOverlay;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdViewWebOverlay;->getNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 108
    return-void
.end method
