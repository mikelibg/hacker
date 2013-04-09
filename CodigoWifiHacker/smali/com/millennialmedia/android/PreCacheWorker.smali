.class Lcom/millennialmedia/android/PreCacheWorker;
.super Ljava/lang/Thread;
.source "PreCacheWorker.java"


# static fields
.field private static busy:Z

.field private static currentDownload:Ljava/lang/String;


# instance fields
.field private appContext:Landroid/content/Context;

.field private cachedVideos:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    sput-object v0, Lcom/millennialmedia/android/PreCacheWorker;->currentDownload:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "videos"
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/millennialmedia/android/PreCacheWorker;->cachedVideos:[Ljava/lang/String;

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static isCurrentlyDownloading(Ljava/lang/String;)Z
    .locals 1
    .parameter "adName"

    .prologue
    .line 38
    sget-object v0, Lcom/millennialmedia/android/PreCacheWorker;->currentDownload:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static declared-synchronized preCacheVideos([Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "videos"
    .parameter "context"

    .prologue
    .line 29
    const-class v2, Lcom/millennialmedia/android/PreCacheWorker;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    if-nez v1, :cond_0

    .line 31
    new-instance v0, Lcom/millennialmedia/android/PreCacheWorker;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/PreCacheWorker;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    .line 32
    .local v0, preCacheWorker:Lcom/millennialmedia/android/PreCacheWorker;
    invoke-virtual {v0}, Lcom/millennialmedia/android/PreCacheWorker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .end local v0           #preCacheWorker:Lcom/millennialmedia/android/PreCacheWorker;
    :cond_0
    monitor-exit v2

    return-void

    .line 29
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/PreCacheWorker;->cachedVideos:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v0, v2

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_b

    aget-object v4, v2, v15

    .line 57
    .local v4, cachedVideo:Ljava/lang/String;
    :try_start_0
    new-instance v11, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v11}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 58
    .local v11, httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    invoke-virtual {v11, v4}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 59
    .local v13, httpResponse:Lorg/apache/http/HttpResponse;
    if-nez v13, :cond_1

    .line 61
    const-string v21, "Pre cache worker: HTTP response is null"

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 53
    .end local v11           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 64
    .restart local v11       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 67
    .local v10, httpEntity:Lorg/apache/http/HttpEntity;
    if-nez v10, :cond_2

    .line 69
    const-string v21, "Pre cache worker: Null HTTP entity"

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    .end local v10           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Pre cache worker HTTP error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v10       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v11       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_3

    .line 75
    const-string v21, "Pre cache worker: Millennial ad return failed. Zero content length returned."

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :cond_3
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v12

    .line 80
    .local v12, httpHeader:Lorg/apache/http/Header;
    if-eqz v12, :cond_0

    .line 82
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 84
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "application/json"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 86
    const/16 v19, 0x0

    .line 91
    .local v19, videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_start_1
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    .line 92
    .local v16, json:Ljava/lang/String;
    new-instance v20, Lcom/millennialmedia/android/VideoAd;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    .end local v19           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .local v20, videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 95
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 100
    :cond_4
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/millennialmedia/android/MMAdViewController;->initCachedAdDirectory(Lcom/millennialmedia/android/VideoAd;Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    .line 103
    .local v9, file:Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Pre cache worker: Downloading content to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->contentUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "video.dat"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v18

    .line 108
    .local v18, success:Z
    if-eqz v18, :cond_5

    .line 111
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 113
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->buttons:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/android/VideoImage;

    .line 114
    .local v3, button:Lcom/millennialmedia/android/VideoImage;
    iget-object v0, v3, Lcom/millennialmedia/android/VideoImage;->imageUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual {v3}, Lcom/millennialmedia/android/VideoImage;->getImageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/millennialmedia/android/MMAdViewController;->downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v18

    .line 115
    if-nez v18, :cond_6

    .line 120
    .end local v3           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v14           #i:I
    :cond_5
    if-nez v18, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/millennialmedia/android/MMAdViewController;->deleteAd(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->cacheFailed:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    .line 144
    :goto_3
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Pre cache worker: Caching completed successfully? "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    .end local v9           #file:Ljava/io/File;
    .end local v16           #json:Ljava/lang/String;
    .end local v18           #success:Z
    .end local v20           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v19       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_1
    move-exception v8

    .local v8, e1:Ljava/lang/IllegalStateException;
    :goto_4
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v21, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v8           #e1:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v8

    .local v8, e1:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    const-string v21, "Pre cache worker: Millennial ad return failed. Invalid response data."

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 111
    .end local v8           #e1:Ljava/io/IOException;
    .end local v19           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v3       #button:Lcom/millennialmedia/android/VideoImage;
    .restart local v9       #file:Ljava/io/File;
    .restart local v14       #i:I
    .restart local v16       #json:Ljava/lang/String;
    .restart local v18       #success:Z
    .restart local v20       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 127
    .end local v3           #button:Lcom/millennialmedia/android/VideoImage;
    .end local v14           #i:I
    :cond_7
    const/4 v5, 0x0

    .line 128
    .local v5, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const-string v21, "Pre cache worker: Storing ad in db."

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 131
    :try_start_3
    new-instance v6, Lcom/millennialmedia/android/AdDatabaseHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 132
    .end local v5           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v6, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/AdDatabaseHelper;->storeAd(Lcom/millennialmedia/android/VideoAd;)V

    .line 133
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/PreCacheWorker;->appContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->acid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/millennialmedia/android/MMAdViewController;->cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 138
    :cond_8
    if-eqz v6, :cond_c

    .line 139
    invoke-virtual {v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    move-object v5, v6

    .line 141
    .end local v6           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_9
    :goto_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->cacheComplete:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/millennialmedia/android/HttpGetRequest;->log([Ljava/lang/String;)V

    goto :goto_3

    .line 135
    :catch_3
    move-exception v7

    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :goto_7
    :try_start_5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 138
    if-eqz v5, :cond_9

    .line 139
    invoke-virtual {v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_6

    .line 138
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v21

    :goto_8
    if-eqz v5, :cond_a

    .line 139
    invoke-virtual {v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    :cond_a
    throw v21

    .line 151
    .end local v4           #cachedVideo:Ljava/lang/String;
    .end local v5           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v11           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v12           #httpHeader:Lorg/apache/http/Header;
    .end local v13           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #json:Ljava/lang/String;
    .end local v18           #success:Z
    .end local v20           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_b
    const/16 v21, 0x0

    sput-boolean v21, Lcom/millennialmedia/android/PreCacheWorker;->busy:Z

    .line 152
    return-void

    .line 138
    .restart local v4       #cachedVideo:Ljava/lang/String;
    .restart local v6       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v11       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v12       #httpHeader:Lorg/apache/http/Header;
    .restart local v13       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v16       #json:Ljava/lang/String;
    .restart local v18       #success:Z
    .restart local v20       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catchall_1
    move-exception v21

    move-object v5, v6

    .end local v6           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_8

    .line 135
    .end local v5           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v6       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_4
    move-exception v7

    move-object v5, v6

    .end local v6           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_7

    .line 98
    .end local v5           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v9           #file:Ljava/io/File;
    .end local v18           #success:Z
    :catch_5
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v19       #videoAd:Lcom/millennialmedia/android/VideoAd;
    goto :goto_5

    .line 97
    .end local v19           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v20       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_6
    move-exception v8

    move-object/from16 v19, v20

    .end local v20           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v19       #videoAd:Lcom/millennialmedia/android/VideoAd;
    goto/16 :goto_4

    .end local v19           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v6       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v9       #file:Ljava/io/File;
    .restart local v18       #success:Z
    .restart local v20       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_c
    move-object v5, v6

    .end local v6           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_6
.end method
