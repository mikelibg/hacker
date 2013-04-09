.class Lcom/airpush/android/SetPreferences;
.super Ljava/lang/Object;
.source "SetPreferences.java"

# interfaces
.implements Lcom/airpush/android/IConstants;


# static fields
.field private static ctx:Landroid/content/Context;

.field static json:Lorg/json/JSONObject;

.field static postValues:Ljava/lang/String;

.field private static preferences:Landroid/content/SharedPreferences;

.field private static token:Ljava/lang/String;

.field static values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encodedAsp:Ljava/lang/String;

.field sendAppInfoAsyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airpush/android/AsyncTaskCompleteListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 28
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/airpush/android/SetPreferences$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/SetPreferences$1;-><init>(Lcom/airpush/android/SetPreferences;)V

    iput-object v0, p0, Lcom/airpush/android/SetPreferences;->sendAppInfoAsyncTaskCompleteListener:Lcom/airpush/android/AsyncTaskCompleteListener;

    .line 80
    sput-object p1, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic access$0()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static enableADPref(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 395
    :try_start_0
    const-string v7, "enableAdPref"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 397
    .local v4, preferences:Landroid/content/SharedPreferences;
    new-instance v0, Lcom/airpush/android/Airpush;

    invoke-direct {v0}, Lcom/airpush/android/Airpush;-><init>()V

    .line 399
    .local v0, airpush:Lcom/airpush/android/Airpush;
    const-string v7, "interstitialads"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    const-string v7, "interstitialads"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 401
    .local v1, dialog:Z
    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startSmartWallAd()V

    .line 405
    .end local v1           #dialog:Z
    :cond_0
    const-string v7, "dialogad"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 406
    const-string v7, "dialogad"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 407
    .restart local v1       #dialog:Z
    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startDialogAd()V

    .line 411
    .end local v1           #dialog:Z
    :cond_1
    const-string v7, "appwall"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 412
    const-string v7, "appwall"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 413
    .restart local v1       #dialog:Z
    if-eqz v1, :cond_2

    .line 414
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startAppWall()V

    .line 417
    .end local v1           #dialog:Z
    :cond_2
    const-string v7, "landingpagead"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 418
    const-string v7, "landingpagead"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 419
    .restart local v1       #dialog:Z
    if-eqz v1, :cond_3

    .line 420
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startLandingPageAd()V

    .line 423
    .end local v1           #dialog:Z
    :cond_3
    invoke-static {p0}, Lcom/airpush/android/SetPreferences;->isShowOptinDialog(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "doPush"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 424
    const-string v7, "doPush"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 425
    .local v5, push:Z
    const-string v7, "testMode"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 426
    .local v6, pushDemo:Z
    if-eqz v5, :cond_4

    .line 427
    invoke-virtual {v0, v6}, Lcom/airpush/android/Airpush;->startPushNotification(Z)V

    .line 430
    .end local v5           #push:Z
    .end local v6           #pushDemo:Z
    :cond_4
    invoke-static {p0}, Lcom/airpush/android/SetPreferences;->isShowOptinDialog(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "icon"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 431
    const-string v7, "icon"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 432
    .local v3, icon:Z
    if-eqz v3, :cond_5

    .line 433
    invoke-virtual {v0}, Lcom/airpush/android/Airpush;->startIconAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v0           #airpush:Lcom/airpush/android/Airpush;
    .end local v3           #icon:Z
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    :cond_5
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v2

    .line 437
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error occured in enableAdPref: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAppListStartTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 353
    const/4 v2, 0x0

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 354
    const-wide/16 v0, 0x0

    .line 355
    .local v0, start_time:J
    if-eqz p0, :cond_0

    .line 356
    const-string v2, "app_list_data"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 357
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 358
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "startTime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 363
    :cond_0
    return-wide v0
.end method

.method static getDataSharedPrefrences(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 168
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 169
    const-string v2, "dataPrefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 171
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 172
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "appId"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setAppID(Ljava/lang/String;)V

    .line 173
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "APIKEY"

    const-string v4, "airpush"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setApiKey(Ljava/lang/String;)V

    .line 174
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "imei"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setImei(Ljava/lang/String;)V

    .line 175
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "testMode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setTestmode(Z)V

    .line 176
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "doPush"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setDoPush(Z)V

    .line 177
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "token"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 178
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "longitude"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setLongitude(Ljava/lang/String;)V

    .line 179
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "latitude"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setLatitude(Ljava/lang/String;)V

    .line 180
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "icon"

    const v4, 0x1080074

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setIcon(I)V

    .line 181
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "useragent"

    const-string v4, "Default"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setUser_agent(Ljava/lang/String;)V

    .line 182
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "deviceUniqueness"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setDevice_unique_type(Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x1

    .line 192
    :goto_0
    return v1

    .line 186
    :cond_0
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/airpush/android/Util;->setAppInfo(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static getNotificationData(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 257
    const-string v2, "airpushNotificationPref"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 259
    :try_start_0
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 260
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "appId"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setAppID(Ljava/lang/String;)V

    .line 261
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "APIKEY"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setApiKey(Ljava/lang/String;)V

    .line 262
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "url"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setNotificationUrl(Ljava/lang/String;)V

    .line 263
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "adtype"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setAdType(Ljava/lang/String;)V

    .line 264
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "tray"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setTrayEvents(Ljava/lang/String;)V

    .line 265
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "campId"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setCampId(Ljava/lang/String;)V

    .line 266
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "creativeId"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setCreativeId(Ljava/lang/String;)V

    .line 267
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "header"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setHeader(Ljava/lang/String;)V

    .line 268
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "sms"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setSms(Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "number"

    const-string v4, "invalid"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->setPhoneNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    const/4 v1, 0x1

    .line 277
    :cond_0
    :goto_0
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNotificationData()"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getSDKStartTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 325
    const/4 v2, 0x0

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 326
    const-wide/16 v0, 0x0

    .line 327
    .local v0, start_time:J
    if-eqz p0, :cond_0

    .line 328
    const-string v2, "airpushTimePref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 329
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 330
    sget-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "startTime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 334
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "First time started on: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 335
    return-wide v0
.end method

.method static isShowOptinDialog(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 458
    const-string v1, "firstTime"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "showDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method static nextAppListStartTime(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 340
    if-eqz p0, :cond_0

    .line 341
    const/4 v2, 0x0

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 342
    const-string v2, "app_list_data"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 343
    sget-object v1, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 344
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 345
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 348
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    .line 347
    :cond_0
    const-string v2, "Unable to save app time data."

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static setOptinDialogPref(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 445
    :try_start_0
    const-string v3, "firstTime"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 447
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 448
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "showDialog"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static setSDKStartTime(Landroid/content/Context;J)Z
    .locals 4
    .parameter "context"
    .parameter "next_start_time"

    .prologue
    const/4 v1, 0x0

    .line 312
    if-eqz p0, :cond_0

    .line 313
    const/4 v2, 0x0

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 314
    const-string v2, "airpushTimePref"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 315
    sget-object v1, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 320
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    .line 319
    :cond_0
    const-string v2, "Unable to save time data."

    invoke-static {v2}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSharedPreferences()V
    .locals 6

    .prologue
    .line 122
    const/4 v3, 0x0

    :try_start_0
    sput-object v3, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 123
    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    const-string v4, "dataPrefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 125
    sget-object v3, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 127
    .local v1, dataPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    const-string v3, "appId"

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    const-string v3, "imei"

    invoke-static {}, Lcom/airpush/android/Util;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    const-string v3, "wifi"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getConnectionType(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v3, "token"

    sget-object v4, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v3, "request_timestamp"

    invoke-static {}, Lcom/airpush/android/Util;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v3, "packageName"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    const-string v3, "version"

    invoke-static {}, Lcom/airpush/android/Util;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v3, "carrier"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v3, "networkOperator"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v3, "phoneModel"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneModel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    const-string v3, "manufacturer"

    invoke-static {}, Lcom/airpush/android/Util;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v3, "longitude"

    invoke-static {}, Lcom/airpush/android/Util;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    const-string v3, "latitude"

    invoke-static {}, Lcom/airpush/android/Util;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v3, "sdkversion"

    invoke-static {}, Lcom/airpush/android/Util;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    const-string v3, "android_id"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    const-string v3, "testMode"

    invoke-static {}, Lcom/airpush/android/Util;->isTestmode()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v3, "doPush"

    invoke-static {}, Lcom/airpush/android/Util;->isDoPush()Z

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string v3, "screenSize"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getScreen_size(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    const-string v3, "networkSubType"

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getNetworksubType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v3, "deviceUniqueness"

    invoke-static {}, Lcom/airpush/android/Util;->getDevice_unique_type()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    const-string v3, "icon"

    invoke-static {}, Lcom/airpush/android/Util;->getIcon()I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    const-string v3, "useragent"

    invoke-static {}, Lcom/airpush/android/Util;->getUser_agent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/airpush/android/Util;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getConnectionType(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/Util;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getLongitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getLatitude()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airpush/android/Util;->getUser_agent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, asp:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airpush/android/SetPreferences;->encodedAsp:Ljava/lang/String;

    .line 155
    const-string v3, "asp"

    iget-object v4, p0, Lcom/airpush/android/SetPreferences;->encodedAsp:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0           #asp:Ljava/lang/String;
    .end local v1           #dataPrefsEditor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static setValues(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    sput-object p0, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 200
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->getDataSharedPrefrences(Landroid/content/Context;)Z

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    .line 203
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appId"

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "imei"

    invoke-static {}, Lcom/airpush/android/Util;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "token"

    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "request_timestamp"

    invoke-static {}, Lcom/airpush/android/Util;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "packageName"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    invoke-static {}, Lcom/airpush/android/Util;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "carrier"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "networkOperator"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "phoneModel"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneModel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "manufacturer"

    invoke-static {}, Lcom/airpush/android/Util;->getManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "longitude"

    invoke-static {}, Lcom/airpush/android/Util;->getLongitude()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "latitude"

    invoke-static {}, Lcom/airpush/android/Util;->getLatitude()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sdkversion"

    invoke-static {}, Lcom/airpush/android/Util;->getSDKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "wifi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/Util;->getConnectionType(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "useragent"

    invoke-static {}, Lcom/airpush/android/Util;->getUser_agent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "android_id"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "screenSize"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getScreen_size(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "deviceUniqueness"

    invoke-static {}, Lcom/airpush/android/Util;->getDevice_unique_type()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "networkSubType"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getNetworksubType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "isTablet"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->isTablet(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "SD"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getScreenDp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "isConnectionFast"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/Util;->isConnectionFast(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "unknownsource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/Util;->isInstallFromMarketOnly(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "appName"

    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/Util;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 231
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/Extras;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_0
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "phonenumber"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/airpush/android/Util;->getNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "language"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/airpush/android/Util;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v2}, Lcom/airpush/android/Util;->getCountryName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, country:[Ljava/lang/String;
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "country"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "zip"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    .end local v0           #country:[Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://api.airpush.com/v2/api.php?apikey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&request_timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&carrier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->getCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&networkOperator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&phoneModel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&manufacturer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&longitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&latitude="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sdkversion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&wifi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/airpush/android/Util;->getConnectionType(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&useragent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/Util;->getUser_agent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/SetPreferences;->postValues:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 252
    :goto_1
    sget-object v2, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    return-object v2

    .line 248
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 242
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method


# virtual methods
.method getIP()V
    .locals 3

    .prologue
    .line 381
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 382
    sget-object v0, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    const-string v1, "ipPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 384
    sget-object v0, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ip1"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->setIP1(Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ip2"

    const-string v2, "invalid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airpush/android/Util;->setIP2(Ljava/lang/String;)V

    .line 389
    :cond_0
    return-void
.end method

.method setNotificationData()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 282
    const/4 v3, 0x0

    sput-object v3, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 283
    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    const-string v4, "airpushNotificationPref"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 284
    sget-object v3, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 285
    .local v1, notificationPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 286
    const-string v2, "adtype"

    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    invoke-static {}, Lcom/airpush/android/Util;->getAdType()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, adtype:Ljava/lang/String;
    const-string v2, "W"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BPW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BPA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    :cond_0
    const-string v2, "url"

    invoke-static {}, Lcom/airpush/android/Util;->getNotificationUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    const-string v2, "header"

    invoke-static {}, Lcom/airpush/android/Util;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    :cond_1
    :goto_0
    const-string v2, "appId"

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    const-string v2, "APIKEY"

    invoke-static {}, Lcom/airpush/android/Util;->getApiKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    const-string v2, "tray"

    const-string v3, "TrayClicked"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    const-string v2, "campId"

    invoke-static {}, Lcom/airpush/android/Util;->getCampId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    const-string v2, "creativeId"

    invoke-static {}, Lcom/airpush/android/Util;->getCreativeId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .end local v0           #adtype:Ljava/lang/String;
    :goto_1
    return v2

    .line 291
    .restart local v0       #adtype:Ljava/lang/String;
    :cond_2
    const-string v2, "CM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "BPCM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 292
    :cond_3
    const-string v2, "sms"

    invoke-static {}, Lcom/airpush/android/Util;->getSms()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string v2, "number"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 294
    :cond_4
    const-string v2, "CC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "BPCC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    :cond_5
    const-string v2, "number"

    invoke-static {}, Lcom/airpush/android/Util;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 298
    .end local v0           #adtype:Ljava/lang/String;
    :cond_6
    const-string v3, "setNotificationData AdType is Null"

    invoke-static {v3}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method setPreferencesData()V
    .locals 10

    .prologue
    .line 87
    :try_start_0
    new-instance v7, Landroid/webkit/WebView;

    sget-object v8, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, user_agent:Ljava/lang/String;
    invoke-static {v6}, Lcom/airpush/android/Util;->setUser_agent(Ljava/lang/String;)V

    .line 90
    new-instance v5, Lcom/airpush/android/UserDetails;

    sget-object v7, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/airpush/android/UserDetails;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .local v5, userDetails:Lcom/airpush/android/UserDetails;
    :try_start_1
    invoke-virtual {v5}, Lcom/airpush/android/UserDetails;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 93
    .local v2, location:Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, lat:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, lon:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Location: lat "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lon "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    .line 97
    invoke-static {v1}, Lcom/airpush/android/Util;->setLatitude(Ljava/lang/String;)V

    .line 98
    invoke-static {v3}, Lcom/airpush/android/Util;->setLongitude(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .end local v1           #lat:Ljava/lang/String;
    .end local v2           #location:Landroid/location/Location;
    .end local v3           #lon:Ljava/lang/String;
    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/airpush/android/UserDetails;->getImeiNoMd5()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/airpush/android/Util;->getAppID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/airpush/android/Util;->getDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 106
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 107
    .local v4, mdEnc2:Ljava/security/MessageDigest;
    sget-object v7, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Ljava/security/MessageDigest;->update([BII)V

    .line 108
    new-instance v7, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 110
    invoke-direct {p0}, Lcom/airpush/android/SetPreferences;->setSharedPreferences()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    .end local v4           #mdEnc2:Ljava/security/MessageDigest;
    .end local v5           #userDetails:Lcom/airpush/android/UserDetails;
    .end local v6           #user_agent:Ljava/lang/String;
    :goto_1
    return-void

    .line 100
    .restart local v2       #location:Landroid/location/Location;
    .restart local v5       #userDetails:Lcom/airpush/android/UserDetails;
    .restart local v6       #user_agent:Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v7, "Location null: "

    invoke-static {v7}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 102
    .end local v2           #location:Landroid/location/Location;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 112
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #userDetails:Lcom/airpush/android/UserDetails;
    .end local v6           #user_agent:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "Token conversion Error "

    invoke-static {v7}, Lcom/airpush/android/Util;->printDebugLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method storeIP()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 368
    const/4 v2, 0x0

    sput-object v2, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 369
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 370
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    const-string v3, "ipPreference"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    .line 371
    sget-object v1, Lcom/airpush/android/SetPreferences;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ip1"

    invoke-static {}, Lcom/airpush/android/Util;->getIP1()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 373
    const-string v1, "ip2"

    invoke-static {}, Lcom/airpush/android/Util;->getIP2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 376
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return v1
.end method
