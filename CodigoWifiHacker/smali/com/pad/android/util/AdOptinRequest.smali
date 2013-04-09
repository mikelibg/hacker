.class public Lcom/pad/android/util/AdOptinRequest;
.super Landroid/os/AsyncTask;
.source "AdOptinRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final LB_LOG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private mode:Ljava/lang/String;

.field private oListener:Lcom/pad/android/listener/AdOptinListener;

.field private optinValues:Lorg/json/JSONObject;

.field private sectionid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Context;Lcom/pad/android/listener/AdOptinListener;Ljava/lang/String;)V
    .locals 2
    .parameter "act"
    .parameter "secid"
    .parameter "ctx"
    .parameter "list"
    .parameter "md"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    const-string v0, "LBAdController"

    iput-object v0, p0, Lcom/pad/android/util/AdOptinRequest;->LB_LOG:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 42
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    .line 44
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    .line 46
    iput-object v1, p0, Lcom/pad/android/util/AdOptinRequest;->mode:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 52
    iput-object p2, p0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    .line 54
    iput-object p4, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    .line 55
    iput-object p5, p0, Lcom/pad/android/util/AdOptinRequest;->mode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private makeOptinRequest()Lorg/json/JSONObject;
    .locals 38

    .prologue
    .line 74
    const/16 v27, 0x0

    .line 75
    .local v27, res:Lorg/json/JSONObject;
    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AdOptin started - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 80
    .local v2, toUse:Landroid/content/Context;
    :goto_0
    const-string v4, "Preference"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 81
    .local v25, pref:Landroid/content/SharedPreferences;
    const-string v4, "SD_APP_OPTIN_SHOWN"

    const-string v5, "notset"

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, makeRequest:Ljava/lang/String;
    const-string v32, ""

    .line 83
    .local v32, toReturn:Ljava/lang/String;
    const-string v4, "notset"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "invalid"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 85
    :cond_1
    const-string v4, "LBAdController"

    const-string v5, "Cookie is ok, going to check internet"

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 88
    .local v9, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v21

    .line 89
    .local v21, netInfo:Landroid/net/NetworkInfo;
    if-eqz v21, :cond_3

    .line 91
    const-string v4, "LBAdController"

    const-string v5, "Internet available - going to make the request"

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v7, 0x0

    .local v7, deviceWidth:I
    const/4 v8, 0x0

    .line 94
    .local v8, deviceHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 97
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v12, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 101
    .local v26, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v35

    .line 102
    .local v35, win:Landroid/view/Window;
    invoke-virtual/range {v35 .. v35}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 103
    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    .line 104
    .local v30, statusBarHeight:I
    const v4, 0x1020002

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    .line 105
    .local v11, contentViewTop:I
    move/from16 v0, v30

    if-le v11, v0, :cond_5

    sub-int v31, v11, v30

    .line 107
    .local v31, titleBarHeight:I
    :goto_1
    iget v7, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    iget v4, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v4, v4, v30

    sub-int v8, v4, v31

    .line 111
    .end local v11           #contentViewTop:I
    .end local v12           #dm:Landroid/util/DisplayMetrics;
    .end local v26           #rect:Landroid/graphics/Rect;
    .end local v30           #statusBarHeight:I
    .end local v31           #titleBarHeight:I
    .end local v35           #win:Landroid/view/Window;
    :cond_2
    new-instance v24, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v24 .. v24}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 112
    .local v24, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "http.protocol.version"

    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 113
    new-instance v16, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 115
    .local v16, httpclient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_6

    .line 117
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 125
    .local v3, tele:Landroid/telephony/TelephonyManager;
    :goto_2
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/4 v4, 0x0

    const-string v5, "http://ad.leadboltapps.net"

    aput-object v5, v34, v4

    const/4 v4, 0x1

    const-string v5, "http://ad.leadbolt.net"

    aput-object v5, v34, v4

    .line 127
    .local v34, urlDomains:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 128
    .local v15, found:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3
    move-object/from16 v0, v34

    array-length v4, v0

    move/from16 v0, v18

    if-lt v0, v4, :cond_7

    .line 204
    .end local v2           #toUse:Landroid/content/Context;
    .end local v3           #tele:Landroid/telephony/TelephonyManager;
    .end local v7           #deviceWidth:I
    .end local v8           #deviceHeight:I
    .end local v9           #cm:Landroid/net/ConnectivityManager;
    .end local v15           #found:Z
    .end local v16           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v18           #i:I
    .end local v20           #makeRequest:Ljava/lang/String;
    .end local v21           #netInfo:Landroid/net/NetworkInfo;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v25           #pref:Landroid/content/SharedPreferences;
    .end local v32           #toReturn:Ljava/lang/String;
    .end local v34           #urlDomains:[Ljava/lang/String;
    :cond_3
    return-object v27

    .line 79
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    goto/16 :goto_0

    .line 105
    .restart local v2       #toUse:Landroid/content/Context;
    .restart local v7       #deviceWidth:I
    .restart local v8       #deviceHeight:I
    .restart local v9       #cm:Landroid/net/ConnectivityManager;
    .restart local v11       #contentViewTop:I
    .restart local v12       #dm:Landroid/util/DisplayMetrics;
    .restart local v20       #makeRequest:Ljava/lang/String;
    .restart local v21       #netInfo:Landroid/net/NetworkInfo;
    .restart local v25       #pref:Landroid/content/SharedPreferences;
    .restart local v26       #rect:Landroid/graphics/Rect;
    .restart local v30       #statusBarHeight:I
    .restart local v32       #toReturn:Ljava/lang/String;
    .restart local v35       #win:Landroid/view/Window;
    :cond_5
    const/16 v31, 0x0

    goto :goto_1

    .line 121
    .end local v11           #contentViewTop:I
    .end local v12           #dm:Landroid/util/DisplayMetrics;
    .end local v26           #rect:Landroid/graphics/Rect;
    .end local v30           #statusBarHeight:I
    .end local v35           #win:Landroid/view/Window;
    .restart local v16       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .restart local v3       #tele:Landroid/telephony/TelephonyManager;
    goto :goto_2

    .line 131
    .restart local v15       #found:Z
    .restart local v18       #i:I
    .restart local v34       #urlDomains:[Ljava/lang/String;
    :cond_7
    if-nez v15, :cond_3

    .line 137
    aget-object v22, v34, v18

    .line 138
    .local v22, optindomain:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/optin?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 139
    .local v33, url:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&section_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/util/AdOptinRequest;->mode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 142
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 147
    .local v17, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v23, Ljava/util/ArrayList;

    const/4 v4, 0x2

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .local v23, pair:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v36, Lorg/apache/http/message/BasicNameValuePair;

    const-string v37, "ref"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lcom/pad/android/util/AdRefValues;->adRefValues(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/util/List;ZII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v23           #pair:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_4
    const/4 v10, 0x0

    .local v10, connectionCount:I
    move-object/from16 v28, v27

    .line 158
    .end local v27           #res:Lorg/json/JSONObject;
    .local v28, res:Lorg/json/JSONObject;
    :cond_8
    :goto_5
    const/16 v4, 0xa

    if-lt v10, v4, :cond_a

    .line 128
    :cond_9
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v27, v28

    .end local v28           #res:Lorg/json/JSONObject;
    .restart local v27       #res:Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 152
    .end local v10           #connectionCount:I
    :catch_0
    move-exception v13

    .line 154
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "LBAdController"

    invoke-static {v4, v13}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 160
    .end local v13           #e:Ljava/lang/Exception;
    .end local v27           #res:Lorg/json/JSONObject;
    .restart local v10       #connectionCount:I
    .restart local v28       #res:Lorg/json/JSONObject;
    :cond_a
    if-nez v15, :cond_9

    .line 170
    :try_start_1
    invoke-interface/range {v16 .. v17}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v29

    .line 172
    .local v29, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8

    .line 174
    const/4 v15, 0x1

    .line 176
    invoke-interface/range {v29 .. v29}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 177
    .local v14, entity:Lorg/apache/http/HttpEntity;
    if-eqz v14, :cond_8

    .line 180
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v19

    .line 181
    .local v19, instream:Ljava/io/InputStream;
    invoke-static/range {v19 .. v19}, Lcom/pad/android/util/AdUtilFuncs;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v32

    .line 184
    :try_start_2
    new-instance v27, Lorg/json/JSONObject;

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v28           #res:Lorg/json/JSONObject;
    .restart local v27       #res:Lorg/json/JSONObject;
    move-object/from16 v28, v27

    .end local v27           #res:Lorg/json/JSONObject;
    .restart local v28       #res:Lorg/json/JSONObject;
    goto :goto_5

    .line 186
    :catch_1
    move-exception v13

    .line 188
    .local v13, e:Lorg/json/JSONException;
    :try_start_3
    const-string v4, "LBAdController"

    invoke-static {v4, v13}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 189
    const-string v4, "LBAdController"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in creating JSON Object for Optin - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pad/android/util/AdLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 194
    .end local v13           #e:Lorg/json/JSONException;
    .end local v14           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #instream:Ljava/io/InputStream;
    .end local v29           #response:Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v13

    .line 196
    .local v13, e:Ljava/lang/Exception;
    const-string v4, "LBAdController"

    invoke-static {v4, v13}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_5
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pad/android/util/AdOptinRequest;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 4
    .parameter "params"

    .prologue
    .line 61
    iget-object v3, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 62
    .local v2, toUse:Landroid/content/Context;
    :goto_0
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 63
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 64
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/pad/android/util/AdOptinRequest;->makeOptinRequest()Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    :goto_1
    return-object v3

    .line 61
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    .end local v2           #toUse:Landroid/content/Context;
    :cond_0
    iget-object v2, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    goto :goto_0

    .line 69
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v1       #netInfo:Landroid/net/NetworkInfo;
    .restart local v2       #toUse:Landroid/content/Context;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/pad/android/util/AdOptinRequest;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 14
    .parameter "res"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 209
    if-nez p1, :cond_1

    .line 211
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_0

    .line 213
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    .line 218
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    if-eqz v9, :cond_f

    :cond_2
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    if-eqz v9, :cond_f

    .line 220
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v9, :cond_6

    iget-object v8, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    .line 221
    .local v8, toUse:Landroid/content/Context;
    :goto_1
    const-string v9, "Preference"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 222
    .local v7, pref:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 224
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    if-eqz v9, :cond_0

    .line 227
    const-string v5, ""

    .local v5, optinType:Ljava/lang/String;
    const-string v3, ""

    .line 230
    .local v3, optinText:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v10, "optintype"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v10, "optintext"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 235
    :goto_2
    const/4 v2, 0x0

    .line 238
    .local v2, isTransparent:Z
    :try_start_1
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v10, "optintransparency"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 241
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, optinTime:Ljava/lang/String;
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    if-eqz v9, :cond_9

    .line 246
    const-string v9, "LBAdController"

    const-string v10, "Context not null, so just flash toast...."

    invoke-static {v9, v10}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v9, "display"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "confirm"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "webconfirm"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 250
    :cond_3
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    invoke-static {v9, v3, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 251
    const-string v9, "SD_APP_OPTIN"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    :cond_4
    :goto_4
    const-string v9, "SD_APP_OPTIN_SHOWN"

    const-string v10, "1"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_5

    .line 270
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    .line 347
    :cond_5
    :goto_5
    const-string v9, "SD_APP_OPTIN_SHOWN"

    const-string v10, "1"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 220
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #isTransparent:Z
    .end local v3           #optinText:Ljava/lang/String;
    .end local v4           #optinTime:Ljava/lang/String;
    .end local v5           #optinType:Ljava/lang/String;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v8           #toUse:Landroid/content/Context;
    :cond_6
    iget-object v8, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    goto/16 :goto_1

    .line 254
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #isTransparent:Z
    .restart local v3       #optinText:Ljava/lang/String;
    .restart local v4       #optinTime:Ljava/lang/String;
    .restart local v5       #optinType:Ljava/lang/String;
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    .restart local v8       #toUse:Landroid/content/Context;
    :cond_7
    const-string v9, "deny"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 257
    const-string v9, "SD_APP_OPTIN"

    const-string v10, "0"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 260
    :cond_8
    const-string v9, "nodisplay"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 263
    const-string v9, "SD_APP_OPTIN"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 276
    :cond_9
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-ne v9, v12, :cond_a

    .line 279
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_0

    .line 281
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_0

    .line 285
    :cond_a
    const-string v9, "display"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 288
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    if-eqz v9, :cond_b

    .line 290
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 297
    :goto_6
    const-string v9, "SD_APP_OPTIN"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    const-string v9, "SD_APP_OPTIN_SHOWN"

    const-string v10, "1"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_5

    .line 303
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto :goto_5

    .line 294
    :cond_b
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->context:Landroid/content/Context;

    invoke-static {v9, v3, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 306
    :cond_c
    const-string v9, "deny"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 309
    const-string v9, "SD_APP_OPTIN"

    const-string v10, "0"

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_5

    .line 314
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_5

    .line 317
    :cond_d
    const-string v9, "nodisplay"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 320
    const-string v9, "SD_APP_OPTIN"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_5

    .line 325
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_5

    .line 328
    :cond_e
    const-string v9, "webconfirm"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 330
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v10, "weboptinurl"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 334
    :try_start_2
    new-instance v6, Lcom/pad/android/util/AdOptinView;

    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->activity:Landroid/app/Activity;

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/pad/android/util/AdOptinRequest;->optinValues:Lorg/json/JSONObject;

    const-string v12, "weboptinurl"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/pad/android/util/AdOptinRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-direct {v6, v9, v10, v11}, Lcom/pad/android/util/AdOptinView;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/pad/android/listener/AdOptinListener;)V

    .line 335
    .local v6, optinView:Lcom/pad/android/util/AdOptinView;
    if-eqz v2, :cond_5

    .line 337
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/pad/android/util/AdOptinView;->setBackgroundColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 340
    .end local v6           #optinView:Lcom/pad/android/util/AdOptinView;
    :catch_0
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "LBAdController"

    invoke-static {v9, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 353
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #isTransparent:Z
    .end local v3           #optinText:Ljava/lang/String;
    .end local v4           #optinTime:Ljava/lang/String;
    .end local v5           #optinType:Ljava/lang/String;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    .end local v8           #toUse:Landroid/content/Context;
    :cond_f
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    if-eqz v9, :cond_0

    .line 355
    iget-object v9, p0, Lcom/pad/android/util/AdOptinRequest;->oListener:Lcom/pad/android/listener/AdOptinListener;

    invoke-interface {v9}, Lcom/pad/android/listener/AdOptinListener;->onAdOptin()V

    goto/16 :goto_0

    .line 239
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #isTransparent:Z
    .restart local v3       #optinText:Ljava/lang/String;
    .restart local v5       #optinType:Ljava/lang/String;
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    .restart local v8       #toUse:Landroid/content/Context;
    :catch_1
    move-exception v9

    goto/16 :goto_3

    .line 233
    .end local v2           #isTransparent:Z
    :catch_2
    move-exception v9

    goto/16 :goto_2
.end method
