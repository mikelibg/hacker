.class Lcom/millennialmedia/android/MMDevice;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMDevice.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getAvailableSchemes(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
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
    .line 41
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 42
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 45
    .local v1, handShake:Lcom/millennialmedia/android/HandShake;
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 46
    .local v2, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 47
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/HandShake;->getSchemesJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 50
    .end local v1           #handShake:Lcom/millennialmedia/android/HandShake;
    .end local v2           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInfo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 13
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
    .line 103
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 104
    .local v5, jsonObject:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 105
    .local v1, jsonCookieArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 106
    .local v3, jsonCookieObject:Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 107
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 111
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v10, "sdkVersion"

    const-string v11, "4.5.1-12.2.2.a"

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v10, "connection"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v10, "platform"

    const-string v11, "Android"

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 116
    const-string v10, "version"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_0
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 118
    const-string v10, "device"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_1
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v10

    iget-boolean v10, v10, Lcom/millennialmedia/android/HandShake;->hdid:Z

    if-eqz v10, :cond_3

    .line 120
    const-string v10, "hdid"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :goto_0
    const-string v10, "mmdid"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 126
    .local v8, metrics:Landroid/util/DisplayMetrics;
    const-string v10, "density"

    new-instance v11, Ljava/lang/Float;

    iget v12, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v11, v12}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v10, "height"

    new-instance v11, Ljava/lang/Integer;

    iget v12, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v10, "width"

    new-instance v11, Ljava/lang/Integer;

    iget v12, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 131
    .local v7, locale:Ljava/util/Locale;
    if-eqz v7, :cond_2

    .line 133
    const-string v10, "language"

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v10, "country"

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    .end local v3           #jsonCookieObject:Lorg/json/JSONObject;
    .local v4, jsonCookieObject:Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "name"

    const-string v11, "MAC-ID"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    const-string v10, "path"

    const-string v11, "/"

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v10, "value"

    sget-object v11, Lcom/millennialmedia/android/MMAdViewSDK;->macId:Ljava/lang/String;

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    .end local v1           #jsonCookieArray:Lorg/json/JSONArray;
    .local v2, jsonCookieArray:Lorg/json/JSONArray;
    :try_start_3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    const-string v10, "cookies"

    invoke-virtual {v6, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .end local v4           #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v3       #jsonCookieObject:Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2           #jsonCookieArray:Lorg/json/JSONArray;
    .restart local v1       #jsonCookieArray:Lorg/json/JSONArray;
    move-object v5, v6

    .line 147
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #locale:Ljava/util/Locale;
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :goto_1
    new-instance v9, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v9}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 148
    .local v9, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v10, 0x1

    iput v10, v9, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 149
    iput-object v5, v9, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 152
    .end local v9           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_2
    return-object v9

    .line 122
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :cond_3
    :try_start_4
    const-string v10, "auid"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getAuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v10

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .line 152
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 145
    :catch_1
    move-exception v10

    goto :goto_1

    .end local v3           #jsonCookieObject:Lorg/json/JSONObject;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #locale:Ljava/util/Locale;
    .restart local v8       #metrics:Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v10

    move-object v3, v4

    .end local v4           #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v3       #jsonCookieObject:Lorg/json/JSONObject;
    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .end local v1           #jsonCookieArray:Lorg/json/JSONArray;
    .end local v3           #jsonCookieObject:Lorg/json/JSONObject;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonCookieArray:Lorg/json/JSONArray;
    .restart local v4       #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_3
    move-exception v10

    move-object v3, v4

    .end local v4           #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v3       #jsonCookieObject:Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2           #jsonCookieArray:Lorg/json/JSONArray;
    .restart local v1       #jsonCookieArray:Lorg/json/JSONArray;
    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public getOrientation(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 72
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 73
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 76
    .local v2, orientation:I
    if-nez v2, :cond_0

    .line 78
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 79
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 82
    .end local v1           #display:Landroid/view/Display;
    :cond_0
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 83
    .local v3, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 84
    packed-switch v2, :pswitch_data_0

    .line 90
    const-string v4, "portrait"

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 98
    .end local v2           #orientation:I
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v3

    .line 93
    .restart local v2       #orientation:I
    .restart local v3       #response:Lcom/millennialmedia/android/MMJSResponse;
    :pswitch_0
    const-string v4, "landscape"

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 98
    .end local v2           #orientation:I
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public isSchemeAvailable(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
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
    .line 55
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "scheme"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, scheme:Ljava/lang/String;
    iget-object v4, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 58
    .local v0, context:Landroid/content/Context;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 65
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 67
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setMMDID(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
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
    .line 29
    .local p1, arguments:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "mmdid"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    .local v2, mmdid:Ljava/lang/String;
    iget-object v3, p0, Lcom/millennialmedia/android/MMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 31
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 33
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 34
    .local v1, handShake:Lcom/millennialmedia/android/HandShake;
    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .end local v1           #handShake:Lcom/millennialmedia/android/HandShake;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method
