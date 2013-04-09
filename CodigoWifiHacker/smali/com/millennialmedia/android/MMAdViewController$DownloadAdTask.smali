.class Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;
.super Landroid/os/AsyncTask;
.source "MMAdViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/MMAdViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadAdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/millennialmedia/android/VideoAd;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/millennialmedia/android/MMAdViewController;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdViewController;)V
    .locals 3
    .parameter

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1457
    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1458
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1459
    const-string v1, "MillennialMediaSDK"

    const-string v2, "The reference to the ad view was broken."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :goto_0
    return-void

    .line 1461
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HandShake;->lockAdTypeDownload(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1452
    check-cast p1, [Lcom/millennialmedia/android/VideoAd;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->doInBackground([Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/millennialmedia/android/VideoAd;)Ljava/lang/String;
    .locals 14
    .parameter "ad"

    .prologue
    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 1487
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v10}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1489
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_1

    .line 1491
    const-string v10, "MillennialMediaSDK"

    const-string v11, "The reference to the ad view was broken."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_0
    :goto_0
    return-object v9

    .line 1495
    :cond_1
    if-eqz p1, :cond_0

    array-length v10, p1

    if-eqz v10, :cond_0

    .line 1498
    aget-object v10, p1, v12

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/millennialmedia/android/MMAdViewController;->initCachedAdDirectory(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    .line 1499
    .local v4, file:Ljava/io/File;
    if-eqz v4, :cond_0

    .line 1502
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Downloading content to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1505
    aget-object v9, p1, v12

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    const-string v10, "video.dat"

    invoke-static {v9, v10, v4}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v8

    .line 1506
    .local v8, success:Z
    if-nez v8, :cond_2

    .line 1508
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "MillennialMediaSettings"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1509
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1510
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "pendingDownload"

    invoke-interface {v2, v9, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1511
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1512
    aget-object v9, p1, v12

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    goto :goto_0

    .line 1516
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #settings:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    aget-object v9, p1, v12

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 1518
    aget-object v9, p1, v12

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoImage;

    .line 1519
    .local v1, button:Lcom/millennialmedia/android/VideoImage;
    iget-object v9, v1, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v8

    .line 1520
    if-nez v8, :cond_3

    .line 1522
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "MillennialMediaSettings"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1523
    .restart local v6       #settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1524
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "pendingDownload"

    invoke-interface {v2, v9, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1525
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1526
    aget-object v9, p1, v12

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    goto/16 :goto_0

    .line 1516
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #settings:Landroid/content/SharedPreferences;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1530
    .end local v1           #button:Lcom/millennialmedia/android/VideoImage;
    :cond_4
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "MillennialMediaSettings"

    invoke-virtual {v9, v10, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1531
    .local v7, settings2:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1532
    .local v3, editor2:Landroid/content/SharedPreferences$Editor;
    const-string v9, "pendingDownload"

    invoke-interface {v3, v9, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1533
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1534
    aget-object v9, p1, v12

    iget-object v9, v9, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1452
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 12
    .parameter "adName"

    .prologue
    const/4 v11, 0x0

    .line 1549
    const/4 v2, 0x0

    .line 1551
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    iget-object v9, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1552
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1554
    const-string v9, "MillennialMediaSDK"

    const-string v10, "The reference to the ad view was broken."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :goto_0
    return-void

    .line 1557
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "MillennialMediaSettings"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1558
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1559
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_3

    .line 1561
    const-string v9, "lastDownloadedAdName"

    invoke-interface {v5, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1562
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Download complete. LastDownloadedAdName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1563
    const-string v9, "pendingDownload"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1564
    const/4 v7, 0x0

    .line 1573
    .local v7, success:Z
    :goto_1
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v9

    iget-object v10, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/millennialmedia/android/HandShake;->unlockAdTypeDownload(Ljava/lang/String;)V

    .line 1577
    :try_start_0
    new-instance v3, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1578
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v8

    .line 1579
    .local v8, videoAd:Lcom/millennialmedia/android/VideoAd;
    if-eqz v7, :cond_4

    .line 1581
    const-string v9, "downloadAttempts"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1582
    const-string v9, "Ad download completed successfully: TRUE"

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1584
    const-string v9, "lastAdViewed"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1585
    const-string v9, "Last ad viewed: FALSE"

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v8, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V

    .line 1588
    iget-object v9, v8, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    invoke-static {v9}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1604
    :goto_2
    if-eqz v3, :cond_1

    .line 1605
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1606
    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1607
    const/4 v7, 0x0

    .line 1608
    iget-object v9, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V
    invoke-static {v9, v0, v7}, Lcom/millennialmedia/android/MMAdViewController;->access$1100(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V

    move-object v2, v3

    .line 1609
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto/16 :goto_0

    .line 1566
    .end local v7           #success:Z
    .end local v8           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_2
    const/4 v7, 0x1

    .restart local v7       #success:Z
    goto :goto_1

    .line 1570
    .end local v7           #success:Z
    :cond_3
    const-string v9, "lastDownloadedAdName"

    const/4 v10, 0x0

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1571
    const/4 v7, 0x0

    .restart local v7       #success:Z
    goto :goto_1

    .line 1592
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v8       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_4
    :try_start_2
    const-string v9, "downloadAttempts"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    add-int/lit8 v1, v9, 0x1

    .line 1593
    .local v1, attempts:I
    const-string v9, "downloadAttempts"

    invoke-interface {v5, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1594
    const-string v9, "Ad download completed successfully: FALSE"

    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 1595
    iget-object v9, v8, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    invoke-static {v9}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1598
    .end local v1           #attempts:I
    .end local v8           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 1600
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :goto_3
    :try_start_3
    const-string v9, "MillennialMediaSDK"

    const-string v10, "SQL error. Cannot complete ad download."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1604
    if-eqz v2, :cond_5

    .line 1605
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1606
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1607
    const/4 v7, 0x0

    .line 1608
    iget-object v9, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V
    invoke-static {v9, v0, v7}, Lcom/millennialmedia/android/MMAdViewController;->access$1100(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V

    goto/16 :goto_0

    .line 1604
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v2, :cond_6

    .line 1605
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    .line 1606
    :cond_6
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1607
    const/4 v7, 0x0

    .line 1608
    iget-object v10, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #calls: Lcom/millennialmedia/android/MMAdViewController;->adDoneCaching(Lcom/millennialmedia/android/MMAdView;Z)V
    invoke-static {v10, v0, v7}, Lcom/millennialmedia/android/MMAdViewController;->access$1100(Lcom/millennialmedia/android/MMAdViewController;Lcom/millennialmedia/android/MMAdView;Z)V

    throw v9

    .line 1604
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_4

    .line 1598
    :catch_1
    move-exception v4

    goto :goto_3
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 1468
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdViewController$DownloadAdTask;->this$0:Lcom/millennialmedia/android/MMAdViewController;

    #getter for: Lcom/millennialmedia/android/MMAdViewController;->adViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewController;->access$100(Lcom/millennialmedia/android/MMAdViewController;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdView;

    .line 1469
    .local v0, adView:Lcom/millennialmedia/android/MMAdView;
    if-nez v0, :cond_0

    .line 1471
    const-string v3, "MillennialMediaSDK"

    const-string v4, "The reference to the ad view was broken."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :goto_0
    return-void

    .line 1474
    :cond_0
    const-string v3, "DownloadAdTask onPreExecute"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "MillennialMediaSettings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1476
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1477
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pendingDownload"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1478
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1479
    const-string v3, "Setting pendingDownload to TRUE"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onProgressUpdate()V
    .locals 0

    .prologue
    .line 1542
    return-void
.end method
