.class Lcom/pad/android/iappad/AdController$AdShakeListener;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pad/android/iappad/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdShakeListener"
.end annotation


# static fields
.field private static final MAX_PAUSE_BETHWEEN_DIRECTION_CHANGE:I = 0x12c

.field private static final MAX_TOTAL_DURATION_OF_SHAKE:I = 0x5dc

.field private static final MIN_FORCE:F = 2.5f


# instance fields
.field private audioAdHandler:Landroid/os/Handler;

.field private audioExpireTask:Ljava/lang/Runnable;

.field private isAudio:Z

.field private isWaitingShake:Z

.field private mDirectionChangeCount:I

.field private mFirstDirectionChangeTime:J

.field private mLastDirectionChangeTime:J

.field private shakeTimes:I

.field private shakeValidTime:I

.field final synthetic this$0:Lcom/pad/android/iappad/AdController;


# direct methods
.method public constructor <init>(Lcom/pad/android/iappad/AdController;Z)V
    .locals 3
    .parameter
    .parameter "isA"

    .prologue
    const/4 v2, 0x0

    .line 2817
    iput-object p1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    .line 2816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2802
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mFirstDirectionChangeTime:J

    .line 2806
    iput v2, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mDirectionChangeCount:I

    .line 2811
    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isWaitingShake:Z

    .line 2818
    iput-boolean p2, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isAudio:Z

    .line 2819
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isAudio:Z

    if-eqz v0, :cond_0

    .line 2821
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioAdHandler:Landroid/os/Handler;

    .line 2822
    new-instance v0, Lcom/pad/android/iappad/AdController$AdShakeListener$1;

    invoke-direct {v0, p0}, Lcom/pad/android/iappad/AdController$AdShakeListener$1;-><init>(Lcom/pad/android/iappad/AdController$AdShakeListener;)V

    iput-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioExpireTask:Ljava/lang/Runnable;

    .line 2830
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pad/android/iappad/AdController$AdShakeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2854
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->restoredata()V

    return-void
.end method

