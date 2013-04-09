.class Lcom/millennialmedia/android/MMFileManager;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMFileManager.java"


# static fields
.field static final CREATIVE_CACHE_DIR:Ljava/lang/String; = "creativecache"


# instance fields
.field private isExternal:Z

.field private isInitialized:Z

.field private root:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 29
    return-void
.end method

.method static cleanupCache(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "clear"

    .prologue
    .line 324
    const-wide/32 v2, 0xf731400

    .line 328
    .local v2, timeout:J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mmsyscache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "creativecache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, root:Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    if-eqz p1, :cond_2

    .line 338
    const-wide/16 v2, 0x0

    .line 345
    :goto_1
    :try_start_1
    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/MMFileManager;->cleanupDirectory(Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 350
    .end local v1           #root:Ljava/io/File;
    :cond_0
    :goto_2
    return-void

    .line 331
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "creativecache/"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v1       #root:Ljava/io/File;
    goto :goto_0

    .line 342
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    .line 343
    .local v0, handShake:Lcom/millennialmedia/android/HandShake;
    iget-wide v2, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 349
    .end local v0           #handShake:Lcom/millennialmedia/android/HandShake;
    .end local v1           #root:Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 346
    .restart local v1       #root:Ljava/io/File;
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private static cleanupDirectory(Ljava/io/File;J)V
    .locals 9
    .parameter "file"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 302
    .local v1, entries:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 304
    .local v2, entry:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-lez v5, :cond_0

    .line 307
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 302
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    :try_start_0
    invoke-static {v2, p1, p2}, Lcom/millennialmedia/android/MMFileManager;->cleanupDirectory(Ljava/io/File;J)V

    .line 314
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 315
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 316
    :catch_0
    move-exception v5

    goto :goto_1

    .line 319
    .end local v2           #entry:Ljava/io/File;
    :cond_2
    return-void
.end method

.method private initialize()Z
    .locals 4

    .prologue
    .line 33
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z

    if-nez v1, :cond_0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 38
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isExternal:Z

    if-eqz v1, :cond_1

    .line 41
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mmsyscache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "creativecache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z

    return v1

    .line 43
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "creativecache/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    goto :goto_0

    .line 55
    .end local v0           #context:Landroid/content/Context;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 51
    .restart local v0       #context:Landroid/content/Context;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/millennialmedia/android/MMFileManager;->isInitialized:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public cleanupCache(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 270
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 271
    .local v0, clear:Z
    const-wide/32 v3, 0xf731400

    .line 273
    .local v3, timeout:J
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 275
    const-string v5, "clear"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    const-string v5, "clear"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 277
    :cond_0
    if-eqz v0, :cond_3

    .line 279
    const-wide/16 v3, 0x0

    .line 292
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-static {v5, v3, v4}, Lcom/millennialmedia/android/MMFileManager;->cleanupDirectory(Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_2
    :goto_1
    const/4 v5, 0x0

    return-object v5

    .line 283
    :cond_3
    iget-object v5, p0, Lcom/millennialmedia/android/MMFileManager;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #context:Landroid/content/Context;
    check-cast v1, Landroid/content/Context;

    .line 284
    .restart local v1       #context:Landroid/content/Context;
    if-eqz v1, :cond_1

    .line 286
    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    .line 287
    .local v2, handShake:Lcom/millennialmedia/android/HandShake;
    iget-wide v3, v2, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    goto :goto_0

    .line 293
    .end local v2           #handShake:Lcom/millennialmedia/android/HandShake;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public downloadFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, fileStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 172
    .local v1, contents:[B
    const/4 v7, 0x0

    .line 173
    .local v7, success:Z
    const/4 v9, 0x0

    .line 176
    .local v9, urlConnection:Ljava/net/HttpURLConnection;
    const-string v10, "path"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "url"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 180
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v10, "url"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 181
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 182
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 183
    .local v5, inStream:Ljava/io/InputStream;
    const/16 v10, 0x1000

    new-array v1, v10, [B

    .line 184
    new-instance v2, Ljava/io/File;

    iget-object v11, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    const-string v10, "path"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v2, v11, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 186
    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .local v4, fileStream:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, read:I
    if-lez v6, :cond_2

    .line 187
    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 190
    .end local v6           #read:I
    :catch_0
    move-exception v10

    move-object v3, v4

    .line 192
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileStream:Ljava/io/FileOutputStream;
    .end local v5           #inStream:Ljava/io/InputStream;
    .end local v8           #url:Ljava/net/URL;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    :goto_1
    if-eqz v9, :cond_0

    .line 193
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    :cond_0
    if-eqz v3, :cond_1

    .line 197
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 201
    :cond_1
    :goto_2
    if-eqz v7, :cond_7

    .line 202
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v10

    .line 205
    .end local v1           #contents:[B
    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .end local v7           #success:Z
    .end local v9           #urlConnection:Ljava/net/HttpURLConnection;
    :goto_3
    return-object v10

    .line 188
    .restart local v1       #contents:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileStream:Ljava/io/FileOutputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    .restart local v6       #read:I
    .restart local v7       #success:Z
    .restart local v8       #url:Ljava/net/URL;
    .restart local v9       #urlConnection:Ljava/net/HttpURLConnection;
    :cond_2
    const/4 v7, 0x1

    .line 192
    if-eqz v9, :cond_3

    .line 193
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    :cond_3
    if-eqz v4, :cond_4

    .line 197
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    move-object v3, v4

    .line 198
    .end local v4           #fileStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .restart local v4       #fileStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    move-object v3, v4

    .line 199
    .end local v4           #fileStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 192
    .end local v2           #file:Ljava/io/File;
    .end local v5           #inStream:Ljava/io/InputStream;
    .end local v6           #read:I
    .end local v8           #url:Ljava/net/URL;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v9, :cond_5

    .line 193
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    :cond_5
    if-eqz v3, :cond_6

    .line 197
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 198
    :cond_6
    :goto_5
    throw v10

    .line 205
    .end local v1           #contents:[B
    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .end local v7           #success:Z
    .end local v9           #urlConnection:Ljava/net/HttpURLConnection;
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 198
    .restart local v1       #contents:[B
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    .restart local v7       #success:Z
    .restart local v9       #urlConnection:Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v10

    goto :goto_2

    :catch_3
    move-exception v11

    goto :goto_5

    .line 192
    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileStream:Ljava/io/FileOutputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    .restart local v8       #url:Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4           #fileStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 190
    .end local v2           #file:Ljava/io/File;
    .end local v5           #inStream:Ljava/io/InputStream;
    .end local v8           #url:Ljava/net/URL;
    :catch_4
    move-exception v10

    goto :goto_1
.end method

.method public getDirectoryContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v4, jsonArray:Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, files:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 80
    .local v1, file:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v1           #file:Ljava/lang/String;
    :cond_0
    new-instance v6, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v6}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 83
    .local v6, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v7, 0x1

    iput v7, v6, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 84
    iput-object v4, v6, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 87
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #files:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #jsonArray:Lorg/json/JSONArray;
    .end local v5           #len$:I
    .end local v6           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getFileContents(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    const/4 v3, 0x0

    .line 96
    .local v3, fileStream:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 98
    .local v0, contents:[B
    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 103
    .local v2, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .end local v3           #fileStream:Ljava/io/FileInputStream;
    .local v4, fileStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 105
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 111
    if-eqz v4, :cond_0

    .line 112
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 117
    .end local v2           #file:Ljava/io/File;
    .end local v4           #fileStream:Ljava/io/FileInputStream;
    .restart local v3       #fileStream:Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 119
    new-instance v5, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v5}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 120
    .local v5, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v6, 0x1

    iput v6, v5, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 121
    iput-object v0, v5, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B

    .line 126
    .end local v0           #contents:[B
    .end local v3           #fileStream:Ljava/io/FileInputStream;
    .end local v5           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v5

    .line 114
    .restart local v0       #contents:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 115
    .end local v4           #fileStream:Ljava/io/FileInputStream;
    .restart local v3       #fileStream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 107
    .end local v2           #file:Ljava/io/File;
    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 111
    if-eqz v3, :cond_1

    .line 112
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v6

    goto :goto_0

    .line 109
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 111
    :goto_3
    if-eqz v3, :cond_2

    .line 112
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 114
    :cond_2
    :goto_4
    throw v6

    .line 126
    .end local v0           #contents:[B
    .end local v3           #fileStream:Ljava/io/FileInputStream;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 114
    .restart local v0       #contents:[B
    .restart local v3       #fileStream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 109
    .end local v3           #fileStream:Ljava/io/FileInputStream;
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #fileStream:Ljava/io/FileInputStream;
    .restart local v3       #fileStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 107
    .end local v3           #fileStream:Ljava/io/FileInputStream;
    .restart local v4       #fileStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #fileStream:Ljava/io/FileInputStream;
    .restart local v3       #fileStream:Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public getFreeDiskSpace(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    new-instance v0, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v0}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 65
    .local v0, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v0, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 66
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, stat:Landroid/os/StatFs;
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 70
    .end local v0           #response:Lcom/millennialmedia/android/MMJSResponse;
    .end local v1           #stat:Landroid/os/StatFs;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMimeType(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, path:Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, components:[Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, mime:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 258
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 259
    .local v3, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 260
    iput-object v1, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 264
    .end local v0           #components:[Ljava/lang/String;
    .end local v1           #mime:Ljava/lang/String;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    :try_start_0
    const-string v4, "fromPath"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, fromPath:Ljava/lang/String;
    const-string v4, "toPath"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    .local v3, toPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v0, fromFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v2, toFile:Ljava/io/File;
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 227
    .end local v0           #fromFile:Ljava/io/File;
    .end local v1           #fromPath:Ljava/lang/String;
    .end local v2           #toFile:Ljava/io/File;
    .end local v3           #toPath:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 225
    :catch_0
    move-exception v4

    .line 227
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public removeAtPath(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    :try_start_0
    const-string v2, "path"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 237
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 239
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 246
    .end local v0           #file:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v2

    .line 246
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeData(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/millennialmedia/android/MMFileManager;->initialize()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, fileStream:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 136
    .local v0, contents:[B
    const/4 v4, 0x0

    .line 138
    .local v4, success:Z
    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "data"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/millennialmedia/android/MMFileManager;->root:Ljava/io/File;

    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v1, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v1, file:Ljava/io/File;
    const-string v5, "data"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/millennialmedia/android/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 144
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .local v3, fileStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 146
    const/4 v4, 0x1

    .line 152
    if-eqz v3, :cond_0

    .line 153
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v2, v3

    .line 157
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    if-eqz v4, :cond_3

    .line 158
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 161
    .end local v0           #contents:[B
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .end local v4           #success:Z
    :goto_1
    return-object v5

    .line 154
    .restart local v0       #contents:[B
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    .restart local v4       #success:Z
    :catch_0
    move-exception v5

    move-object v2, v3

    .line 155
    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 148
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v5

    .line 152
    :goto_2
    if-eqz v2, :cond_1

    .line 153
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 154
    :catch_2
    move-exception v5

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v5

    .line 152
    :goto_3
    if-eqz v2, :cond_2

    .line 153
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 154
    :cond_2
    :goto_4
    throw v5

    .line 161
    .end local v0           #contents:[B
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .end local v4           #success:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 154
    .restart local v0       #contents:[B
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    .restart local v4       #success:Z
    :catch_3
    move-exception v6

    goto :goto_4

    .line 150
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 148
    .end local v2           #fileStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v5

    move-object v2, v3

    .end local v3           #fileStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileStream:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
