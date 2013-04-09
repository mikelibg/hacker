.class Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/HandShake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdTypeHandShake"
.end annotation


# instance fields
.field downloading:Z

.field lastVideo:J

.field refreshInterval:Ljava/lang/String;

.field final synthetic this$0:Lcom/millennialmedia/android/HandShake;

.field videoInterval:J


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/HandShake;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 441
    iput-object p1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 434
    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    .line 442
    return-void
.end method


# virtual methods
.method canDisplayCachedAd(J)Z
    .locals 4
    .parameter "cachedTime"

    .prologue
    .line 493
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-object v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

    #getter for: Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J
    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->access$800(Lcom/millennialmedia/android/HandShake;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "adType"

    .prologue
    const-wide/16 v5, 0x3e8

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canRequestVideo() Current Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " last video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Diff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Video interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 457
    const/4 v0, 0x1

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canWatchVideoAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "adType"
    .parameter "videoAd"

    .prologue
    const/4 v5, 0x0

    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const-wide/16 v2, 0x0

    .line 470
    .local v2, deferredViewStart:J
    :try_start_0
    new-instance v1, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v1, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v1, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v1, p3}, Lcom/millennialmedia/android/AdDatabaseHelper;->getDeferredViewStart(Ljava/lang/String;)J

    move-result-wide v2

    .line 472
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    iget-object v8, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->this$0:Lcom/millennialmedia/android/HandShake;

    #getter for: Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J
    invoke-static {v8}, Lcom/millennialmedia/android/HandShake;->access$800(Lcom/millennialmedia/android/HandShake;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 484
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 485
    const/4 v5, 0x1

    move-object v0, v1

    .line 487
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :goto_0
    return v5

    .line 474
    :catch_0
    move-exception v4

    .line 476
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :goto_1
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 478
    :cond_0
    const-string v6, "MillennialMediaSDK"

    const-string v7, "SQL error. Can watch video check cannot be completed."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_1
    move-object v0, v1

    .line 487
    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_0

    .line 474
    .end local v0           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v1       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v0       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1
.end method

.method deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "adTypeObject"

    .prologue
    const/4 v4, 0x0

    .line 507
    if-nez p1, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    const-string v0, "videointerval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    .line 511
    const-string v0, "adrefresh"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iput-object v4, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    goto :goto_0
.end method

.method didReceiveVideoXHeader(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 4
    .parameter "settings"
    .parameter "adType"

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 521
    .local v0, settingsFound:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 524
    const/4 v0, 0x1

    .line 526
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_videointerval_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_videointerval_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    .line 529
    const/4 v0, 0x1

    .line 531
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_adrefresh_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_adrefresh_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    .line 534
    const/4 v0, 0x1

    .line 537
    :cond_2
    return v0
.end method

.method loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 543
    const-string v1, "MillennialMediaSettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 545
    .local v0, settings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handshake_lastvideo_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 550
    :cond_0
    return-void
.end method

.method save(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 564
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 565
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 566
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v0, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    return-void
.end method

.method save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 3
    .parameter "editor"
    .parameter "adType"

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake_lastvideo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake_videointerval_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->videoInterval:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handshake_adrefresh_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 559
    :cond_0
    return-void
.end method

.method updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "adType"

    .prologue
    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->lastVideo:J

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/Context;Ljava/lang/String;)V

    .line 501
    return-void
.end method
