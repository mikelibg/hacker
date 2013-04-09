.class Lcom/millennialmedia/android/MMCache;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMCache.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public availableCachedVideos(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 10
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
    .line 56
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 57
    .local v3, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 58
    .local v4, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v1, 0x0

    .line 60
    .local v1, ads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/millennialmedia/android/VideoAd;>;"
    if-eqz v3, :cond_3

    .line 64
    :try_start_0
    new-instance v5, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v5, v3}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v4           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v5, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->getAllVideoAds()Ljava/util/ArrayList;

    move-result-object v1

    .line 66
    invoke-virtual {v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 74
    .end local v5           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v4       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 76
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 78
    .local v2, array:Lorg/json/JSONArray;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/VideoAd;

    .line 80
    .local v0, ad:Lcom/millennialmedia/android/VideoAd;
    invoke-virtual {v0, v3}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v9

    if-nez v9, :cond_1

    .line 81
    iget-object v9, v0, Lcom/millennialmedia/android/VideoAd;->id:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 68
    .end local v0           #ad:Lcom/millennialmedia/android/VideoAd;
    .end local v2           #array:Lorg/json/JSONArray;
    .end local v7           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 70
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v4}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 84
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v2       #array:Lorg/json/JSONArray;
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    new-instance v8, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v8}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 85
    .local v8, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v9, 0x1

    iput v9, v8, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 86
    iput-object v2, v8, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 90
    .end local v2           #array:Lorg/json/JSONArray;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_3
    return-object v8

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 68
    .end local v4           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v4       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2
.end method

.method public cacheVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 16
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
    .line 140
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 141
    .local v1, context:Landroid/content/Context;
    const-string v12, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 146
    .local v9, url:Ljava/lang/String;
    if-eqz v9, :cond_4

    if-eqz v1, :cond_4

    .line 148
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    :try_start_0
    new-instance v5, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v5}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    .line 152
    .local v5, httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    invoke-virtual {v5, v9}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 153
    .local v7, httpResponse:Lorg/apache/http/HttpResponse;
    if-nez v7, :cond_0

    .line 155
    const-string v12, "HTTP response is null"

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 156
    const/4 v12, 0x0

    .line 203
    .end local v5           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v7           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v12

    .line 158
    .restart local v5       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v7       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 161
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    if-nez v4, :cond_1

    .line 163
    const-string v12, "Null HTTP entity"

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 164
    const/4 v12, 0x0

    goto :goto_0

    .line 159
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v7           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_0

    .line 167
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v7       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 169
    const-string v12, "Millennial ad return failed. Zero content length returned."

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 170
    const/4 v12, 0x0

    goto :goto_0

    .line 173
    :cond_2
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v6

    .line 174
    .local v6, httpHeader:Lorg/apache/http/Header;
    if-eqz v6, :cond_4

    .line 176
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 178
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    const-string v13, "application/json"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 180
    const/4 v10, 0x0

    .line 185
    .local v10, videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-static {v12}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, json:Ljava/lang/String;
    new-instance v11, Lcom/millennialmedia/android/VideoAd;

    invoke-direct {v11, v8}, Lcom/millennialmedia/android/VideoAd;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 188
    .end local v10           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .local v11, videoAd:Lcom/millennialmedia/android/VideoAd;
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mounted"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 189
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 194
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/millennialmedia/android/VideoAd;->isValid()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 196
    invoke-virtual {v11, v1}, Lcom/millennialmedia/android/VideoAd;->download(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 197
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v12

    goto/16 :goto_0

    .line 191
    .end local v8           #json:Ljava/lang/String;
    .end local v11           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v10       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_1
    move-exception v3

    .local v3, e1:Ljava/lang/IllegalStateException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v12, "Millennial ad return failed. Invalid response data."

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 192
    .end local v3           #e1:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v3

    .local v3, e1:Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const-string v12, "Millennial ad return failed. Invalid response data."

    invoke-static {v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 203
    .end local v3           #e1:Ljava/io/IOException;
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .end local v6           #httpHeader:Lorg/apache/http/Header;
    .end local v7           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v10           #videoAd:Lcom/millennialmedia/android/VideoAd;
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 192
    .restart local v4       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #httpGetRequest:Lcom/millennialmedia/android/HttpGetRequest;
    .restart local v6       #httpHeader:Lorg/apache/http/Header;
    .restart local v7       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v8       #json:Ljava/lang/String;
    .restart local v11       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_3
    move-exception v3

    move-object v10, v11

    .end local v11           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v10       #videoAd:Lcom/millennialmedia/android/VideoAd;
    goto :goto_2

    .line 191
    .end local v10           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v11       #videoAd:Lcom/millennialmedia/android/VideoAd;
    :catch_4
    move-exception v3

    move-object v10, v11

    .end local v11           #videoAd:Lcom/millennialmedia/android/VideoAd;
    .restart local v10       #videoAd:Lcom/millennialmedia/android/VideoAd;
    goto :goto_1
.end method

.method public playCachedVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 10
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
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 95
    iget-object v9, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 96
    .local v1, context:Landroid/content/Context;
    const-string v9, "videoId"

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 97
    .local v6, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 98
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v0, 0x0

    .line 100
    .local v0, ad:Lcom/millennialmedia/android/VideoAd;
    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    new-instance v3, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v3, v1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v3, v6}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    .line 106
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v9

    if-nez v9, :cond_2

    .line 117
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-class v9, Lcom/millennialmedia/android/VideoPlayer;

    invoke-virtual {v8, v1, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    .line 118
    .local v5, intent:Landroid/content/Intent;
    const/high16 v8, 0x2400

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    const-string v8, "cached"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string v8, "adName"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-boolean v8, v0, Lcom/millennialmedia/android/VideoAd;->storedOnSdCard:Z

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".mmsyscache"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/video.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, sdCardAdVideo:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 131
    .end local v7           #sdCardAdVideo:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v8

    move-object v2, v3

    .line 135
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v5           #intent:Landroid/content/Intent;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_1
    return-object v8

    .line 108
    :catch_0
    move-exception v4

    .line 110
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_1

    .line 129
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 108
    .end local v5           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2

    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_2
    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_1
.end method

.method public videoIdExists(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 30
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/millennialmedia/android/MMCache;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 31
    .local v1, context:Landroid/content/Context;
    const-string v6, "videoId"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 32
    .local v5, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    const/4 v0, 0x0

    .line 35
    .local v0, ad:Lcom/millennialmedia/android/VideoAd;
    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 39
    :try_start_0
    new-instance v3, Lcom/millennialmedia/android/AdDatabaseHelper;

    invoke-direct {v3, v1}, Lcom/millennialmedia/android/AdDatabaseHelper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .local v3, db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :try_start_1
    invoke-virtual {v3, v5}, Lcom/millennialmedia/android/AdDatabaseHelper;->getVideoAd(Ljava/lang/String;)Lcom/millennialmedia/android/VideoAd;

    move-result-object v0

    .line 41
    invoke-virtual {v3}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 48
    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/VideoAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->isExpired()Z

    move-result v6

    if-nez v6, :cond_1

    .line 49
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    .line 51
    :goto_1
    return-object v6

    .line 43
    :catch_0
    move-exception v4

    .line 45
    .local v4, e:Landroid/database/sqlite/SQLiteException;
    :goto_2
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Lcom/millennialmedia/android/AdDatabaseHelper;->close()V

    goto :goto_0

    .line 51
    .end local v4           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 43
    .end local v2           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v3       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3           #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    .restart local v2       #db:Lcom/millennialmedia/android/AdDatabaseHelper;
    goto :goto_2
.end method