.method static synthetic access$1(Lcom/pad/android/iappad/AdController$AdShakeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2868
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->disableShakeDetection()V

    return-void
.end method

.method private disableShakeDetection()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2870
    iput-boolean v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isWaitingShake:Z

    .line 2871
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #setter for: Lcom/pad/android/iappad/AdController;->isAudioAd:Z
    invoke-static {v0, v1}, Lcom/pad/android/iappad/AdController;->access$14(Lcom/pad/android/iappad/AdController;Z)V

    .line 2872
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$13(Lcom/pad/android/iappad/AdController;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2873
    const-string v0, "LBAdController"

    const-string v1, "shake event detection disabled"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    return-void
.end method

.method private displayAudioAd()V
    .locals 4

    .prologue
    .line 2891
    :try_start_0
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    invoke-virtual {v1}, Lcom/pad/android/iappad/AdController;->destroyAd()V

    .line 2892
    const-string v1, "LBAdController"

    const-string v2, "showing audio ad in browser"

    invoke-static {v1, v2}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2895
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/pad/android/listener/AdAudioListener;->onAdClicked()V

    .line 2897
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->results:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/pad/android/iappad/AdController;->access$8(Lcom/pad/android/iappad/AdController;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "adurl"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2898
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$16(Lcom/pad/android/iappad/AdController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    .end local v0           #browserIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2899
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private restoredata()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2856
    iput-wide v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mFirstDirectionChangeTime:J

    .line 2857
    iput-wide v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mLastDirectionChangeTime:J

    .line 2858
    const/4 v0, 0x0

    iput v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mDirectionChangeCount:I

    .line 2859
    return-void
.end method


# virtual methods
.method public destroySensor()V
    .locals 2

    .prologue
    .line 2878
    iget-boolean v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isWaitingShake:Z

    if-eqz v0, :cond_0

    .line 2881
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->disableShakeDetection()V

    .line 2882
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioAdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioExpireTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2884
    :cond_0
    return-void
.end method

.method public enableShakeDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2863
    iput-boolean v2, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isWaitingShake:Z

    .line 2864
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/pad/android/iappad/AdController;->access$13(Lcom/pad/android/iappad/AdController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/pad/android/iappad/AdController;->access$13(Lcom/pad/android/iappad/AdController;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2865
    const-string v0, "LBAdController"

    const-string v1, "shake event detection enabled"

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 2852
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "se"

    .prologue
    .line 2904
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v7, v10, v11

    .line 2905
    .local v7, x:F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x1

    aget v8, v10, v11

    .line 2906
    .local v8, y:F
    iget-object v10, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x2

    aget v9, v10, v11

    .line 2907
    .local v9, z:F
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    iget-object v11, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mForceCurrent:F
    invoke-static {v11}, Lcom/pad/android/iappad/AdController;->access$17(Lcom/pad/android/iappad/AdController;)F

    move-result v11

    #setter for: Lcom/pad/android/iappad/AdController;->mForceLast:F
    invoke-static {v10, v11}, Lcom/pad/android/iappad/AdController;->access$18(Lcom/pad/android/iappad/AdController;F)V

    .line 2908
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    mul-float v11, v7, v7

    mul-float v12, v8, v8

    add-float/2addr v11, v12

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    invoke-static {v11}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v11

    #setter for: Lcom/pad/android/iappad/AdController;->mForceCurrent:F
    invoke-static {v10, v11}, Lcom/pad/android/iappad/AdController;->access$19(Lcom/pad/android/iappad/AdController;F)V

    .line 2909
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mForceCurrent:F
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$17(Lcom/pad/android/iappad/AdController;)F

    move-result v10

    iget-object v11, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mForceLast:F
    invoke-static {v11}, Lcom/pad/android/iappad/AdController;->access$20(Lcom/pad/android/iappad/AdController;)F

    move-result v11

    sub-float v0, v10, v11

    .line 2910
    .local v0, delta:F
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    iget-object v11, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mForce:F
    invoke-static {v11}, Lcom/pad/android/iappad/AdController;->access$21(Lcom/pad/android/iappad/AdController;)F

    move-result v11

    const v12, 0x3f666666

    mul-float/2addr v11, v12

    add-float/2addr v11, v0

    #setter for: Lcom/pad/android/iappad/AdController;->mForce:F
    invoke-static {v10, v11}, Lcom/pad/android/iappad/AdController;->access$22(Lcom/pad/android/iappad/AdController;F)V

    .line 2914
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mForce:F
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$21(Lcom/pad/android/iappad/AdController;)F

    move-result v10

    const/high16 v11, 0x4020

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 2916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2919
    .local v3, now:J
    iget-wide v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mFirstDirectionChangeTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 2921
    iput-wide v3, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mFirstDirectionChangeTime:J

    .line 2922
    iput-wide v3, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mLastDirectionChangeTime:J

    .line 2926
    :cond_0
    iget-wide v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mLastDirectionChangeTime:J

    sub-long v1, v3, v10

    .line 2927
    .local v1, lastChangeWasAgo:J
    const-wide/16 v10, 0x12c

    cmp-long v10, v1, v10

    if-gez v10, :cond_3

    .line 2929
    iput-wide v3, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mLastDirectionChangeTime:J

    .line 2930
    iget v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mDirectionChangeCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mDirectionChangeCount:I

    .line 2932
    iget v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mDirectionChangeCount:I

    iget v11, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->shakeTimes:I

    if-lt v10, v11, :cond_3

    .line 2934
    iget-wide v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->mFirstDirectionChangeTime:J

    sub-long v5, v3, v10

    .line 2935
    .local v5, totalDuration:J
    const-wide/16 v10, 0x5dc

    cmp-long v10, v5, v10

    if-gez v10, :cond_3

    .line 2937
    const-string v10, "LBAdController"

    const-string v11, "valid shake"

    invoke-static {v10, v11}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->restoredata()V

    .line 2940
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->disableShakeDetection()V

    .line 2941
    iget-boolean v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->isAudio:Z

    if-eqz v10, :cond_3

    .line 2943
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$23(Lcom/pad/android/iappad/AdController;)Landroid/media/MediaPlayer;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$23(Lcom/pad/android/iappad/AdController;)Landroid/media/MediaPlayer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2945
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$23(Lcom/pad/android/iappad/AdController;)Landroid/media/MediaPlayer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaPlayer;->stop()V

    .line 2946
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    const/4 v11, 0x0

    #setter for: Lcom/pad/android/iappad/AdController;->mp:Landroid/media/MediaPlayer;
    invoke-static {v10, v11}, Lcom/pad/android/iappad/AdController;->access$24(Lcom/pad/android/iappad/AdController;Landroid/media/MediaPlayer;)V

    .line 2947
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2949
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->audioListener:Lcom/pad/android/listener/AdAudioListener;
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$15(Lcom/pad/android/iappad/AdController;)Lcom/pad/android/listener/AdAudioListener;

    move-result-object v10

    invoke-interface {v10}, Lcom/pad/android/listener/AdAudioListener;->onAdFinished()V

    .line 2952
    :cond_1
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->am:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/pad/android/iappad/AdController;->access$25(Lcom/pad/android/iappad/AdController;)Landroid/media/AudioManager;

    move-result-object v10

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->this$0:Lcom/pad/android/iappad/AdController;

    #getter for: Lcom/pad/android/iappad/AdController;->oldVolumeLevel:I
    invoke-static {v12}, Lcom/pad/android/iappad/AdController;->access$26(Lcom/pad/android/iappad/AdController;)I

    move-result v12

    const/16 v13, 0x8

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2954
    :cond_2
    iget-object v10, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioAdHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioExpireTask:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2955
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->displayAudioAd()V

    .line 2969
    .end local v1           #lastChangeWasAgo:J
    .end local v3           #now:J
    .end local v5           #totalDuration:J
    :cond_3
    :goto_0
    return-void

    .line 2967
    :cond_4
    invoke-direct {p0}, Lcom/pad/android/iappad/AdController$AdShakeListener;->restoredata()V

    goto :goto_0
.end method

.method public setShakeTime(I)V
    .locals 0
    .parameter "sTime"

    .prologue
    .line 2834
    iput p1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->shakeTimes:I

    .line 2835
    return-void
.end method

.method public setValidTimes(I)V
    .locals 0
    .parameter "sVTime"

    .prologue
    .line 2839
    iput p1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->shakeValidTime:I

    .line 2840
    return-void
.end method

.method public setupAudioAdHandler()V
    .locals 4

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioAdHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->audioExpireTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/pad/android/iappad/AdController$AdShakeListener;->shakeValidTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2846
    return-void
.end method
