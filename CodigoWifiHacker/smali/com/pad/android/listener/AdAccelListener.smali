.class public Lcom/pad/android/listener/AdAccelListener;
.super Ljava/lang/Object;
.source "AdAccelListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final FORCE_THRESHOLD:I = 0x3e8

.field private static final SHAKE_COUNT:I = 0x2

.field private static final SHAKE_DURATION:I = 0x7d0

.field private static final SHAKE_TIMEOUT:I = 0x1f4

.field private static final TIME_THRESHOLD:I = 0x64


# instance fields
.field private bAccReady:Z

.field private bMagReady:Z

.field private mAccVals:[F

.field private mActualOrientation:[F

.field mKey:Ljava/lang/String;

.field private mLastAccVals:[F

.field private mLastForce:J

.field private mLastShake:J

.field private mLastTime:J

.field private mMagVals:[F

.field mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

.field private mSensorDelay:I

.field private mShakeCount:I

.field registeredHeadingListeners:I

.field registeredShakeListeners:I

.field registeredTiltListeners:I

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pad/android/iappad/controller/AdSensorController;)V
    .locals 2
    .parameter "ctx"
    .parameter "sensorController"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    .line 30
    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    .line 31
    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    .line 34
    iput v1, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorDelay:I

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    .line 43
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/pad/android/listener/AdAccelListener;->mLastAccVals:[F

    .line 44
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/pad/android/listener/AdAccelListener;->mActualOrientation:[F

    .line 54
    iput-object p2, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/pad/android/listener/AdAccelListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 57
    return-void

    .line 40
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 44
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
    .end array-data
.end method

.method private start()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/pad/android/listener/AdAccelListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 147
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 148
    iget-object v2, p0, Lcom/pad/android/listener/AdAccelListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget v3, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorDelay:I

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 152
    :cond_0
    return-void
.end method

.method private startMag()V
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/pad/android/listener/AdAccelListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/pad/android/listener/AdAccelListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget v3, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorDelay:I

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 127
    invoke-direct {p0}, Lcom/pad/android/listener/AdAccelListener;->start()V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeading()F
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/pad/android/listener/AdAccelListener;->mActualOrientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 167
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    const/16 v8, 0x9

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 173
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 186
    :goto_0
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mMagVals:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/pad/android/listener/AdAccelListener;->bAccReady:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/pad/android/listener/AdAccelListener;->bMagReady:Z

    if-eqz v7, :cond_0

    .line 187
    iput-boolean v11, p0, Lcom/pad/android/listener/AdAccelListener;->bAccReady:Z

    .line 188
    iput-boolean v11, p0, Lcom/pad/android/listener/AdAccelListener;->bMagReady:Z

    .line 189
    new-array v1, v8, [F

    .line 190
    .local v1, R:[F
    new-array v0, v8, [F

    .line 191
    .local v0, I:[F
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mMagVals:[F

    invoke-static {v1, v0, v7, v8}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 193
    const/4 v7, 0x3

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mActualOrientation:[F

    .line 195
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mActualOrientation:[F

    invoke-static {v1, v7}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 196
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mActualOrientation:[F

    aget v8, v8, v11

    invoke-virtual {v7, v8}, Lcom/pad/android/iappad/controller/AdSensorController;->onHeadingChange(F)V

    .line 198
    .end local v0           #I:[F
    .end local v1           #R:[F
    :cond_0
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 201
    .local v4, now:J
    iget-wide v7, p0, Lcom/pad/android/listener/AdAccelListener;->mLastForce:J

    sub-long v7, v4, v7

    const-wide/16 v9, 0x1f4

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 202
    iput v11, p0, Lcom/pad/android/listener/AdAccelListener;->mShakeCount:I

    .line 205
    :cond_1
    iget-wide v7, p0, Lcom/pad/android/listener/AdAccelListener;->mLastTime:J

    sub-long v7, v4, v7

    const-wide/16 v9, 0x64

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 206
    iget-wide v7, p0, Lcom/pad/android/listener/AdAccelListener;->mLastTime:J

    sub-long v2, v4, v7

    .line 207
    .local v2, diff:J
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    aget v7, v7, v11

    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    aget v8, v8, v12

    add-float/2addr v7, v8

    .line 208
    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    aget v8, v8, v13

    .line 207
    add-float/2addr v7, v8

    .line 208
    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mLastAccVals:[F

    aget v8, v8, v11

    .line 207
    sub-float/2addr v7, v8

    .line 209
    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mLastAccVals:[F

    aget v8, v8, v12

    .line 207
    sub-float/2addr v7, v8

    .line 209
    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mLastAccVals:[F

    aget v8, v8, v13

    .line 207
    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 210
    long-to-float v8, v2

    .line 207
    div-float/2addr v7, v8

    .line 210
    const v8, 0x461c4000

    .line 207
    mul-float v6, v7, v8

    .line 211
    .local v6, speed:F
    const/high16 v7, 0x447a

    cmpl-float v7, v6, v7

    if-lez v7, :cond_3

    .line 213
    iget v7, p0, Lcom/pad/android/listener/AdAccelListener;->mShakeCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/pad/android/listener/AdAccelListener;->mShakeCount:I

    if-lt v7, v13, :cond_2

    iget-wide v7, p0, Lcom/pad/android/listener/AdAccelListener;->mLastShake:J

    sub-long v7, v4, v7

    const-wide/16 v9, 0x7d0

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 214
    iput-wide v4, p0, Lcom/pad/android/listener/AdAccelListener;->mLastShake:J

    .line 215
    iput v11, p0, Lcom/pad/android/listener/AdAccelListener;->mShakeCount:I

    .line 216
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    invoke-virtual {v7}, Lcom/pad/android/iappad/controller/AdSensorController;->onShake()V

    .line 218
    :cond_2
    iput-wide v4, p0, Lcom/pad/android/listener/AdAccelListener;->mLastForce:J

    .line 220
    :cond_3
    iput-wide v4, p0, Lcom/pad/android/listener/AdAccelListener;->mLastTime:J

    .line 221
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorController:Lcom/pad/android/iappad/controller/AdSensorController;

    iget-object v8, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    aget v8, v8, v11

    iget-object v9, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    aget v9, v9, v12

    .line 222
    iget-object v10, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    aget v10, v10, v13

    .line 221
    invoke-virtual {v7, v8, v9, v10}, Lcom/pad/android/iappad/controller/AdSensorController;->onTilt(FFF)V

    .line 226
    .end local v2           #diff:J
    .end local v4           #now:J
    .end local v6           #speed:F
    :cond_4
    return-void

    .line 176
    :pswitch_0
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v7}, [F->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    iput-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mMagVals:[F

    .line 177
    iput-boolean v12, p0, Lcom/pad/android/listener/AdAccelListener;->bMagReady:Z

    goto/16 :goto_0

    .line 181
    :pswitch_1
    iget-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    iput-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mLastAccVals:[F

    .line 182
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v7}, [F->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    iput-object v7, p0, Lcom/pad/android/listener/AdAccelListener;->mAccVals:[F

    .line 183
    iput-boolean v12, p0, Lcom/pad/android/listener/AdAccelListener;->bAccReady:Z

    goto/16 :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSensorDelay(I)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 65
    iput p1, p0, Lcom/pad/android/listener/AdAccelListener;->mSensorDelay:I

    .line 66
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    if-lez v0, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/pad/android/listener/AdAccelListener;->stop()V

    .line 68
    invoke-direct {p0}, Lcom/pad/android/listener/AdAccelListener;->start()V

    .line 70
    :cond_1
    return-void
.end method

.method public startTrackingHeading()V
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/pad/android/listener/AdAccelListener;->startMag()V

    .line 117
    :cond_0
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    .line 118
    return-void
.end method

.method public startTrackingShake()V
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pad/android/listener/AdAccelListener;->setSensorDelay(I)V

    .line 96
    invoke-direct {p0}, Lcom/pad/android/listener/AdAccelListener;->start()V

    .line 98
    :cond_0
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    .line 99
    return-void
.end method

.method public startTrackingTilt()V
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    if-nez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/pad/android/listener/AdAccelListener;->start()V

    .line 78
    :cond_0
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    .line 79
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/pad/android/listener/AdAccelListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 161
    :cond_0
    return-void
.end method

.method public stopAllListeners()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    .line 242
    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    .line 243
    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/pad/android/listener/AdAccelListener;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopTrackingHeading()V
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredHeadingListeners:I

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/pad/android/listener/AdAccelListener;->stop()V

    .line 140
    :cond_0
    return-void
.end method

.method public stopTrackingShake()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredShakeListeners:I

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pad/android/listener/AdAccelListener;->setSensorDelay(I)V

    .line 107
    invoke-virtual {p0}, Lcom/pad/android/listener/AdAccelListener;->stop()V

    .line 109
    :cond_0
    return-void
.end method

.method public stopTrackingTilt()V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pad/android/listener/AdAccelListener;->registeredTiltListeners:I

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/pad/android/listener/AdAccelListener;->stop()V

    .line 88
    :cond_0
    return-void
.end method
