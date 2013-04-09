.class public Lcom/pad/android/util/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# static fields
.field private static final LB_LOG:Ljava/lang/String; = "LBAdController"


# instance fields
.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private domain:Ljava/lang/String;

.field private loadAudio:Z

.field private loadIcon:Z

.field private notificationLaunchType:Ljava/lang/String;

.field private requestInProgress:Z

.field private results:Lorg/json/JSONObject;

.field private sHeight:I

.field private sWidth:I

.field private sectionid:Ljava/lang/String;

.field private subid:Ljava/lang/String;

.field private tm:Landroid/telephony/TelephonyManager;

.field private tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private useLocation:Z

.field private useNotification:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter "act"
    .parameter "secid"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 39
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    .line 40
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    .line 41
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->loadAudio:Z

    .line 43
    const-string v0, "App"

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    .line 53
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "secid"
    .parameter "type"
    .parameter "nLT"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 39
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    .line 40
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    .line 41
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->loadAudio:Z

    .line 43
    const-string v0, "App"

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    .line 61
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    .line 63
    const-string v0, "notification"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    .line 64
    const-string v0, "icon"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    .line 65
    const-string v0, "audio"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pad/android/util/AdRequest;->loadAudio:Z

    .line 66
    iput-object p4, p0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public makeLBRequest()Lorg/json/JSONObject;
    .locals 57

    .prologue
    .line 88
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    if-eqz v3, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 316
    :goto_0
    return-object v3

    .line 94
    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    .line 107
    .local v2, toUse:Landroid/content/Context;
    :goto_1
    const-string v3, "Preference"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v39

    .line 109
    .local v39, pref:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 112
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .line 113
    .local v17, dm:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    new-instance v40, Landroid/graphics/Rect;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v40, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v54

    .line 117
    .local v54, win:Landroid/view/Window;
    invoke-virtual/range {v54 .. v54}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 118
    move-object/from16 v0, v40

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v42, v0

    .line 119
    .local v42, statusBarHeight:I
    const v3, 0x1020002

    move-object/from16 v0, v54

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v14

    .line 120
    .local v14, contentViewTop:I
    move/from16 v0, v42

    if-le v14, v0, :cond_4

    sub-int v50, v14, v42

    .line 122
    .local v50, titleBarHeight:I
    :goto_2
    move-object/from16 v0, v17

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pad/android/util/AdRequest;->sWidth:I

    .line 123
    move-object/from16 v0, v17

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v3, v3, v42

    sub-int v3, v3, v50

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pad/android/util/AdRequest;->sHeight:I

    .line 125
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Device Width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pad/android/util/AdRequest;->sWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pad/android/util/AdRequest;->sHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SBH = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TBH = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v14           #contentViewTop:I
    .end local v17           #dm:Landroid/util/DisplayMetrics;
    .end local v40           #rect:Landroid/graphics/Rect;
    .end local v42           #statusBarHeight:I
    .end local v50           #titleBarHeight:I
    .end local v54           #win:Landroid/view/Window;
    :cond_1
    new-instance v38, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v38 .. v38}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 130
    .local v38, params:Lorg/apache/http/params/HttpParams;
    const-string v3, "http.protocol.version"

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    move-object/from16 v0, v38

    invoke-interface {v0, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 131
    new-instance v26, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 134
    .local v26, httpclient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pad/android/util/AdRequest;->tm:Landroid/telephony/TelephonyManager;

    .line 144
    :goto_3
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v52, v0

    const/4 v3, 0x0

    const-string v4, "http://ad.leadboltapps.net"

    aput-object v4, v52, v3

    const/4 v3, 0x1

    const-string v4, "http://ad.leadbolt.net"

    aput-object v4, v52, v3

    .line 147
    .local v52, urlDomains:[Ljava/lang/String;
    const/16 v23, 0x0

    .line 148
    .local v23, found:Z
    const/16 v28, 0x0

    .local v28, i:I
    :goto_4
    move-object/from16 v0, v52

    array-length v3, v0

    move/from16 v0, v28

    if-lt v0, v3, :cond_6

    .line 316
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->results:Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 106
    .end local v2           #toUse:Landroid/content/Context;
    .end local v23           #found:Z
    .end local v26           #httpclient:Lorg/apache/http/client/HttpClient;
    .end local v28           #i:I
    .end local v38           #params:Lorg/apache/http/params/HttpParams;
    .end local v39           #pref:Landroid/content/SharedPreferences;
    .end local v52           #urlDomains:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pad/android/util/AdRequest;->activity:Landroid/app/Activity;

    goto/16 :goto_1

    .line 120
    .restart local v2       #toUse:Landroid/content/Context;
    .restart local v14       #contentViewTop:I
    .restart local v17       #dm:Landroid/util/DisplayMetrics;
    .restart local v39       #pref:Landroid/content/SharedPreferences;
    .restart local v40       #rect:Landroid/graphics/Rect;
    .restart local v42       #statusBarHeight:I
    .restart local v54       #win:Landroid/view/Window;
    :cond_4
    const/16 v50, 0x0

    goto/16 :goto_2

    .line 140
    .end local v14           #contentViewTop:I
    .end local v17           #dm:Landroid/util/DisplayMetrics;
    .end local v40           #rect:Landroid/graphics/Rect;
    .end local v42           #statusBarHeight:I
    .end local v54           #win:Landroid/view/Window;
    .restart local v26       #httpclient:Lorg/apache/http/client/HttpClient;
    .restart local v38       #params:Lorg/apache/http/params/HttpParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pad/android/util/AdRequest;->tm:Landroid/telephony/TelephonyManager;

    goto :goto_3

    .line 151
    .restart local v23       #found:Z
    .restart local v28       #i:I
    .restart local v52       #urlDomains:[Ljava/lang/String;
    :cond_6
    if-nez v23, :cond_2

    .line 157
    aget-object v3, v52, v28

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/show_app.conf?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 159
    .local v51, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    if-eqz v3, :cond_e

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/show_notification?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 172
    :cond_7
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&section_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&appId=null&optin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "SD_APP_OPTIN"

    const-string v5, "0"

    move-object/from16 v0, v39

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 173
    .local v24, get:Ljava/lang/String;
    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    .line 174
    .local v9, am:Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v53

    .line 175
    .local v53, vol:I
    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v34

    .line 176
    .local v34, max:I
    div-int v3, v53, v34

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4059

    div-double v35, v3, v5

    .line 177
    .local v35, normalized:D
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    if-nez v3, :cond_8

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v35

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 181
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->useNotification:Z

    if-eqz v3, :cond_b

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ITERATION_COUNTER_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 185
    .local v32, iterationcounter:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&iteration_counter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&launch_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->notificationLaunchType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_NOTIFICATION_FIRED_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 188
    .local v21, fireTime:J
    const-wide/16 v3, -0x1

    cmp-long v3, v21, v3

    if-nez v3, :cond_10

    const/16 v31, -0x1

    .line 189
    .local v31, interval:I
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&notification_fired="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 190
    const-string v3, "LBAdController"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NotificationFired = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pad/android/util/AdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v44, "standard,"

    .line 194
    .local v44, supported:Ljava/lang/String;
    const/4 v15, -0x1

    .line 195
    .local v15, customLayout:I
    const/4 v12, -0x1

    .line 196
    .local v12, bannerViewTxt:I
    const/16 v48, -0x1

    .line 200
    .local v48, textViewSmall:I
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R$layout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v33

    .line 201
    .local v33, layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_notification"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v15

    .line 205
    .end local v33           #layoutCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_7
    const/4 v3, -0x1

    if-eq v15, v3, :cond_a

    .line 210
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R$id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v29

    .line 211
    .local v29, idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_bannerview"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 212
    .local v10, bannerView:I
    const-string v3, "xappad_bannerviewimg"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 213
    .local v11, bannerViewImg:I
    const-string v3, "xappad_bannerviewtext"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    .line 214
    const/4 v3, -0x1

    if-eq v10, v3, :cond_9

    const/4 v3, -0x1

    if-eq v11, v3, :cond_9

    const/4 v3, -0x1

    if-eq v12, v3, :cond_9

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "banner,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v44

    .line 224
    .end local v10           #bannerView:I
    .end local v11           #bannerViewImg:I
    .end local v29           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    :goto_8
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".R$id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v29

    .line 225
    .restart local v29       #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "xappad_customtextview"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v45

    .line 226
    .local v45, textView:I
    const-string v3, "xappad_customtextviewtitle"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v49

    .line 227
    .local v49, textViewTitle:I
    const-string v3, "xappad_customtextviewdescription"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v47

    .line 228
    .local v47, textViewDsc:I
    const-string v3, "xappad_customtextviewsmalltext"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v48

    .line 229
    const-string v3, "xappad_customtextviewcta"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v46

    .line 230
    .local v46, textViewCta:I
    const/4 v3, -0x1

    move/from16 v0, v45

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v49

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v47

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v48

    if-eq v0, v3, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v46

    if-eq v0, v3, :cond_a

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "customtext,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v44

    .line 239
    .end local v29           #idCls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v45           #textView:I
    .end local v46           #textViewCta:I
    .end local v47           #textViewDsc:I
    .end local v49           #textViewTitle:I
    :cond_a
    :goto_9
    const/4 v3, 0x0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&notification_supported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 243
    .end local v12           #bannerViewTxt:I
    .end local v15           #customLayout:I
    .end local v21           #fireTime:J
    .end local v31           #interval:I
    .end local v32           #iterationcounter:I
    .end local v44           #supported:Ljava/lang/String;
    .end local v48           #textViewSmall:I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    if-eqz v3, :cond_c

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SD_ICON_DISPLAY_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 246
    .local v16, displayCount:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&icon_displayed_count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 250
    .end local v16           #displayCount:I
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pad/android/util/AdEncryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 251
    .local v25, getString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "&get="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&section_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->sectionid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 255
    new-instance v27, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v27

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 260
    .local v27, httppost:Lorg/apache/http/client/methods/HttpPost;
    :try_start_3
    new-instance v37, Ljava/util/ArrayList;

    const/4 v3, 0x2

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v37, pair:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v55, Lorg/apache/http/message/BasicNameValuePair;

    const-string v56, "ref"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pad/android/util/AdRequest;->tm:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->subid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pad/android/util/AdRequest;->tokens:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/pad/android/util/AdRequest;->sWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pad/android/util/AdRequest;->sHeight:I

    invoke-static/range {v2 .. v8}, Lcom/pad/android/util/AdRefValues;->adRefValues(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/util/List;ZII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v37

    invoke-direct {v3, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 270
    .end local v37           #pair:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :goto_a
    const/4 v13, 0x0

    .line 271
    .local v13, connectionCount:I
    :goto_b
    const/16 v3, 0xa

    if-lt v13, v3, :cond_11

    .line 148
    :cond_d
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    .line 163
    .end local v9           #am:Landroid/media/AudioManager;
    .end local v13           #connectionCount:I
    .end local v24           #get:Ljava/lang/String;
    .end local v25           #getString:Ljava/lang/String;
    .end local v27           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v34           #max:I
    .end local v35           #normalized:D
    .end local v53           #vol:I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->loadIcon:Z

    if-eqz v3, :cond_f

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/show_app_icon.conf?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_5

    .line 167
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pad/android/util/AdRequest;->loadAudio:Z

    if-eqz v3, :cond_7

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pad/android/util/AdRequest;->domain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/show_app_audio?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_5

    .line 188
    .restart local v9       #am:Landroid/media/AudioManager;
    .restart local v21       #fireTime:J
    .restart local v24       #get:Ljava/lang/String;
    .restart local v32       #iterationcounter:I
    .restart local v34       #max:I
    .restart local v35       #normalized:D
    .restart local v53       #vol:I
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    const-wide/16 v4, 0x3e8

    div-long v4, v21, v4

    long-to-int v4, v4

    sub-int v31, v3, v4

    goto/16 :goto_6

    .line 265
    .end local v21           #fireTime:J
    .end local v32           #iterationcounter:I
    .restart local v25       #getString:Ljava/lang/String;
    .restart local v27       #httppost:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v18

    .line 267
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "LBAdController"

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    .line 273
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v13       #connectionCount:I
    :cond_11
    if-nez v23, :cond_d

    .line 283
    :try_start_4
    invoke-interface/range {v26 .. v27}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v41

    .line 285
    .local v41, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v41 .. v41}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_12

    .line 287
    const/16 v23, 0x1

    .line 289
    invoke-interface/range {v41 .. v41}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    .line 290
    .local v19, entity:Lorg/apache/http/HttpEntity;
    if-eqz v19, :cond_12

    .line 293
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v30

    .line 294
    .local v30, instream:Ljava/io/InputStream;
    invoke-static/range {v30 .. v30}, Lcom/pad/android/util/AdUtilFuncs;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v43

    .line 295
    .local v43, str:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v0, v43

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pad/android/util/AdRequest;->results:Lorg/json/JSONObject;

    .line 297
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 310
    .end local v19           #entity:Lorg/apache/http/HttpEntity;
    .end local v30           #instream:Ljava/io/InputStream;
    .end local v43           #str:Ljava/lang/String;
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 313
    .end local v41           #response:Lorg/apache/http/HttpResponse;
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_b

    .line 301
    :catch_1
    move-exception v20

    .line 303
    .local v20, ex:Ljava/lang/Exception;
    :try_start_5
    const-string v3, "LBAdController"

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/pad/android/util/AdLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    const/16 v23, 0x0

    .line 305
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/pad/android/util/AdRequest;->results:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 310
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    goto :goto_c

    .line 309
    .end local v20           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 310
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pad/android/util/AdRequest;->requestInProgress:Z

    .line 312
    throw v3

    .line 235
    .end local v13           #connectionCount:I
    .end local v25           #getString:Ljava/lang/String;
    .end local v27           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v12       #bannerViewTxt:I
    .restart local v15       #customLayout:I
    .restart local v21       #fireTime:J
    .restart local v31       #interval:I
    .restart local v32       #iterationcounter:I
    .restart local v44       #supported:Ljava/lang/String;
    .restart local v48       #textViewSmall:I
    :catch_2
    move-exception v3

    goto/16 :goto_9

    .line 219
    :catch_3
    move-exception v3

    goto/16 :goto_8

    .line 203
    :catch_4
    move-exception v3

    goto/16 :goto_7
.end method

.method public setSubId(Ljava/lang/String;)V
    .locals 0
    .parameter "sbid"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->subid:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setTokens(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, tks:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iput-object p1, p0, Lcom/pad/android/util/AdRequest;->tokens:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setUseLocation(Z)V
    .locals 3
    .parameter "uL"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/pad/android/util/AdRequest;->useLocation:Z

    .line 82
    const-string v0, "LBAdController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setUseLocation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pad/android/util/AdLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method
